.section .data
	
.section .text
	.global inc_and_square	
	
inc_and_square:
	
	#prologue
	pushl %ebp
	movl %esp,%ebp
	
	movl 8(%ebp),%ecx
	
	movl (%ecx),%edx
	
	inc %edx
	
	movl %edx,(%ecx)
	
	movl 12(%ebp),%eax
	
	imull 12(%ebp),%eax
	
	#epilogue
	movl %ebp,%esp
	popl %ebp
	ret
	