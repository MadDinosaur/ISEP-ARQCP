.section .data
	.global ptrvec
	.global num
	
.section .text
	.global sum_first_byte
	
sum_first_byte:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	
	movl $0,%edx
	movl $0,%eax
	movl ptrvec,%ecx
	movl num, %ebx
	
	cmpl $0, %ebx
	je end

loop:
	
	cmpl num,%edx
	je end
	
	movl (%ecx),%ebx	
	movsxb %bl, %esi
	addl %esi,%eax
	
	addl $4, %ecx
	incl %edx
	
	jmp loop
	
end:
	#epilogue
	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	
