# Makefile do exercício 13 com as variáveis e os subfixos

# Variáveis

INCLUDES = multiplication_table.h
SOURCES = line.c  multiplication_table_n.c  multiplication_table.c  main.c
OBJFILES = line.o  multiplication_table_n.o  multiplication_table.o  main.o
EXEC = ex13

# Regras do Subfixos
.SUFFIXES : .c .o

.c .o: 
	gcc -Wall -g -c $<
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}
	
clean: 
	rm -f ${OBJFILES} ${EXEC}
	
	