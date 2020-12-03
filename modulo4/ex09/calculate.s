.section .data
	
.section .text
	.global calculate
	
calculate:

	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
	
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	
	movl %edx,%eax
	addl %ecx,%eax
	movl %eax,-4(%ebp)

	imull %edx,%ecx
	movl %ecx,-8(%ebp)
	
	pushl -4(%ebp)
	pushl 12(%ebp)
	pushl 8(%ebp)
	pushl $'+'
	
	call print_result
	
	addl $16,%esp
	
	pushl -8(%ebp)
	pushl 12(%ebp)
	pushl 8(%ebp)
	pushl $'*'
	
	call print_result
	
	addl $16,%esp
	
	movl -4(%ebp),%eax
	subl -8(%ebp),%eax
	
	movl %ebp,%esp
	popl %ebp
	ret
	
	
	
	