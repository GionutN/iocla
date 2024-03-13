]#include <stdio.h>
#include <stdlib.h>

void print_binary(int number, int nr_bits)
{
	/* TODO */
	if (number == 0) {
		printf("0"
}

void check_parity(int *numbers, int n)
{
	/* TODO */
	for (int i = 0; i < n; i++) {
		if (numbers[i] & 1 == 0)  // even
			print_binary(numbers[i], 8);
		else 
			printf("%x\n", numbers[i]); 
	}
}

int main(void)
{
	/* TODO: Test functions */

	return 0;
}

