#include <HLS/hls.h>
#include <stdio.h>

#define N 100

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_x;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A;

component void triangular(mem_x &x, mem_A &A, int n) {
    int i;
    for (i=n-1; i>=0; i--) {
       // x[i] = A[i][n]/A[i][i];
	    for (int k=i-1;k>=0; k--) {
            A[k * N + n] -= A[k * N + i] * x[i];
        }
	}
}

void triangular_ref( int x[N], int A[N][N] , int n) {
	int i;
    for (i=n-1; i>=0; i--) {
       // x[i] = A[i][n]/A[i][i];
	    for (int k=i-1;k>=0; k--) {
            A[k][n] -= A[k][i] * x[i];
        }
	}
}

#include <stdlib.h>

int main(void){
	int xArray[N];
	int xArray_ref[N];
	int A[N * N];
    int A_ref[N][N];
	int n;

    n = N; //(rand() % 100);

    srand(13);

    for(int x = 0; x < N; ++x){
        xArray_ref[x] = rand() % 1000;
        xArray[x] = xArray_ref[x];
        for(int y = 0; y < N; ++y){
            int a = rand() % 1000;
            A[y * N + x] = a;
            A_ref[y][x] = a;
        }
    }
    
    triangular_ref(xArray_ref, A_ref, n);

    mem_x mem_host_x(xArray, N * sizeof(int), false);
    mem_A mem_host_A(A, N * N * sizeof(int), false);

    ihc_hls_enqueue_noret(&triangular, mem_host_x, mem_host_A, n);
	ihc_hls_component_run_all(&triangular);

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            if(A[i * N + j] != A_ref[i][j])
            {
                printf("FAILED\n");
                return 0;
            }
        }
    }

    printf("PASSED\n");
    return 0;
}