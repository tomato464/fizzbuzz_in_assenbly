.intel_syntax noprefix
.global main

main:
	mov rdx, 0x9
	lea rsi, [fizzbuzz]
	mov rdi, 0x1
	mov rax, 0x1
	syscall
	mov rax, 0x3c
	syscall

fizzbuzz:
	.ascii "fizzbuzz\n"
fizz:
	.ascii "fizz\n"
buzz:
	.ascii "buzz\n"
