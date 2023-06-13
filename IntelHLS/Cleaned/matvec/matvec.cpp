#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>

using namespace ihc;

#define N 30

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_M;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_V;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_Out;

component void matvec(mem_M &M, mem_V &V, mem_Out &Out) {

	int i, j;
	int tmp = 0;

	for (i=0;i<N;i++) {
		tmp = 0;

		for (j=0;j<N;j++) {
			tmp += V[j]* M[i * N + j];
		}
		Out[i] = tmp;
	}
}

void matvec_ref(int M[N][N], int V[N], int Out[N]) {
	int i, j;
	int tmp = 0;

	for (i=0;i<N;i++) {
		tmp = 0;

		for (j=0;j<N;j++) {
			tmp += V[j]* M[i][j];
		}
		Out[i] = tmp;
	}
}

int main(void){
	int M[N * N];
	int M_ref[N][N];
	int V[N];
	int V_ref[N];
	int Out[N];
    int Out_ref[N];

    srand(13);
    
    for(int y = 0; y < N; ++y){
        V_ref[y] = rand()%100;
        V[y] = V_ref[y];
        for(int x = 0; x < N; ++x){
            M_ref[y][x] = rand()%100;
            M[y * N + x] = M_ref[y][x];
        }
    }

    matvec_ref(M_ref, V_ref, Out_ref);

    mem_M mem_host_M(M, N * N * sizeof(int), false);
    mem_V mem_host_V(V, N * sizeof(int), false);
    mem_Out mem_host_Out(Out, N * sizeof(int), false);

    ihc_hls_enqueue_noret(&matvec, mem_host_M, mem_host_V, mem_host_Out);
	ihc_hls_component_run_all(&matvec);

    for(int i = 0; i < N; i++)
    {
        if(Out[i] != Out_ref[i])
        {
            printf("FAILED\n");
            return 0;
        }
    }

    printf("PASSED\n");
    return 0;
}