.section .data
	.global op1
	.global op2
	
.section .text
	.global test_flags
	
test_flags:

	# prologue
	
	pushl %ebp 
	movl %esp, %ebp
	
	movl op2, %ecx
	movl op1, %eax
	
	addl %eax, %ecx
	
	# jump if carry
	jc output_with_carry
	
	# jump if overflow
	jo output_with_overflow
	
	movl $0, %eax
	jmp fim
	
output_with_carry:

	movl $1, %eax
	jmp fim
	
output_with_overflow:

	movl $1, %eax
	jmp fim
	
fim:

	#epilogue
	
	movl %ebp, %esp
	popl %ebp
	ret
	