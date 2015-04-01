section .text
global _ft_isspace

_ft_isspace:
	cmp		rdi, 9
	je		end
	cmp		rdi, 10
	je		end
	cmp		rdi, 13
	je		end
	cmp		rdi, 11
	je		end
	cmp		rdi, 28
	je		end
	cmp		rdi, 32
	je		end
	mov		rax, 0
	ret

end:
	mov		rax, 1
	ret
