#include "upper.h"
#include <stdio.h>

int main(void) {
	char str[] = "aBcDef";
	printf("Before: %s.\n", str);
	
	upper1(str);
	printf("After: %s.\n", str);
	
	return 0;
}