# Makefile para o exercício 13 módulo 1

# Variáveis
INCLUDES = where_is.h
SOURCES = where_is.c main.c
OBJFILES = where_is.o main.o
EXEC = ex13

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