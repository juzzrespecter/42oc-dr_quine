; Comment in global scope
section .text
extern printf
global main
func:
    push rbp
    lea rdi, [rel fmt]
    mov rsi, 0xa
    mov rdx, 0x22
    lea rcx, [rel fmt]
    xor rax, rax
    call printf wrt ..plt
    pop rbp
    ret
main:
; comment inside main function scope
    push rbp
    call func
    pop rbp
    ret
section .rodata
    fmt:  db "; Comment in global scope%1$csection .text%1$cextern printf%1$cglobal main%1$cfunc:%1$c    push rbp%1$c    lea rdi, [rel fmt]%1$c    mov rsi, 0xa%1$c    mov rdx, 0x22%1$c    lea rcx, [rel fmt]%1$c    xor rax, rax%1$c    call printf wrt ..plt%1$c    pop rbp%1$c    ret%1$cmain:%1$c; comment inside main function scope%1$c    push rbp%1$c    call func%1$c    pop rbp%1$c    ret%1$csection .rodata%1$c    fmt:  db %2$c%3$s%2$c%1$c"
