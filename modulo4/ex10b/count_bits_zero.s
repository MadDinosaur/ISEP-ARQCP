.section .text
	.global count_bits_zero
	.global vec_count_bits_zero
		
	count_bits_zero:
			# prologue
			pushl %ebp # save previous stack frame pointer
			movl %esp, %ebp # the stack frame pointer for sum function
			
			# callee is responsible for : %ebx , % esi and %edi
			# save only those that are used
			pushl %ebx
			# function body
			movl 8(%ebp), %eax # a
			movl $0, %ebx # contador de bits inativos
			movl $32, %ecx # contador de bits (int = 32 bits)
		
		#shift using a loop
		loop_count_bits_zero:
			cmpl $0, %ecx
			je end_count_bits_zero
			decl %ecx
			
			shl %eax
			jc is_not_zero
			
			incl %ebx
			jmp loop_count_bits_zero
		
		is_not_zero:
			jmp loop_count_bits_zero
			
		end_count_bits_zero:
			movl %ebx, %eax
			# restore callee saved registers
			popl %ebx
		
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
			ret
	
	vec_count_bits_zero:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		subl $8, %esp # reserve space for local variables
		
		# callee is responsible for : %ebx , % esi and %edi
		# save only those that are used
		pushl %ebx
		
		#function body
		movl 8(%ebp), %eax # param ptr
		movl 12(%ebp), %ebx # param num
		movl $0, %ecx # soma
		
		loop_vec_count_bits_zero:
			cmp $0, %ebx
			je end_vec_count_bits_zero
			
			movl %eax, -4(%ebp) # saves current pointer value before call
			
			pushl (%eax) # push a
			movl %ecx, -8(%ebp) # saves current sum before call
			call count_bits_zero
			movl -8(%ebp), %ecx # restores sum after call
			addl %eax, %ecx
			addl $4, %esp
			
			movl -4(%ebp), %eax # restores pointer value after call
			
			decl %ebx
			addl $4, %eax
			
			jmp loop_vec_count_bits_zero
	
		addl $8, %esp # clean parameters from stack
	
		end_vec_count_bits_zero:
			movl %ecx, %eax
			
			# restore callee saved registers
			popl %ebx
			
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
			ret
			