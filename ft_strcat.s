global _ft_strcat

section .text

_ft_strcat:
	xor		rcx, rcx
	push	rdi

loop:
	cmp		byte [rdi], 0
	je		inc
	inc		rdi
	jmp		loop
	
inc:
	cmp		byte [rsi], 0
	je		end
	movsb
	jmp		inc

end:
	mov		byte [rdi], 0
	pop		rax
	ret