.section .data
	
.global numero9	
	
.section .text
	.global modulo
	
modulo:

	# prologue
	pushl %ebp 
	movl %esp, %ebp

	movl numero9,%eax
	cdq
	xor %eax,%edx
	sub %eax,%edx
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	