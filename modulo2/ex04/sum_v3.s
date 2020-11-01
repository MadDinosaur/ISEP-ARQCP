.section .data
	.global op1
	.global op2
	
	op3:
		.int 0
	.global op3
	
	op4:
		.int 0
	.global op4

.section .text
	.global sum_v3 # void sum(void)
	sum_v3:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl op4, %ecx #place op4 in ecx
		movl op3, %eax #place op3 in eax
		addl %ecx, %eax #add op4 and op3, place result in eax
		
		movl op2, %ecx #place op2 in eax
		subl %ecx, %eax #subtract ecx and op2, place result in eax
		
		movl op1, %ecx #place op1 in eax
		addl %ecx, %eax #add ecx and op1, place result in eax

		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	