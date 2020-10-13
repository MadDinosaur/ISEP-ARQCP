
int verificar(char *str1, char *str2)
{
    int pos = 0;
    int pos2 = 0;
    int len = strlen(str1);
    int len2 = strlen(str2);

    while (pos < len)
    {
        while (pos2 < len2)
        {
            if (str1[pos] == str2[pos2])
            {
                return 1;
            }
			
            pos2++;
        }
		
        pos2 = 0;
        pos++;
		
    }
	
    return -1;
}