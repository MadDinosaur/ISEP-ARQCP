#include <stdio.h>
#include "sum_and_subtract.h"

char A = 3;
short B = 10;
int C = 20,D = 3;

int main()
{
	long long operation = sum_and_subtract();
	
	printf("O resultado da operação: %lld \n", operation);
	
	return 0;
}