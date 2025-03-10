; Comment in global scope
section .text
global main
main:
      call func ; comment inside main function scope
      mov rax, 60
      xor rdi, rdi
      syscall
nl:   push rsi
      lea  rsi, [rel snl]
      mov  rdx, 6
      mov  rax, 1
      syscall
      pop rsi
      inc rsi
      mov rax, 1
      mov rdx, 1
      jmp wfmt
func: mov rax, 1
      mov rdi, 1
      lea rsi, [rel fmt]
      mov rdx, 777
      syscall
      mov rax, 1
      lea rsi, [rel snl]
      mov rdx, 1
      syscall
      lea rsi, [rel fmt]
wfmt: syscall
      inc rsi
      cmp byte [rsi], 10
      je  nl
      cmp byte [rsi], 0
      jne wfmt
      lea rsi, [rel send]
      mov rdx, 4
      syscall
      ret
section .rodata
    snl:  db 34,44,49,48,44,34
    send: db 34,44,48,10
    fmt:  db "; Comment in global scope",10,"section .text",10,"global main",10,"main:",10,"      call func ; comment inside main function scope",10,"      mov rax, 60",10,"      xor rdi, rdi",10,"      syscall",10,"nl:   push rsi",10,"      lea  rsi, [rel snl]",10,"      mov  rdx, 6",10,"      mov  rax, 1",10,"      syscall",10,"      pop rsi",10,"      inc rsi",10,"      mov rax, 1",10,"      mov rdx, 1",10,"      jmp wfmt",10,"func: mov rax, 1",10,"      mov rdi, 1",10,"      lea rsi, [rel fmt]",10,"      mov rdx, 777",10,"      syscall",10,"      mov rax, 1",10,"      lea rsi, [rel snl]",10,"      mov rdx, 1",10,"      syscall",10,"      lea rsi, [rel fmt]",10,"wfmt: syscall",10,"      inc rsi",10,"      cmp byte [rsi], 10",10,"      je  nl",10,"      cmp byte [rsi], 0",10,"      jne wfmt",10,"      lea rsi, [rel send]",10,"      mov rdx, 4",10,"      syscall",10,"      ret",10,"section .rodata",10,"    snl:  db 34,44,49,48,44,34",10,"    send: db 34,44,48,10",10,"    fmt:  db ",0
