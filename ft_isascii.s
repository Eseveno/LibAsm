global _ft_isascii

section .text

_ft_isascii:
	xor		rax, rax
	cmp		rdi, 0
	jl		exit
	cmp		rdi, 127
	jg		exit

true:
	inc		rax

exit:
	ret