//------------------------------------------------------------------------
// If loop
//------------------------------------------------------------------------
#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>

#define N 100

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_a;

component int if_loop_2 (mem_a &a,  int n) {
	int i;
	int tmp;
	int sum = 0;

	for (i=0; i<n; i++) {
		tmp = a[i];

		if (tmp > 10) {
    
			sum = tmp + sum;
		}

	}

	return sum;
}

int if_loop_2_cont (int a[N],  int n) {
	int i;
	int tmp;
	int sum = 0;

	for (i=0; i<n; i++) {
		tmp = a[i];

		if (tmp > 10) {
    
			sum = tmp + sum;
		}

	}

	return sum;
}

#define AMOUNT_OF_TEST 1

int main(void){
	int a[N];
	int a_ref[N];
	int n = N;

    srand(13);
	
	for(int j = 0; j < N; ++j){
		a_ref[j] = rand()%N + 11;
		a[j] = a_ref[j];
	}

	int control = if_loop_2_cont(a_ref, n);
	int value = 0;

	mem_a mem_host_a(a, N * sizeof(int), false);

    ihc_hls_enqueue(&value, &if_loop_2, mem_host_a, n);
	ihc_hls_component_run_all(&if_loop_2);

	if(value == control)
	{
		printf("PASSED\n");
	}
	else
	{
		printf("FAILED\n");
		return 1;
	}

	return 0;
}



