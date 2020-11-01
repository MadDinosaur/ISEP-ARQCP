.section .data

numero10:
	.int
	
.global numero10
	
.section .text

	.global potencia2
	
potencia2:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl numero10,%eax
	
	imul numero10,%eax
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	