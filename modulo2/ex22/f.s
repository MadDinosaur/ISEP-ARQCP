.section .data
	.global i
	.global j
	
.section .text
	.global f
	f:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl i, %ecx
		movl j, %eax
		cmp %eax, %ecx
		je equals
		jmp not_equals
	
	equals:
		subl %ecx, %eax
		inc %eax
		jmp end
		
	not_equals:
		addl %ecx, %eax
		dec %eax
		
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	