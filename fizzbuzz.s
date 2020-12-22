.intel_syntax noprefix
.global main

main:
	mov rcx, 10

loop:
	mov rdx, 0x9
	lea rsi, [fizzbuzz]
	mov rdi, 0x1
	mov rax, 0x1
	push rcx
	syscall
	pop rcx
	dec rcx	
	je exit
	jmp loop

exit:
	mov rax, 0x3c
	syscall

fizzbuzz:
	.ascii "fizzbuzz\n"
fizz:
	.ascii "fizz\n"
buzz:
	.ascii "buzz\n"
