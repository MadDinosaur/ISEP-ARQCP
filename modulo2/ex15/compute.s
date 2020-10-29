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
	
	divl %ecx
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	