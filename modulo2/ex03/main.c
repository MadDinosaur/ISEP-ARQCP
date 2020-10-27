#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main()
{
	printf("Valor op1:");
	scanf ("%d", &op1);
	
	printf("Valor op2:");
	scanf ("%d", &op2);
	
	int soma;
	
	soma = sum_v2();
	
	printf("sum = %d: 0x%x\n",soma,soma);
	
	return 0;	
}