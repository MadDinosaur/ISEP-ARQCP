.section .data
	.global code
	.global currentSalary
	
.section .text
	.global new_salary
	
new_salary:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl code,%eax
	
	cmp $10,%eax
	je igual_10
	cmp $11,%eax
	je igual_11
	cmp $12,%eax
	je igual_12
	
	movl currentSalary,%ecx
	add $100,%ecx
	movl %ecx,%eax
	jmp fim
	
igual_10:
	movl currentSalary,%ecx
	add $300,%ecx
	movl %ecx,%eax
	jmp fim
	
igual_11:
	movl currentSalary,%ecx
	add $250,%ecx
	movl %ecx,%eax
	jmp fim
	
igual_12:
	movl currentSalary,%ecx
	add $150,%ecx
	movl %ecx,%eax
	
fim:

	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
