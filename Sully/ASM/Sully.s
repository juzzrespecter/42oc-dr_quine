SECTION .text
extern dprintf
extern system
extern pclose
extern execve

%define i rbx

global main
main: mov i, 5
      cmp i, 0
      je endlp
      lea rdi, [rel file]
      cmp byte [rdi + 5], 0x5f
      jne opnf
      dec i
opnf: lea rdi, [rel fn]
      mov rax, i
      add rax, 48
      lea rdi, [rel fn]
      mov byte [rdi + 6], al
      xor rax, rax
      lea rsi, [rel gcc]
      lea rcx, [rel exv]
      %rep 7
      mov dl, byte [rdi + rax]
      mov byte [rsi + 14 + rax], dl
      mov byte [rsi + 32 + rax], dl
      mov byte [rsi + 40 + rax], dl
      mov byte [rsi + 54 + rax], dl
      mov byte [rcx + 2 + rax], dl
      inc rax
      %endrep
      mov rax, 2
      lea rdi, [rel fn]
      mov rsi, 0101
      mov rdx, 420
      syscall
      mov rdi, rax
      lea rsi, [rel data]
      mov rdx, 10
      lea rcx, [rel data]
      mov r8, i
      mov r9, 34
      xor eax, eax
      sub rsp, 8
      call dprintf wrt ..plt
      lea rdi, [rel gcc]
      call system wrt ..plt
      lea rdi, [rel gcc + 52]
      push qword [rel gcc + 52]
      push 0
      lea rsi, [rsp - 16]
      call execve wrt ..plt
endlp xor edi, edi
      mov rax, 60
      syscall
SECTION .data
file:  db __FILE__
fn:    db 0x53,0x75,0x6c,0x6c,0x79,0x5f,0x40,0x2e,0x73,0
nl:    db 0x22,0x2c,0x31,0x30,0x2c,0x22
gcc:   db 0x6e,0x61,0x73,0x6d,0x20,0x2d,0x66,0x20,0x65,0x6c,0x66,0x36,0x34,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x2e,0x73,0x26,0x26,0x67,0x63,0x63,0x20,0x2d,0x6f,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x2e,0x6f,0x26,0x26,0x72,0x6d,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x2e,0x6f,0
exv:   db 0x2e,0x2f,0,0,0,0,0,0,0,0
endlpc:db 0x22,0x2c,0x30,0
data:  db "SECTION .text%1$cextern dprintf%1$cextern system%1$cextern pclose%1$cextern execve%1$c%1$c%%define i rbx%1$c%1$cglobal main%1$cmain: mov i, %3$d%1$c      cmp i, 0%1$c      je endlp%1$c      lea rdi, [rel file]%1$c      cmp byte [rdi + 5], 0x5f%1$c      jne opnf%1$c      dec i%1$copnf: lea rdi, [rel fn]%1$c      mov rax, i%1$c      add rax, 48%1$c      lea rdi, [rel fn]%1$c      mov byte [rdi + 6], al%1$c      xor rax, rax%1$c      lea rsi, [rel gcc]%1$c      lea rcx, [rel exv]%1$c      %%rep 7%1$c      mov dl, byte [rdi + rax]%1$c      mov byte [rsi + 14 + rax], dl%1$c      mov byte [rsi + 32 + rax], dl%1$c      mov byte [rsi + 40 + rax], dl%1$c      mov byte [rsi + 54 + rax], dl%1$c      mov byte [rcx + 2 + rax], dl%1$c      inc rax%1$c      %%endrep%1$c      mov rax, 2%1$c      lea rdi, [rel fn]%1$c      mov rsi, 0101%1$c      mov rdx, 420%1$c      syscall%1$c      mov rdi, rax%1$c      lea rsi, [rel data]%1$c      mov rdx, 10%1$c      lea rcx, [rel data]%1$c      mov r8, i%1$c      mov r9, 34%1$c      xor eax, eax%1$c      sub rsp, 8%1$c      call dprintf wrt ..plt%1$c      lea rdi, [rel gcc]%1$c      call system wrt ..plt%1$c      lea rdi, [rel gcc + 52]%1$c      push qword [rel gcc + 52]%1$c      push 0%1$c      lea rsi, [rsp - 16]%1$c      call execve wrt ..plt%1$cendlp xor edi, edi%1$c      mov rax, 60%1$c      syscall%1$cSECTION .data%1$cfile:  db __FILE__%1$cfn:    db 0x53,0x75,0x6c,0x6c,0x79,0x5f,0x40,0x2e,0x73,0%1$cnl:    db 0x22,0x2c,0x31,0x30,0x2c,0x22%1$cgcc:   db 0x6e,0x61,0x73,0x6d,0x20,0x2d,0x66,0x20,0x65,0x6c,0x66,0x36,0x34,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x2e,0x73,0x26,0x26,0x67,0x63,0x63,0x20,0x2d,0x6f,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x2e,0x6f,0x26,0x26,0x72,0x6d,0x20,0x41,0x41,0x41,0x41,0x41,0x41,0x41,0x2e,0x6f,0%1$cexv:   db 0x2e,0x2f,0,0,0,0,0,0,0,0%1$cendlpc:db 0x22,0x2c,0x30,0%1$cdata:  db %4$c%2$s%4$c,0%1$c",0
