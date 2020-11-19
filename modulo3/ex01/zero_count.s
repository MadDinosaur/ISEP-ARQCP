.section .data
	.global ptr1

.section .text
	.global zero_count
	zero_count:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl $0, %eax
		movl ptr1, %edx
		loop:
		
		movb (%edx), %cl
		cmpb $0, %cl #check if reached end of string
		je end
		
		cmpb $48, %cl #compare value pointed by edx to 0 in ascii
		je is_zero
		incl %edx #increment pointer in edx
		
		jmp loop
		
	is_zero:
		incl %eax
		incl %edx #increment pointer in edx
		jmp loop
	
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	