void copy_array(int *src, int n, int *dest)
{
	while(n!=0)
	{
        *dest=*src;
        n--;
        src++;
        dest++;
    }	
}