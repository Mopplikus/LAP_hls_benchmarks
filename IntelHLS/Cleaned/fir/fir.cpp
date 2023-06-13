#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>

#define N 1000

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_d_i;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_idx;

component int fir(mem_d_i &d_i, mem_idx &idx ) {
    int i;
	int tmp=0;

	For_Loop: for (i=0;i<N;i++) {
		tmp += idx [i] * d_i[N-1-i];
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
    int d_i_ref[N];
    int idx_ref[N];
    
	srand(13);
    for(int j = 0; j < N; ++j){
        d_i_ref[j] = rand() % 100;
        d_i[j] = d_i_ref[j];
        idx_ref[j] = rand() % 100;
        idx[j] = idx_ref[j];
    }

    int val = 0;
    int ref = fir_ref(d_i_ref, idx_ref);

    mem_d_i mem_host_d_i(d_i,N * sizeof(int), false);
	mem_idx mem_host_idx(idx, N * sizeof(int), false);

    ihc_hls_enqueue(&val, &fir, mem_host_d_i, mem_host_idx);
	ihc_hls_component_run_all(&fir);

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
