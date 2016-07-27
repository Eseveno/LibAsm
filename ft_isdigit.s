global _ft_isdigit

section .text

_ft_isdigit:
	xor		rax, rax
	cmp		rdi, '0'
	jl		exit
	cmp		rdi, '9'
	jg		exit

true:
	inc		rax

exit:
	ret