.section .data
	.global s
	
.section .text

	.global swapBytes
	
swapBytes:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl $0, %eax
	movw s, %ax
	
	xchg %ah,%al
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	