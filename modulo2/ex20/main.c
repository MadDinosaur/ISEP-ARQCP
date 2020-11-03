#include <stdio.h>
#include "check_num.h"

int num=0;

int main(void) {
	printf("Valor num:");
	scanf("%d",&num);
	
	printf("result = %d\n", check_num());
	return 0;
}