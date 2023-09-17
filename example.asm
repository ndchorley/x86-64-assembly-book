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

    mov rax, 60 ; code for terminating
    mov rdi, [result] ; use result as the exit code
    syscall
