%include "rw32-2020.inc"

section .data
string db "Hello World!",EOL,0

section .bss
    array resd 10

section .text
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp
   
    mov ecx, 10
  for:
    mov [array + 4*ecx - 4], ecx
    loop for
    
    mov ecx, 10
  for_2:
    mov eax, [array + 4*ecx - 4]
    call WriteUInt32
    call WriteNewLine
    loop for_2

    pop ebp
    xor eax, eax
    ret