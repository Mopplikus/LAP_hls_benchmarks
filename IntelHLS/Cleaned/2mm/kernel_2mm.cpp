#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

#define NI 10
#define NJ 10
#define NK 10
#define NL 10
#define N 10

#define S 1000

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

component void kernel_2mm(int alpha, int beta, mem_A &A, mem_B &B, mem_C &C, mem_D &D)
{
    hls_memory hls_singlepump int tmp[N][N];

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            tmp[i][j] = 0;
        }
    }

    for (int i = 0; i < NI; i++)
    {
        for (int j = 0; j < NJ; j++) {
            int x = tmp[i][j];
            for (int k = 0; k < NK; ++k)
                x += alpha * A[i * N + k] * B[k * N + j];
            tmp[i][j] = x;
        }
    }

    for (int i = 0; i < NI; i++)
    {
        for (int j = 0; j < NL; j++) {
            int x = D[i * N + j]*beta;
            for (int k = 0; k < NJ; ++k)
                x += tmp[i][k] * C[k* N + j];
            D[i* N + j] = x;
        }
    }  
}

void kernel_2mm_ref(int alpha, int beta, int A[N][N], int B[N][N], int C[N][N], int D[N][N])
{
    int tmp[N][N];
    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            tmp[i][j] = 0;
        }
    }

    for (int i = 0; i < NI; i++)
    {
        for (int j = 0; j < NJ; j++) {
            int x = tmp[i][j];
            for (int k = 0; k < NK; ++k)
                x += alpha * A[i][k] * B[k][j];
            tmp[i][j] = x;
        }
    }

    for (int i = 0; i < NI; i++)
    {
        for (int j = 0; j < NL; j++) {
            int x = D[i][j]*beta;
            for (int k = 0; k < NJ; ++k)
                x += tmp[i][k] * C[k][j];
            D[i][j] = x;
        }
    }     
}



int main(void){
    int alpha;
    int beta;
    int A[N * N];
    int B[N * N];
    int C[N * N];
    int D[N * N];
    int A_ref[N][N];
    int B_ref[N][N];
    int C_ref[N][N];
    int D_ref[N][N];
    
    srand(0);

    alpha = rand();
    beta = rand();
    for(int y = 0; y < N; ++y){
        for(int x = 0; x < N; ++x){
            A_ref[y][x] = rand()%100;
            B_ref[y][x] = rand()%100;
            C_ref[y][x] = rand()%100;
            D_ref[y][x] = 0;
            A[y * N + x] = A_ref[y][x];
            B[y * N + x] = B_ref[y][x];
            C[y * N + x] = C_ref[y][x];
            D[y * N + x] = D_ref[y][x];
        }
    }

    mem_A mem_a(A, N * N * sizeof(int), false);
	mem_B mem_b(B, N * N * sizeof(int), false);
    mem_C mem_c(C, N * N * sizeof(int), false);
	mem_D mem_d(D, N * N * sizeof(int), false);
    
    kernel_2mm_ref(alpha, beta, A_ref, B_ref, C_ref, D_ref);

    ihc_hls_enqueue_noret(&kernel_2mm, alpha, beta, mem_a, mem_b, mem_c, mem_d);
	ihc_hls_component_run_all(&kernel_2mm);

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            if(D[i * N + j] != D_ref[i][j])
            {
                printf("FAILED\n");
                return 0;
            }
        }
    }
    printf("PASSED\n");
    
    return 0;
}
