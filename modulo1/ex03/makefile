# Makefile do exercício 1 do módulo 1

# variaveis

INCLUDES = sum_even.h
SOURCES = sum_even.c main.c
OBJFILES = sum_even.o main.o
EXEC = ex03

# Suffix rules
.SUFFIXES : .c .o

.c.o:
	gcc -Wall -g -c $<
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}
	
clean:
	rm -f ${OBJFILES} ${EXEC}