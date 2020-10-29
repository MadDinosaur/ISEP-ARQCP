.section .data
	.global s
	
.section .text

	.global swapBytes
	
swapBytes:
	# prologue
	pushl %ebp 
	movl %esp, %ebp

	movl s, %eax
	rol %eax, 8
	movl %eax, s
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	