.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text

	.global sum_and_subtract

sum_and_subtract:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx

	# ebx menos significativa
	# ecx mais significativa
	
	movsxb A, %eax
	cdq # fica em edx:eax
	movl %eax,%ebx
	movl %edx,%ecx
	
	movsxw B, %eax
	cdq # fica em edx:eax
	addl %eax, %ebx
	adcl %edx, %ecx
	
	movl C, %eax
	cdq # fica em edx:eax
	addl %eax, %ebx
	adcl %edx, %ecx
	
	movl D, %eax
	cdq # fica em edx:eax
	subl %eax, %ebx
	sbbl %edx, %ecx

	movl %ebx, %eax
	movl %ecx, %edx
	
	popl %ebx
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	