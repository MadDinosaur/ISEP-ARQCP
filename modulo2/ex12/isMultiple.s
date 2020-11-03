.section .data
	.global A
	.global B

.section .text
	.global isMultiple # void isMultiple()
	isMultiple:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl A, %eax
		cmp $0, %eax
		jl is_not_multiple
		cdq
		movl B, %ecx
		cmp $0, %ecx
		je is_not_multiple
		jl is_not_multiple
		
		idivl %ecx
		
		cmp $0, %edx
		je is_multiple
		movl $0, %eax
		jmp end
		
	is_multiple:
		movl $1, %eax
		jmp end
	
	is_not_multiple:
		movl $0, %eax
		
	end:	
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	