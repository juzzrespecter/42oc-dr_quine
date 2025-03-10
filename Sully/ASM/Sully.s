SECTION .text
global main
%define rbx i
main: mov $i, 5
      mov rax, 2
      lea rdi, [rel fn] ; reescritura ?
      mov rsi, 0101
      mov rdx, 420
      syscall
      cmp $i, 0
      je endlp
;; open syscall

;; write loop

;; fork call
;; execve call to compile
;; execve call
endlp: mov rax, 60
       xor rdi, rdi
       syscall

SECTION .rodata
fn:   db 0x53,0x75,0x6c,0x6c,0x79,0x5f,0x40,0x2e,0x63,0
endlp:db "\",0"
data: db "",0