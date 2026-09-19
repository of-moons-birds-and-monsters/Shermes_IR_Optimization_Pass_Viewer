type NetworkMonitor = {
  requestCount: number;
  responseCount: number;
  responseTimes: number[];
  requestTimes: number[];
  averageResponseTime: number;
  averageRequestTime: number;
};

function createNetworkMonitor(): NetworkMonitor {
  return {
    requestCount: 0,
    responseCount: 0,
    responseTimes: [],
    requestTimes: [],
    averageResponseTime: 0,
    averageRequestTime: 0,
  };
}

function calculateAverageResponseTime(networkMonitor) {
  const len = networkMonitor.responseTimes.length;
  let sum = 0;
  for (let i = 0; i < len; i++) {
    sum += networkMonitor.responseTimes[i];
  }

  return sum / len;
}

function calculateAverageRequestTime(networkMonitor) {
  const len = networkMonitor.requestTimes.length;
  let sum = 0;
  for (let i = 0; i < len; i++) {
    sum += networkMonitor.requestTimes[i];
  }

  return sum / len;
}

function makeRequest(
  networkMonitor: NetworkMonitor,
  reqTime: number,
  responseTime: number,
) {
  networkMonitor.requestCount++;
  networkMonitor.requestTimes.push(reqTime);
  networkMonitor.responseCount++;
  networkMonitor.responseTimes.push(responseTime);
  networkMonitor.averageRequestTime =
    calculateAverageRequestTime(networkMonitor);
  networkMonitor.averageResponseTime =
    calculateAverageResponseTime(networkMonitor);
  return networkMonitor;
}

const networkMonitor = createNetworkMonitor();
makeRequest(networkMonitor, 1, 2);
makeRequest(networkMonitor, 3, 4);
makeRequest(networkMonitor, 5, 6);

console.log(networkMonitor);
