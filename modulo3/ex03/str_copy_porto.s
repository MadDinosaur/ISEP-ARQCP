.section .data
	
	.global ptr1
	.global ptr2
	
.section .text
	.global str_copy_porto2
	
str_copy_porto2:
	
	#prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	
	movl ptr1, %ecx
	movl ptr2, %eax
	
ciclo:

	movb (%ecx),%bl
	movb %bl,(%eax)
	
	cmpb $0, %bl
	je fim
	
	cmpb $'v',%bl
	je se_for_v_minusculo
	
	cmpb $'V',%bl
	je se_for_V_maiusculo
	
	inc %ecx
	inc %eax
	
	jmp ciclo

se_for_v_minusculo:

	movb $'b',(%eax)
	incl %ecx
	incl %eax
	
	jmp ciclo

se_for_V_maiusculo:

	movb $'B',(%eax)
	incl %ecx
	incl %eax
	
	jmp ciclo
	
fim:
	popl %ebx
	#epilogue
	movl %ebp,%esp
	popl %ebp
	ret
	