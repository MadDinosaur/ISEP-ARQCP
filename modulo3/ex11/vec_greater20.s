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
	jl end

loop:
	cmpl num,%edx
	je end
	cmpl $20,(%ecx)
	jge increment
	addl $4, %ecx
	incl %edx
	jmp loop

increment:
	addl $4,%ecx
	incl %edx
	incl %eax
	jmp loop

end:
	#epilogue
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	
