%include "rw32-2020.inc"

section .data

section .text
CMAIN:
    mov al, 11001000b
    mov bl, 11001000b
    add al, bl

    xor eax, eax
    ret