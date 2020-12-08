.section .text
	.global sum_smaller
		
	sum_smaller:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		# callee is responsible for : %ebx , % esi and %edi
		# save only those that are used
		pushl %ebx
		# function body
		movl 8(%ebp), %eax # num1
		movl 12(%ebp), %ebx # num2
		movl 16(%ebp), %ecx # *smaller
		
		cmpl %eax, %ebx
		jl place_num1
		jg place_num2
		
	place_num1:
		movl %ebx, (%ecx)
		jmp end
		
	place_num2:
		movl %eax, (%ecx)
		jmp end
		
	end:
		addl %ebx, %eax
	
		# restore callee saved registers
		popl %ebx
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		ret
		
	