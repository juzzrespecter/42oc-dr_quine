%define DATA "%define DATA ",10,"%macro RODATA 0",10,"SECTION .rodata",10,"path: db 71,114,97,99,101,95,107,105,100,46,115,0",10,"data: db DATA,0",10,"nl:   db 34,44,49,48,44,34",10,"endlp:db 34,44,48",10,"%endmacro",10,"%macro FT 0",10,"SECTION .text",10,"global main",10,"main: mov rax, 2",10,"      lea rdi, [rel path]",10,"      mov rsi, 65",10,"      mov rdx, 420",10,"      syscall",10,"      mov rdi, rax",10,"      mov rax, 1",10,"      lea rsi, [rel data]",10,"      mov rdx, 13",10,"      syscall",10,"      mov rax, 1",10,"      lea rsi, [rel nl]",10,"      mov rdx, 1",10,"      syscall",10,"      lea rsi, [rel data]",10,"loop: mov rdx, 1",10,"      syscall",10,"      inc rsi",10,"      cmp byte [rsi], 10",10,"      je cnl",10,"      cmp byte [rsi], 0",10,"      jne loop",10,"      mov rax, 1",10,"      lea rsi, [rel endlp]",10,"      mov rdx, 3",10,"      syscall",10,"      mov rax, 1",10,"      lea rsi, [rel data]",10,"      add rsi, 13",10,"      mov rdx, 989",10,"      syscall",10,"      mov rax, 60",10,"      syscall",10,"      ret",10,"cnl:  push rsi",10,"      lea rsi, [rel nl]",10,"      mov rdx, 6",10,"      syscall",10,"      pop rsi",10,"      inc rsi",10,"      mov rax, 1",10,"      jmp loop",10,"RODATA",10,"%endmacro",10,"FT ; Obligaciones contractuales",0
%macro RODATA 0
SECTION .rodata
path: db 71,114,97,99,101,95,107,105,100,46,115,0
data: db DATA,0
nl:   db 34,44,49,48,44,34
endlp:db 34,44,48
%endmacro
%macro FT 0
SECTION .text
global main
main: mov rax, 2
      lea rdi, [rel path]
      mov rsi, 65
      mov rdx, 420
      syscall
      mov rdi, rax
      mov rax, 1
      lea rsi, [rel data]
      mov rdx, 13
      syscall
      mov rax, 1
      lea rsi, [rel nl]
      mov rdx, 1
      syscall
      lea rsi, [rel data]
loop: mov rdx, 1
      syscall
      inc rsi
      cmp byte [rsi], 10
      je cnl
      cmp byte [rsi], 0
      jne loop
      mov rax, 1
      lea rsi, [rel endlp]
      mov rdx, 3
      syscall
      mov rax, 1
      lea rsi, [rel data]
      add rsi, 13
      mov rdx, 989
      syscall
      mov rax, 60
      syscall
      ret
cnl:  push rsi
      lea rsi, [rel nl]
      mov rdx, 6
      syscall
      pop rsi
      inc rsi
      mov rax, 1
      jmp loop
RODATA
%endmacro
FT ; Obligaciones contractuales