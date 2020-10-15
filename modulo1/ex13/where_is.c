#include <stdio.h>

int where_is(char *str, char c, int *p)
{
	int pos = 0;
	int numero_vezes = 0;
	
	while(*str != 0)
	{
		if(*str == c)
		{
			numero_vezes++;
			*p = pos;
			
			p++;
		}
		pos++;
		str++;			
	}
	
	return numero_vezes;	
}
