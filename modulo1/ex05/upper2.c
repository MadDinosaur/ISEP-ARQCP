#include<ctype.h>

void upper2(char *str)
{	
	while(*str != 0)
	{
		*str = toupper(*str);
		str++;
	}
}