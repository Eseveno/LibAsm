global _ft_cat
extern _ft_bzero

section .bss
	buf:	resb 2048

section .text
_ft_cat:
	push	rdi
	lea		rsi, [rel buf]
	mov		rdx, 2048
	mov		rax, 0x2000003
	syscall
	jc		end
	mov		rdi, rsi
	cmp		rax, 0
	je		end
	push	rdi
	mov		rdx, rax
	mov		rax, 0x2000004
	pop		rsi
	mov		rdi, 1
	syscall
	pop		rdi
	jmp		_ft_cat

end:
	pop		rdi
	ret
