%include "rw32-2020.inc"

section .data
    login db "xvintr04",0
    same db "Retezce jsou shodne",EOL,0
    diff db "Retezce se lisi",EOL,0
    
section .bss
    array resb 9

section .text
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp
   
    mov ebx, 8
    mov edi, array
    call ReadString
    ; EAX = nactene znaky
    mov esi, login

    mov ecx, 8
    repe cmpsb
    je .same
    ; different
    mov esi, diff
    call WriteString
    mov eax, 1
    jmp .end
.same:
    mov esi, same
    call WriteString
    xor eax, eax
    jmp .end
.end:
    pop ebp
    ret