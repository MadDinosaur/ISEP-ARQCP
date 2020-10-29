# Makefile do exercício 7 do módulo 2

# Variáveis:
INCLUDES = crossSumBytes.h
SOURCES = crossSumBytes.s main.c
OBJFILES = crossSumBytes.o main.o
EXEC = ex07

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
