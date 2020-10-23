#include <stdio.h>
#include "swap.h"

int main()
{
	int vec1[] = {1,2,3,4};
	int vec2[] = {5,6,7,8};
	int size1;
	int size2;
	
	size1 = sizeof(vec1)/sizeof(vec1[0]);
	size2 = sizeof(vec2)/sizeof(vec2[0]);
	
	int i, j, t, p;
	
	printf("Vetores iniciais: \n");
	
	for(i=0; i<size1; i++)
	{
		printf("%d ", vec1[i]);
	}
	
	printf("\n");
	
	for(j=0; j<size2; j++)
	{
		printf("%d ", vec2[j]);
	}
	
	printf("\n");
		
	if (size1 == size2)
	{
		swap(vec1,vec2,size1);
		
		printf("Vetores trocados: \n");
		
		for(t=0; t<size1; t++)
		{
			printf("%d ", vec1[t]);
		}
	
		printf("\n");
	
		for(p=0; p<size2; p++)
		{
			printf("%d ", vec2[p]);
		}
	
		printf("\n");
	}
		
	else
	{
		printf("Os arrays não tem o mesmo tamanho. Impossível de trocar o seu conteúdo \n");
	}
		
	return 0;	
}