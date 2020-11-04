#include <stdio.h>
#include "f.h"

int i=0, j=0;

int main(void) {
	printf("Valor i:");
	scanf("%d",&i);
	
	printf("Valor j:");
	scanf("%d",&j);
	
	printf("Output f() = %d\n", f());
	printf("Output f2() = %d\n", f2());
	printf("Output f3() = %d\n", f3());
	printf("Output f4() = %d\n", f4());
	return 0;
}