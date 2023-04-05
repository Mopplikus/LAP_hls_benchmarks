#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>

#define N 1000

using namespace ihc;

component int fir(int d_i[N], int idx[N] ) {
    hls_memory hls_singlepump int d_i_local[N];
    hls_memory hls_singlepump int idx_local[N];

    INIT:for(int i = 0; i < N; i++)
    {
        d_i_local[i] = d_i[i];
        idx_local[i] = idx[i];
    }

	int tmp=0;

	WORK: for (int i=0;i<N;i++) {
		tmp += idx_local[i] * d_i_local[N-1-i];
	}

	return tmp;
}

int fir_ref(int d_i[N], int idx[N] ) {
	int i;
	int tmp=0;

	For_Loop: for (i=0;i<N;i++) {
		tmp += idx [i] * d_i[N-1-i];
	}

	return tmp;
}

int main(void){
    int d_i[N];
    int idx[N];
    int out[N];	
    
	srand(13);
    for(int j = 0; j < N; ++j){
        d_i[j] = rand() % 100;
        idx[j] = rand() % 100;
    }

    int val = fir(d_i, idx);
    int ref = fir_ref(d_i, idx);

    if(ref != val)
    {
        printf("FAILED\n");
        return 0;
    }
    else
    {
        printf("PASSED\n");
        return 0;
    }
}
