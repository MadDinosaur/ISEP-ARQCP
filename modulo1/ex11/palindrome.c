#include <ctype.h>
#include <string.h>

int palindrome(char *str)
{
	size_t comprimento = strlen(str);
	
	if (comprimento == 0) return 0;
	if (comprimento == 1) return 1;
	
	char *ptr1 = str;
	char *ptr2 = str + comprimento - 1;
	
	while(ptr2 > ptr1)
	{
		if (!isalpha(*ptr2))
		{
			ptr2--;
			continue;
		}
		
		if (!isalpha(*ptr1))
		{
			ptr1++;
			continue;
		}
		
		if (tolower(*ptr1) != tolower(*ptr2))
		{
			return 0;
		}
		
		ptr1++; 
		ptr2--;
	}
	
	return 1;
			
}