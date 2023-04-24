/**
 * atax.c: This file is part of the PolyBench/C 3.2 test suite.
 *
 *
 * Contact: Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://polybench.sourceforge.net
 */
#include "atax.h"

int atax(in_float_t A[N][N], in_float_t x[N], inout_float_t y[N], inout_float_t tmp[N])
{
  int i, j;

  for (i = 0; i < NX; i++)
    {
      int t = tmp[i];
      for (j = 0; j < NY; j++)
         t = t + A[i][j] * x[j];
      for (j = 0; j < NY; j++)
         y[j] = y[j] + A[i][j] * t;
    tmp[i] = t; 
    }

    return i;

  /*int k,i,p;

  for(k=0; k<NTRU_N; k++)
  {
    r[k] = 0;
    for(i=1; i<NTRU_N-k; i++)
      r[k] += a[k+i] * b[NTRU_N-i];
    for(i=0; i<k+1; i++)
      r[k] += a[k-i] * b[i];

  p = i+k;
  }

  return p;*/
}