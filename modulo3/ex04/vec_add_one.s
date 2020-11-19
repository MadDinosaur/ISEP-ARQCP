.section .data
	.global num
	.global ptrvec

.section .text
	.global vec_add_one
	vec_add_one:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl ptrvec, %eax
		movl $0, %ecx
	
	loop:
		cmpl num, %ecx
		je end
	
		movl (%eax), %edx
		incl %edx
		movl %edx, (%eax)
		incl %ecx
		
		addl $4, %eax
		jmp loop
	
	
	end:
		# epilogue
		popl %ebx
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	