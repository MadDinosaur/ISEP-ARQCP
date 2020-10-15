# Makefile para o exercício 7 módulo 1

# Variáveis

INCLUDES = array_sort1.h
SOURCES = array_sort1.c main.c
OBJFILES = array_sort1.o main.o
EXEC = ex07

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