
void array_sort1(int *vec, int n)
{	
	int i, aux, j;
	for(i = 0; i < n - 1; i++)
	{		
		for(j = 0; j < n - i - 1; j++)
		{
			if(vec[j] > vec[j + 1])
			{
				aux = vec[j];
				vec[j] = vec[j+1];
				vec[j+1] = aux;
			}	
		}
	}
}