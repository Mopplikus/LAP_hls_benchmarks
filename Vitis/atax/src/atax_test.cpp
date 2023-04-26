#include "atax.h"

int atax_cont(in_float_t A[N][N], in_float_t x[N], inout_float_t y[N], inout_float_t tmp[N])
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

#include <stdlib.h>

#define AMOUNT_OF_TEST 1

int main(void){
  /*out_int_t r[NTRU_N];
  in_int_t a[NTRU_N];
  in_int_t b[NTRU_N];

  for(int i = 0; i < NTRU_N; i++) {
    r[i] = 0;
    a[i] = i % 10;
    b[i] = (NTRU_N - i) % 10;
  }

  atax(r, a, b);*/
    in_float_t A[AMOUNT_OF_TEST][N][N];
    in_float_t x[AMOUNT_OF_TEST][N];
    inout_float_t y[AMOUNT_OF_TEST][N];
    inout_float_t tmp[AMOUNT_OF_TEST][N];
    inout_float_t y_cont[AMOUNT_OF_TEST][N];
    inout_float_t tmp_cont[AMOUNT_OF_TEST][N];
  
    
    srand(13);

    for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        for(int j = 0; j < N; ++j){
            x[i][j] = rand()%100;
            y[i][j] = 0;
            y_cont[i][j] = 0;
            tmp[i][j] = 0;
            tmp_cont[i][j] = 0;
            for(int x = 0; x < N; ++x){
                A[i][j][x] = rand()%100;
            }
        }
    }

    for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        atax(A[i], x[i], y[i], tmp[i]);
        atax_cont(A[i], x[i], y_cont[i], tmp_cont[i]);

        for(int j = 0; j < N; j++)
        {
            if(y[i][j] != y_cont[i][j] || tmp[i][j] != tmp_cont[i][j])
            {
                printf("FAILED TEST %d\n", i + 1);
                return 1;
            }
        }
        printf("PASSED TEST %d\n", i + 1);
    }
    return 0;
}