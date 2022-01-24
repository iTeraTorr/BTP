#!/bin/bash
find $1 -type f -name "*.txt" -exec echo {} \; -exec grep -C 1 $2 {} \;