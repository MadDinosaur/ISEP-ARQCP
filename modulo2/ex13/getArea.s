.section .data
	.global base
	.global height
	
	.equ CONST, 2
	
.section .text
	.global getArea
	
getArea:
	
	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl base, %eax
	movl height, %ecx
	
	mul %ecx
	
	movl $CONST, %ecx
	
	divl %ecx
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	