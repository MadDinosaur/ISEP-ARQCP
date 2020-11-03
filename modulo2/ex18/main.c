#include <stdio.h>
#include "operation.h"

int i=0;

int main(void) {
	printf("Valor i:");
	scanf("%d",&i);
	
	printf("result = %d\n", operation());
	return 0;
}