#define NX 20
#define NY 20
#define N 20

#include <stdlib.h>
#include <stdio.h>
#include <HLS/hls.h>

using namespace ihc;

component void atax(int A[N][N], int x[N], int y[N], int tmp[N])
{
    hls_memory hls_singlepump int A_local[N][N];
    hls_memory hls_singlepump int x_local[N];
    hls_memory hls_singlepump int y_local[N];
    hls_memory hls_singlepump int tmp_local[N];

    INIT:for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            A_local[i][j] = A[i][j];
        }
        x_local[i] = x[i];
        y_local[i] = y[i];
        tmp_local[i] = tmp[i];
    }

    WORK:for (int i = 0; i < NX; i++)
    {
        int t = tmp_local[i];
        for (int j = 0; j < NY; j++)
        {
            t = t + A_local[i][j] * x_local[j];
        }
        for (int j = 0; j < NY; j++)
        {
            y_local[j] = y_local[j] + A_local[i][j] * t;
        }
        tmp_local[i] = t; 
    }

    OUT:for(int i = 0; i < N; i++)
    {
        y[i] = y_local[i];
        tmp[i] = tmp_local[i];
    }
}

void atax_ref(int A[N][N], int x[N], int y[N], int tmp[N])
{
    int i, j;
    for (i = 0; i < NX; i++)
    {
        int t = tmp[i];
        for (j = 0; j < NY; j++)
        {
            t = t + A[i][j] * x[j];
        }
        for (j = 0; j < NY; j++)
        {
            y[j] = y[j] + A[i][j] * t;
        }
        tmp[i] = t; 
    }
}

int main(void){
   int A[N][N];
    int x[N];
    int y[N];
    int y_ref[N];
    int tmp[N];
    int tmp_ref[N];
  
    
    srand(13);

    for(int j = 0; j < N; ++j){
        x[j] = rand()%100;
        y[j] = 0;
        y_ref[j] = 0;
        tmp[j] = 0;
        tmp_ref[j] = 0;
        for(int x = 0; x < N; ++x){
            A[j][x] = rand()%100;
        }
    }
        
    atax(A, x, y, tmp);
    atax_ref(A, x, y_ref, tmp_ref);

    for(int i = 0; i < N; i++)
    {
        if(y_ref[i] != y[i] || tmp_ref[i] != tmp[i])
        {
            printf("FAILED\n");
            return 0;
        }
    }

    printf("PASSED\n");
    return 0;
}