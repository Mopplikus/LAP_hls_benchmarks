
/**

* jacobi-1d-imper.c: This code is adapted from the original implementation that is part of the PolyBench/C 3.2 test suite.

*/
#include "jacobi_1d.h"



int jacobi_1d(inout_int_t A_1[N], inout_int_t A_2[N], inout_int_t B[N])
{

	int t, i, j;

	for (t = 0; t < TSTEPS; t++)
	{

		for (i = 1; i < N - 1; i++) {
		    B[i] = 3 * (A_1[i-1] + A_1[i] + A_1[i + 1]);
		}

		for (j = 1; j < N - 1; j++) {
		    A_2[j] = B[j];
		}

	}		

	return t;

}

