# Makefile do exercício 17 módulo 1

# Variáveis
INCLUDES = swap.h
SOURCES = main.c swap.c
OBJFILES = main.o swap.o
EXEC = ex17

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