#!/bin/bash

yasm -f elf64 "$1.asm"
ld -o bin/$1 "$1.o"
