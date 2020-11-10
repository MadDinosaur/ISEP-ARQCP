.section .data

	.global ptr1
	
.section .text
	
	.global zero_count

zero_count:

	#prologue
	pushl %ebp
	movl %esp, %ebp
	
	movl $0, %eax
	movl ptr1,%ecx
	
ciclo:
	
	cmpb $0,(%ecx)
	jz fim
	cmpb $'0', (%ecx)
	jne seguinte
	incl %eax
	
seguinte:
	incl %ecx
	jmp ciclo
	
fim:
	
	#epilogue
	movl %ebp,%esp
	popl %ebp
	ret