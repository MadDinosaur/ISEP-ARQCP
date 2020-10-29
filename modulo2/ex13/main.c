#include <stdio.h>
#include "getArea.h"

int base, height;


int main()
{
	printf("Indique a base do triângulo.\n");
	scanf("%d",&base);
	
	printf("Indique a altura do triângulo.\n");
	scanf("%d",&height);
	
	int res = getArea();
	
	printf("A área do triângulo é: %d \n",res);
	
	return 0;
}