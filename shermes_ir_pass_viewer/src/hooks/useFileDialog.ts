import { useCallback, useRef, useState } from "react";
/**
 * Copied from https://github.com/childrentime/reactuse all credit goes to @childrentime (crazy github username) 
 * Liscence: The Unlicense
 This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
 */
export const defaultOptions = {};

export function defaultOnError(e: any) {
  console.error(e);
}
/**
 * @title useFileDialog
 * @returns 包含以下元素的元组：
 * - 文件数组。
 * - 打开文件选择器函数。
 * - 重置函数。
 * @returns_en A tuple with the following elements:
 * - file array.
 * - A function to open file dialog.
 * - A function to reset files
 * @returns_zh-Hant 包含以下元素的元組：
 * - 檔案陣列。
 * - 打開檔案選擇器函數。
 * - 重設函數。
 */
export type UseFileDialog = (
  options?: UseFileDialogOptions,
) => readonly [
  FileList | null,
  (
    localOptions?: Partial<UseFileDialogOptions>,
  ) => Promise<FileList | null | undefined>,
  () => void,
];

/**
 * @title UseFileDialogOptions
 */
export interface UseFileDialogOptions {
  /**
   * @zh 选择多个文件
   * @zh-Hant 選擇多個檔案
   * @en choose multiple file
   * @defaultValue true
   */
  multiple?: boolean;
  /**
   * @zh 可以接受的文件类型
   * @en accept file type
   * @defaultValue '*'
   */
  accept?: string;
  /**
   * @zh [指定设备，可以从麦克风或者摄像头中获取文件](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/capture)
   * @en [Specify the device to obtain files from the microphone or camera](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/capture)
   * @see [HTMLInputElement Capture](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/capture)
   */
  capture?: string;
}
const DEFAULT_OPTIONS: UseFileDialogOptions = {
  multiple: true,
  accept: ".txt,.log,.dump,.ll",
  //accept: "*",
};

export const useFileDialog: UseFileDialog = (
  options: UseFileDialogOptions = defaultOptions,
) => {
  const [files, setFiles] = useState<FileList | null>(null);
  const inputRef = useRef<HTMLInputElement | undefined>(undefined);
  const fileOpenPromiseRef = useRef<Promise<FileList | null> | null>(null);
  const resolveFileOpenPromiseRef =
    useRef<(value: FileList | null) => void | undefined>(undefined);
  const initFn = useCallback(() => {
    if (typeof document === "undefined") {
      return undefined;
    }
    const input = document.createElement("input");
    input.type = "file";

    input.onchange = (event: Event) => {
      const result = event.target as HTMLInputElement;
      setFiles(result.files);
      resolveFileOpenPromiseRef.current?.(result.files);
    };
    return input;
  }, []);
  inputRef.current = initFn();

  const open = async (localOptions?: Partial<UseFileDialogOptions>) => {
    if (!inputRef.current) {
      return;
    }
    const _options = {
      ...DEFAULT_OPTIONS,
      ...options,
      ...localOptions,
    };
    console.log("options: ", options);
    console.log("localOptions: ", localOptions);
    console.log("_options: ", _options);

    inputRef.current.multiple = _options.multiple!;
    inputRef.current.accept = _options.accept!;
    // Only set capture attribute if it's explicitly provided
    if (_options.capture !== undefined) {
      inputRef.current.capture = _options.capture;
    }

    fileOpenPromiseRef.current = new Promise((resolve) => {
      resolveFileOpenPromiseRef.current = resolve;
    });
    inputRef.current.click();
    return fileOpenPromiseRef.current;
  };

  const reset = () => {
    setFiles(null);
    resolveFileOpenPromiseRef.current?.(null);
    if (inputRef.current) {
      inputRef.current.value = "";
    }
  };

  return [files, open, reset] as const;
};
