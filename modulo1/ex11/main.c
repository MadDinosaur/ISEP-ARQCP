#include <stdio.h>

int main()
{
	char str[] = "Never odd or even";
	
	int resposta = 0;
	
	resposta = palindrome(str);
	
	if (resposta == 1)
	{
		printf(" A String é polindrome \n");
	}
	
	if (resposta == 0)
	{
		printf(" A String não é polindrome \n");
	}
		
	return 0;
}