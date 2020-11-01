.section .data
	
.global numero1
.global numero2	
	
.section .text

	.global soma
	
soma:

	# prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	
	movl numero1, %eax
	cdq
	movl %edx,%ecx
	movl %eax,%ebx
	
	movl numero2, %eax
	cdq
	addl %eax,%ebx
	adcl %edx,%ecx
	
	movl %ebx,%eax
	movl %ecx,%edx
	
	popl %ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	