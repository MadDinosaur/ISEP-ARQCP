#include <stdio.h>
#include "sort_without_reps.h"
#include "sort_copy.h"

int main()
{
	int vec[]={2,1,1,1,1,1,1,1,1};
	
	int comprimento = sizeof(vec)/sizeof(vec[0]);
	
	int vec2[comprimento];
	
	int i=0;
	
	int vezes = 0;
		
	vezes = sort_without_reps(vec, comprimento, vec2);
	
	printf("Numero de elementos que foram inseridos no novo array: %d \n", vezes);
	
	printf ("Resultado do array final: \n");
	
	for(i=0;i<comprimento;i++)
	{
		if(vec2[i] != 0)
		{
			printf("%d ",vec2[i]);
		}
	}
			
	printf("\n");
	
	return 0;
}