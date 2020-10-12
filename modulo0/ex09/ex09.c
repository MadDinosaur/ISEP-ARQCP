#include <stdio.h>
#include <string.h>

int main()
{
	int verificar(char *str1, char *str2);
	char base_comparar(char *numero);
	
	char numero[] = "12DF";
	
	char formato = base_comparar(numero);
	
    if (formato == 'H')
    {
        printf("Número: %s é hexadecimal \n", numero);
    }
	
    if (formato == 'D')
    {
        printf("Número: %s é decimal \n", numero);
    }
	
    if (formato == 'O')
    {
        printf("Número: %s é octal \n", numero);
    }
	
    if (formato == 'B')
    {
        printf("Número: %s é binario \n", numero);
    }
	
    if (formato == 'F')
    {
        printf("Não existe formato para este número.\n");
    }

    return 0;
}

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

