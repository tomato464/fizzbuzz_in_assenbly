.intel_syntax noprefix
.global main

main:
	mov rcx, 0
	mov rdx, 0x9
	lea rsi, [fizz]
	mov rdi, 0x1
	mov rax, 0x1
	syscall
	inc rcx
	jmp main
	mov rax, 0x3c
	syscall

fizzbuzz:
	.ascii "fizzbuzz\n"
fizz:
	.ascii "fizz\n"
buzz:
	.ascii "buzz\n"
