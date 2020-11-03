.section .data
	
.global numero9
.equ CONST, -1
	
.section .text
	.global modulo
	
modulo:

	# prologue
	pushl %ebp 
	movl %esp, %ebp

	movl numero9,%eax
	cdq
	
	
	cmp $0, %eax
	jl se_for_menor
	
	jmp fim

se_for_menor:
	imull $CONST,%eax
	
fim:	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	