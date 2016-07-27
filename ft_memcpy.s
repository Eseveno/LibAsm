global _ft_memcpy

section .text

_ft_memcpy:
	mov		rcx, rdx
	push	rdi
	rep		movsb
	pop		rax
	ret