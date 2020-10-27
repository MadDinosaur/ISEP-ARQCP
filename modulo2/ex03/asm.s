.section .data
	.global op1
	.global op2
	
	.equ CONST , 15
	
.section .text

	.global sum_v2
	
sum_v2:
	# prologue
	
	pushl %ebp 
	movl %esp, %ebp
	
	movl $CONST, %eax
	subl op1, %eax
	
	movl $CONST, %ecx
	subl op2, %ecx
	
	subl %ecx, %eax
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	
	