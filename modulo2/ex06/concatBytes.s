.section .data
	.global byte1
	.global byte2

.section .text
	.global concatBytes
	concatBytes:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl $0, %eax #initialize eax
		movb byte1, %al #place byte1 in al (most significant byte)
		movb byte2, %ah #place byte2 in ah (least significant byte)
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	