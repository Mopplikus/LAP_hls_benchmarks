#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

#define TSTEPS 3
#define N 100

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A_1;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A_2;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_B;

component void jacobi_1d(mem_A_1 &A_1, mem_A_2 &A_2, mem_B &B)
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

    srand(13);

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

    jacobi_1d_ref(A_ref, B_ref, C_ref);

    mem_A_1 mem_host_A(A, N * sizeof(int), false);
    mem_A_2 mem_host_B(B, N * sizeof(int), false);
    mem_B mem_host_C(C, N * sizeof(int), false);

    ihc_hls_enqueue_noret(&jacobi_1d, mem_host_A, mem_host_B, mem_host_C);
	ihc_hls_component_run_all(&jacobi_1d);

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
