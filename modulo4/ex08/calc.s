.section .text
	.global calc
		
	calc:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		# callee is responsible for : %ebx , % esi and %edi
		# save only those that are used
		pushl %ebx
		# function body
		movl 8(%ebp), %eax # a
		movl 12(%ebp), %ebx # b
		movl 16(%ebp), %ecx # c
		movl (%ebx), %edx # first index of b
		
		subl %eax, %edx
		imul %ecx, %edx
		subl $2, %edx
		movl %edx, %eax
	
		# restore callee saved registers
		popl %ebx
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		ret
		
	