.section .data

numero11:
	.int

.global numero11
	
.section .text

	.global potencia3
	
potencia3:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl numero11,%eax
	
	imul numero11,%eax
	
	imul numero11,%eax
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	