section .data

x db 17
y db 13
result db 0

section .text
global _start
_start:
    mov al, [x]
    add al, [y]
    mov [result], al

    ; 60 is the system call number for the exit sys call.
    ; See /usr/include/asm/unistd_64.h
    mov rax, 60
    mov rdi, [result] ; use result as the exit code
    syscall
