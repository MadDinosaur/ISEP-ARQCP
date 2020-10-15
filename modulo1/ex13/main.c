#include <stdio.h>
#include "where_is.h"

int main()
{
	char e[] = "0,1,2,3,1,2,1";	
	char c = '1';
	
	int comprimento = sizeof(e)/sizeof(e[0]);
	int p[comprimento];
	
	int i=0;
	int vezes = 0;

	vezes = where_is(e,c,p);
	
	if (vezes == 0)
	{
		printf("O elemento %c não foi encontrado \n", c);
	}
	
	if (vezes == 1)
	{
		printf("O elemento %c foi encontrado %d vez. \n", c, vezes);
	}
	
	else
	{
		printf("O elemento %c foi encontrado %d vezes \n", c, vezes);
	}
	
	for(i = 0; i<vezes; i++)
	{
		printf("%d ", p[i]);
	}
	
	printf("\n");
	
	return 0;	
}