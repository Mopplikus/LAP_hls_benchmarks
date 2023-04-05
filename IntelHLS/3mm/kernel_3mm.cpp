#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

#define NI 10
#define NJ 10
#define NK 10
#define NL 10
#define NM 10
#define N 10

using namespace ihc;

component void kernel_3mm(int A[N][N], int B[N][N], int C[N][N], int D[N][N], int E[N][N], int F[N][N], int G[N][N])
{
    hls_memory hls_singlepump int A_local[N][N];
    hls_memory hls_singlepump int B_local[N][N];
    hls_memory hls_singlepump int C_local[N][N];
    hls_memory hls_singlepump int D_local[N][N];
    hls_memory hls_singlepump int E_local[N][N];
    hls_memory hls_singlepump int F_local[N][N];
    hls_memory hls_singlepump int G_local[N][N];
    int i,j,k;

    INIT:for(i = 0; i < N; i++)
    {
        for(j = 0; j < N; j++)
        {
            A_local[i][j] = A[i][j];
            B_local[i][j] = B[i][j];
            C_local[i][j] = C[i][j];
            D_local[i][j] = D[i][j];
            E_local[i][j] = E[i][j];
            F_local[i][j] = F[i][j];
            G_local[i][j] = G[i][j];
        }
    }

  WORK_1:for (i = 0; i < NI; i++)
    for (j = 0; j < NJ; j++)
    {
      int tmp = E_local[i][j];
      for (k = 0; k < NK; ++k)
        tmp += A_local[i][k] * B_local[k][j];
      E_local[i][j] = tmp;
    }

  WORK_2:for (i = 0; i < NJ; i++)
    for (j = 0; j < NL; j++)
    {
      int tmp = F_local[i][j];
      for (k = 0; k < NM; ++k)
        tmp += C_local[i][k] * D_local[k][j];
      F_local[i][j] = tmp;
    }

  WORK_3:for (i = 0; i < NI; i++)
    for (j = 0; j < NL; j++)
    {
      int tmp = G_local[i][j];
      for (k = 0; k < NJ; ++k)
        tmp += E_local[i][k] * F_local[k][j];
      G_local[i][j] = tmp;
    }

    OUT:for(i = 0; i < N; i++)
    {
        for(j = 0; j < N; j++)
        {
            G[i][j] = G_local[i][j];
        }
    }
}

void kernel_3mm_ref(int A[N][N], int B[N][N], int C[N][N], int D[N][N], int E[N][N], int F[N][N], int G[N][N])
{
    int i,j,k;

  for (i = 0; i < NI; i++)
    for (j = 0; j < NJ; j++)
    {
      int tmp = E[i][j];
      for (k = 0; k < NK; ++k)
        tmp += A[i][k] * B[k][j];
      E[i][j] = tmp;
    }

  for (i = 0; i < NJ; i++)
    for (j = 0; j < NL; j++)
    {
      int tmp = F[i][j];
      for (k = 0; k < NM; ++k)
        tmp += C[i][k] * D[k][j];
      F[i][j] = tmp;
    }

  for (i = 0; i < NI; i++)
    for (j = 0; j < NL; j++)
    {
      int tmp = G[i][j];
      for (k = 0; k < NJ; ++k)
        tmp += E[i][k] * F[k][j];
      G[i][j] = tmp;
    }
}

int main(void){
    int A[N][N];
    int B[N][N];
    int C[N][N];
    int D[N][N];
    int E[N][N];
    int F[N][N];
    int G[N][N];
    int G_ref[N][N];
    
    for(int y = 0; y < N; ++y){
        for(int x = 0; x < N; ++x){
            A[y][x] = rand() % 10;
            B[y][x] = rand() % 10;
            C[y][x] = rand() % 10;
            D[y][x] = rand() % 10;
            E[y][x] = rand() % 10;
            F[y][x] = rand() % 10;
            int g = rand() % 10;
            G[y][x] = g;
            G_ref[y][x] = g;
        }
    }

    kernel_3mm(A, B, C, D, E, F, G);
    kernel_3mm_ref(A, B, C, D, E, F, G_ref);

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            if(G[i][j] != G_ref[i][j])
            {
                printf("FAILED\n");
                return 0;
            }
        }
    }

    printf("PASSED\n");
    return 0;
}
