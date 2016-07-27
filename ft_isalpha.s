global _ft_isalpha

section .text

_ft_isalpha:
	xor		rax, rax
	cmp		rdi, 'A'
	jl		exit

	cmp		rdi, 'Z'
	jle		true

	cmp		rdi, 'a'
	jl		exit

	cmp		rdi, 'z'
	jg		exit

true:
	inc		rax

exit:
	ret