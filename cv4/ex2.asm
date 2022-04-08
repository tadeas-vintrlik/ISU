%include "rw32-2020.inc"

section .data

section .text
CMAIN:
	mov ebp, esp
	push ebp
	mov ebp, esp

	mov eax, 50

	; div 7
	; 0111
	mov ebx, eax
	mov ecx, 3
.cycle
	shr ebx, 1
	sub eax, ebx
	loop .cycle

	pop ebp
	ret
