global _ft_strlen

section .text

_ft_strlen:
	xor		rax, rax
	xor		rcx, rcx
	dec		rcx
	repnz	scasb
	inc		rcx
	not		rcx
	mov		rax, rcx
	ret