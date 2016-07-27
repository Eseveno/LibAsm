global _ft_isprint

section .text

_ft_isprint:
	xor		rax, rax
	cmp		rdi, ' '
	jl		exit
	cmp		rdi, '~'
	jg		exit

true:
	inc		rax

exit:
	ret