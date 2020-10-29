# Makefile do exercício 13 do módulo 2

# Variáveis:
INCLUDES = getArea.h
SOURCES = getArea.s main.c
OBJFILES = getArea.o main.o
EXEC = ex13

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