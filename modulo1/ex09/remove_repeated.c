void remove_repeated(int *src, int n, int *dest)
{
	int anterior = 0;
	
	while(n!=0)
	{
		if(*src == anterior)
		{
			*dest = *dest - 1;
			*src = 0;
		}
		
		else
		{
			anterior = *src;
		}
		
		src++;
		n--;	
	}	
}