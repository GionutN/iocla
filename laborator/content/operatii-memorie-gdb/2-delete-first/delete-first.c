// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *delete_first(char *s, char *pattern)
{
	int patlen = strlen(pattern);
	int len = strlen(s);
	char *first;
	for (int i = 0; i < len - patlen; i++)
	{
		int ok = 1;
		for (int j = i; (j - i) < patlen; j++)
		{
			if (s[j] != pattern[j - i])
			{
				ok = 0;
				break;
			}
		}
		if (ok)
		{
			first = s + i;
			break;
		}
	}

	char *nou = malloc(len);
	strncpy(nou, s, first - s);
	strcat(nou, first + patlen);
	return nou;
}

int main(void)
{
	/*
	 * TODO: Este corectă declarația variabilei s în contextul în care o să apelăm
	 * funcția delete_first asupra sa? De ce? Modificați dacă este cazul.
	 */
	char s[] = "Ana are mere";
	char *pattern = "re";
	char *res = delete_first(s, pattern);
	// Decomentați linia după ce ați implementat funcția delete_first.
	printf("%s\n", res);
	free(res);

	return 0;
}
