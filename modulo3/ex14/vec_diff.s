.section .bss
    .global x
    .global ptrvec
    .global num
    
.section .text
    .global vec_diff
	
vec_diff:

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
	je end
	
	movw (%ebx),%dx
	movw %dx,x
	
	pushl %eax
    pushl %edx
    pushl %ecx
	
    call exists
	cmpl $0,%eax
	je soma_total
	
	popl %ecx
	popl %edx
	popl %eax
	
	incl %ecx
	addl $2,%ebx
	jmp loop
	
soma_total:

	popl %ecx
	popl %edx
	popl %eax
	
	incl %eax
	incl %ecx
	addl $2,%ebx
	jmp loop

end:

    # epilogue
    popl %esi
    popl %ebx
    movl %ebp, %esp 
    popl %ebp 
    ret
	