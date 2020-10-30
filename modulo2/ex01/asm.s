.section .data
	.global op1
	.global op2
	.global res

.section .text
	.global sum #void sum(void)
	
sum:
		#prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl op1, %ecx
		movl op2, %eax
		addl %ecx, %eax
		movl %eax, res
		
		#epilogue
		movl %ebp, %esp
		popl %ebp
		ret
		