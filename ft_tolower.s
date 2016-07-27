global _ft_tolower

section .text

_ft_tolower:
	mov		rax, rdi
	cmp		rdi, 'A'
	jl		exit
	cmp		rdi, 'Z'
	jg		exit

true:
	add		rax, 32

exit:
	ret