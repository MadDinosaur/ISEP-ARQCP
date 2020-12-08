.section .text
	.global test_even
	test_even:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
	
		and $0x00000001, %eax
		
		cmpl $0, %eax
		je is_even
		jne is_odd
	
	is_even:
		movl $1, %eax
		jmp end

	is_odd:
		movl $0, %eax
		jmp end
		
	
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	