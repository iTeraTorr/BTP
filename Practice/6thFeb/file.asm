section .text
    global _start

_start:
    ; AL will contain 12
    mov al, 12
    ; Value of justANum into CL
    mov cl, byte [justANum]
    ; Address of justANum into eax
    mov eax, 1
    int 0x80

section .data
    justANum db 123