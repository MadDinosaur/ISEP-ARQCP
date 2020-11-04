.section .data
	.global i
	.global j
	
.section .text
	.global f2
	f2:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl i, %ecx
		movl j, %eax
		cmp %ecx, %eax
		jg is_greater
		jmp is_less_equal
	
	is_greater:
		dec %ecx
		jmp end
		
	is_less_equal:
		inc %eax
		jmp end
		
	end:
		imul %ecx
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	