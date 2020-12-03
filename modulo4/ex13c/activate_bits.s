.section .text
	.global activate_bits
	
activate_bits:

	pushl %ebp
	movl %esp, %ebp
	
	pushl %ebx
	pushl %esi
	
	movl 8(%ebp),%eax # int a
	movl 12(%ebp),%esi #valor do int para rodar a esquerda
	movl 16(%ebp),%edx # valor do int para roda para a direita
	movb 16(%ebp),%cl #valor do bit para a direita
	
	addl $1,%esi
	movl $32,%ebx # numero de bits totais 

	subl %esi,%ebx
	
vai_para_esquerda:

	cmpl $0, %esi
	jle um_para_esquerda
	
	rorl $1,%eax
	decl %esi
	jmp vai_para_esquerda
	
um_para_esquerda:

	cmpl $0, %ebx
	je um_para_direita
	
	orl $1,%eax
	rorl $1,%eax
	decl %ebx
	jmp vai_para_esquerda
	
um_para_direita:

	cmpl $0, %edx
	jle end
	
	orl $1,%eax
	rorl $1,%eax
	decl %edx
	jmp um_para_direita
	
end:
	roll %cl, %eax
	
	popl %esi
	popl %ebx
	
	movl %ebp,%esp
	popl %ebp
	ret
	

	