# Makefile do exercício 9 do módulo 2

# Variáveis:
INCLUDES = sum_and_subtract.h
SOURCES = sum_and_subtract.s main.c
OBJFILES = sum_and_subtract.o main.o
EXEC = ex09

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
