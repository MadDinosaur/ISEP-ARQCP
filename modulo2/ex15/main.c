#include <stdio.h>
#include "compute.h"

int A=8000,B=-8000,C=40,D=-10;

int main()
{
	int res = (int) compute();
	printf("O resultado da operação é: %d \n", res);	
	
	return 0;
}