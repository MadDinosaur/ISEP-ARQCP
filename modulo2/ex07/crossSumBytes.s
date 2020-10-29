.section .data
	.global s1
	.global s2
	
.section .text

	.global crossSumBytes
	
crossSumBytes:
	
	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl $0, %eax
	movl $0, %ecx
	
	movw s1, %ax
	movw s2, %cx
	
	addb %cl, %ah # mais com o menos
	addb %ch, %al # menos com o mais
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	