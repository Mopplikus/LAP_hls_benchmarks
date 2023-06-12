#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

#define TSTEPS 3
#define N 100

using namespace ihc;

component void jacobi_1d(int A_1[N], int A_2[N], int B[N])
{
    hls_memory hls_singlepump int A_1_local[N];
    hls_memory hls_singlepump int A_2_local[N];
    hls_memory hls_singlepump int B_local[N];

    /*INIT:for(int i = 0; i < N; i++)
    {
        A_1_local[i] = A_1[i];
        A_2_local[i] = A_2[i];
        B_local[i] = B[i];
    }*/

	int t, i, j;
	WORK:for (t = 0; t < TSTEPS; t++)
	{
		for (i = 1; i < N - 1; i++) 
        {
		    B_local[i] = 3 * (A_1_local[i-1] + A_1_local[i] + A_1_local[i + 1]);
		}

		for (j = 1; j < N - 1; j++) 
        {
		    A_2_local[j] = B_local[j];
		}
	}	

    /*OUT:for(i = 0; i < N; i++)
    {
        A_2[i] = A_2_local[i];
        B[i] = B_local[i];
    }	*/
	
}

void jacobi_1d_ref(int A_1[N], int A_2[N], int B[N])
{
	int t, i, j;
	for (t = 0; t < TSTEPS; t++)
	{
		for (i = 1; i < N - 1; i++) 
        {
		    B[i] = 3 * (A_1[i-1] + A_1[i] + A_1[i + 1]);
		}

		for (j = 1; j < N - 1; j++) 
        {
		    A_2[j] = B[j];
		}
	}		
	
}

int main(void){

    int A[N];
    int B[N];
    int C[N];
    int A_ref[N];
    int B_ref[N];
    int C_ref[N];

    for(int j = 0; j < N; ++j){
        int a = rand() % 100;
        int b = rand() % 100;
        int c = rand() % 100;
        A[j] = a;
        B[j] = b;
        C[j] = c;
        A_ref[j] = a;
        B_ref[j] = b;
        C_ref[j] = c;
    }

    jacobi_1d(A, B, C);
    jacobi_1d_ref(A_ref, B_ref, C_ref);

    for(int i = 0; i < N; i++)
    {
        if(B[i] != B_ref[i] || C[i] != C_ref[i])
        {
            printf("FAILED\n");
            return 0;
        }
    }

    printf("PASSED\n");
    return 0;
}
