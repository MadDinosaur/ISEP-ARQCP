int check(int x, int y, int z)
{
	int p = 0;
	
	if(x < y)
	{
		if (y < z)
		{
			p = 1;	
		}
	}
	
	else
	{
		p = 0;
	}
	
	return p;
}