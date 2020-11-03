.section .data
	.global i
	.equ A, 4
	.equ B, 2
	
.section .text
	.global operation # int operation(void)
	operation:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		pushl %ebx

		movl i, %eax # eax is the multiplicator and the result
		movl i, %ebx #ebx saves the value of i and decrements it
		movl $0, %ecx # ecx saves the sum result
	sum:
		mull %eax # save i*i in eax
		addl %eax, %ecx # adds the result to ecx
		decl %ebx # decrease i
		movl %ebx, %eax # puts new value of i in eax
		cmp $0, %ebx # checks if sum cycle is over
		jne sum
		
		movl $A, %eax
		mull %eax # saves A*A in eax
		movl $B, %ebx
		div %ebx # saves A^2/B in eax
		
		mull %ecx # multiplies constant by sum result
		
		# epilogue
		popl %ebx
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	