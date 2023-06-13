#define NX 20
#define NY 20
#define N 20

#include <stdlib.h>
#include <stdio.h>
#include <HLS/hls.h>

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_x;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_y;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_tmp;

component void atax(mem_A &A, mem_x &x, mem_y &y, mem_tmp &tmp)
{
    int i, j;
    for (i = 0; i < NX; i++)
    {
        int t = tmp[i];
        for (j = 0; j < NY; j++)
        {
            t = t + A[i * N + j] * x[j];
        }
        for (j = 0; j < NY; j++)
        {
            y[j] = y[j] + A[i * N + j] * t;
        }
        tmp[i] = t; 
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
    int A[N * N];
    int x[N];
    int y[N];
    int tmp[N];
    int A_ref[N][N];
    int x_ref[N];
    int y_ref[N];
    int tmp_ref[N];
  
    
    srand(13);

    for(int j = 0; j < N; ++j){
        x_ref[j] = rand()%100;
        x[j] = x_ref[j];
        y_ref[j] = 0;
        y[j] = y_ref[j];
        tmp_ref[j] = 0;
        tmp[j] = tmp_ref[j];
        for(int x = 0; x < N; ++x){
            A_ref[j][x] = rand()%100;
            A[j * N + x] = A_ref[j][x];
        }
    }
        
    atax_ref(A_ref, x_ref, y_ref, tmp_ref);

    mem_A mem_host_A(A, N * N * sizeof(int), false);
	mem_x mem_host_x(x, N * sizeof(int), false);
    mem_y mem_host_y(y, N * sizeof(int), false);
	mem_tmp mem_host_tmp(tmp, N * sizeof(int), false);

    ihc_hls_enqueue_noret(&atax, mem_host_A, mem_host_x, mem_host_y, mem_host_tmp);
	ihc_hls_component_run_all(&atax);

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