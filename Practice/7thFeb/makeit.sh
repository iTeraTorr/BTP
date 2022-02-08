#!/usr/bin/env bash
gcc -Wall --save-temps memory_alloc.c -o memory_alloc
readelf -a memory_alloc > readelf.txt
objdump -d memory_alloc > disassembly_AT_and_T.txt
objdump -M intel -d memory_alloc > disassembly_intel.txt
strace -v -o stracedFile.txt ./memory_alloc > output.txt
hexdump -v -C memory_alloc > hexdump.txt
#objdump --full-contents --section=.comment memory_alloc
# To read the content of a section in human readable form `readelf -p .dynstr ./memory_alloc`
