#include <stdio.h>
#include "needed_time.h"

short current,desired;

int main()
{
	printf("Introduza o valor da temperatura currente: \n");
	scanf("%hd",current);
	
	printf("Introduza o valor da temperatura desejada: \n");
	scanf("%hd",desired);
	
	int segundos = needed_time();
	
	return 0;
}