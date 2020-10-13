#include <stdio.h>
#include <string.h>
#include "countwords.h"

int main()
{	
	char str3[] = "Ola";
	
	int palavras = countWords(str3);
	
	printf ("O numero de palavras é: %d \n", palavras);
	
	return 0;
}

