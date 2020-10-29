#include <stdio.h>
#include "swapBytes.h"

short s;

int main()
{
	printf("Insira o valor do short: \n");
	scanf ("%hd",&s);
	
	swapBytes();
	
	printf("Novo valor: %hd \n", s);
	
	return 0;	
}