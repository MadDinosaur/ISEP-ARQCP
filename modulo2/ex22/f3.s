.section .data
	.global i
	.global j
	
.section .text
	.global f3
	f3:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl i, %ecx
		movl j, %eax
		cmp %ecx, %eax
		jl is_less
		jmp is_greater_equal
	
	is_greater_equal:
		imul %ecx # h is in eax
		inc %ecx # g is in ecx
		jmp end
		
	is_less:
		addl %ecx, %eax # h is in eax
		movl %eax, %ecx # copy h to ecx
		addl $2, %ecx # g is in ecx
		jmp end
		
	end:
		# switch h to ecx and g to eax
		movl %eax, %edx
		movl %ecx, %eax
		movl %edx, %ecx
		# prepare for divison
		cdq
		# divide, r is in eax
		idiv %ecx
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	