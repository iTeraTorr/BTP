#!/usr/bin/env bash
g++ -Wall --save-temps main.cpp -o file
readelf -a file > readelf.txt
objdump -d file > disassembly_AT_and_T.txt
objdump -M intel -d file > disassembly_intel.txt
strace -v -o stracedFile.txt ./file > output.txt
hexdump -C file > hexdump.txt