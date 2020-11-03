#include <stdio.h>
#include "new_salary"

int code,currentSalary;

int main()
{
	printf("Insere o código respetivo: \n");
	scanf("%d",code);
	
	printf("Insere o salário atual: \n");
	scanf("%d",currentSalary);
	
	int res = new_salary();
	
	return 0;	
}