.section .data
	
.section .text
	.global greatest	
	
greatest:
	
	#prologue
	pushl %ebp
	movl %esp,%ebp
	
	pushl %ebx
	
	movl 8(%ebp),%edx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%ebx
	
	cmp %edx,%ecx
	jl edx_maior
	
	cmp %ecx,%ebx
	jl ecx_maior2
	
	movl %ebx,%eax
	jmp fim
		
edx_maior:

	cmp %edx,%ebx
	jl edx_maior2
	
	movl %ebx,%eax
	
edx_maior2:

	movl %edx,%eax
	jmp fim
	
ecx_maior2:

	movl %ecx,%eax
	
fim:
	popl %ebx
	movl %ebp,%esp
	popl %ebp
	ret
	