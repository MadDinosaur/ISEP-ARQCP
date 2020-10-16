#include <stdio.h>
#include "populate.h"

int main()
{
	int vec[100]={0};
	int num = 100;
	int limit = 20;
	
	int i=0,j;
	int valor = 0;
	
	int n = 0;
	
	populate(vec,num,limit);
	
	for(j = 0; j<num;j++)
	{
		printf("%d ", vec[j]);
	}
		
	for (i=0; i< num-2; i++)
	{
		valor = check(vec[i],vec[i+1],vec[i+2]);
		
		if (valor == 1)
		{
			n++;	
			inc_sets;
		}
	
	}
	
	printf("Foram %d vezes o número de blocos de 3 elementos que satisfizeram a condição. \n", n);
	
	return 0;
}