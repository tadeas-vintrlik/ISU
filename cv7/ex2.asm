%include "rw32-2020.inc"

section .data
arr times 31 db 0

section .text
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp
   
    mov ebx, 30
    mov edi, arr
    call ReadString_Silent
    
    mov esi, arr
    call _numbers
    
    call WriteInt32
    call WriteNewLine

    pop ebp
    xor eax, eax
    ret
    
; number of digits in string pointed to by esi stored in eax
_numbers:
    push ebp
    mov ebp, esp

    mov ecx, eax
    inc ecx
    xor eax, eax
  for:
    cmp [esi + ecx - 1], byte '0'
    jb nodigit
    
    cmp [esi + ecx - 1], byte '9'
    ja nodigit
    ; else is a digit
    inc eax
  nodigit:
    loop for
    
    pop ebp
    ret
    