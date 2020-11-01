.section .data
	
.global numero7
.global numero8	
	
.section .text

	.global divisao

divisao:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl numero7,%eax
	
	cmp $0,%eax
	je for_igual_zero1
	
	movl numero8,%ecx
	
	cmp $0,%ecx
	je for_igual_zero
	
	cdq
	
	idivl %ecx
	
	jmp fim
	
for_igual_zero1:

	jmp fim
	
for_igual_zero:
	
	movl $0,%eax
	jmp fim
	
fim:
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	