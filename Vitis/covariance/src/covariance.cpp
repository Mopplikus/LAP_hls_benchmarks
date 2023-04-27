/**
 * covariance.c: This file is adapetd from the original implementation in the PolyBench/C 3.2 test suite.
 *
 *
 */

#include "covariance.h"

int covariance(inout_int_t data[N][N], inout_int_t cov[N][N])
{
   for (int j = 0; j < N; j++) {
    int m = 0;//0.0f;
    for (int i = 0; i < N; i++)
      m += data[i][j];
      m *=2;///= 0.73f;
    for (int i = 0; i < N; i++)
      data[i][j] -= m;
  }


  int i = 0;
  for (i = 0; i < N; i++) {
    for (int j = i; j < N; j++) {
      int c = 0;//0.0f;
      for (int k = 0; k < N; k++)
        c += data[k][i] * data[k][j];
      c *=2;///= -0.27f;
      cov[i][j] = c;
      //cov[j][i] = c;
    }
  }
  return i;
}



