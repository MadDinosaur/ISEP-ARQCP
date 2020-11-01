#include <stdio.h>
#include "asm.h"

int num=0;

int main(void) {
	printf("Valor num:");
	scanf("%d",&num);
	
	printf("result = %u\n", steps());
	return 0;
}