global _ft_bzero

section .text

_ft_bzero:
	xor		rcx, rcx			; mov	rcx, 0 

loop:
	cmp		rcx, rsi			; compare rcx (counter) and rsi (size of char *)
	je		end					; if (rcx == rsi) GOTO end

inc:
	mov		byte [rdi + rcx], 0
	inc		rcx
	jmp		loop

end:
	ret