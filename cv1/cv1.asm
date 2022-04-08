%include "rw32-2020.inc"

section .data

section .text
main:
    push ebp
    mov ebp, esp    ; for correct debugging
    mov al,0
    mov bl,0
    mov cl,0
    
    call ReadInt8 ;a
    mov cl,al
    call ReadInt8 ;b
    mov bl,al ; a in al
    mov al,cl ; b in al
    
    ; write a + b
    mov cl,al ; save a in cl
    add al,bl
    call WriteInt8
    call WriteNewLine
    mov al,cl ; restore the original a
    
    ; write a - b
    sub al,bl
    call WriteInt8
    call WriteNewLine
    
    mov eax,0
    ret
