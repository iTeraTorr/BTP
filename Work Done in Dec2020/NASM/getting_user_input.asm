section .data
    text1 db "What is your name? "
    text2 db "Hello, "
section .bss
    ;resb means reserve byte, 16 means 16 bytes of space will be reserved for name
    name resb 16
section .text
    global _start

_start:
    ; Since it is x86_64 arc, registers hold 64bits
    ;registers are part of processor that holds temporary memory

    call _printText1
    call _getName
    call _printText2
    call _printName

    ;sys_write(1,text,14)

    mov rax, 60
    mov rdi, 5 ;this is the error code, 0 means normal termination. This value can later be checked by echo $?
    syscall ;sys_exit(0)
_getName:
    mov rax,0
    mov rdi,0
    mov rsi,name
    mov rdx,16
    syscall
    ret

_printText1:
    mov rax,1
    mov rdi, 1
    mov rsi,text1
    mov rdx,19
    syscall
    ret

_printText2:
    mov rax,1
    mov rdi, 1
    mov rsi,text2
    mov rdx,7
    syscall
    ret

_printName:
    mov rax,1
    mov rdi, 1
    mov rsi,name
    mov rdx,16
    syscall
    ret