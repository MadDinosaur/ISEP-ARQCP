.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_sum_even
	vec_sum_even:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		push %ebx
		
		movl ptrvec, %edx
		movl $0, %ecx
		movl $0, %ebx
	
	loop:	
		cmpl $num, %ecx
		je end
		
		movl (%edx), %eax
		call test_even
		cmpl $1, %eax
		je sum_even
		
		addl $4, %edx
		incl %ecx
		jmp loop
		
		
	sum_even:
		addl (%edx), %ebx
		addl $4, %edx
		incl %ecx
		jmp loop
		
	
	end:
		pop %ebx
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	