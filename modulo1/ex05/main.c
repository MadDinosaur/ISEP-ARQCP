#include <stdio.h>
#include <string.h>
#include "upper2.h"

int main()
{
	char str[] = "Boas A ToDos";
	printf ("Antes: %s. \n", str);
	
	upper2(str);	
	printf("Depois: %s. \n", str);
	
	return 0;
}
