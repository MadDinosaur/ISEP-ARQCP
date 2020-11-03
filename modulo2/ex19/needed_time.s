.section .data
	.global current
	.global desired
	
.section .text
	.global needed_time
	
needed_time:

	# prologue
	pushl %ebp 
	movl %esp, %ebp
	
	movl $0,%eax
	movl $0,%ecx
	
	movw current,%ax
	cmp desired,%ax
	
	jl se_for_menor
	
	jg se_for_maior
	
	jmp fim
	
se_for_menor:

	movw desired,%ax
	movw current, %cx
	
	subw %cx,%ax
	imulw $2,%ax
	imulw $60,%ax
	jmp fim

se_for_maior:
	
	movw desired,%cx
	subw %cx,%ax
	imulw $3,%ax
	imulw $60,%ax

fim:
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	