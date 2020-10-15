void sort_array(int *src, int n)
{	
	int tmp = 0;
	int pos = 0;

	while (pos < n-1)
	{
		if (*src > *(src + 1))
		{
			tmp = *src;
			*src = *(src + 1);
			*(src+1) = tmp;
		}
		
		pos++;
		src++;
	}
}