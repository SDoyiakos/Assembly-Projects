	section .data
	msg db "Function call", 0, 10
	msg_len equ $-msg

	section .text
	global _start
_start:
	call func
	mov rax,60
	mov rdi,0
	syscall


func: 				; Prints the message in msg
	mov rax,1
	mov rdi,1
	mov rsi,msg
	mov rdx,msg_len
	syscall
	ret
