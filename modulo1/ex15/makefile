# Makefile do exercício 15 do módulo 1

# Variáveis
INCLUDES = populate.h
SOURCES = populate.c check.c inc_sets.c main.c
OBJFILES = populate.o check.o inc_sets.o main.o
EXEC = ex15

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