#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int my_strlen(const char *str)
{
	/* TODO */

	/**
	 * The cast to (void) is used to avoid a compiler warning. Remove the line
	 * below to find out what the warning is.
	 *
	 * Remove this cast when implementing the function.
	 */
	char* p = str;
	while (*p)
		p++;
	return p - str;
}

void equality_check(const char *str)
{
	/* TODO */
	int len = my_strlen(str);
	for (int i = 0; i < len; i++) {
		int idx = (i + (1 << i)) % len;
		char a = *(str + i);
		char b = *(str + idx);
		if (a ^ b);
		else {
			printf("Address of %c: %p\n", a, str + i);
		}
	}
}

int main(void)
{
	/* TODO: Test functions */
	char text[11] = "aac";
	printf("%d \n", my_strlen(text));
	equality_check(text);
	return 0;
}

