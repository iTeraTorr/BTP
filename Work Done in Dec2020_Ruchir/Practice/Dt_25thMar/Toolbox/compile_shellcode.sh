#!/bin/bash
#use it to compile shellcode.c
echo "Compiling..."
gcc -o $(echo "$1" | cut -f 1 -d '.') -fno-stack-protector -z execstack -m32 $1
echo "Done"