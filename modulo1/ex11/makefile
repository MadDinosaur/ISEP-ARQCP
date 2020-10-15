# Makefile para o exercício 11 do módulo 1

# Variáveis
INCLUDES = palindrome.h
SOURCES = palindrome.c main.c
OBJFILES = palindrome.o main.o
EXEC = ex11

# Suffix rules
.SUFFIXES : .c .o

.c.o: gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}
	
clean: 
	rm -f ${OBJFILES} ${EXEC}