#include <stdio.h>
#include "asm.h"

int main(void) {
	printf("Valor base:");
	scanf("%d",&base);
	printf("Valor altura:");
	scanf("%d",&height);
	
	printf("area = %d\n", getArea());
	return 0;
}