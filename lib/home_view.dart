import 'package:dart_ffi_example/native_print.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FFI Example"),
      ),
      body: Center(
        child: Text(hello('world'.toNativeUtf8()).toDartString()),
      ),
    );
  }
}
