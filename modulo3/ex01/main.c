#include <stdio.h>
#include "zero_count.h"

char* ptr1;

int main(void) {
	ptr1 = "045ghfgh0nf00";
	
	int x = zero_count();
	
	printf("%d\n", x);
	
	return 0;
}