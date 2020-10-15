# Makefile para o exercício 9 módulo 1

# Variáveis
INCLUDES = sort_without_reps.h sort_copy.h
SOURCES = sort_without_reps.c main.c copy_array.c sort_array.c remove_repeated.c
OBJFILES = sort_without_reps.o main.o copy_array.o sort_array.o remove_repeated.o
EXEC = ex09

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