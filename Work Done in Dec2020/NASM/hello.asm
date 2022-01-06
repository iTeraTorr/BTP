section .data
    ;db means define byte(raw bytes), 10 means newline ('\n')
    text db "Hello!", 10
    ; text is the label that holds the address to the bytes defined.
section .text
    global _start

_start:
    ; Since it is x86_64 arc, registers hold 64bits
    ;registers are part of processor that holds temporary memory

    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 14
    syscall ;sys_write(1,text,14)

    mov rax, 60
    mov rdi, 5 ;this is the error code, 0 means normal termination. This value can later be checked by echo $?
    syscall ;sys_exit(0)