.section .data
	.global ptr1

.section .text
	.global encrypt
	encrypt:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl ptr1, %edx
		movl $0, %eax
	
	loop:
		movb (%edx), %cl
		cmpb $0, %cl
		je end
		
		cmpb $'a', %cl
		je next
		
		cmpb $' ', %cl
		je next
		
		addb $2, %cl
		incl %eax
	
	next:
		incl %edx
		
		jmp loop
	
	
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	