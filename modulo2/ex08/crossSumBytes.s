.section .data
	s1:
		.short 10
	.global s1
	
	s2:
		.short 10
	.global s2
	
.section .text
	.global crossSumBytes #short crossSumBytes(void)
	crossSumBytes:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl $0, %eax #initialize eax
		movw s1, %ax # place byte1 in ax
		movw s2, %cx # place byte2 in bx
		addb %ch, %al # place sum of most significant byte of s1 with least significant byte of s2 in al
		addb %cl, %ah # place sum of leat significant byte of s1 with most significant byte of s2 in ah
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	