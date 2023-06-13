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

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_B;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_C;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_D;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_E;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_F;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_G;

component void kernel_3mm(mem_A &A, mem_B &B, mem_C &C, mem_D &D, mem_E &E, mem_F &F, mem_G &G)
{
  int i,j,k;

  for (i = 0; i < NI; i++)
    for (j = 0; j < NJ; j++)
    {
      int tmp = E[i * N + j];
      for (k = 0; k < NK; ++k)
        tmp += A[i * N + k] * B[k * N + j];
      E[i * N + j] = tmp;
    }

  for (i = 0; i < NJ; i++)
    for (j = 0; j < NL; j++)
    {
      int tmp = F[i * N + j];
      for (k = 0; k < NM; ++k)
        tmp += C[i * N + k] * D[k * N + j];
      F[i * N + j] = tmp;
    }

  for (i = 0; i < NI; i++)
    for (j = 0; j < NL; j++)
    {
      int tmp = G[i * N + j];
      for (k = 0; k < NJ; ++k)
        tmp += E[i * N + k] * F[k * N + j];
      G[i * N + j] = tmp;
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
    int A[N * N];
    int B[N * N];
    int C[N * N];
    int D[N * N];
    int E[N * N];
    int F[N * N];
    int G[N * N];
    int A_ref[N][N];
    int B_ref[N][N];
    int C_ref[N][N];
    int D_ref[N][N];
    int E_ref[N][N];
    int F_ref[N][N];
    int G_ref[N][N];

    srand(0);
    
    for(int y = 0; y < N; ++y){
        for(int x = 0; x < N; ++x){
            A_ref[y][x] = rand() % 10;
            B_ref[y][x] = rand() % 10;
            C_ref[y][x] = rand() % 10;
            D_ref[y][x] = rand() % 10;
            E_ref[y][x] = rand() % 10;
            F_ref[y][x] = rand() % 10;
            G_ref[y][x] = rand() % 10;
            A[y * N + x] = A_ref[y][x];
            B[y * N + x] = B_ref[y][x];
            C[y * N + x] = C_ref[y][x];
            D[y * N + x] = D_ref[y][x];
            E[y * N + x] = E_ref[y][x];
            F[y * N + x] = F_ref[y][x];
            G[y * N + x] = G_ref[y][x];
        }
    }

    mem_A mem_a(A, N * N * sizeof(int), false);
	  mem_B mem_b(B, N * N * sizeof(int), false);
    mem_C mem_c(C, N * N * sizeof(int), false);
	  mem_D mem_d(D, N * N * sizeof(int), false);
    mem_E mem_e(E, N * N * sizeof(int), false);
    mem_F mem_f(F, N * N * sizeof(int), false);
	  mem_G mem_g(G, N * N * sizeof(int), false);

    kernel_3mm_ref(A_ref, B_ref, C_ref, D_ref, E_ref, F_ref, G_ref);

    ihc_hls_enqueue_noret(&kernel_3mm, mem_a, mem_b, mem_c, mem_d, mem_e, mem_f, mem_g);
	  ihc_hls_component_run_all(&kernel_3mm);

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            if(G[i * N + j] != G_ref[i][j])
            {
                printf("FAILED\n");
                return 0;
            }
        }
    }

    printf("PASSED\n");
    return 0;
}
