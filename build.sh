#!/bin/bash

yasm -g dwarf2 -f elf64 "$1.asm" -l "$1.lst"
ld -o bin/$1 "$1.o"
