section .text
global	_ft_strcpy
extern _ft_strlen

_ft_strcpy:
	mov		rbx, rdi
	mov		rdi, rsi
	call	_ft_strlen
	mov		rcx, rax
	inc		rcx
	mov		rdi, rbx
	rep movsb
	mov		rax, rbx
	ret
