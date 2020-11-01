.section .data
	.global num
	
.section .text
	.global steps # int steps(void)
	steps:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl num, %eax
		cdq
		movl $3, %ecx
		mull %ecx # result in edx:eax
		addl $6, %eax
		cdq
		divl %ecx
		addl $12, %eax
		subl num, %eax
		decl %eax
		
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	