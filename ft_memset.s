global _ft_memset

section .text

_ft_memset:
	mov		rcx, rdx
	push	rdi
	mov		rax, rsi
	rep		stosb
	pop		rax
	ret