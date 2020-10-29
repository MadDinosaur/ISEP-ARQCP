.section .data
	.global s
	
.section .text

	.global swapBytes
	
swapBytes:
	# prologue
	pushw %bp 
	movw %sp, %bp

	movb s, %al # 8 bits mais significativos 
	
	movb s, %ah # 8 bits menos significativos
	
	xchg %ah,%al
	
	#epilogue
	movw %bp, %sp
	popw %bp
	ret
	