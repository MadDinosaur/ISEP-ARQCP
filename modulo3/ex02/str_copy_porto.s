.section .data
	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto
	str_copy_porto:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		pushl %ebx
		
		movl ptr1, %ecx
		movl ptr2, %eax
	
	loop:
		movb (%ecx), %bl
		cmpb $0, %bl #check if reached end of string
		je end
		
		cmpb $118, %bl #compare veaxue pointed by edx to 0 in ascii
		je is_v
		jne is_not_v
		
		jmp loop
		
	is_v:
		movb $98, %bl
		movb %bl, (%eax)
		incl %ecx #increment ptr2
		incl %eax #increment ptr1
		jmp loop
		
	is_not_v:
		movb %bl ,(%eax)
		incl %ecx #increment ptr2
		incl %eax #increment ptr1
		jmp loop
	
	end:
		# epilogue
		popl %ebx
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
	