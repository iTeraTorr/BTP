#!/bin/bash
gcc foomagic.c -o foo
objdump -d foo > foo.dis
#code foo.dis
#grep -A5 "<foo>" foo.dis | tail -1 | tr $'\t' ' ' | tr -s ' '