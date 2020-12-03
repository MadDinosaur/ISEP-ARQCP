.section .data
	.global x
	.global ptrvec
	.global num
	
.section .text
	.global exists
	
exists:
	# prologue
    pushl %ebp 
    movl %esp, %ebp 
    pushl %ebx
    pushl %esi

    movl x, %edx
    movl ptrvec, %ebx
    movl num, %esi
    movl $0, %ecx
    movl $0, %eax
	
loop:

	cmpl %ecx,%esi
	je antes_de_acabar
	
	cmpw %dx,(%ebx)
	je igual
	
	incl %ecx
	addl $2,%ebx
	jmp loop
	
igual:
	
	incl %eax
	incl %ecx
	addl $2,%ebx
	jmp loop

antes_de_acabar:
	
	cmpl $1,%eax
	jg adicionar_antes_de_acabar
	
	movl $0,%eax
	jmp end
	
adicionar_antes_de_acabar:
	
	movl $1,%eax
	
end:
	# epilogue
    popl %esi
    popl %ebx
    movl %ebp, %esp 
    popl %ebp 
    ret
	