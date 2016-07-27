global _ft_toupper

section .text

_ft_toupper:
	mov		rax, rdi
	cmp		rdi, 'a'
	jl		exit
	cmp		rdi, 'z'
	jg		exit

true:
	sub		rax, 32

exit:
	ret