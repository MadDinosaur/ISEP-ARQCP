.section .data
	
.section .text
	.global cube	
	
cube:
	
	#prologue
	pushl %ebp
	movl %esp,%ebp
	
	movl 8(%ebp),%eax
	
	imull 8(%ebp),%eax
	
	imull 8(%ebp), %eax
	
	movl %ebp,%esp
	popl %ebp
	ret
	
	