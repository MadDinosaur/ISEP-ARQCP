.section .bss
    .global ptrvec
    .global num
    .global x

.section .text
    .global vec_search

vec_search:
    # prologue
    pushl %ebp # save previous stack frame pointer
    movl %esp, %ebp # the stack frame pointer for sum function
    pushl %ebx
    pushl %esi

    movl x, %ecx
    movl ptrvec, %edx
    movl num, %ebx
    movl $0, %eax
    movl $0, %esi

loop:
    cmpl %esi, %ebx
    je end
    cmpw %cx, (%edx)
    je igual
    addl $2, %edx
    incl %esi
    jmp loop

igual:
    movl %edx, %eax

end:
    # epilogue
    popl %esi
    popl %ebx
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
	