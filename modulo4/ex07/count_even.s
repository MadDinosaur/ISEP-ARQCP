.section .data
	
.section .text
	.global count_even
	
count_even:
	
	#prologue
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl 8(%ebp),%ebx #vai receber o apontador vec
	movl $2,%ecx #vai estar sempre a dividir mover para aqui o 2
	movl $0, %esi #contador inicializado a 0
	movl $0,%edi #contador numeros pares a 0
	
ciclo:
	
	cmpl %esi, 12(%ebp)
	je fim
	
	movw (%ebx),%ax
	movl $0,%edx
	
	idivw %cx
	cmp $0,%dx
	jne frente
	incl %edi
	
frente:

	incl %esi
	addl $2, %ebx
	jmp ciclo
 
fim:
	movl %edi,%eax
	
	#epilogue
	popl %edi
	popl %esi
	popl %ebx
	movl %ebp,%esp
	popl %ebp
	ret