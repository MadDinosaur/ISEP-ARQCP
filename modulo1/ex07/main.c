#include <stdio.h>
#include "array_sort1.h"

int main()
{
	int vec[] = {2,1,1,1,1,1,1,1,1};
	int i = 0;
	int comprimento = 0;
	
	comprimento = sizeof(vec)/sizeof(vec[0]);
	
	array_sort1(vec,comprimento);
	
	printf("O array organizado em forma crescente: \n");
	
	for(i=0;i<comprimento;i++)
	{
		printf("%d",vec[i]);
	}
	
	printf("\n");
	
	return 0;
}