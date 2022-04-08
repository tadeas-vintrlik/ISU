%include "rw32-2020.inc"

section .data

section .text
CMAIN:
	mov ebp, esp
	push ebp
	mov ebp, esp

	mov eax, 0xF38BAC95
	or eax, 0x00010110
	and eax, 0xFF7FFF7E
	mov ebx, eax

	shl eax, 2
	add eax, ebx

	shr eax, 3

	rol eax, 8
	rol ax, 8
	rol eax, 15
	rol ax, 8
	
	pop ebp
	ret
