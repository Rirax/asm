section .text
global _ft_abs

_ft_abs:
	cmp		edi, 0
	jl		end
	mov		eax, edi
	ret

end:
	not		edi
	add		edi, 1
	mov		eax, edi
	ret
