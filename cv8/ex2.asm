%include "rw32-2020.inc"

section .data

section .text
main:
    push ebp
    mov ebp, esp
    
    call ReadUInt32
    mov ebx, eax
    
    call ReadUInt32
    mov ecx, eax
    
    call ReadUInt32
    mov edx, eax
    
    push edx
    push ecx
    push ebx
    call maxindex
    add esp, 12
    call WriteUInt32
    
    pop ebp
    xor eax, eax
    ret
    
maxindex:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx

    mov ebx, [ebp + 8] ; prvni maximum
    ; edx index maxima
    ; ebx hodnota maxima
    mov ecx, 3
.cykl:
    mov eax, [ebp+ecx*4+4]
    cmp ebx, eax
    ja .nochange
    mov ebx, eax
    mov edx, ecx
.nochange:
    loop .cykl

    mov eax, edx
    pop edx
    pop ebx
    pop ecx
    pop ebp
    ret
