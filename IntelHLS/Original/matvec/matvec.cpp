#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>

using namespace ihc;

#define N 30

component void matvec(int M[N][N], int V[N], int Out[N]) {
    hls_memory hls_singlepump int M_local[N][N];
    hls_memory hls_singlepump int V_local[N];
    hls_memory hls_singlepump int Out_local[N];

	int i, j;
	int tmp = 0;

    /*INIT:for(i = 0; i < N; i++)
    {
        for(j = 0; j < N; j++)
        {
            M_local[i][j] = M[i][j];
        }
        V_local[i] = V[i];
        Out_local[i] = Out[i];
    }*/

	WORK:for (i=0;i<N;i++) {
		tmp = 0;

		for (j=0;j<N;j++) {
			tmp += V_local[j]* M_local[i][j];
		}
		Out_local[i] = tmp;
	}

    /*OUT:for(i = 0; i < N; i++)
    {
        Out[i] = Out_local[i];
    }*/
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
	int M[N][N];
	int V[N];
	int Out[N];
    int Out_ref[N];
    
    for(int y = 0; y < N; ++y){
        V[y] = rand()%100;
        for(int x = 0; x < N; ++x){
            M[y][x] = rand()%100;
        }
    }

	matvec(M, V, Out);
    matvec_ref(M, V, Out_ref);

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