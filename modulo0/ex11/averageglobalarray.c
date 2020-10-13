
int average_global_array()
{	
	int i=0;
	int soma = 0;
	int media = 0;
	int g_n = 4;
	int g_v[100] = {4,5,6,2,4,5,6,8,2,1};
	
	for(i=0; i < g_n; i++)
	{
		soma = soma + g_v[i];
	}
	
	media = soma / (g_n);
	
	return media;	
}
