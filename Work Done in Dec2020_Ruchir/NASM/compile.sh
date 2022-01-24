#!/bin/bash
nasm -f elf64 -o $(echo "$1" | cut -f 1 -d '.').o $1
ld $(echo "$1" | cut -f 1 -d '.').o -o $(echo "$1" | cut -f 1 -d '.')
rm $(echo "$1" | cut -f 1 -d '.').o
./$(echo "$1" | cut -f 1 -d '.')
rm $(echo "$1" | cut -f 1 -d '.')