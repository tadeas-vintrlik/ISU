%include "rw32-2020.inc"

section .data

section .text
main:
    push ebp
    mov ebp, esp

    call ReadUInt32
    push eax
    call tribonacci
    add esp, 4
    
    call WriteUInt32
    call WriteNewLine
    
    pop ebp
    xor eax, eax
    ret
    
tribonacci:
    push ebp
    mov ebp, esp
    push ebx
    push edx
    push ecx
   	
    xor edx, edx
    mov ebx, [ebp + 8]
    cmp ebx, 0 
    jz .zero
    cmp ebx, 1
    je .zero
    cmp ebx, 2
    je .one
    mov ecx, 3
.cykl:
    dec ebx
    push ebx
    call tribonacci 
    add esp, 4
    add edx, eax
    loop .cykl
    mov eax, edx
    jmp .end
.one:
   mov eax, 1
   jmp .end
.zero: 
    mov eax, 0
.end:
    pop ecx
    pop edx
    pop ebx
    pop ebp
    ret
