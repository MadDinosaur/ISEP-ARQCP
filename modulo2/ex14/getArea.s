.section .data
	base:
		.int 0
	.global base
	
	height:
		.int 0
	.global height
	
	.equ CONST, 2

.section .text
	.global getArea # int getArea()
	getArea:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl base, %eax
		movl height, %ecx
		
		mull %ecx
		
		movl $CONST, %ecx
		
		divl %ecx
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	