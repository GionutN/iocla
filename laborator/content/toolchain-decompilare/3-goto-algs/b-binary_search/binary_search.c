// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

int main(void)
{
	int v[] =  {1, 2, 15, 51, 53, 66, 202, 7000};
	int dest = v[2]; /* 15 */
	int start = 0;
	int end = sizeof(v) / sizeof(int) - 1;
	int pos = -1;

	/* TODO: Implement binary search */
bsearch:

	int mid = (start + end) / 2;
	if (v[mid] == dest) {
		pos = mid;
		goto done;
	}
	if (dest < v[mid]) {
		end = mid - 1;
	}
	if (dest > v[mid]) {
		start = mid + 1;
	}
	goto bsearch;

done:
	printf("Position: %d\n", pos);
	return 0;
}
