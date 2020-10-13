
char base_comparar(char *numero)
{
    char hexadecimal[7] = "ABCDEF";
    char decimal[3] = "89";
    char octal[7] = "234567";
    char binario[3] = "01";

    if (verificar(numero, hexadecimal) == 1)
    {
        return 'H';
    }
	
    if (verificar(numero, decimal) == 1)
    {
        return 'D';
    }
	
    if (verificar(numero, octal) == 1)
    {
        return 'O';
    }
	
    if (verificar(numero, binario) == 1)
    {
        return 'B';
    }
	
    return 'F';
}