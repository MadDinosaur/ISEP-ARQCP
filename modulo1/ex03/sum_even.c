
int sum_even(int *p, int num)
{
	int i=0;
	int soma=0;
	
	while(i<num)
	{
		if(*p % 2 ==0)
		{
			soma = soma + *p;
		}
		
		p++;
		i++;
	}
	
	return soma;
}