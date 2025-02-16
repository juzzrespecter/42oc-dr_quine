;; Comment in global scope
section .data
    fmt:  db "%2$c;; Comment in global scope%3$csection .data%3$c    fmt:  db %1$s%3$csection .text%3$cextern _printf%3$cglobal _start%3$cfunction:%3$c    push fmt%3$c    push 0x22%3$c    push 0xa%3$c    call printf%3$c_start:%3$cmain:%3$c;; comment inside main function scope%3$c    call function%3$c    xor rdi, rdi%3$c    mov rax, 60%3$c    syscall%2$c"
section .text
extern printf
global _start
func:
    push fmt
    push 0x22
    push 0xa
    call printf
_start:
main:
;; comment inside main function scope
    call func
    xor rdi, rdi
    mov rax, 60
    syscall