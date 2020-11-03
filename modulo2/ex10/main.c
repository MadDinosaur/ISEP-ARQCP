#include <stdio.h>
#include "sum2ints.h"

int op1=0, op2=0;

int main(void) {
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	long double sum = sum2ints();
	printf("sum = %Lf\n", sum);
	return 0;
}