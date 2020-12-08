.section .text
	.global changes
	.global changes_vec
	
	changes:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		# callee is responsible for : %ebx , % esi and %edi
		# save only those that are used
		pushl %ebx
		
		# function body
		movl 8(%ebp), %eax # original ptr
		movl %eax, %ecx # copy ptr
		movb $0b00001111, %bl # bitmask
		
		# check value on 3rd byte
		andb %bl, %ch
		cmpb $7, %ch
		jg invert_bits
		jmp end_changes
	
		invert_bits:
			xorb %bl, %ah
			jmp end_changes
		
		end_changes:
			# restore callee saved registers
			popl %ebx
		
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
			ret
		
	changes_vec:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		subl $4, %esp # reserve space for local variables
		
		# function body
		movl 8(%ebp), %ecx # ptr
		movl 12(%ebp), %edx # num
		
		loop:
			cmp $0, %edx
			je end_changes_vec
			
			pushl (%ecx)
			movl %ecx, -4(%ebp) # saves current pointer value before call
			call changes
			movl -4(%ebp), %ecx # restores pointer value after call
			addl $4, %esp # clean parameters from stack
			movl %eax, (%ecx)
			
			addl $4, %ecx
			decl %edx
			jmp loop
			
			
		end_changes_vec:
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
			ret
		