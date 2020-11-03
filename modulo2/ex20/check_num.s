.section .data
	.global num
	
.section .text
	.global check_num # int check_num(void)
	check_num:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		pushl %ebx

		movl $1, %ecx # return value in ecx
		movl num, %eax #move num to eax
		cdq
		
		cmp $0, %eax
		jl is_negative 
		jmp is_positive
	
	is_negative:
		jmp check_even

	is_positive:
		addl $2, %ecx # add 2 to return value
		jmp check_even
	
	check_even:
		movl $2, %ebx
		idivl %ebx # divide num by 2, remainder in edx
		
		cmp $0, %edx
		
		je is_even # if remainder of division by 2 is zero
		jmp is_odd # if remainder of division by 2 is not zero
		
	is_even:
		movl %ecx, %eax
		jmp end
	
	is_odd:
		incl %ecx # add 1 to return value
		movl %ecx, %eax
		jmp end
	
	end:
		# epilogue
		popl %ebx
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	