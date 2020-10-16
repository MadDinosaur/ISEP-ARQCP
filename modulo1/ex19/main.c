#include <stdio.h>
#include "find_word.h"

int main()
{
	char a[] = "aARRxRt xrT xrT xrT";
	char b[] = "xrt";
	
	char* inicial = a;

	char* expect;
	
	expect = find_word(a,b,inicial);
	
	printf("O endereço onde foi encontrado é: %c \n", *expect);
	
	return 0;	
}
	
	



