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
                          ihc::readwrite_mode<readonly>,
                          ihc::latency<1> > mem_1;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::readwrite_mode<readonly>,
                          ihc::latency<1> > mem_2;

component int if_loop_3(mem_1 &a, mem_2 &b, int n) {
	int i;
 	int dist;
	int sum = 1000;

	#pragma ii 9
	for (i=0; i<n; i++) {
		dist = a[i] - b[i];

		if (dist >= 0)
		{
			sum = (sum /dist);
	  	}

	}
	return sum;
}

int if_loop_3_cont (int a[N], int b[N], int n) {
	int i;
 	int dist;
	int sum = 1000;

	WORK:for (i=0; i<n; i++) {
		dist = a[i] - b[i];

		if (dist >= 0){
			sum = (sum /dist);
	  	}

	}
	return sum;
}

#define AMOUNT_OF_TEST 1

int main(void){
	int a[N];
	int b[N];
	int a_cont[N];
	int b_cont[N];
	int n;

	srand(13);
    
	//for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	n = N;
		for(int j = 0; j < N; ++j){
			if(j % 2 == 0)
			{
				a[j] = rand()%10 + 2;
				b[j] = a[j] - 2;
				a_cont[j] = a[j];
				b_cont[j] = a[j] - 2;
			}
			else
			{
				a[j] = rand()%10;
				b[j] = a[j] + 1;
				a_cont[j] = a[j];
				b_cont[j] = a[j] + 1;
			}
		}
	//}

	mem_1 mm_a(a, N * sizeof(int), false);
	mem_2 mm_b(b, N * sizeof(int), false);

	int control_value = if_loop_3_cont(a, b, n);
	int actual_value = 0;

	ihc_hls_enqueue(&actual_value, &if_loop_3, mm_a, mm_b, n);
	ihc_hls_component_run_all(&if_loop_3);

	//for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		//printf("Test %d\n", i + 1);
		if(control_value == actual_value)
		{
			printf("PASSED");
		}
		else
		{
			printf("FAILED");	
		}
		printf("\n\n");
	//}

	return 0;
}







