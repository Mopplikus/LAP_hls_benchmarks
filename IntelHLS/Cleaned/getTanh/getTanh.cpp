#include <HLS/hls.h>
#include <stdlib.h>

#include <stdio.h>
#include <string.h>
#include <math.h>

#define N 1000

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_addr;

component int getTanh (mem_A &A, mem_addr &addr) {
	
	// getTanh
	int result, beta;
	for(int i = 0; i < 1000; i++) {
		int address = addr[i];
		beta = A[address];

		if(beta >= 1) //float)1.0)
			result = 1;//(float)1.0;
		else
			result = (beta*beta+19)*beta*beta + 3*beta; //((beta*beta+(float)19.52381)*beta*beta + (float)3.704762)*beta;

		A[address] = result;

	}

	return result;
}

int getTanh_ref (int A[1000], int addr[1000]) {
	// getTanh
	int result, beta;
	for(int i = 0; i < 1000; i++) {
		int address = addr[i];
		beta = A[address];

		if(beta >= 1) //float)1.0)
			result = 1;//(float)1.0;
		else
			result = (beta*beta+19)*beta*beta + 3*beta; //((beta*beta+(float)19.52381)*beta*beta + (float)3.704762)*beta;

		A[address] = result;

	}

	return result;
}

#define TARGET_VALUE 1

int main(void){

	int A[1000];
	int A_ref[1000];
	int addr[1000];
	int addr_ref[1000];

	for(int j = 0; j < 1000; ++j){
		A[j] = j;//(float) j;
		addr[j] = j;
		A_ref[j] = j;//(float) j;
		addr_ref[j] = j;

		if (j%100 == 0)
		{	
			A[j] = 0;
			A_ref[j] = 0;
		}
			
	}

	int control = getTanh_ref(A_ref, addr_ref);
	int result = 0;

	mem_A mem_host_A(A, N * sizeof(int), false);
	mem_addr mem_host_addr(addr, N * sizeof(int), false);

    ihc_hls_enqueue(&result, &getTanh, mem_host_A, mem_host_addr);
	ihc_hls_component_run_all(&getTanh);

	if(control == result)
	{
		printf("PASSED\n");
	}
	else
	{
		printf("FAILED\n");
	}

	return 0;
}