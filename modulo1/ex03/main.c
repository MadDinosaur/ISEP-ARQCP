#include <stdio.h>
#include <string.h>
#include "sum_even.h"

int main()
{
	int vec[] = {1,1,1,1,18,1,1,1,2};
	
	int comprimento = 0;
	
	int resultado = 0;
	
	comprimento = sizeof(vec)/sizeof(vec[0]);
	
	resultado = sum_even(vec,comprimento);
	
	printf("A soma resultante = %d \n", resultado);
	
	return 0;
}