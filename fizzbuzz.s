.intel_syntax noprefix
.global main

main:
	mov rcx, 16

loop:
	# count % 15
	# 答え:rax　余り:rdx
	# 割られる数: rdx or rax
	# 割る数:  div <reg>
	
	mov rdx, 0
	mov rax, rcx
	mov r15, 15
	div r15
	cmp rdx, 0
	jne next

	# call write
	mov rdx, 0x9
	lea rsi, [fizzbuzz]
	mov rdi, 0x1
	mov rax, 0x1
	push rcx
	syscall
	pop rcx

next:
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
