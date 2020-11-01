# Makefile do exercício 17 do módulo 2

# Variáveis:
INCLUDES = todos.h
SOURCES = soma.s subtracao.s multiplicacao.s divisao.s modulo.s potencia2.s potencia3.s main.c
OBJFILES = soma.o subtracao.o multiplicacao.o divisao.o modulo.o potencia2.o potencia3.o main.o
EXEC = ex17

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