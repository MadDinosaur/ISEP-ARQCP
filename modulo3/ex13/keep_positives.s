.section .data
	.global ptrvec
	.global num
	
.section .text
	.global keep_positives
	
keep_positives:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	push %ebx
	
	movl $0,%edx
	movl $0,%eax
	movl ptrvec,%ecx
	movl num, %ebx
	
	cmpl $0, %ebx
	je end

loop:
	
	cmpl num,%edx
	je end
	
	cmpl $0,(%ecx)
	jl next_part
	
	addl $4, %ecx
	incl %edx
	
	jmp loop
	
next_part:

	movl %edx,(%ecx)
	
	incl %edx
	addl $4, %ecx
	
	jmp loop

end:
	#epilogue
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	
