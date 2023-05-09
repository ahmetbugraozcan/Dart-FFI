cmake_minimum_required(VERSION 3.4.1) # for example
add_library(native_print
# Sets the library as a shared library.
SHARED
# Provides a relative path to your source file(s).
../lib/ffi/native_print.cpp)