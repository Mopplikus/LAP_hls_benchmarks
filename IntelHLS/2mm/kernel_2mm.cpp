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

component void kernel_2mm(int alpha, int beta, int A[N][N], int B[N][N], int C[N][N], int D[N][N])
{
    hls_memory hls_singlepump int tmp_local[N][N];
    hls_memory hls_singlepump int A_local[N][N];
    hls_memory hls_singlepump int B_local[N][N];
    hls_memory hls_singlepump int C_local[N][N];
    hls_memory hls_singlepump int D_local[N][N];

    /*
    INIT:for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            A_local[i][j] = A[i][j];
            B_local[i][j] = B[i][j];
            C_local[i][j] = C[i][j];
            D_local[i][j] = D[i][j];
            tmp_local[i][j] = 0;
        }
    }*/

    WORK_1:for (int i = 0; i < NI; i++)
    {
        for (int j = 0; j < NJ; j++) {
            int x = tmp_local[i][j];
            for (int k = 0; k < NK; ++k)
            {
                x += alpha * A_local[i][k] * B_local[k][j];
            }
            tmp_local[i][j] = x;
        }
    }

    WORK_2:for (int i = 0; i < NI; i++)
    {
        for (int j = 0; j < NL; j++) {
            int x = D_local[i][j]*beta;
            for (int k = 0; k < NJ; ++k)
            {
                x += tmp_local[i][k] * C_local[k][j];
            }
            D_local[i][j] = x;
        }
    }

    /*
    OUT:for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            D[i][j] = D_local[i][j];
        }
    }*/
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
    int A[N][N];
    int B[N][N];
    int C[N][N];
    int D[N][N];
    int D_ref[N][N];
    
    srand(0);

    alpha = rand();
    beta = rand();
    for(int y = 0; y < N; ++y){
        for(int x = 0; x < N; ++x){
            A[y][x] = rand()%100;
            B[y][x] = rand()%100;
            C[y][x] = rand()%100;
            D[y][x] = 0;
            D_ref[y][x] = 0;
        }
    }
    
    kernel_2mm(alpha, beta, A, B, C, D);
    kernel_2mm_ref(alpha, beta, A, B, C, D_ref);

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            if(D[i][j] != D_ref[i][j])
            {
                printf("FAILED\n");
                return 0;
            }
        }
    }
    printf("PASSED\n");
    
    return 0;
}
