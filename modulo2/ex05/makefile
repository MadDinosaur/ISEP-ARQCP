# Makefile do exercício 5 do módulo 2

# Variáveis:
INCLUDES = swapBytes.h
SOURCES = swapBytes.s main.c
OBJFILES = swapBytes.o main.o
EXEC = ex05

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


