	section .data
	msg db "Enter your name: ",10,0
	msg_len equ $-msg

	greet_msg db "Hello, "
	greet_msg_len equ $-greet_msg
	
	section .bss
	name resb 32
	
	section .text
	global _start

_start:
	call _promptUser
	call _takeInput
	call _greet

	mov rax,60
	mov rdi, 0
	syscall
	
	
_promptUser:
	mov rax,1
	mov rdi,1
	mov rsi,msg
	mov rdx,msg_len
	syscall
	ret

_takeInput:
	mov rax,0
	mov rdi,0
	mov rsi,name
	mov rdx,32
	syscall
	ret

_greet:
	mov rax,1
	mov rdi,1
	mov rsi, greet_msg
	mov rdx, greet_msg_len
	syscall

	mov rax,1
	mov rdi,1
	mov rsi, name
	mov rdx, 32
	syscall

	ret
	
