import 'dart:ffi'; // For FFI
import 'dart:io';

import 'package:ffi/ffi.dart'; // For Platform.isX

typedef HelloStringNative = Pointer<Utf8> Function(Pointer<Utf8>);
typedef HelloString = Pointer<Utf8> Function(Pointer<Utf8>);

final DynamicLibrary helloLib = Platform.isAndroid
    ? DynamicLibrary.open('libnative_print.so')
    : DynamicLibrary.process();

final hello = helloLib
    .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>("hello")
    .asFunction<Pointer<Utf8> Function(Pointer<Utf8>)>();
