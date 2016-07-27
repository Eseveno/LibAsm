global _ft_isalnum

section .text

_ft_isalnum:
	xor		rax, rax

	cmp		rdi, '0'
	jl		exit

	cmp		rdi, '9'
	jle		true

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