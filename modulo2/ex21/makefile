# Makefile do exercício 21 do módulo 2

# Variáveis:
INCLUDES = new_salary.h
SOURCES = new_salary.s main.c
OBJFILES = new_salary.o main.o
EXEC = ex21

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