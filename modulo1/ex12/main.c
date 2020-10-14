#include "capitalize.h"
#include <stdio.h>

int main(void){
	char str[] = "The number must be saved";
	
	printf("%s --> ", str);
	capitalize(str);
	printf("%s\n", str);
	
	return 0;
}