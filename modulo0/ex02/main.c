#include <stdio.h>

int main(void) {
	int a;
	int b;
	int result;
	
	printf("Insira os valores a somar:\n");
	scanf("%d",&a);
	scanf("%d",&b);
	result = sum(a,b);
	
	while (result >= 10) {
		printf("Soma superior a 10. Volte a introduzir:\n");
		scanf("%d",&a);
		scanf("%d",&b);
		result = sum(a, b);
	}
	
	return 0;
}

int sum(int a, int b) {
	return a + b;
}