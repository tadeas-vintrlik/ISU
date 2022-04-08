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
    
    pop ebp
    xor eax, eax
    ret
    
maxindex:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    
    mov ebx, [ebp + 8]
    mov ecx, [ebp + 12]
    cmp ebx, ecx
    ja prvni_vetsi
    mov eax, 2
    
  prvni_vetsi:
    mov eax, 1
    mov ecx, [ebp + 16]
    cmp ebx, ecx
    ja prvni_vetsi_nez_treti
    mov eax, 3
    jmp konec
  druhy_vetsi:
  
  konec:
    pop ecx
    pop ebx
    pop ebp
    ret
