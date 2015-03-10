
%define BUFF_SIZE 1
%define SYSCALL(n) 0x2000000 | n

section			.bss
	buffer		resb		BUFF_SIZE

section			.text
	global	_ft_cat

_ft_cat:
	push		rdi
	mov			rsi, buffer
	mov			rdx, BUFF_SIZE
	mov			rax, SYSCALL(3) ; read
	syscall
	jc			end
	cmp			rax, 0
	je			end
	mov			rdi, 1
	mov			rdx, rax
	mov			rax, SYSCALL(4) ; write
	syscall
	pop			rdi
	jmp			_ft_cat

end:
	ret
