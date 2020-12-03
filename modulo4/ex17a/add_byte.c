void add_byte(char x, int *vec1, int *vec2)
{
    int num= *vec1;
	int i = 1;
    *vec2 = *vec1;
	
    for (i=1;i<=num;i++) 
	{
		int mask1 =-1&255;
        int mask2 = -1^255;
		
        char toAdd = *(vec1+i) & mask1;
        toAdd = toAdd + x;
		
        int numberToAdd = *(vec1+i) & mask2;
        numberToAdd = numberToAdd + toAdd;
		
        *(vec2+i) = numberToAdd;
    }

}