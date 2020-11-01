.section .data

.global numero5
.global numero6	
	
.section .text

	.global multiplicacao

multiplicacao:

	# prologue
	pushl %ebp
	
	movl %esp, %ebp
	
	movl numero5,%eax
	
	imul numero6,%eax	
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	