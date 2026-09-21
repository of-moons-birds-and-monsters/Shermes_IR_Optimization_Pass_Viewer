import { useRef, useEffect } from "react";
const OptionsVertexShader = `#version 300 es

  const vec2 positions[3] = vec2[](
    vec2(-1.0, -1.0),
    vec2( 3.0, -1.0),
    vec2(-1.0,  3.0)
  );

  void main() {
    gl_Position = vec4(positions[gl_VertexID], 0.0, 1.0);
  }`;
const OptionsFragmentShader = `#version 300 es
precision highp float;

uniform vec2 u_resolution;
uniform float u_time;

out vec4 outputColor;

mat3 rotateX(float angle) {
  float sine = sin(angle);
  float cosine = cos(angle);
  return mat3(
    1.0, 0.0, 0.0,
    0.0, cosine, sine,
    0.0, -sine, cosine
  );
}

mat3 rotateY(float angle) {
  float sine = sin(angle);
  float cosine = cos(angle);
  return mat3(
    cosine, 0.0, -sine,
    0.0, 1.0, 0.0,
    sine, 0.0, cosine
  );
}

// Return the distances at which a ray enters and exits an axis-aligned box.
vec2 intersectBox(vec3 rayOrigin, vec3 rayDirection, vec3 halfSize) {
  vec3 safeDirection = rayDirection;
  safeDirection.x = abs(safeDirection.x) < 1e-5 ? 1e-5 : safeDirection.x;
  safeDirection.y = abs(safeDirection.y) < 1e-5 ? 1e-5 : safeDirection.y;
  safeDirection.z = abs(safeDirection.z) < 1e-5 ? 1e-5 : safeDirection.z;
  vec3 firstPlane = (-halfSize - rayOrigin) / safeDirection;
  vec3 secondPlane = (halfSize - rayOrigin) / safeDirection;
  vec3 nearPlane = min(firstPlane, secondPlane);
  vec3 farPlane = max(firstPlane, secondPlane);
  float entry = max(max(nearPlane.x, nearPlane.y), nearPlane.z);
  float exit = min(min(farPlane.x, farPlane.y), farPlane.z);
  return vec2(entry, exit);
}

vec3 boxNormal(vec3 point, vec3 halfSize) {
  vec3 relative = abs(point / halfSize);
  if (relative.x > relative.y && relative.x > relative.z) {
    return vec3(sign(point.x), 0.0, 0.0);
  }
  if (relative.y > relative.z) {
    return vec3(0.0, sign(point.y), 0.0);
  }
  return vec3(0.0, 0.0, sign(point.z));
}

float materialVariation(vec3 point, float time) {
  return 0.5 + 0.5 * sin(
    point.x * 5.1 +
    sin(point.y * 4.3 - time * 0.17) +
    sin(point.z * 13.0 + time * 0.11)
  );
}

void main() {
  vec2 screen = (2.0 * gl_FragCoord.xy - u_resolution) / u_resolution.y;
  float time = u_time;

  // An orthographic camera makes the slab read as a UI panel. The extremely
  // small rotation reveals its thickness without making it look like a card.
  vec3 rayOrigin = vec3(screen, 3.0);
  vec3 rayDirection = vec3(0.0, 0.0, -1.0);
  mat3 objectRotation =
    rotateY(sin(time * 0.11) * 0.025) *
    rotateX(cos(time * 0.09) * 0.018);
  mat3 inverseRotation = transpose(objectRotation);

  float aspect = u_resolution.x / u_resolution.y;
  vec3 halfSize = vec3(aspect * 0.96, 0.96, 0.16);
  vec3 localOrigin = inverseRotation * rayOrigin;
  vec3 localDirection = inverseRotation * rayDirection;
  vec2 intersection = intersectBox(localOrigin, localDirection, halfSize);

  vec3 background = vec3(0.008, 0.022, 0.014);
  if (intersection.x > intersection.y || intersection.y < 0.0) {
    outputColor = vec4(background, 1.0);
    return;
  }

  float entryDistance = max(intersection.x, 0.0);
  vec3 localPoint = localOrigin + localDirection * entryDistance;
  vec3 localNormal = boxNormal(localPoint, halfSize);
  vec3 worldPoint = objectRotation * localPoint;
  vec3 normal = normalize(objectRotation * localNormal);
  vec3 viewDirection = normalize(-rayDirection);

  vec3 frontLightDirection = normalize(vec3(-0.45, 0.55, 0.8));
  float diffuse = max(dot(normal, frontLightDirection), 0.0);
  float wrappedDiffuse = clamp(
    (dot(normal, frontLightDirection) + 0.42) / 1.42,
    0.0,
    1.0
  );

  vec3 halfDirection = normalize(frontLightDirection + viewDirection);
  float specular = pow(max(dot(normal, halfDirection), 0.0), 42.0);
  float fresnel = pow(1.0 - max(dot(normal, viewDirection), 0.0), 3.0);

  // Move a light slowly behind the slab. Intersect a ray from the visible
  // surface toward it to obtain the actual distance travelled inside the box.
  vec3 backLightPosition = vec3(
    sin(time * 0.16) * aspect * 0.72,
    cos(time * 0.13) * 0.64,
    -2.4
  );
  vec3 backLightDirection = normalize(backLightPosition - worldPoint);
  vec3 localBackDirection = normalize(inverseRotation * backLightDirection);
  vec3 insidePoint = localPoint + localBackDirection * 0.001;
  vec2 backIntersection = intersectBox(
    insidePoint,
    localBackDirection,
    halfSize
  );
  float thickness = max(backIntersection.y, 0.0);

  float variation = materialVariation(localPoint, time);
  thickness *= mix(0.82, 1.18, variation);

  // Beer-Lambert absorption. Green travels farther through this material than
  // red or blue, producing a jade/resin-like transmitted glow.
  vec3 absorption = vec3(2.8, 0.72, 2.1);
  vec3 transmittance = exp(-absorption * thickness);
  float backFacing = max(dot(-normal, backLightDirection), 0.0);
  float forwardScatter = pow(
    max(dot(viewDirection, -backLightDirection), 0.0),
    7.0
  );
  float edgeScatter = fresnel * (1.0 - exp(-thickness * 4.0));

  vec3 deepGreen = vec3(0.012, 0.075, 0.040);
  vec3 surfaceGreen = vec3(0.035, 0.28, 0.145);
  vec3 scatterGreen = vec3(0.18, 0.95, 0.48);
  vec3 highlight = vec3(0.72, 1.0, 0.84);

  vec3 baseColor = mix(deepGreen, surfaceGreen, variation * 0.55 + 0.25);
  vec3 color = baseColor * (0.24 + diffuse * 0.38 + wrappedDiffuse * 0.34);
  color += scatterGreen * transmittance * (0.22 + 0.78 * forwardScatter);
  color += scatterGreen * backFacing * (vec3(1.0) - transmittance) * 0.34;
  color += scatterGreen * edgeScatter * 0.14;
  color += highlight * specular * 0.24;

  // A subtle darkening at the outer screen edge keeps controls readable.
  float vignette = smoothstep(1.25, 0.18, length(screen));
  color *= mix(0.78, 1.0, vignette);

  outputColor = vec4(color, 1.0);
}`;
export function ShaderBackground() {
  const canvasRef = useRef<HTMLCanvasElement>(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;

    const gl = canvas.getContext("webgl2", {
      alpha: false,
      antialias: false,
    });

    if (!gl) return;
    const renderingCanvas = canvas;
    const renderingContext = gl;

    const vertexShader = gl.createShader(gl.VERTEX_SHADER);
    if (!vertexShader) {
      throw new Error("Failed to create vertex shader");
    }
    gl.shaderSource(vertexShader, OptionsVertexShader);
    gl.compileShader(vertexShader);
    if (!gl.getShaderParameter(vertexShader, gl.COMPILE_STATUS)) {
      throw new Error(
        `Failed to compile vertex shader: ${gl.getShaderInfoLog(vertexShader)}`,
      );
    }

    const fragmentShader = gl.createShader(gl.FRAGMENT_SHADER);
    if (!fragmentShader) {
      throw new Error("Failed to create fragment shader");
    }
    gl.shaderSource(fragmentShader, OptionsFragmentShader);
    gl.compileShader(fragmentShader);
    if (!gl.getShaderParameter(fragmentShader, gl.COMPILE_STATUS)) {
      throw new Error(
        `Failed to compile fragment shader: ${gl.getShaderInfoLog(fragmentShader)}`,
      );
    }

    const shaderProgram = gl.createProgram();
    if (!shaderProgram) {
      gl.deleteShader(vertexShader);
      gl.deleteShader(fragmentShader);
      throw new Error("Failed to create shader program");
    }
    gl.attachShader(shaderProgram, vertexShader);
    gl.attachShader(shaderProgram, fragmentShader);
    gl.linkProgram(shaderProgram);
    if (!gl.getProgramParameter(shaderProgram, gl.LINK_STATUS)) {
      const message = gl.getProgramInfoLog(shaderProgram);
      gl.deleteShader(vertexShader);
      gl.deleteShader(fragmentShader);
      gl.deleteProgram(shaderProgram);
      throw new Error(`Failed to link shader program: ${message}`);
    }
    gl.useProgram(shaderProgram);
    const u_time = gl.getUniformLocation(shaderProgram, "u_time");
    const u_resolution = gl.getUniformLocation(shaderProgram, "u_resolution");
    if (!u_time || !u_resolution) {
      throw new Error("Failed to get uniform locations");
    }
    let frameHandle = 0;
    function render(time: DOMHighResTimeStamp) {
      resizeCanvas();

      renderingContext.useProgram(shaderProgram);
      renderingContext.uniform2f(
        u_resolution,
        renderingCanvas.width,
        renderingCanvas.height,
      );
      renderingContext.uniform1f(u_time, time * 0.001);
      renderingContext.drawArrays(renderingContext.TRIANGLES, 0, 3);

      frameHandle = requestAnimationFrame(render);
    }
    function resizeCanvas() {
      //const pixelRatio = 1;
      const pixelRatio = Math.min(window.devicePixelRatio, 2);
      const width = Math.max(
        1,
        Math.round(renderingCanvas.clientWidth * pixelRatio),
      );
      const height = Math.max(
        1,
        Math.round(renderingCanvas.clientHeight * pixelRatio),
      );

      if (
        renderingCanvas.width !== width ||
        renderingCanvas.height !== height
      ) {
        renderingCanvas.width = width;
        renderingCanvas.height = height;
        renderingContext.viewport(0, 0, width, height);
      }
    }
    const resizeObserver = new ResizeObserver(resizeCanvas);
    resizeObserver.observe(renderingCanvas);
    resizeCanvas();
    frameHandle = requestAnimationFrame(render);

    // Compile shaders and start animation here.

    return () => {
      resizeObserver.disconnect();
      cancelAnimationFrame(frameHandle);
      gl.deleteShader(vertexShader);
      gl.deleteShader(fragmentShader);
      gl.deleteProgram(shaderProgram);
      // Cancel requestAnimationFrame and delete WebGL resources here.
    };
  }, []);

  return (
    <canvas
      ref={canvasRef}
      className="options-window__shader"
      aria-hidden="true"
    />
  );
}
