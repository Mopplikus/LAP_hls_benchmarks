/**
 * 3mm.c: This file is part of the PolyBench/C 3.2 test suite.
 *
 *
 * Contact: Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://polybench.sourceforge.net
 */

#include "kernel_3mm.h"

void kernel_3mm(in_int_t A[N][N], in_int_t B[N][N], in_int_t C[N][N], in_int_t D[N][N], inout_int_t E[N][N], inout_int_t F[N][N], out_int_t G[N][N])


{
  int i, j, k;

  for (i = 0; i < NI; i++)
    for (j = 0; j < NJ; j++)
      {
	E[i][j] = 0;
	for (k = 0; k < NK; ++k)
	  E[i][j] += A[i][k] * B[k][j];
      }

  for (i = 0; i < NJ; i++)
    for (j = 0; j < NL; j++)
      {
	F[i][j] = 0;
	for (k = 0; k < NM; ++k)
	  F[i][j] += C[i][k] * D[k][j];
      }
  for (i = 0; i < NI; i++)
    for (j = 0; j < NL; j++)
      {
	G[i][j] = 0;
	for (k = 0; k < NJ; ++k)
	  G[i][j] += E[i][k] * F[k][j];
      }

}

