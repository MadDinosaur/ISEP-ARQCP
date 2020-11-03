#include <stdio.h>
#include "asm.h"

int A=0, B=0;

int main(void) {
	printf("Valor A:");
	scanf("%d",&A);
	printf("Valor B:");
	scanf("%d",&B);
	
	printf("bool = %d\n", isMultiple());
	return 0;
}