segment .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl false
	cmp rdi, 126
	jg false

true:
	mov rax,1
	jmp done

false:
	mov rax,0
	jmp done

done:
	ret
