.section .data
	
.global numero3
.global numero4	
	
.section .text

	.global subtracao

subtracao:

	# prologue
	pushl %ebp
	
	movl %esp, %ebp
	
	movl numero3,%eax
	
	subl numero4,%eax

	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	