#define NX 30
#define NY 30
#define N 30

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

int bicg(int A[N][N], int s[N], int q[N], int p[N], int r[N])
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


#define AMOUNT_OF_TEST 1

int main(void){
    int A[N][N];
    int s[N];
    int q[N];
    int p[N];
    int r[N];
    
    for(int y = 0; y < N; ++y){
        s[y] = rand()%100;
        q[y] = rand()%100;
        p[y] = rand()%100;
        r[y] = rand()%100;
        for(int x = 0; x < N; ++x){
            A[y][x] = rand()%100;
        }
    }

    bicg(A, s, q, p, r);
}
