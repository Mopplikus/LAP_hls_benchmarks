#include "example.h"

dout_t example(din_A A[N], din_B B[N], int n)
{
	int i;
	float d;
	dout_t acc = 0;
	LOOP_I: for(i = 0; i < n; i++)
	{
		d = A[i] - B[i];
		if(d >= 0)
		{
			acc += d;
		}
	}
	return acc;
}
