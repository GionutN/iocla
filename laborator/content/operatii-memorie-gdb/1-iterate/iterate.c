// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

/*
 * Afisati adresele elementelor din vectorul "v" impreuna cu valorile
 * de la acestea.
 * Parcurgeti adresele, pe rand, din octet in octet,
 * din 2 in 2 octeti si apoi din 4 in 4.
 */

void parcurge(unsigned int* v, int size, int stride)
{
	char *p;
	char *end = (char*)(v + size);
	for (p = (char*)v; p != end; p += stride)
	{
		printf("%p - 0x%02hhx\n", p, *p);
	}
	printf("\n");
}

int main(void)
{
	unsigned int v[] = {0xCAFEBABE, 0xDEADBEEF, 0x0B00B135, 0xBAADF00D, 0xDEADC0DE};
	int n = sizeof(v) / sizeof(unsigned int);

	parcurge(v, n, 1);
	parcurge(v, n, 2);
	parcurge(v, n, 4);
	return 0;
}
