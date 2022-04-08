%include "rw32-2020.inc"

section .data
    sMessage db "Hello, Warudo!",EOL,0
    var db 42
    in1 dw 0
    in2 dw 0
    out1 dw 0

section .text
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp; for correct debugging

    ; Overwrite sMessage with 5 characters max
    mov ebx, 5
    mov edi, sMessage
    call ReadString_Silent
    
    ; Print sMessage
    mov esi, sMessage
    call WriteString
    call WriteNewLine
    
    ; Print var
    mov al,[var]
    call WriteInt8
    call WriteNewLine
    
    call ReadInt16_Silent
    mov [in1], word ax
    
    call ReadInt16_Silent
    mov [in2], word ax
    
    mov bx,[in1]
    add ax, bx
    mov [out1], ax
    call WriteInt16

    pop ebp
    xor eax, eax
    ret