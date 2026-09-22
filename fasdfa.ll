*** INITIAL STATE

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %9 = BinaryStrictlyNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %9: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %17 = BinaryModuloInst (:any) %16: number, 1: number
  %18 = CheckedTypeCastInst (:number) %17: any, type(number)
  %19 = BinarySubtractInst (:any) %14: number, %18: number
  %20 = CheckedTypeCastInst (:number) %19: any, type(number)
        StoreFrameInst %1: environment, %20: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %26 = BinaryStrictlyNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %26: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS20 []

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS20: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS21 []

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS21: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS22 []

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS22: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS23 []

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS23: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS24 []

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS24: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %6 = UnionNarrowTrustedInst (:object) %5: object
  %7 = AllocTypedObjectInst (:object) %6: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER StripDebugInsts

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %9 = BinaryStrictlyNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %9: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %17 = BinaryModuloInst (:any) %16: number, 1: number
  %18 = CheckedTypeCastInst (:number) %17: any, type(number)
  %19 = BinarySubtractInst (:any) %14: number, %18: number
  %20 = CheckedTypeCastInst (:number) %19: any, type(number)
        StoreFrameInst %1: environment, %20: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %26 = BinaryStrictlyNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %26: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS20 []

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS20: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS21 []

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS21: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS22 []

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS22: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS23 []

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS23: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS24 []

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS24: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %6 = UnionNarrowTrustedInst (:object) %5: object
  %7 = AllocTypedObjectInst (:object) %6: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end

*** INITIAL STATE

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %9 = BinaryStrictlyNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %9: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %17 = BinaryModuloInst (:any) %16: number, 1: number
  %18 = CheckedTypeCastInst (:number) %17: any, type(number)
  %19 = BinarySubtractInst (:any) %14: number, %18: number
  %20 = CheckedTypeCastInst (:number) %19: any, type(number)
        StoreFrameInst %1: environment, %20: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %26 = BinaryStrictlyNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %26: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS20 []

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS20: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS21 []

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS21: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS22 []

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS22: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS23 []

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS23: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS24 []

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS24: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %6 = UnionNarrowTrustedInst (:object) %5: object
  %7 = AllocTypedObjectInst (:object) %6: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerGeneratorFunction

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %9 = BinaryStrictlyNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %9: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %17 = BinaryModuloInst (:any) %16: number, 1: number
  %18 = CheckedTypeCastInst (:number) %17: any, type(number)
  %19 = BinarySubtractInst (:any) %14: number, %18: number
  %20 = CheckedTypeCastInst (:number) %19: any, type(number)
        StoreFrameInst %1: environment, %20: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %26 = BinaryStrictlyNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %26: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
  %14 = CheckedTypeCastInst (:any) %13: any, type(any)
        ReturnInst %14: any
function_end

scope %VS20 []

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS20: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS21 []

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS21: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS22 []

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS22: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS23 []

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS23: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS24 []

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS24: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
  %8 = CheckedTypeCastInst (:any) %7: any, type(any)
       ReturnInst %8: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
  %11 = CheckedTypeCastInst (:any) %10: any, type(any)
        ReturnInst %11: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %6 = UnionNarrowTrustedInst (:object) %5: object
  %7 = AllocTypedObjectInst (:object) %6: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER InstSimplify

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
        StoreFrameInst %1: environment, %37: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS20 []

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS20: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS21 []

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS21: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS22 []

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS22: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS23 []

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS23: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS24 []

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS24: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER ResolveStaticRequire

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
        StoreFrameInst %1: environment, %37: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS20 []

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS20: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS21 []

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS21: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS22 []

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS22: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS23 []

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS23: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS24 []

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS24: any, %1: environment
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER DCE

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
        StoreFrameInst %1: environment, %37: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerBuiltinCallsOptimized

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB2
%BB1:
        ReturnInst true: boolean
%BB2:
        BranchInst %BB3
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB2
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB2
%BB1:
        ReturnInst 0: number
%BB2:
        BranchInst %BB3
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
        StoreFrameInst %1: environment, %37: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB5
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB5:
        BranchInst %BB6
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimplifyCFG

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 [__SameValueZero: any, __ToIntegerOrInfinity: any, charAt: any, at: any, charCodeAt: any, codePointAt: any, concat: any, endsWith: any, includes: any, indexOf: any, lastIndexOf: any, padEnd: any, padStart: any, repeat: any, slice: any, split: any, startsWith: any, substring: any, toLowerCase: any, toUpperCase: any, trim: any, trimStart: any, trimEnd: any, toFixed: any, toPrecision: any, toExponential: any, toString: any]

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
       StoreFrameInst %1: environment, %2: object, [%VS1.__SameValueZero]: any
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
       StoreFrameInst %1: environment, %4: object, [%VS1.__ToIntegerOrInfinity]: any
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
       StoreFrameInst %1: environment, %6: object, [%VS1.charAt]: any
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
       StoreFrameInst %1: environment, %8: object, [%VS1.at]: any
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
        StoreFrameInst %1: environment, %10: object, [%VS1.charCodeAt]: any
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
        StoreFrameInst %1: environment, %12: object, [%VS1.codePointAt]: any
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
        StoreFrameInst %1: environment, %14: object, [%VS1.concat]: any
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
        StoreFrameInst %1: environment, %16: object, [%VS1.endsWith]: any
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
        StoreFrameInst %1: environment, %18: object, [%VS1.includes]: any
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
        StoreFrameInst %1: environment, %20: object, [%VS1.indexOf]: any
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
        StoreFrameInst %1: environment, %22: object, [%VS1.lastIndexOf]: any
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
        StoreFrameInst %1: environment, %24: object, [%VS1.padEnd]: any
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
        StoreFrameInst %1: environment, %26: object, [%VS1.padStart]: any
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
        StoreFrameInst %1: environment, %28: object, [%VS1.repeat]: any
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
        StoreFrameInst %1: environment, %30: object, [%VS1.slice]: any
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
        StoreFrameInst %1: environment, %32: object, [%VS1.split]: any
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
        StoreFrameInst %1: environment, %34: object, [%VS1.startsWith]: any
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
        StoreFrameInst %1: environment, %36: object, [%VS1.substring]: any
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
        StoreFrameInst %1: environment, %38: object, [%VS1.toLowerCase]: any
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
        StoreFrameInst %1: environment, %40: object, [%VS1.toUpperCase]: any
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
        StoreFrameInst %1: environment, %42: object, [%VS1.trim]: any
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
        StoreFrameInst %1: environment, %44: object, [%VS1.trimStart]: any
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
        StoreFrameInst %1: environment, %46: object, [%VS1.trimEnd]: any
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
        StoreFrameInst %1: environment, %48: object, [%VS1.toFixed]: any
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
        StoreFrameInst %1: environment, %50: object, [%VS1.toPrecision]: any
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
        StoreFrameInst %1: environment, %52: object, [%VS1.toExponential]: any
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
        StoreFrameInst %1: environment, %54: object, [%VS1.toString]: any
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

scope %VS2 [x: any, y: any]

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS2: any, %0: environment
  %2 = LoadParamInst (:any) %x: any
       StoreFrameInst %1: environment, %2: any, [%VS2.x]: any
  %4 = LoadParamInst (:any) %y: any
       StoreFrameInst %1: environment, %4: any, [%VS2.y]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %6: any, %7: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %12 = LoadFrameInst (:any) %1: environment, [%VS2.x]: any
  %13 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %14 = BinaryStrictlyEqualInst (:boolean) %12: any, %13: any
        ReturnInst %14: boolean
%BB4:
  %16 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %17 = LoadFrameInst (:any) %1: environment, [%VS2.y]: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %16: any, %17: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

scope %VS3 [n: any, trunc: any]

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS3: any, %0: environment
  %2 = LoadParamInst (:number) %n: number
       StoreFrameInst %1: environment, %2: number, [%VS3.n]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS3.trunc]: any
  %5 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %6 = CheckedTypeCastInst (:number) %5: any, type(number)
  %7 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %8 = CheckedTypeCastInst (:number) %7: any, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %13 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %14 = CheckedTypeCastInst (:number) %13: any, type(number)
  %15 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %16 = CheckedTypeCastInst (:number) %15: any, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
        StoreFrameInst %1: environment, %37: number, [%VS3.trunc]: any
  %22 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %23 = CheckedTypeCastInst (:number) %22: any, type(number)
  %24 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %25 = CheckedTypeCastInst (:number) %24: any, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %28 = LoadFrameInst (:any) %1: environment, [%VS3.n]: any
  %29 = CheckedTypeCastInst (:number) %28: any, type(number)
        ReturnInst %29: number
%BB6:
  %32 = LoadFrameInst (:any) %1: environment, [%VS3.trunc]: any
  %33 = CheckedTypeCastInst (:number) %32: any, type(number)
        ReturnInst %33: number
function_end

scope %VS4 [pos: any]

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS4: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS4.pos]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS4.pos]: any
  %6 = LoadPropertyInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS5 [index: any]

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS5: any, %1: environment
  %3 = LoadParamInst (:any) %index: any
       StoreFrameInst %2: environment, %3: any, [%VS5.index]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS5.index]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS6 [pos: any]

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS6: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS6.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS6.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS7 [pos: any]

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS7: any, %1: environment
  %3 = LoadParamInst (:any) %pos: any
       StoreFrameInst %2: environment, %3: any, [%VS7.pos]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS7.pos]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS8 [other: any]

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS8: any, %1: environment
  %3 = LoadParamInst (:any) %other: any
       StoreFrameInst %2: environment, %3: any, [%VS8.other]: any
  %5 = LoadFrameInst (:any) %2: environment, [%VS8.other]: any
  %6 = BinaryAddInst (:any) %0: any, %5: any
       ReturnInst %6: any
function_end

scope %VS9 [searchString: any, endPosition: any]

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS9: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS9.searchString]: any
  %5 = LoadParamInst (:any) %endPosition: any
       StoreFrameInst %2: environment, %5: any, [%VS9.endPosition]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS9.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS9.endPosition]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS10 [searchString: any, position: any]

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS10: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS10.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS10.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS10.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS10.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS11 [searchString: any, position: any]

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS11: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS11.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS11.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS11.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS11.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS12 [searchString: any, position: any]

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS12: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS12.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS12.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS12.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS12.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS13 [targetLength: any, padString: any]

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS13: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS13.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS13.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS13.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS13.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS14 [targetLength: any, padString: any]

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS14: any, %1: environment
  %3 = LoadParamInst (:any) %targetLength: any
       StoreFrameInst %2: environment, %3: any, [%VS14.targetLength]: any
  %5 = LoadParamInst (:any) %padString: any
       StoreFrameInst %2: environment, %5: any, [%VS14.padString]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS14.targetLength]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS14.padString]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS15 [count: any]

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS15: any, %1: environment
  %3 = LoadParamInst (:any) %count: any
       StoreFrameInst %2: environment, %3: any, [%VS15.count]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS15.count]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS16 [start: any, end: any]

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS16: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS16.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS16.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS16.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS16.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS17 [separator: any, limit: any]

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS17: any, %1: environment
  %3 = LoadParamInst (:any) %separator: any
       StoreFrameInst %2: environment, %3: any, [%VS17.separator]: any
  %5 = LoadParamInst (:any) %limit: any
       StoreFrameInst %2: environment, %5: any, [%VS17.limit]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS17.separator]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS17.limit]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS18 [searchString: any, position: any]

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS18: any, %1: environment
  %3 = LoadParamInst (:any) %searchString: any
       StoreFrameInst %2: environment, %3: any, [%VS18.searchString]: any
  %5 = LoadParamInst (:any) %position: any
       StoreFrameInst %2: environment, %5: any, [%VS18.position]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS18.searchString]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS18.position]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

scope %VS19 [start: any, end: any]

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS19: any, %1: environment
  %3 = LoadParamInst (:any) %start: any
       StoreFrameInst %2: environment, %3: any, [%VS19.start]: any
  %5 = LoadParamInst (:any) %end: any
       StoreFrameInst %2: environment, %5: any, [%VS19.end]: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %11 = LoadFrameInst (:any) %2: environment, [%VS19.start]: any
  %12 = LoadFrameInst (:any) %2: environment, [%VS19.end]: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %11: any, %12: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

scope %VS25 [digits: any]

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS25: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS25.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS25.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS26 [precision: any]

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS26: any, %1: environment
  %3 = LoadParamInst (:any) %precision: any
       StoreFrameInst %2: environment, %3: any, [%VS26.precision]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS26.precision]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS27 [digits: any]

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS27: any, %1: environment
  %3 = LoadParamInst (:any) %digits: any
       StoreFrameInst %2: environment, %3: any, [%VS27.digits]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS27.digits]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS28 [radix: any]

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS28: any, %1: environment
  %3 = LoadParamInst (:any) %radix: any
       StoreFrameInst %2: environment, %3: any, [%VS28.radix]: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %9 = LoadFrameInst (:any) %2: environment, [%VS28.radix]: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %9: any
        ReturnInst %10: any
function_end

scope %VS29 [exports: any, TestClass: any, illegalAssignment: any, writeTomyName: any, main: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, %2: any, [%VS29.exports]: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
       StoreFrameInst %1: environment, %5: object, [%VS29.illegalAssignment]: any
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreFrameInst %1: environment, %9: object, [%VS29.main]: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS29.main]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

scope %VS30 [target: any, key: any, value: any]

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS30: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS30.target]: any
  %4 = LoadParamInst (:any) %key: any
       StoreFrameInst %1: environment, %4: any, [%VS30.key]: any
  %6 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %6: any, [%VS30.value]: any
  %8 = LoadFrameInst (:any) %1: environment, [%VS30.target]: any
  %9 = LoadFrameInst (:any) %1: environment, [%VS30.key]: any
  %10 = LoadFrameInst (:any) %1: environment, [%VS30.value]: any
        StorePropertyStrictInst %10: any, %8: any, %9: any
        ReturnInst undefined: undefined
function_end

scope %VS31 [target: any, value: any]

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS31: any, %0: environment
  %2 = LoadParamInst (:any) %target: any
       StoreFrameInst %1: environment, %2: any, [%VS31.target]: any
  %4 = LoadParamInst (:any) %value: any
       StoreFrameInst %1: environment, %4: any, [%VS31.value]: any
  %6 = LoadFrameInst (:any) %1: environment, [%VS31.target]: any
  %7 = LoadFrameInst (:any) %1: environment, [%VS31.value]: any
       StorePropertyStrictInst %7: any, %6: any, "myName": string
       ReturnInst undefined: undefined
function_end

scope %VS32 [testClassObject: any]

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS32: any, %0: environment
       StoreFrameInst %1: environment, undefined: undefined, [%VS32.testClassObject]: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
       StoreFrameInst %1: environment, %7: object, [%VS32.testClassObject]: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %12 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %13 = CheckedTypeCastInst (:object) %12: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %16 = LoadFrameInst (:any) %1: environment, [%VS32.testClassObject]: any
  %17 = CheckedTypeCastInst (:object) %16: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

scope %VS33 [name: any]

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = CreateScopeInst (:environment) %VS33: any, %1: environment
  %3 = LoadParamInst (:string) %name: string
       StoreFrameInst %2: environment, %3: string, [%VS33.name]: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %6 = LoadFrameInst (:any) %2: environment, [%VS33.name]: any
  %7 = CheckedTypeCastInst (:string) %6: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleStackPromotion

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 []

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %20 = AllocStackInst (:any) $x: any
  %21 = AllocStackInst (:any) $y: any
  %2 = LoadParamInst (:any) %x: any
        StoreStackInst %2: any, %20: any
  %4 = LoadParamInst (:any) %y: any
        StoreStackInst %4: any, %21: any
  %24 = LoadStackInst (:any) %20: any
  %25 = LoadStackInst (:any) %20: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %24: any, %25: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %26 = LoadStackInst (:any) %20: any
  %27 = LoadStackInst (:any) %21: any
  %14 = BinaryStrictlyEqualInst (:boolean) %26: any, %27: any
        ReturnInst %14: boolean
%BB4:
  %28 = LoadStackInst (:any) %21: any
  %29 = LoadStackInst (:any) %21: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %28: any, %29: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %39 = AllocStackInst (:any) $n: any
  %40 = AllocStackInst (:any) $trunc: any
  %2 = LoadParamInst (:number) %n: number
        StoreStackInst %2: number, %39: any
        StoreStackInst undefined: undefined, %40: any
  %43 = LoadStackInst (:any) %39: any
  %6 = CheckedTypeCastInst (:number) %43: any, type(number)
  %44 = LoadStackInst (:any) %39: any
  %8 = CheckedTypeCastInst (:number) %44: any, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %45 = LoadStackInst (:any) %39: any
  %14 = CheckedTypeCastInst (:number) %45: any, type(number)
  %46 = LoadStackInst (:any) %39: any
  %16 = CheckedTypeCastInst (:number) %46: any, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
        StoreStackInst %37: number, %40: any
  %48 = LoadStackInst (:any) %40: any
  %23 = CheckedTypeCastInst (:number) %48: any, type(number)
  %49 = LoadStackInst (:any) %40: any
  %25 = CheckedTypeCastInst (:number) %49: any, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %50 = LoadStackInst (:any) %39: any
  %29 = CheckedTypeCastInst (:number) %50: any, type(number)
        ReturnInst %29: number
%BB6:
  %51 = LoadStackInst (:any) %40: any
  %33 = CheckedTypeCastInst (:number) %51: any, type(number)
        ReturnInst %33: number
function_end

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %8 = AllocStackInst (:any) $pos: any
  %3 = LoadParamInst (:any) %pos: any
       StoreStackInst %3: any, %8: any
  %10 = LoadStackInst (:any) %8: any
  %6 = LoadPropertyInst (:any) %0: any, %10: any
       ReturnInst %6: any
function_end

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $index: any
  %3 = LoadParamInst (:any) %index: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $pos: any
  %3 = LoadParamInst (:any) %pos: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $pos: any
  %3 = LoadParamInst (:any) %pos: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %8 = AllocStackInst (:any) $other: any
  %3 = LoadParamInst (:any) %other: any
       StoreStackInst %3: any, %8: any
  %10 = LoadStackInst (:any) %8: any
  %6 = BinaryAddInst (:any) %0: any, %10: any
       ReturnInst %6: any
function_end

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $endPosition: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %endPosition: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $targetLength: any
  %17 = AllocStackInst (:any) $padString: any
  %3 = LoadParamInst (:any) %targetLength: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %padString: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $targetLength: any
  %17 = AllocStackInst (:any) $padString: any
  %3 = LoadParamInst (:any) %targetLength: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %padString: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $count: any
  %3 = LoadParamInst (:any) %count: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $start: any
  %17 = AllocStackInst (:any) $end: any
  %3 = LoadParamInst (:any) %start: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %end: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %15 = AllocStackInst (:any) $separator: any
  %16 = AllocStackInst (:any) $limit: any
  %3 = LoadParamInst (:any) %separator: any
        StoreStackInst %3: any, %15: any
  %5 = LoadParamInst (:any) %limit: any
        StoreStackInst %5: any, %16: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %19 = LoadStackInst (:any) %15: any
  %20 = LoadStackInst (:any) %16: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %19: any, %20: any
        ReturnInst %13: any
function_end

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $start: any
  %17 = AllocStackInst (:any) $end: any
  %3 = LoadParamInst (:any) %start: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %end: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $digits: any
  %3 = LoadParamInst (:any) %digits: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $precision: any
  %3 = LoadParamInst (:any) %precision: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $digits: any
  %3 = LoadParamInst (:any) %digits: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $radix: any
  %3 = LoadParamInst (:any) %radix: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %20 = AllocStackInst (:any) $main: any
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
       StoreFrameInst %1: environment, undefined: undefined, [%VS29.TestClass]: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreStackInst %9: object, %20: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %22 = LoadStackInst (:any) %20: any
  %17 = CheckedTypeCastInst (:object) %22: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %13 = AllocStackInst (:any) $target: any
  %14 = AllocStackInst (:any) $key: any
  %15 = AllocStackInst (:any) $value: any
  %2 = LoadParamInst (:any) %target: any
        StoreStackInst %2: any, %13: any
  %4 = LoadParamInst (:any) %key: any
        StoreStackInst %4: any, %14: any
  %6 = LoadParamInst (:any) %value: any
        StoreStackInst %6: any, %15: any
  %19 = LoadStackInst (:any) %13: any
  %20 = LoadStackInst (:any) %14: any
  %21 = LoadStackInst (:any) %15: any
        StorePropertyStrictInst %21: any, %19: any, %20: any
        ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %10 = AllocStackInst (:any) $target: any
  %11 = AllocStackInst (:any) $value: any
  %2 = LoadParamInst (:any) %target: any
        StoreStackInst %2: any, %10: any
  %4 = LoadParamInst (:any) %value: any
        StoreStackInst %4: any, %11: any
  %14 = LoadStackInst (:any) %10: any
  %15 = LoadStackInst (:any) %11: any
       StorePropertyStrictInst %15: any, %14: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %21 = AllocStackInst (:any) $testClassObject: any
        StoreStackInst undefined: undefined, %21: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
        StoreStackInst %7: object, %21: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %24 = LoadStackInst (:any) %21: any
  %13 = CheckedTypeCastInst (:object) %24: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %25 = LoadStackInst (:any) %21: any
  %17 = CheckedTypeCastInst (:object) %25: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %10 = AllocStackInst (:any) $name: any
  %3 = LoadParamInst (:string) %name: string
        StoreStackInst %3: string, %10: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %12 = LoadStackInst (:any) %10: any
  %7 = CheckedTypeCastInst (:string) %12: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER FrameLoadStoreOpts

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %1 = AllocStackInst (:any) $?anon_0_ret: any
       StoreStackInst undefined: undefined, %1: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       StoreStackInst %4: any, %1: any
  %6 = LoadStackInst (:any) %1: any
       ReturnInst %6: any
function_end

scope %VS1 []

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %20 = AllocStackInst (:any) $x: any
  %21 = AllocStackInst (:any) $y: any
  %2 = LoadParamInst (:any) %x: any
        StoreStackInst %2: any, %20: any
  %4 = LoadParamInst (:any) %y: any
        StoreStackInst %4: any, %21: any
  %24 = LoadStackInst (:any) %20: any
  %25 = LoadStackInst (:any) %20: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %24: any, %25: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %26 = LoadStackInst (:any) %20: any
  %27 = LoadStackInst (:any) %21: any
  %14 = BinaryStrictlyEqualInst (:boolean) %26: any, %27: any
        ReturnInst %14: boolean
%BB4:
  %28 = LoadStackInst (:any) %21: any
  %29 = LoadStackInst (:any) %21: any
  %18 = BinaryStrictlyNotEqualInst (:boolean) %28: any, %29: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %39 = AllocStackInst (:any) $n: any
  %40 = AllocStackInst (:any) $trunc: any
  %2 = LoadParamInst (:number) %n: number
        StoreStackInst %2: number, %39: any
        StoreStackInst undefined: undefined, %40: any
  %43 = LoadStackInst (:any) %39: any
  %6 = CheckedTypeCastInst (:number) %43: any, type(number)
  %44 = LoadStackInst (:any) %39: any
  %8 = CheckedTypeCastInst (:number) %44: any, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %45 = LoadStackInst (:any) %39: any
  %14 = CheckedTypeCastInst (:number) %45: any, type(number)
  %46 = LoadStackInst (:any) %39: any
  %16 = CheckedTypeCastInst (:number) %46: any, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
        StoreStackInst %37: number, %40: any
  %48 = LoadStackInst (:any) %40: any
  %23 = CheckedTypeCastInst (:number) %48: any, type(number)
  %49 = LoadStackInst (:any) %40: any
  %25 = CheckedTypeCastInst (:number) %49: any, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %50 = LoadStackInst (:any) %39: any
  %29 = CheckedTypeCastInst (:number) %50: any, type(number)
        ReturnInst %29: number
%BB6:
  %51 = LoadStackInst (:any) %40: any
  %33 = CheckedTypeCastInst (:number) %51: any, type(number)
        ReturnInst %33: number
function_end

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %8 = AllocStackInst (:any) $pos: any
  %3 = LoadParamInst (:any) %pos: any
       StoreStackInst %3: any, %8: any
  %10 = LoadStackInst (:any) %8: any
  %6 = LoadPropertyInst (:any) %0: any, %10: any
       ReturnInst %6: any
function_end

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $index: any
  %3 = LoadParamInst (:any) %index: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $pos: any
  %3 = LoadParamInst (:any) %pos: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $pos: any
  %3 = LoadParamInst (:any) %pos: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %8 = AllocStackInst (:any) $other: any
  %3 = LoadParamInst (:any) %other: any
       StoreStackInst %3: any, %8: any
  %10 = LoadStackInst (:any) %8: any
  %6 = BinaryAddInst (:any) %0: any, %10: any
       ReturnInst %6: any
function_end

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $endPosition: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %endPosition: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $targetLength: any
  %17 = AllocStackInst (:any) $padString: any
  %3 = LoadParamInst (:any) %targetLength: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %padString: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $targetLength: any
  %17 = AllocStackInst (:any) $padString: any
  %3 = LoadParamInst (:any) %targetLength: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %padString: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $count: any
  %3 = LoadParamInst (:any) %count: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $start: any
  %17 = AllocStackInst (:any) $end: any
  %3 = LoadParamInst (:any) %start: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %end: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %15 = AllocStackInst (:any) $separator: any
  %16 = AllocStackInst (:any) $limit: any
  %3 = LoadParamInst (:any) %separator: any
        StoreStackInst %3: any, %15: any
  %5 = LoadParamInst (:any) %limit: any
        StoreStackInst %5: any, %16: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %19 = LoadStackInst (:any) %15: any
  %20 = LoadStackInst (:any) %16: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %19: any, %20: any
        ReturnInst %13: any
function_end

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $searchString: any
  %17 = AllocStackInst (:any) $position: any
  %3 = LoadParamInst (:any) %searchString: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %position: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %16 = AllocStackInst (:any) $start: any
  %17 = AllocStackInst (:any) $end: any
  %3 = LoadParamInst (:any) %start: any
        StoreStackInst %3: any, %16: any
  %5 = LoadParamInst (:any) %end: any
        StoreStackInst %5: any, %17: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %20 = LoadStackInst (:any) %16: any
  %21 = LoadStackInst (:any) %17: any
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %20: any, %21: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $digits: any
  %3 = LoadParamInst (:any) %digits: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $precision: any
  %3 = LoadParamInst (:any) %precision: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $digits: any
  %3 = LoadParamInst (:any) %digits: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %13 = AllocStackInst (:any) $radix: any
  %3 = LoadParamInst (:any) %radix: any
        StoreStackInst %3: any, %13: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %15 = LoadStackInst (:any) %13: any
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %15: any
        ReturnInst %10: any
function_end

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %20 = AllocStackInst (:any) $main: any
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
        StoreStackInst %9: object, %20: any
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %22 = LoadStackInst (:any) %20: any
  %17 = CheckedTypeCastInst (:object) %22: any, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %13 = AllocStackInst (:any) $target: any
  %14 = AllocStackInst (:any) $key: any
  %15 = AllocStackInst (:any) $value: any
  %2 = LoadParamInst (:any) %target: any
        StoreStackInst %2: any, %13: any
  %4 = LoadParamInst (:any) %key: any
        StoreStackInst %4: any, %14: any
  %6 = LoadParamInst (:any) %value: any
        StoreStackInst %6: any, %15: any
  %19 = LoadStackInst (:any) %13: any
  %20 = LoadStackInst (:any) %14: any
  %21 = LoadStackInst (:any) %15: any
        StorePropertyStrictInst %21: any, %19: any, %20: any
        ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %10 = AllocStackInst (:any) $target: any
  %11 = AllocStackInst (:any) $value: any
  %2 = LoadParamInst (:any) %target: any
        StoreStackInst %2: any, %10: any
  %4 = LoadParamInst (:any) %value: any
        StoreStackInst %4: any, %11: any
  %14 = LoadStackInst (:any) %10: any
  %15 = LoadStackInst (:any) %11: any
       StorePropertyStrictInst %15: any, %14: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %21 = AllocStackInst (:any) $testClassObject: any
        StoreStackInst undefined: undefined, %21: any
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
        StoreStackInst %7: object, %21: any
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %24 = LoadStackInst (:any) %21: any
  %13 = CheckedTypeCastInst (:object) %24: any, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %25 = LoadStackInst (:any) %21: any
  %17 = CheckedTypeCastInst (:object) %25: any, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %10 = AllocStackInst (:any) $name: any
  %3 = LoadParamInst (:string) %name: string
        StoreStackInst %3: string, %10: any
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %12 = LoadStackInst (:any) %10: any
  %7 = CheckedTypeCastInst (:string) %12: any, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleMem2Reg

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       ReturnInst %4: any
function_end

scope %VS1 []

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = LoadParamInst (:any) %x: any
  %4 = LoadParamInst (:any) %y: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %2: any, %2: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %14 = BinaryStrictlyEqualInst (:boolean) %2: any, %4: any
        ReturnInst %14: boolean
%BB4:
  %18 = BinaryStrictlyNotEqualInst (:boolean) %4: any, %4: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = LoadParamInst (:number) %n: number
  %6 = CheckedTypeCastInst (:number) %2: number, type(number)
  %8 = CheckedTypeCastInst (:number) %2: number, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %14 = CheckedTypeCastInst (:number) %2: number, type(number)
  %16 = CheckedTypeCastInst (:number) %2: number, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
  %23 = CheckedTypeCastInst (:number) %37: number, type(number)
  %25 = CheckedTypeCastInst (:number) %37: number, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %29 = CheckedTypeCastInst (:number) %2: number, type(number)
        ReturnInst %29: number
%BB6:
  %33 = CheckedTypeCastInst (:number) %37: number, type(number)
        ReturnInst %33: number
function_end

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %6 = LoadPropertyInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %index: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %other: any
  %6 = BinaryAddInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %endPosition: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %count: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %separator: any
  %5 = LoadParamInst (:any) %limit: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %precision: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %radix: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %17 = CheckedTypeCastInst (:object) %9: object, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %key: any
  %6 = LoadParamInst (:any) %value: any
        StorePropertyStrictInst %6: any, %2: any, %4: any
        ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleStackPromotion

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       ReturnInst %4: any
function_end

scope %VS1 []

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS1: any, %0: environment
  %2 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__SameValueZero(): functionCode
  %4 = CreateFunctionInst (:object) %1: environment, %VS1: any, %__ToIntegerOrInfinity(): functionCode
  %6 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charAt(): functionCode
  %8 = CreateFunctionInst (:object) %1: environment, %VS1: any, %at(): functionCode
  %10 = CreateFunctionInst (:object) %1: environment, %VS1: any, %charCodeAt(): functionCode
  %12 = CreateFunctionInst (:object) %1: environment, %VS1: any, %codePointAt(): functionCode
  %14 = CreateFunctionInst (:object) %1: environment, %VS1: any, %concat(): functionCode
  %16 = CreateFunctionInst (:object) %1: environment, %VS1: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %1: environment, %VS1: any, %includes(): functionCode
  %20 = CreateFunctionInst (:object) %1: environment, %VS1: any, %indexOf(): functionCode
  %22 = CreateFunctionInst (:object) %1: environment, %VS1: any, %lastIndexOf(): functionCode
  %24 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padEnd(): functionCode
  %26 = CreateFunctionInst (:object) %1: environment, %VS1: any, %padStart(): functionCode
  %28 = CreateFunctionInst (:object) %1: environment, %VS1: any, %repeat(): functionCode
  %30 = CreateFunctionInst (:object) %1: environment, %VS1: any, %slice(): functionCode
  %32 = CreateFunctionInst (:object) %1: environment, %VS1: any, %split(): functionCode
  %34 = CreateFunctionInst (:object) %1: environment, %VS1: any, %startsWith(): functionCode
  %36 = CreateFunctionInst (:object) %1: environment, %VS1: any, %substring(): functionCode
  %38 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toLowerCase(): functionCode
  %40 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toUpperCase(): functionCode
  %42 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trim(): functionCode
  %44 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimStart(): functionCode
  %46 = CreateFunctionInst (:object) %1: environment, %VS1: any, %trimEnd(): functionCode
  %48 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toFixed(): functionCode
  %50 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toPrecision(): functionCode
  %52 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toExponential(): functionCode
  %54 = CreateFunctionInst (:object) %1: environment, %VS1: any, %toString(): functionCode
  %56 = CreateFunctionInst (:object) %1: environment, %VS1: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = LoadParamInst (:any) %x: any
  %4 = LoadParamInst (:any) %y: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %2: any, %2: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %14 = BinaryStrictlyEqualInst (:boolean) %2: any, %4: any
        ReturnInst %14: boolean
%BB4:
  %18 = BinaryStrictlyNotEqualInst (:boolean) %4: any, %4: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %2 = LoadParamInst (:number) %n: number
  %6 = CheckedTypeCastInst (:number) %2: number, type(number)
  %8 = CheckedTypeCastInst (:number) %2: number, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %14 = CheckedTypeCastInst (:number) %2: number, type(number)
  %16 = CheckedTypeCastInst (:number) %2: number, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
  %23 = CheckedTypeCastInst (:number) %37: number, type(number)
  %25 = CheckedTypeCastInst (:number) %37: number, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %29 = CheckedTypeCastInst (:number) %2: number, type(number)
        ReturnInst %29: number
%BB6:
  %33 = CheckedTypeCastInst (:number) %37: number, type(number)
        ReturnInst %33: number
function_end

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %6 = LoadPropertyInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %index: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %other: any
  %6 = BinaryAddInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %endPosition: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %count: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %separator: any
  %5 = LoadParamInst (:any) %limit: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %precision: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %3 = LoadParamInst (:any) %radix: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS1: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %17 = CheckedTypeCastInst (:object) %9: object, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %key: any
  %6 = LoadParamInst (:any) %value: any
        StorePropertyStrictInst %6: any, %2: any, %4: any
        ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER ScopeElimination

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
       ReturnInst %4: any
function_end

function ""(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__SameValueZero(): functionCode
  %4 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__ToIntegerOrInfinity(): functionCode
  %6 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charAt(): functionCode
  %8 = CreateFunctionInst (:object) %0: environment, %VS0: any, %at(): functionCode
  %10 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charCodeAt(): functionCode
  %12 = CreateFunctionInst (:object) %0: environment, %VS0: any, %codePointAt(): functionCode
  %14 = CreateFunctionInst (:object) %0: environment, %VS0: any, %concat(): functionCode
  %16 = CreateFunctionInst (:object) %0: environment, %VS0: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %0: environment, %VS0: any, %includes(): functionCode
  %20 = CreateFunctionInst (:object) %0: environment, %VS0: any, %indexOf(): functionCode
  %22 = CreateFunctionInst (:object) %0: environment, %VS0: any, %lastIndexOf(): functionCode
  %24 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padEnd(): functionCode
  %26 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padStart(): functionCode
  %28 = CreateFunctionInst (:object) %0: environment, %VS0: any, %repeat(): functionCode
  %30 = CreateFunctionInst (:object) %0: environment, %VS0: any, %slice(): functionCode
  %32 = CreateFunctionInst (:object) %0: environment, %VS0: any, %split(): functionCode
  %34 = CreateFunctionInst (:object) %0: environment, %VS0: any, %startsWith(): functionCode
  %36 = CreateFunctionInst (:object) %0: environment, %VS0: any, %substring(): functionCode
  %38 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toLowerCase(): functionCode
  %40 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toUpperCase(): functionCode
  %42 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trim(): functionCode
  %44 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimStart(): functionCode
  %46 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimEnd(): functionCode
  %48 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toFixed(): functionCode
  %50 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toPrecision(): functionCode
  %52 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toExponential(): functionCode
  %54 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toString(): functionCode
  %56 = CreateFunctionInst (:object) %0: environment, %VS0: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

function __SameValueZero(x: any, y: any): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = LoadParamInst (:any) %x: any
  %4 = LoadParamInst (:any) %y: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %2: any, %2: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %14 = BinaryStrictlyEqualInst (:boolean) %2: any, %4: any
        ReturnInst %14: boolean
%BB4:
  %18 = BinaryStrictlyNotEqualInst (:boolean) %4: any, %4: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

function __ToIntegerOrInfinity(n: number): any [typed]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = LoadParamInst (:number) %n: number
  %6 = CheckedTypeCastInst (:number) %2: number, type(number)
  %8 = CheckedTypeCastInst (:number) %2: number, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %14 = CheckedTypeCastInst (:number) %2: number, type(number)
  %16 = CheckedTypeCastInst (:number) %2: number, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
  %23 = CheckedTypeCastInst (:number) %37: number, type(number)
  %25 = CheckedTypeCastInst (:number) %37: number, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %29 = CheckedTypeCastInst (:number) %2: number, type(number)
        ReturnInst %29: number
%BB6:
  %33 = CheckedTypeCastInst (:number) %37: number, type(number)
        ReturnInst %33: number
function_end

function charAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %6 = LoadPropertyInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function at(index: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %index: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function charCodeAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function codePointAt(pos: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function concat(other: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %other: any
  %6 = BinaryAddInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function endsWith(searchString: any, endPosition: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %endPosition: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function includes(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function indexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function lastIndexOf(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padEnd(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padStart(targetLength: any, padString: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function repeat(count: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %count: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function slice(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function split(separator: any, limit: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %separator: any
  %5 = LoadParamInst (:any) %limit: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function startsWith(searchString: any, position: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function substring(start: any, end: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function toLowerCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toFixed(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toPrecision(precision: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %precision: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toExponential(digits: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toString(radix: any): any 
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %radix: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %17 = CheckedTypeCastInst (:object) %9: object, type(object)
  %18 = CallInst [njsf] (:any) %17: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

function illegalAssignment(target: any, key: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %key: any
  %6 = LoadParamInst (:any) %value: any
        StorePropertyStrictInst %6: any, %2: any, %4: any
        ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any 
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, empty: any, %4: object, %7: object, "Dracula ": string
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
  %14 = CallInst [njsf] (:any) %11: object, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER FunctionAnalysis

scope %VS0 []

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
  %4 = CallInst [njsf] (:any) %3: object, %""(): functionCode, true: boolean, %0: environment, undefined: undefined, undefined: undefined
       ReturnInst %4: any
function_end

function ""(): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__SameValueZero(): functionCode
  %4 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__ToIntegerOrInfinity(): functionCode
  %6 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charAt(): functionCode
  %8 = CreateFunctionInst (:object) %0: environment, %VS0: any, %at(): functionCode
  %10 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charCodeAt(): functionCode
  %12 = CreateFunctionInst (:object) %0: environment, %VS0: any, %codePointAt(): functionCode
  %14 = CreateFunctionInst (:object) %0: environment, %VS0: any, %concat(): functionCode
  %16 = CreateFunctionInst (:object) %0: environment, %VS0: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %0: environment, %VS0: any, %includes(): functionCode
  %20 = CreateFunctionInst (:object) %0: environment, %VS0: any, %indexOf(): functionCode
  %22 = CreateFunctionInst (:object) %0: environment, %VS0: any, %lastIndexOf(): functionCode
  %24 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padEnd(): functionCode
  %26 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padStart(): functionCode
  %28 = CreateFunctionInst (:object) %0: environment, %VS0: any, %repeat(): functionCode
  %30 = CreateFunctionInst (:object) %0: environment, %VS0: any, %slice(): functionCode
  %32 = CreateFunctionInst (:object) %0: environment, %VS0: any, %split(): functionCode
  %34 = CreateFunctionInst (:object) %0: environment, %VS0: any, %startsWith(): functionCode
  %36 = CreateFunctionInst (:object) %0: environment, %VS0: any, %substring(): functionCode
  %38 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toLowerCase(): functionCode
  %40 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toUpperCase(): functionCode
  %42 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trim(): functionCode
  %44 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimStart(): functionCode
  %46 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimEnd(): functionCode
  %48 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toFixed(): functionCode
  %50 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toPrecision(): functionCode
  %52 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toExponential(): functionCode
  %54 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toString(): functionCode
  %56 = CreateFunctionInst (:object) %0: environment, %VS0: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
  %58 = CallInst [njsf] (:any) %56: object, %" 1#"(): functionCode, true: boolean, %0: environment, undefined: undefined, undefined: undefined, %57: object
        ReturnInst %58: any
function_end

function __SameValueZero(x: any, y: any): any [allCallsitesKnownInStrictMode,typed,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = LoadParamInst (:any) %x: any
  %4 = LoadParamInst (:any) %y: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %2: any, %2: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %14 = BinaryStrictlyEqualInst (:boolean) %2: any, %4: any
        ReturnInst %14: boolean
%BB4:
  %18 = BinaryStrictlyNotEqualInst (:boolean) %4: any, %4: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

function __ToIntegerOrInfinity(n: number): any [allCallsitesKnownInStrictMode,typed,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = LoadParamInst (:number) %n: number
  %6 = CheckedTypeCastInst (:number) %2: number, type(number)
  %8 = CheckedTypeCastInst (:number) %2: number, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %14 = CheckedTypeCastInst (:number) %2: number, type(number)
  %16 = CheckedTypeCastInst (:number) %2: number, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
  %23 = CheckedTypeCastInst (:number) %37: number, type(number)
  %25 = CheckedTypeCastInst (:number) %37: number, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %29 = CheckedTypeCastInst (:number) %2: number, type(number)
        ReturnInst %29: number
%BB6:
  %33 = CheckedTypeCastInst (:number) %37: number, type(number)
        ReturnInst %33: number
function_end

function charAt(pos: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %6 = LoadPropertyInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function at(index: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %index: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function charCodeAt(pos: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function codePointAt(pos: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function concat(other: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %other: any
  %6 = BinaryAddInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function endsWith(searchString: any, endPosition: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %endPosition: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function includes(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function indexOf(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function lastIndexOf(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padEnd(targetLength: any, padString: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padStart(targetLength: any, padString: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function repeat(count: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %count: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function slice(start: any, end: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function split(separator: any, limit: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %separator: any
  %5 = LoadParamInst (:any) %limit: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function startsWith(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function substring(start: any, end: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function toLowerCase(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toFixed(digits: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toPrecision(precision: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %precision: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toExponential(digits: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toString(radix: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %radix: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function " 1#"(exports: any): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %17 = CheckedTypeCastInst (:object) %9: object, type(object)
  %18 = CallInst [njsf] (:any) %17: object, %main(): functionCode, true: boolean, %1: environment, undefined: undefined, undefined: undefined
        ReturnInst undefined: undefined
function_end

function illegalAssignment(target: any, key: any, value: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %key: any
  %6 = LoadParamInst (:any) %value: any
        StorePropertyStrictInst %6: any, %2: any, %4: any
        ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
  %8 = CallInst (:any) %4: object, %TestClass(): functionCode, true: boolean, %0: environment, %4: object, %7: object, "Dracula ": string
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
  %14 = CallInst [njsf] (:any) %11: object, %writeTomyName(): functionCode, true: boolean, %0: environment, undefined: undefined, undefined: undefined, %13: object, "Dracula, Bleh Bleh ": string
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER Inlining

scope %VS0 []

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %3 = CreateFunctionInst (:object) %0: environment, %VS0: any, %""(): functionCode
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
  %10 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__SameValueZero(): functionCode
  %11 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__ToIntegerOrInfinity(): functionCode
  %12 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charAt(): functionCode
  %13 = CreateFunctionInst (:object) %0: environment, %VS0: any, %at(): functionCode
  %14 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charCodeAt(): functionCode
  %15 = CreateFunctionInst (:object) %0: environment, %VS0: any, %codePointAt(): functionCode
  %16 = CreateFunctionInst (:object) %0: environment, %VS0: any, %concat(): functionCode
  %17 = CreateFunctionInst (:object) %0: environment, %VS0: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %0: environment, %VS0: any, %includes(): functionCode
  %19 = CreateFunctionInst (:object) %0: environment, %VS0: any, %indexOf(): functionCode
  %20 = CreateFunctionInst (:object) %0: environment, %VS0: any, %lastIndexOf(): functionCode
  %21 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padEnd(): functionCode
  %22 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padStart(): functionCode
  %23 = CreateFunctionInst (:object) %0: environment, %VS0: any, %repeat(): functionCode
  %24 = CreateFunctionInst (:object) %0: environment, %VS0: any, %slice(): functionCode
  %25 = CreateFunctionInst (:object) %0: environment, %VS0: any, %split(): functionCode
  %26 = CreateFunctionInst (:object) %0: environment, %VS0: any, %startsWith(): functionCode
  %27 = CreateFunctionInst (:object) %0: environment, %VS0: any, %substring(): functionCode
  %28 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toLowerCase(): functionCode
  %29 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toUpperCase(): functionCode
  %30 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trim(): functionCode
  %31 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimStart(): functionCode
  %32 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimEnd(): functionCode
  %33 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toFixed(): functionCode
  %34 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toPrecision(): functionCode
  %35 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toExponential(): functionCode
  %36 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toString(): functionCode
  %37 = CreateFunctionInst (:object) %0: environment, %VS0: any, %" 1#"(): functionCode
  %38 = AllocObjectLiteralInst (:object) empty: any
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %41 = CreateFunctionInst (:object) %40: environment, %VS29: any, %illegalAssignment(): functionCode
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: any
  %44 = CreateFunctionInst (:object) %40: environment, %VS29: any, %main(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: any
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %50 = CheckedTypeCastInst (:object) %44: object, type(object)
        BranchInst %BB5
%BB5:
  %52 = LoadFrameInst (:any) %40: environment, [%VS29.TestClass]: any
  %53 = CheckedTypeCastInst (:object) %52: any, type(object)
  %54 = LoadFrameInst (:object) %40: environment, [%VS29.?TestClass.prototype]: object
  %55 = AllocTypedObjectInst (:object) %54: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
  %58 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %58: string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
  %62 = LoadFrameInst (:any) %40: environment, [%VS29.writeTomyName]: any
  %63 = CheckedTypeCastInst (:object) %62: any, type(object)
  %64 = CheckedTypeCastInst (:object) %55: object, type(object)
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %64: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %70 = CheckedTypeCastInst (:object) %55: object, type(object)
  %71 = PrLoadInst (:string) %70: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function ""(): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__SameValueZero(): functionCode
  %4 = CreateFunctionInst (:object) %0: environment, %VS0: any, %__ToIntegerOrInfinity(): functionCode
  %6 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charAt(): functionCode
  %8 = CreateFunctionInst (:object) %0: environment, %VS0: any, %at(): functionCode
  %10 = CreateFunctionInst (:object) %0: environment, %VS0: any, %charCodeAt(): functionCode
  %12 = CreateFunctionInst (:object) %0: environment, %VS0: any, %codePointAt(): functionCode
  %14 = CreateFunctionInst (:object) %0: environment, %VS0: any, %concat(): functionCode
  %16 = CreateFunctionInst (:object) %0: environment, %VS0: any, %endsWith(): functionCode
  %18 = CreateFunctionInst (:object) %0: environment, %VS0: any, %includes(): functionCode
  %20 = CreateFunctionInst (:object) %0: environment, %VS0: any, %indexOf(): functionCode
  %22 = CreateFunctionInst (:object) %0: environment, %VS0: any, %lastIndexOf(): functionCode
  %24 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padEnd(): functionCode
  %26 = CreateFunctionInst (:object) %0: environment, %VS0: any, %padStart(): functionCode
  %28 = CreateFunctionInst (:object) %0: environment, %VS0: any, %repeat(): functionCode
  %30 = CreateFunctionInst (:object) %0: environment, %VS0: any, %slice(): functionCode
  %32 = CreateFunctionInst (:object) %0: environment, %VS0: any, %split(): functionCode
  %34 = CreateFunctionInst (:object) %0: environment, %VS0: any, %startsWith(): functionCode
  %36 = CreateFunctionInst (:object) %0: environment, %VS0: any, %substring(): functionCode
  %38 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toLowerCase(): functionCode
  %40 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toUpperCase(): functionCode
  %42 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trim(): functionCode
  %44 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimStart(): functionCode
  %46 = CreateFunctionInst (:object) %0: environment, %VS0: any, %trimEnd(): functionCode
  %48 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toFixed(): functionCode
  %50 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toPrecision(): functionCode
  %52 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toExponential(): functionCode
  %54 = CreateFunctionInst (:object) %0: environment, %VS0: any, %toString(): functionCode
  %56 = CreateFunctionInst (:object) %0: environment, %VS0: any, %" 1#"(): functionCode
  %57 = AllocObjectLiteralInst (:object) empty: any
        BranchInst %BB3
%BB1:
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
  %62 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %63 = CreateFunctionInst (:object) %62: environment, %VS29: any, %illegalAssignment(): functionCode
  %64 = CreateFunctionInst (:object) %62: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %62: environment, %64: object, [%VS29.writeTomyName]: any
  %66 = CreateFunctionInst (:object) %62: environment, %VS29: any, %main(): functionCode
  %67 = CreateFunctionInst (:object) %62: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %62: environment, %67: object, [%VS29.TestClass]: any
  %69 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %62: environment, %69: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %69: object, %67: object, "prototype": string
  %72 = CheckedTypeCastInst (:object) %66: object, type(object)
        BranchInst %BB4
%BB4:
  %74 = LoadFrameInst (:any) %62: environment, [%VS29.TestClass]: any
  %75 = CheckedTypeCastInst (:object) %74: any, type(object)
  %76 = LoadFrameInst (:object) %62: environment, [%VS29.?TestClass.prototype]: object
  %77 = AllocTypedObjectInst (:object) %76: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB5
%BB5:
        PrStoreInst "prop": string, %77: object, 0: number, "prop": string, false: boolean
  %80 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %80: string, %77: object, 1: number, "myName": string, false: boolean
        BranchInst %BB6
%BB6:
        BranchInst %BB7
%BB7:
  %84 = LoadFrameInst (:any) %62: environment, [%VS29.writeTomyName]: any
  %85 = CheckedTypeCastInst (:object) %84: any, type(object)
  %86 = CheckedTypeCastInst (:object) %77: object, type(object)
        BranchInst %BB8
%BB8:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %86: object, "myName": string
        BranchInst %BB9
%BB9:
        BranchInst %BB10
%BB10:
  %91 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %92 = CheckedTypeCastInst (:object) %77: object, type(object)
  %93 = PrLoadInst (:string) %92: object, 1: number, "myName": string
  %94 = CallInst (:any) %91: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %93: string
        BranchInst %BB11
%BB11:
        BranchInst %BB12
%BB12:
        BranchInst %BB2
function_end

function __SameValueZero(x: any, y: any): any [allCallsitesKnownInStrictMode,typed,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = LoadParamInst (:any) %x: any
  %4 = LoadParamInst (:any) %y: any
  %8 = BinaryStrictlyNotEqualInst (:boolean) %2: any, %2: any
       CondBranchInst %8: boolean, %BB4, %BB3
%BB1:
        ReturnInst true: boolean
%BB3:
  %14 = BinaryStrictlyEqualInst (:boolean) %2: any, %4: any
        ReturnInst %14: boolean
%BB4:
  %18 = BinaryStrictlyNotEqualInst (:boolean) %4: any, %4: any
        CondBranchInst %18: boolean, %BB1, %BB3
function_end

function __ToIntegerOrInfinity(n: number): any [allCallsitesKnownInStrictMode,typed,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %2 = LoadParamInst (:number) %n: number
  %6 = CheckedTypeCastInst (:number) %2: number, type(number)
  %8 = CheckedTypeCastInst (:number) %2: number, type(number)
  %35 = FNotEqualInst (:boolean) %6: number, %8: number
        CondBranchInst %35: boolean, %BB1, %BB3
%BB1:
        ReturnInst 0: number
%BB3:
  %14 = CheckedTypeCastInst (:number) %2: number, type(number)
  %16 = CheckedTypeCastInst (:number) %2: number, type(number)
  %36 = FModuloInst (:number) %16: number, 1: number
  %37 = FSubtractInst (:number) %14: number, %36: number
  %23 = CheckedTypeCastInst (:number) %37: number, type(number)
  %25 = CheckedTypeCastInst (:number) %37: number, type(number)
  %38 = FNotEqualInst (:boolean) %23: number, %25: number
        CondBranchInst %38: boolean, %BB4, %BB6
%BB4:
  %29 = CheckedTypeCastInst (:number) %2: number, type(number)
        ReturnInst %29: number
%BB6:
  %33 = CheckedTypeCastInst (:number) %37: number, type(number)
        ReturnInst %33: number
function_end

function charAt(pos: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %6 = LoadPropertyInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function at(index: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %index: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "at": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function charCodeAt(pos: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "charCodeAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function codePointAt(pos: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %pos: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "codePointAt": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function concat(other: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %other: any
  %6 = BinaryAddInst (:any) %0: any, %3: any
       ReturnInst %6: any
function_end

function endsWith(searchString: any, endPosition: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %endPosition: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "endsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function includes(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "includes": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function indexOf(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "indexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function lastIndexOf(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "lastIndexOf": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padEnd(targetLength: any, padString: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padEnd": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function padStart(targetLength: any, padString: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %targetLength: any
  %5 = LoadParamInst (:any) %padString: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "padStart": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function repeat(count: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %count: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "String": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "repeat": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function slice(start: any, end: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "slice": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function split(separator: any, limit: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %separator: any
  %5 = LoadParamInst (:any) %limit: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "split": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function startsWith(searchString: any, position: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %searchString: any
  %5 = LoadParamInst (:any) %position: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "startsWith": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function substring(start: any, end: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %start: any
  %5 = LoadParamInst (:any) %end: any
  %7 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %8 = LoadPropertyInst (:any) %7: any, "String": string
  %9 = LoadPropertyInst (:any) %8: any, "prototype": string
  %10 = LoadPropertyInst (:any) %9: any, "substring": string
  %13 = CallInst (:any) %10: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any, %5: any
        ReturnInst %13: any
function_end

function toLowerCase(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toLowerCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toUpperCase(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "toUpperCase": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trim(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trim": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimStart(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimStart": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function trimEnd(): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %3 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %4 = LoadPropertyInst (:any) %3: any, "String": string
  %5 = LoadPropertyInst (:any) %4: any, "prototype": string
  %6 = LoadPropertyInst (:any) %5: any, "trimEnd": string
  %7 = CallInst (:any) %6: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any
       ReturnInst %7: any
function_end

function toFixed(digits: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toFixed": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toPrecision(precision: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %precision: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toPrecision": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toExponential(digits: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %digits: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toExponential": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function toString(radix: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = LoadParamInst (:any) %<this>: any
  %1 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %3 = LoadParamInst (:any) %radix: any
  %5 = TryLoadGlobalPropertyInst (:any) globalObject: object, "globalThis": string
  %6 = LoadPropertyInst (:any) %5: any, "Number": string
  %7 = LoadPropertyInst (:any) %6: any, "prototype": string
  %8 = LoadPropertyInst (:any) %7: any, "toString": string
  %10 = CallInst (:any) %8: any, empty: any, false: boolean, empty: any, undefined: undefined, %0: any, %3: any
        ReturnInst %10: any
function_end

function " 1#"(exports: any): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS0: any, %parentScope: environment
  %1 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %2 = LoadParamInst (:any) %exports: any
  %5 = CreateFunctionInst (:object) %1: environment, %VS29: any, %illegalAssignment(): functionCode
  %7 = CreateFunctionInst (:object) %1: environment, %VS29: any, %writeTomyName(): functionCode
       StoreFrameInst %1: environment, %7: object, [%VS29.writeTomyName]: any
  %9 = CreateFunctionInst (:object) %1: environment, %VS29: any, %main(): functionCode
  %11 = CreateFunctionInst (:object) %1: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %1: environment, %11: object, [%VS29.TestClass]: any
  %13 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %1: environment, %13: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %13: object, %11: object, "prototype": string
  %17 = CheckedTypeCastInst (:object) %9: object, type(object)
        BranchInst %BB3
%BB1:
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
  %25 = LoadFrameInst (:any) %1: environment, [%VS29.TestClass]: any
  %26 = CheckedTypeCastInst (:object) %25: any, type(object)
  %27 = LoadFrameInst (:object) %1: environment, [%VS29.?TestClass.prototype]: object
  %28 = AllocTypedObjectInst (:object) %27: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB4
%BB4:
        PrStoreInst "prop": string, %28: object, 0: number, "prop": string, false: boolean
  %31 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %31: string, %28: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
%BB5:
        BranchInst %BB6
%BB6:
  %35 = LoadFrameInst (:any) %1: environment, [%VS29.writeTomyName]: any
  %36 = CheckedTypeCastInst (:object) %35: any, type(object)
  %37 = CheckedTypeCastInst (:object) %28: object, type(object)
        BranchInst %BB7
%BB7:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %37: object, "myName": string
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
  %42 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %43 = CheckedTypeCastInst (:object) %28: object, type(object)
  %44 = PrLoadInst (:string) %43: object, 1: number, "myName": string
  %45 = CallInst (:any) %42: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %44: string
        BranchInst %BB2
function_end

function illegalAssignment(target: any, key: any, value: any): any [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %key: any
  %6 = LoadParamInst (:any) %value: any
        StorePropertyStrictInst %6: any, %2: any, %4: any
        ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB1:
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %13: object, "myName": string
        BranchInst %BB2
%BB4:
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
        BranchInst %BB3
%BB5:
        BranchInst %BB4
%BB6:
        PrStoreInst "prop": string, %7: object, 0: number, "prop": string, false: boolean
  %33 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %33: string, %7: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %1 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER DCE

scope %VS0 []

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: any
  %44 = CreateFunctionInst (:object) %40: environment, %VS29: any, %main(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: any
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %50 = CheckedTypeCastInst (:object) %44: object, type(object)
        BranchInst %BB5
%BB5:
  %52 = LoadFrameInst (:any) %40: environment, [%VS29.TestClass]: any
  %53 = CheckedTypeCastInst (:object) %52: any, type(object)
  %54 = LoadFrameInst (:object) %40: environment, [%VS29.?TestClass.prototype]: object
  %55 = AllocTypedObjectInst (:object) %54: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
  %58 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %58: string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
  %62 = LoadFrameInst (:any) %40: environment, [%VS29.writeTomyName]: any
  %63 = CheckedTypeCastInst (:object) %62: any, type(object)
  %64 = CheckedTypeCastInst (:object) %55: object, type(object)
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %64: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %70 = CheckedTypeCastInst (:object) %55: object, type(object)
  %71 = PrLoadInst (:string) %70: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): any [allCallsitesKnownInStrictMode]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB1:
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %13: object, "myName": string
        BranchInst %BB2
%BB4:
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
        BranchInst %BB3
%BB5:
        BranchInst %BB4
%BB6:
        PrStoreInst "prop": string, %7: object, 0: number, "prop": string, false: boolean
  %33 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %33: string, %7: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER ObjectMergeNewStores

scope %VS0 []

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: any
  %44 = CreateFunctionInst (:object) %40: environment, %VS29: any, %main(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: any
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %50 = CheckedTypeCastInst (:object) %44: object, type(object)
        BranchInst %BB5
%BB5:
  %52 = LoadFrameInst (:any) %40: environment, [%VS29.TestClass]: any
  %53 = CheckedTypeCastInst (:object) %52: any, type(object)
  %54 = LoadFrameInst (:object) %40: environment, [%VS29.?TestClass.prototype]: object
  %55 = AllocTypedObjectInst (:object) %54: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
  %58 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %58: string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
  %62 = LoadFrameInst (:any) %40: environment, [%VS29.writeTomyName]: any
  %63 = CheckedTypeCastInst (:object) %62: any, type(object)
  %64 = CheckedTypeCastInst (:object) %55: object, type(object)
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %64: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %70 = CheckedTypeCastInst (:object) %55: object, type(object)
  %71 = PrLoadInst (:string) %70: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): any [allCallsitesKnownInStrictMode]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB1:
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %13: object, "myName": string
        BranchInst %BB2
%BB4:
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
        BranchInst %BB3
%BB5:
        BranchInst %BB4
%BB6:
        PrStoreInst "prop": string, %7: object, 0: number, "prop": string, false: boolean
  %33 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %33: string, %7: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER ObjectStackPromotion

scope %VS0 []

scope %VS29 [TestClass: any, writeTomyName: any, ?TestClass.prototype: object]

function global(): any 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: any
  %44 = CreateFunctionInst (:object) %40: environment, %VS29: any, %main(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: any
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %50 = CheckedTypeCastInst (:object) %44: object, type(object)
        BranchInst %BB5
%BB5:
  %52 = LoadFrameInst (:any) %40: environment, [%VS29.TestClass]: any
  %53 = CheckedTypeCastInst (:object) %52: any, type(object)
  %54 = LoadFrameInst (:object) %40: environment, [%VS29.?TestClass.prototype]: object
  %55 = AllocTypedObjectInst (:object) %54: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
  %58 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %58: string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
  %62 = LoadFrameInst (:any) %40: environment, [%VS29.writeTomyName]: any
  %63 = CheckedTypeCastInst (:object) %62: any, type(object)
  %64 = CheckedTypeCastInst (:object) %55: object, type(object)
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %64: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %70 = CheckedTypeCastInst (:object) %55: object, type(object)
  %71 = PrLoadInst (:string) %70: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): any [allCallsitesKnownInStrictMode]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): any [allCallsitesKnownInStrictMode]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:any) %0: environment, [%VS29.TestClass]: any
  %4 = CheckedTypeCastInst (:object) %3: any, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB1:
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %13: object, "myName": string
        BranchInst %BB2
%BB4:
  %10 = LoadFrameInst (:any) %0: environment, [%VS29.writeTomyName]: any
  %11 = CheckedTypeCastInst (:object) %10: any, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
        BranchInst %BB3
%BB5:
        BranchInst %BB4
%BB6:
        PrStoreInst "prop": string, %7: object, 0: number, "prop": string, false: boolean
  %33 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %33: string, %7: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
function_end

base constructor TestClass(name: string): any [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER TypeInference

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %44 = CreateFunctionInst (:object) %40: environment, %VS29: any, %main(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %50 = CheckedTypeCastInst (:object) %44: object, type(object)
        BranchInst %BB5
%BB5:
  %52 = LoadFrameInst (:object) %40: environment, [%VS29.TestClass]: object
  %53 = CheckedTypeCastInst (:object) %52: object, type(object)
  %54 = LoadFrameInst (:object) %40: environment, [%VS29.?TestClass.prototype]: object
  %55 = AllocTypedObjectInst (:object) %54: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
  %58 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %58: string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
  %62 = LoadFrameInst (:object) %40: environment, [%VS29.writeTomyName]: object
  %63 = CheckedTypeCastInst (:object) %62: object, type(object)
  %64 = CheckedTypeCastInst (:object) %55: object, type(object)
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %64: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %70 = CheckedTypeCastInst (:object) %55: object, type(object)
  %71 = PrLoadInst (:string) %70: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:object) %0: environment, [%VS29.TestClass]: object
  %4 = CheckedTypeCastInst (:object) %3: object, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB1:
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %13: object, "myName": string
        BranchInst %BB2
%BB4:
  %10 = LoadFrameInst (:object) %0: environment, [%VS29.writeTomyName]: object
  %11 = CheckedTypeCastInst (:object) %10: object, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
        BranchInst %BB3
%BB5:
        BranchInst %BB4
%BB6:
        PrStoreInst "prop": string, %7: object, 0: number, "prop": string, false: boolean
  %33 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %33: string, %7: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleStackPromotion

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %78 = AllocStackInst (:object) $TestClass: any
  %79 = AllocStackInst (:object) $writeTomyName: any
  %80 = AllocStackInst (:object) $?TestClass.prototype: any
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreStackInst %42: object, %79: object
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %44 = CreateFunctionInst (:object) %40: environment, %VS29: any, %main(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreStackInst %45: object, %78: object
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreStackInst %47: object, %80: object
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %50 = CheckedTypeCastInst (:object) %44: object, type(object)
        BranchInst %BB5
%BB5:
  %84 = LoadStackInst (:object) %78: object
  %53 = CheckedTypeCastInst (:object) %84: object, type(object)
  %85 = LoadStackInst (:object) %80: object
  %55 = AllocTypedObjectInst (:object) %85: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
  %58 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %58: string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
  %86 = LoadStackInst (:object) %79: object
  %63 = CheckedTypeCastInst (:object) %86: object, type(object)
  %64 = CheckedTypeCastInst (:object) %55: object, type(object)
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %64: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %70 = CheckedTypeCastInst (:object) %55: object, type(object)
  %71 = PrLoadInst (:string) %70: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:object) %0: environment, [%VS29.TestClass]: object
  %4 = CheckedTypeCastInst (:object) %3: object, type(object)
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB1:
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %17 = CheckedTypeCastInst (:object) %7: object, type(object)
  %18 = PrLoadInst (:string) %17: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %13: object, "myName": string
        BranchInst %BB2
%BB4:
  %10 = LoadFrameInst (:object) %0: environment, [%VS29.writeTomyName]: object
  %11 = CheckedTypeCastInst (:object) %10: object, type(object)
  %13 = CheckedTypeCastInst (:object) %7: object, type(object)
        BranchInst %BB3
%BB5:
        BranchInst %BB4
%BB6:
        PrStoreInst "prop": string, %7: object, 0: number, "prop": string, false: boolean
  %33 = CheckedTypeCastInst (:string) "Dracula ": string, type(string)
        PrStoreInst %33: string, %7: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
  %7 = CheckedTypeCastInst (:string) %3: string, type(string)
       PrStoreInst %7: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER InstSimplify

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %78 = AllocStackInst (:object) $TestClass: any
  %79 = AllocStackInst (:object) $writeTomyName: any
  %80 = AllocStackInst (:object) $?TestClass.prototype: any
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreStackInst %42: object, %79: object
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %44 = CreateFunctionInst (:object) %40: environment, %VS29: any, %main(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreStackInst %45: object, %78: object
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreStackInst %47: object, %80: object
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %84 = LoadStackInst (:object) %78: object
  %85 = LoadStackInst (:object) %80: object
  %55 = AllocTypedObjectInst (:object) %85: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
  %86 = LoadStackInst (:object) %79: object
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

function main(): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %0 = GetParentScopeInst (:environment) %VS29: any, %parentScope: environment
  %3 = LoadFrameInst (:object) %0: environment, [%VS29.TestClass]: object
  %5 = LoadFrameInst (:object) %0: environment, [%VS29.?TestClass.prototype]: object
  %7 = AllocTypedObjectInst (:object) %5: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB1:
  %15 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %18 = PrLoadInst (:string) %7: object, 1: number, "myName": string
  %19 = CallInst (:any) %15: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %18: string
        ReturnInst undefined: undefined
%BB2:
        BranchInst %BB1
%BB3:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %7: object, "myName": string
        BranchInst %BB2
%BB4:
  %10 = LoadFrameInst (:object) %0: environment, [%VS29.writeTomyName]: object
        BranchInst %BB3
%BB5:
        BranchInst %BB4
%BB6:
        PrStoreInst "prop": string, %7: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %7: object, 1: number, "myName": string, false: boolean
        BranchInst %BB5
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER DCE

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %78 = AllocStackInst (:object) $TestClass: any
  %79 = AllocStackInst (:object) $writeTomyName: any
  %80 = AllocStackInst (:object) $?TestClass.prototype: any
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreStackInst %42: object, %79: object
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreStackInst %45: object, %78: object
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreStackInst %47: object, %80: object
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %85 = LoadStackInst (:object) %80: object
  %55 = AllocTypedObjectInst (:object) %85: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleMem2Reg

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER FunctionAnalysis

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER MetroRequire

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER Inlining

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER DCE

scope %VS0 []

scope %VS29 [TestClass: object, writeTomyName: object, ?TestClass.prototype: object]

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
        StoreFrameInst %40: environment, %42: object, [%VS29.writeTomyName]: object
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
        StoreFrameInst %40: environment, %45: object, [%VS29.TestClass]: object
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StoreFrameInst %40: environment, %47: object, [%VS29.?TestClass.prototype]: object
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleStackPromotion

scope %VS0 []

scope %VS29 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER FrameLoadStoreOpts

scope %VS0 []

scope %VS29 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleMem2Reg

scope %VS0 []

scope %VS29 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %40 = CreateScopeInst (:environment) %VS29: any, %0: environment
  %42 = CreateFunctionInst (:object) %40: environment, %VS29: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) %40: environment, %VS29: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER ScopeElimination

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) %0: environment, %VS0: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) %0: environment, %VS0: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER FunctionAnalysis

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) %0: environment, %VS0: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) %0: environment, %VS0: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER ScopeHoisting

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %55 = AllocTypedObjectInst (:object) %47: object, "prop": string, "": string, "myName": string, "": string
        BranchInst %BB6
%BB6:
        PrStoreInst "prop": string, %55: object, 0: number, "prop": string, false: boolean
        PrStoreInst "Dracula ": string, %55: object, 1: number, "myName": string, false: boolean
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StorePropertyStrictInst "Dracula, Bleh Bleh ": string, %55: object, "myName": string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %71 = PrLoadInst (:string) %55: object, 1: number, "myName": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %71: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER ObjectStackPromotion

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %87 = AllocStackInst (:any) $[parent]: any
        StoreStackInst %47: object, %87: any
  %89 = AllocStackInst (:any) $prop: any
        StoreStackInst "": string, %89: any
  %91 = AllocStackInst (:any) $myName: any
        StoreStackInst "": string, %91: any
        BranchInst %BB6
%BB6:
        StoreStackInst "prop": string, %89: any
        StoreStackInst "Dracula ": string, %91: any
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: any
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:any) %91: any
  %97 = UnionNarrowTrustedInst (:string) %96: any
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %97: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER TypeInference

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        BranchInst %BB6
%BB6:
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %97 = UnionNarrowTrustedInst (:string) %96: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %97: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER CSE

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        BranchInst %BB6
%BB6:
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %97 = UnionNarrowTrustedInst (:string) %96: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %97: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER PrivateBrandCheckDedup

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        BranchInst %BB6
%BB6:
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %97 = UnionNarrowTrustedInst (:string) %96: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %97: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER TDZDedup

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
       BranchInst %BB3
%BB1:
       ReturnInst undefined: undefined
%BB2:
       BranchInst %BB1
%BB3:
        BranchInst %BB4
%BB4:
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
        BranchInst %BB5
%BB5:
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        BranchInst %BB6
%BB6:
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        BranchInst %BB7
%BB7:
        BranchInst %BB8
%BB8:
        BranchInst %BB9
%BB9:
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
        BranchInst %BB10
%BB10:
        BranchInst %BB11
%BB11:
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %97 = UnionNarrowTrustedInst (:string) %96: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %97: string
        BranchInst %BB12
%BB12:
        BranchInst %BB13
%BB13:
        BranchInst %BB14
%BB14:
        BranchInst %BB15
%BB15:
        BranchInst %BB2
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB0:
  %2 = LoadParamInst (:any) %target: any
  %4 = LoadParamInst (:any) %value: any
       StorePropertyStrictInst %4: any, %2: any, "myName": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimplifyCFG

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %97 = UnionNarrowTrustedInst (:string) %96: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %97: string
       ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB1:
        UnreachableInst
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER InstSimplify

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %96: string
       ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB1:
        UnreachableInst
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER FuncSigOpts

scope %VS0 []

function global(): undefined 
%BB0:
  %0 = CreateScopeInst (:environment) %VS0: any, empty: any
  %42 = CreateFunctionInst (:object) empty: any, empty: any, %writeTomyName(): functionCode
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %96: string
       ReturnInst undefined: undefined
function_end

function writeTomyName(target: any, value: any): undefined [allCallsitesKnownInStrictMode,unreachable]
%BB1:
        UnreachableInst
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER DCE

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %96: string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimplifyCFG

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %96: string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER FrameLoadStoreOpts

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %87 = AllocStackInst (:object) $[parent]: any
        StoreStackInst %47: object, %87: object
  %89 = AllocStackInst (:string) $prop: any
        StoreStackInst "": string, %89: string
  %91 = AllocStackInst (:string) $myName: any
        StoreStackInst "": string, %91: string
        StoreStackInst "prop": string, %89: string
        StoreStackInst "Dracula ": string, %91: string
        StoreStackInst "Dracula, Bleh Bleh ": string, %91: string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %96 = LoadStackInst (:string) %91: string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, %96: string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SimpleMem2Reg

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER Auditor

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER TypeInference

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end

*** INITIAL STATE

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerGeneratorFunction

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerPrivateBrandCheck

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER PeepholeLowering

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerBuiltinCalls

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerNumericProperties

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerAllocObjectLiteral

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LowerArgumentsArray

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LimitAllocArray

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER DedupReifyArguments

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER SwitchLowering

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER TypeInference

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER OptEnvironmentInit

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %47 = AllocTypedNonEnumObjectInst (:object) null: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %69 = TryLoadGlobalPropertyInst (:any) globalObject: object, "print": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, undefined: undefined, undefined: undefined, "Dracula, Bleh Bleh ": string
       ReturnInst undefined: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst "prop": string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
       ReturnInst undefined: undefined
function_end


*** AFTER LoadConstants

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %100 = LIRLoadConstInst (:undefined) undefined: undefined
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %100: undefined, %101: undefined, %102: string
  %103 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %103: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER LowerScopes

function global(): undefined 
%BB0:
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %100 = LIRLoadConstInst (:undefined) undefined: undefined
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %100: undefined, %101: undefined, %102: string
  %103 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %103: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %3 = LoadParamInst (:string) %name: string
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER CodeMotion

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %100 = LIRLoadConstInst (:undefined) undefined: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %100: undefined, %101: undefined, %102: string
  %103 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %103: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER CSE

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %101: undefined, %101: undefined, %102: string
       ReturnInst %101: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER DCE

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %101: undefined, %101: undefined, %102: string
       ReturnInst %101: undefined
function_end

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end

*** INITIAL STATE

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %101: undefined, %101: undefined, %102: string
       ReturnInst %101: undefined
function_end


*** AFTER LowerStoreInstrs

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %101: undefined, %101: undefined, %102: string
       ReturnInst %101: undefined
function_end


*** AFTER LowerCalls

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %104 = MovInst (:undefined) %101: undefined
  %105 = MovInst (:any) %69: any
  %106 = MovInst (:undefined) %101: undefined
  %107 = MovInst (:string) %102: string
  %72 = CallInst (:any) %105: any, empty: any, false: boolean, empty: any, %101: undefined, %106: undefined, %107: string
       ReturnInst %101: undefined
function_end


*** AFTER MovElimination

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %104 = MovInst (:undefined) %101: undefined
  %106 = MovInst (:undefined) %101: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %101: undefined, %106: undefined, %102: string
       ReturnInst %101: undefined
function_end


*** AFTER RecreateCheapValues

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %108 = LIRLoadConstInst (:undefined) undefined: undefined
  %109 = LIRLoadConstInst (:undefined) undefined: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %101: undefined, %109: undefined, %102: string
       ReturnInst %101: undefined
function_end


*** AFTER RemoveMovs

function global(): undefined 
%BB0:
  %98 = LIRLoadConstInst (:null) null: null
  %47 = AllocTypedNonEnumObjectInst (:object) %98: null
  %45 = CreateFunctionInst (:object) empty: any, empty: any, %TestClass(): functionCode
        StorePropertyStrictInst %47: object, %45: object, "prototype": string
  %99 = LIRGetGlobalObjectInst (:object)
  %69 = TryLoadGlobalPropertyInst (:any) %99: object, "print": string
  %102 = LIRLoadConstInst (:string) "Dracula, Bleh Bleh ": string
  %101 = LIRLoadConstInst (:undefined) undefined: undefined
  %108 = LIRLoadConstInst (:undefined) undefined: undefined
  %109 = LIRLoadConstInst (:undefined) undefined: undefined
  %72 = CallInst (:any) %69: any, empty: any, false: boolean, empty: any, %101: undefined, %109: undefined, %102: string
       ReturnInst %101: undefined
function_end

*** INITIAL STATE

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER LowerStoreInstrs

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER LowerCalls

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER MovElimination

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER RecreateCheapValues

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end


*** AFTER RemoveMovs

base constructor TestClass(name: string): undefined [typed]
%BB0:
  %0 = LoadParamInst (:object) %<this>: object
  %13 = LIRLoadConstInst (:string) "prop": string
       PrStoreInst %13: string, %0: object, 0: number, "prop": string, false: boolean
  %3 = LoadParamInst (:string) %name: string
       PrStoreInst %3: string, %0: object, 1: number, "myName": string, false: boolean
  %14 = LIRLoadConstInst (:undefined) undefined: undefined
       ReturnInst %14: undefined
function_end

