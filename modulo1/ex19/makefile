# Makefile do exercício 19 módulo 1

# Variáveis
INCLUDES = find_word.h
SOURCES = main.c find_word.c
OBJFILES = main.o find_word.o
EXEC = ex19

#Suffix rules
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