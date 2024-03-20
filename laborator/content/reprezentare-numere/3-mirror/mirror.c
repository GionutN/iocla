#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void swap(char *a, char *b)
{
	char temp = *a;
	*a = *b;
	*b = temp;
}

void mirror(char *s)
{
	/* TODO */
	int len = strlen(s);
	for (int st = 0, dr = len - 1; st < dr; st++, dr--) {
		swap(s + st, s + dr);
	}
}

int main(void)
{
	/* TODO: Test function */
	char text[10] = "qwerty";
	mirror(text);
	printf("%s\n", text);
	return 0;
}

