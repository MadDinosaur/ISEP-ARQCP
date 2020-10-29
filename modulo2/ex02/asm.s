.section .data
	.global op1
	.global op2
	
.section .text

    .global sum
	
sum:
	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl op1, %eax
	movl op2, %ecx
	
	addl %ecx, %eax
	
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	
	