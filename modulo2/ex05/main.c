#include <stdio.h>
#include "swapBytes.h"

short s;

int main()
{
	printf("Insira o valor do short: \n");
	scanf ("%hd",&s);

	do
	{
		printf("Insira o valor do short: \n");
		scanf ("%hd",&s);
				
	}while( s < -32768 || s > 32767 );
	
	swapBytes();
	printf("Novo valor: %hd \n", s);
	
	return 0;	
}