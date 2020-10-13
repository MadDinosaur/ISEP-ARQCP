
int string_to_int(char *string)
{
	int i=0;
	int d=0;
	
	while(string[i]!=0)
	{
		d += string[i]-48;
		
		d *= 10;
		i++;
	}
	
	printf("Integer = %d\n",d/10);
	
	return d;	
}