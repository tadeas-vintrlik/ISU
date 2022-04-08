%include "rw32-2020.inc"

section .data

section .text
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp
   
    xor eax, eax
    mov ax, -5000
    call mypow
    
    call WriteInt32
    call WriteNewLine

    pop ebp
    xor eax, eax
    ret

mypow:
    mov ebp, esp
    push ebp
    push edx
    
    cwde
    imul eax
    
    pop edx
    pop ebp
    ret