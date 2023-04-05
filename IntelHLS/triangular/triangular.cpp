#include <HLS/hls.h>
#include <stdio.h>

#define N 100

using namespace ihc;

component void triangular( int x[N], int A[N][N] , int n) {
    hls_memory hls_singlepump int x_local[N];
	hls_memory hls_singlepump int A_local[N][N];
    int local_n = n;

    INIT:for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            A_local[i][j] = A[i][j];
        }
        x_local[i] = x[i];
    }

    WORK:for (int i=local_n-1; i>=0; i--) {
       // x[i] = A[i][n]/A[i][i];
	    for (int k=i-1;k>=0; k--) {
            A_local[k][local_n] -= A_local[k][i] * x_local[i];
        }
	}

    OUT:for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            A[i][j] = A_local[i][j];
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
	int A[N][N];
    int A_ref[N][N];
	int n;

    n = N; //(rand() % 100);
    for(int x = 0; x < N; ++x){
        xArray[x] = rand() % 1000;
        for(int y = 0; y < N; ++y){
            int a = rand() % 1000;
            A[y][x] = a;
            A_ref[y][x] = a;
        }
    }
    
	triangular(xArray, A, n);
    triangular_ref(xArray, A_ref, n);

    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            if(A[i][j] != A_ref[i][j])
            {
                printf("FAILED\n");
                return 0;
            }
        }
    }

    printf("PASSED\n");
    return 0;
}