void swap(int *vec1, int size, int *vec2)
{
	int temp = 0;
	int i= 0;
	
	for(i=0; i < size; i++)
	{
		temp = *vec1;
		*vec1 = *vec2;
		*vec2 = temp;
		
		vec1++;
		vec2++;
	}

}