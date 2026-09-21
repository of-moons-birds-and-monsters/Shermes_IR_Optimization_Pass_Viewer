/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 */
// string.h
const _strerror_r = $SHBuiltin.extern_c(
  { include: "string.h" },
  function strerror_r(errnum: c_int, errbuf: c_ptr, buflen: c_size_t): c_int {
    throw 0;
  },
);

// Builtin provided by SH to wrap errno.
const _sh_errno = $SHBuiltin.extern_c(
  { declared: true },
  function _sh_errno(): c_int {
    throw 0;
  },
);

// Pointer access builtins.
const _ptr_write_char = $SHBuiltin.extern_c(
  { declared: true },
  function _sh_ptr_write_char(ptr: c_ptr, offset: c_int, v: c_char): void { },
);
const _ptr_read_uchar = $SHBuiltin.extern_c(
  { declared: true },
  function _sh_ptr_read_uchar(ptr: c_ptr, offset: c_int): c_uchar {
    throw 0;
  },
);
const _malloc = $SHBuiltin.extern_c(
  { include: "stdlib.h" },
  function malloc(size: c_size_t): c_ptr {
    throw 0;
  },
);
const _calloc = $SHBuiltin.extern_c(
  { include: "stdlib.h" },
  function calloc(count: c_size_t, size: c_size_t): c_ptr {
    throw 0;
  },
);
const _free = $SHBuiltin.extern_c(
  { include: "stdlib.h" },
  function free(p: c_ptr): void { },
);

const c_null = $SHBuiltin.c_null();
/// Allocate native memory using calloc() or throw an exception.
function calloc(size: number): c_ptr {
  "inline";
  "use unsafe";

  let res = _calloc(1, size);
  if (res === c_null) throw Error("OOM");
  return res;
}

/// Allocate native memory using malloc() or throw an exception.
function malloc(size: number): c_ptr {
  "inline";
  "use unsafe";

  let res = _malloc(size);
  if (res === c_null) throw Error("OOM");
  return res;
}

function copyToAsciiz(s: any, buf: c_ptr, size: number): void {
  if (s.length >= size) throw Error("String too long");
  let i = 0;
  for (let e = s.length; i < e; ++i) {
    let code: number = s.charCodeAt(i);
    if (code > 127) throw Error("String is not ASCII");
    _ptr_write_char(buf, i, code);
  }
  _ptr_write_char(buf, i, 0);
}
/// Convert an ASCIIZ string up to a maximum size to a JS string.
function asciizToString_unsafe(buf: c_ptr, maxsize: number): string {
  let res = "";
  for (let i = 0; i < maxsize; ++i) {
    let ch = _ptr_read_uchar(buf, i);
    if (ch > 127) throw Error("String is not ASCII");
    if (ch === 0) break;
    res += String.fromCharCode(ch);
  }
  return res;
}

/// Convert a JS string to ASCIIZ.
function stringToAsciiz(s: any): c_ptr {
  "use unsafe";

  if (typeof s !== "string") s = String(s);
  let buf = malloc(s.length + 1);
  try {
    copyToAsciiz(s, buf, s.length + 1);
    return buf;
  } catch (e) {
    _free(buf);
    throw e;
  }
}

/// Convert a JS string to ASCIIZ.
function tmpAsciiz(s: any): c_ptr {
  "use unsafe";

  if (typeof s !== "string") s = String(s);
  let buf = allocTmp(s.length + 1);
  copyToAsciiz(s, buf, s.length + 1);
  return buf;
}

let _allocas: c_ptr[] = [];

function allocTmp(size: number): c_ptr {
  let res = calloc(size);
  _allocas.push(res);
  return res;
}

function flushAllocTmp(): void {
  for (let i = 0; i < _allocas.length; ++i) {
    _free(_allocas[i]);
  }
  let empty: c_ptr[] = [];
  _allocas = empty;
}

const _open = $SHBuiltin.extern_c(
  { include: "stdlib.h" },
  function open(name: c_ptr, flags: c_int): c_int {
    throw 0;
  },
);
function throwErrnoAndMsg() {
  const errnum = _sh_errno();
  const errbuf = malloc(1024);
  try {
    _strerror_r(errnum, errbuf, 1024);
  } catch (e) {
    print(e);
  } finally {
    throw Error(asciizToString_unsafe(errbuf, 1024));
  }
}
/// Very simple hack to ensure safety.
let handles: c_ptr[] = [];
// FIXME: fast array doesn't support .pop() yet.
let closedHandles: Array<c_int> = new Array<c_int>();

function fopen(path: string, mode: string): number {
  "use unsafe";

  let pathz: c_ptr = c_null;
  let modez: c_ptr = c_null;
  try {
    pathz = stringToAsciiz(path);
    modez = stringToAsciiz(mode);
    let filePtr = _fopen(pathz, modez);
    if (!filePtr) {
      let errnum = _sh_errno();
      throw Error(path + ": " + strerror(errnum));
    }
    // Allocate a handle.
    if (closedHandles.length > 0) {
      let f: any = closedHandles.pop();
      handles[f as number] = filePtr;
      return f;
    }
    handles.push(filePtr);
    return handles.length - 1;
  } finally {
    _free(pathz);
    _free(modez);
  }
}
function fclose(f: number): void {
  "use unsafe";

  if (f < 0 || f >= handles.length) throw Error("invalid file handle");
  if (handles[f]) {
    _fclose(handles[f]);
    handles[f] = c_null;
    closedHandles.push(f);
  }
}

function fread(size: number, f: number): string {
  "use unsafe";

  if (f < 0 || f >= handles.length) throw Error("invalid file handle");
  if (!handles[f]) throw Error("file is closed");

  if (size <= 0) throw Error("invalid size");
  let buf = malloc(size);
  try {
    let nr = _fread(buf, 1, size, handles[f]);
    return asciiToString_unsafe(buf, nr);
  } finally {
    _free(buf);
  }
}

function freadAll(f: number): string {
  let res = "";
  for (; ;) {
    let s = fread(1024, f);
    if (!s) break;
    res += s;
  }
  return res;
}
const O_RDONLY: c_int = 0;
const O_WRONLY: c_int = 1;
const O_RDWR: c_int = 2;
function openFile(filename: string, flag: c_int): c_int {
  const fileName = stringToAsciiz(filename);
  const fd: c_int = _open(fileName, 0);
  if (fd === -1) {
    throwErrnoAndMsg();
  }
  _free(fileName);
  return fd;
}
function processIncomingText(fileName: string, useFOpen: boolean) {
  let fd: c_int = 0;
  if (useFOpen) {
    fd = fopen(fileName, "r");
  } else {
    fd = openFile(fileName, O_RDONLY);
  }

  try {
    print("====");
    print(freadAll(fd));
    print("====");
  } finally {
    fclose(fd);
  }
}
processIncomingText("file.txt", true);
