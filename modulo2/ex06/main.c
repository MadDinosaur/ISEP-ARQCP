#include <stdio.h>
#include "asm.h"

	char byte1 = 10;
	char byte2 = 10;

int main(void) {
	short s = concatBytes();
	printf("Novo valor = %hd %x\n", s, s);
	return 0;
}