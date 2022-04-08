%include "rw32-2020.inc"

section .data

section .text
CMAIN:
	push ebp
	mov ebp, esp
	call ReadUInt8
loop:
	call WriteUInt8
	call WriteNewLine

	dec al
	mov bl, al
	inc bl
	jnz loop
	
	pop ebp
	ret
