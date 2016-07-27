global	_ft_strdup
extern	_malloc
extern	_ft_strlen
extern	_ft_memcpy
extern	_ft_puts
section .text

_ft_strdup:
	push	rdi
	call	_ft_strlen
	push	rax
	add		rax, 1
	mov		rdi, rax
	push	rdi
	push	rsi
	push 	rdx
	call	_malloc
	pop		rdx
	pop		rdx
	pop		rdx

	pop		rdx
	pop		rsi
	mov		rdi, rax
	call	_ft_memcpy
	ret