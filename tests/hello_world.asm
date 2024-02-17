section .text

global _main
_main:
    mov rax, 4
    mov rdi, 1,
    mov rsi, msg
    mov rdx, msg_len
    syscall
    mov rax, 1
    syscall

section .data
    msg db "pepe"
    msg_len equ $ -msg