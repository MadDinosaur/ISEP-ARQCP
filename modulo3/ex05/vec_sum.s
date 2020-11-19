.section .bss
    .global ptrvec
    .global num
    
.section .text
    .global vec_sum
vec_sum:
    # prologue
    pushl %ebp # save previous stack frame pointer
    movl %esp, %ebp # the stack frame pointer for sum function
    pushl %ebx

    movl ptrvec, %ecx
    movl num, %edx

    movl $0, %ebx
    movl $0, %eax
   
loop:
    cmpl %edx, %ebx
    je end
    addl (%ecx), %eax
    addl $4, %ecx
    incl %ebx
    jmp loop

end:
    # epilogue
    popl %ebx
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
