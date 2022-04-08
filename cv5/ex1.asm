%include "rw32-2020.inc"

section .data
	string db "Hello, World!",10,0

section .text
CMAIN:
	mov ebp, esp
	push ebp

	mov esi, string
	call WriteString

	pop ebp
	xor eax, eax
	ret
