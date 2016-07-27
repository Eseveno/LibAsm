global _ft_puts
extern _ft_strlen

section .data
	nl		db 10
	null	db '(null)', 10

section .text

write_null:

	mov		rax, 0x2000004
	lea		rsi, [rel null]
	mov		rdx, 7
	mov		rdi, 1
	syscall
	pop		rdi
	jmp		end

_ft_puts:
	cmp		rdi, 0
	push	rdi
	je		write_null
	call	_ft_strlen
	mov		rdx, rax
	mov		rax, 0x2000004
	pop		rsi
	mov		rdi, 1
	syscall
	mov		rax, 0x2000004
	lea		rsi, [rel nl]
	mov		rdx, 1
	mov		rdi, 1
	syscall

end:
	ret