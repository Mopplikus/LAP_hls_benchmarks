/**
 * bicg.c: This file is part of the PolyBench/C 3.2 test suite.
 *
 *
 * Contact: Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://polybench.sourceforge.net
 */
#include "bicg.h"

int bicg(in_int_t A[N][N], inout_int_t s[N], inout_int_t q[N], in_int_t p[N], in_int_t r[N])
{
    int i, j;

    int tmp_q = 0;

    for (i = 0; i < NX; i++)
    {
        tmp_q = q[i];
        for (j = 0; j < NY; j++)
        {
            int tmp =  A[i][j];
            s[j] = s[j] + r[i] * tmp;
            tmp_q = tmp_q + tmp * p[j];
        }
        q[i] = tmp_q;
    }
    return tmp_q;
}