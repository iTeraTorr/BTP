#!/usr/bin/env bash
g++ -Wall --save-temps main.cpp -o file
readelf -a file > readelf.txt
objdump -d main.o > objdump.txt
strace -v -o stracedFile.txt ./file > output.txt