.section .data
	.global i
	.global j
	
.section .text
	.global f4
	f4:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		pushl %ebx
		
		movl i, %ecx
		movl j, %eax
		addl %eax, %ecx # sum is in ecx
		cmp $10, %ecx
		jl is_less
		jmp is_greater_equal
	
	is_greater_equal:
		movl j, %eax
		movl j, %ecx
		imul %ecx
		cdq
		movl $3, %ebx
		idiv %ebx
		jmp end
		
	is_less:
		movl i, %eax
		movl i, %ecx
		imul %ecx
		movl $4, %ebx
		imul %ebx
		jmp end
		
	end:		
		# epilogue
		popl %ebx
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	