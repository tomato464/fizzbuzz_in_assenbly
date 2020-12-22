.intel_syntax noprefix
.global main

main:
	mov rcx, 1

loop:
	# fizz
	# 答え:rax　余り:rdx
	# 割られる数: rdx or rax
	# 割る数:  div <reg>
	
	mov rdx, 0
	mov rax, rcx
	mov r15, 3
	div r15
	cmp rdx, 0
	jne buzznext

	# call write
	mov rdx, 0x4
	lea rsi, [fizz]
	mov rdi, 0x1
	mov rax, 0x1
	push rcx
	syscall
	pop rcx

buzznext:
	# buzz
	# 答え:rax　余り:rdx
	# 割られる数: rdx or rax
	# 割る数:  div <reg>
	
	mov rdx, 0
	mov rax, rcx
	mov r15, 5
	div r15
	cmp rdx, 0
	jne next

	# call write
	mov rdx, 0x4
	lea rsi, [buzz]
	mov rdi, 0x1
	mov rax, 0x1
	push rcx
	syscall
	pop rcx

next:
	# call write
	mov rdx, 0x1
	lea rsi, [newline]
	mov rdi, 0x1
	mov rax, 0x1
	push rcx
	syscall
	pop rcx

	inc rcx	
	cmp rcx, 0x10
	je exit
	jmp loop

exit:
	mov rax, 0x3c
	syscall

fizz:
	.ascii "fizz"
buzz:
	.ascii "buzz"
newline:
	.ascii "\n"
