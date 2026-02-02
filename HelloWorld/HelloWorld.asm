
 
	section .data
	msg db "Hello World!",10,0 ; 10 is feedline and 0 is null-term
	len equ $ - msg
	

	section .text
	global _start
_start:

	mov rax,1
	mov rdi,1
	mov rsi,msg
	mov rdx,len
	syscall
	
	mov rax,60
	mov rdi,0
	syscall
	


