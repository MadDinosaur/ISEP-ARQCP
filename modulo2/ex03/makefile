# Makefile do exercício 3 do módulo 2

#Variaveis
INCLUDES = asm.h
SOURCES = main.c asm.s
OBJFILES = asm.o main.o
EXEC = ex01

#Suffix rules
.SUFFIXES : .c .o

.c.o:
	gcc -Wall -g -c $<

.SUFFIXES : .s .o

.s.o:
	gcc -Wall -g -c $<
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}
	
clean:
	rm -f ${OBJFILES} ${EXEC}