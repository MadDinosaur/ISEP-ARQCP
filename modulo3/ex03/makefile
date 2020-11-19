# Makefile do exercício 03 do módulo 3

# Variáveis:
INCLUDES = str_copy_porto2.h
SOURCES = str_copy_porto2.s main.c
OBJFILES = str_copy_porto2.o main.o
EXEC = ex03

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