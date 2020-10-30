.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global compute
	
compute:
	
	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl A,%eax
	movl B,%ecx
	
	mul %ecx
	
	addl C,%eax

	movl D,%ecx
	
	cmp $0,%ecx
	je verificar_zero
	
	cdq
	
	idivl %ecx
	
	adcl $0,%edx
	
	jmp fim
	
verificar_zero:

	movl $0, %eax
	jmp fim

fim:

	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	