%include "rw32-2020.inc"

section .data
    login db "xvintr04",0

section .bss
    array resb 9

section .text
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    mov edi, array
    mov esi, login
    mov ecx, 8
    rep movsb
    
    mov esi, array
    call WriteString
    call WriteNewLine

    pop ebp
    xor eax, eax
    ret