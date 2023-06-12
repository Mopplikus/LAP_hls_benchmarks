#include <HLS/hls.h>

#define NX 30
#define NY 30
#define N 30

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

using namespace ihc;

component void bicg(int A[N][N], int s[N], int q[N], int p[N], int r[N])
{
    hls_memory hls_singlepump int A_local[N][N];
    hls_memory hls_singlepump int s_local[N];
    hls_memory hls_singlepump int q_local[N];
    hls_memory hls_singlepump int p_local[N];
    hls_memory hls_singlepump int r_local[N];

    /*
    INIT:for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            A_local[i][j] = A[i][j];
        }
        s_local[i] = s[i];
        q_local[i] = q[i];
        p_local[i] = p[i];
        r_local[i] = r[i];
    }*/

    int tmp_q = 0;

    WORK:for (int i = 0; i < NX; i++)
    {
        tmp_q = q_local[i];
        for (int j = 0; j < NY; j++)
        {
            int tmp =  A_local[i][j];
            s_local[j] = s_local[j] + r_local[i] * tmp;
            tmp_q = tmp_q + tmp * p_local[j];
        }
        q_local[i] = tmp_q;

    }

    /*
    OUT:for(int i = 0; i < N; i++)
    {
        q[i] = q_local[i];
    }*/
}

void bicg_ref(int A[N][N], int s[N], int q[N], int p[N], int r[N])
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
}

int main(void){
    int A[N][N];
    int s[N];
    int q[N];
    int q_ref[N];
    int p[N];
    int r[N];
    
    for(int y = 0; y < N; ++y){
        s[y] = rand()%100;
        int q_r = rand() % 100;
        q[y] = q_r;
        q_ref[y] = q_r;
        p[y] = rand()%100;
        r[y] = rand()%100;
        for(int x = 0; x < N; ++x){
            A[y][x] = rand()%100;
        }
    }

    bicg(A, s, q, p, r);
    bicg_ref(A, s, q_ref, p, r);

    for(int i = 0; i < N; i++)
    {
        if(q[i] != q_ref[i])
        {
            printf("FAILED\n");
            return 0;
        }
    }

    printf("PASSED\n");
    return 0;
}
