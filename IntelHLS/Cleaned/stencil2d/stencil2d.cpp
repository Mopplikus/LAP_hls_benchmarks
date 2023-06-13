#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_orig;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_sol;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_filter;

component void stencil_2d(mem_orig &orig, mem_sol &sol, mem_filter &filter)
{
	int temp = 0;
	int mul = 0;

	for (int r=0; r < 28; r++) {
		for (int c=0; c< 28; c++) {
			temp = 0;
			for (int k1=0;k1<3;k1++){
				for (int k2=0;k2<3;k2++){
					mul = filter[k1*3 + k2] * orig[(r+k1)*30 + c+k2];
					temp += mul;
				}
			}
			sol[(r*30) + c] = temp;
		
		}
	}
}

void stencil_2d_ref(int orig[900], int sol[900], int filter[10])
{
	int temp = 0;
	int mul = 0;

	for (int r=0; r < 28; r++) {
		for (int c=0; c< 28; c++) {
			temp = 0;
			for (int k1=0;k1<3;k1++){
				for (int k2=0;k2<3;k2++){
					mul = filter[k1*3 + k2] * orig[(r+k1)*30 + c+k2];
					temp += mul;
				}
			}
			sol[(r*30) + c] = temp;
		
		}
	}
}

int main(void)
{    
	int orig[900];
	int sol[900];
	int filter[10];
	int orig_ref[900];
	int sol_ref[900];
	int filter_ref[10];

	srand(13);

	for(int j = 0; j < 900; ++j){
		orig_ref[j] = rand() % 100; 
		orig[j] = orig_ref[j];
		sol_ref[j] = 0;
		sol[j] = 0;
	}
	for(int j = 0; j < 10; ++j){
		filter[j] = rand() % 100; 
		filter[j] = filter_ref[j];
	}

	stencil_2d_ref(orig_ref, sol_ref, filter_ref);

	mem_orig mem_host_orig(orig, 900 * sizeof(int), false);
    mem_sol mem_host_sol(sol, 900 * sizeof(int), false);
    mem_filter mem_host_filter(filter, 10 * sizeof(int), false);

    ihc_hls_enqueue_noret(&stencil_2d, mem_host_orig, mem_host_sol, mem_host_filter);
	ihc_hls_component_run_all(&stencil_2d);

	for(int i = 0; i < 900; i++)
	{
		if(sol[i] != sol_ref[i])
		{
			printf("FAILED\n");
			return 1;
		}
	}

	printf("PASSED\n");
	return 0;
}


