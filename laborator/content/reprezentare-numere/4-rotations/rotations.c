#include <stdio.h>

void rotate_left(unsigned int *number, int bits)
{
	/* TODO */
	int total_bits = sizeof(unsigned int) * 8;
	bits %= total_bits;
	int n = *number;
	int bits_to_rotate = n & (~(1 << (total_bits - bits) - 1));
	bits_to_rotate >>= (total_bits - bits);
	n <<= bits;
	n |= bits_to_rotate;
	*number = n;
}

void rotate_right(unsigned int *number, int bits)
{
	/* TODO */
	(void) number;
	(void) bits;
}

int main(void)
{
	/* TODO: Test functions */
	int n = 12131;
	printf("n = %d\n", n);
	rotate_left(&n, 1);
	printf("%d ", n);
	rotate_left(&n, 35);
	printf("%d ", n);
	return 0;
}

