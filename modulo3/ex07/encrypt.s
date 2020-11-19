.section .data
	.global ptr1
	
.section .text
	.global encrypt
	
encrypt:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	
	movl ptr1, %ecx
	movl $0, %eax
		
loop:
	cmpb $0, (%ecx)
	je end
	
	cmpb $97, (%ecx)
	je increment

	cmpb $32, (%ecx)
	je increment
	
	
	addb $2, (%ecx)
	incl %eax
	
	
increment:
	incl %ecx
	jmp loop
	
end:


	#epilogue
	
	movl %ebp, %esp
	popl %ebp
	ret
