.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_greater20
	
vec_greater20:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	push %ebx
	
	movl $0,%edx
	movl $0,%eax
	movl ptrvec,%ecx
	movl num, %ebx
	cmpl $0, %ebx
	jle end

loop:
	cmpl num,%edx
	je end
	
	cmpl $0,4(%ecx)
	je next_part
	jg increment
	
	incl %edx
	addl $8, %ecx
	
	jmp loop
	
next_part:

	cmpl $20,(%ecx)
	jg increment
	
	incl %edx
	addl $8, %ecx
	
	jmp loop
	
increment:

	incl %eax
	incl %edx
	addl $8, %ecx
	jmp loop

end:
	#epilogue
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	
