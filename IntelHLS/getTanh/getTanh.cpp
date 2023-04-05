#include <HLS/hls.h>
#include <stdlib.h>

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#define N 1000

using namespace ihc;

component float getTanh () {
	
	hls_memory hls_singlepump float A[N];
	hls_memory hls_singlepump int addr[N];
    
	INIT:for(int j = 0; j < N; ++j)
	{
		A[j] = (float) j;
		addr[j] = j;

		if (j%100 == 0)
		{
			A[j] = 0.0f;
		}
	}

	float result, beta;
	WORK:for(int i = 0; i < N; i++) {
		int address = addr[i];
		beta = A[address];

		if(beta >= (float)1.0)
		{
			result = (float)1.0;
		}
		else
		{
			result = ((beta*beta+(float)19.52381)*beta*beta + (float)3.704762)*beta;
		}
		A[address] = result;
	}

	return result;
}

#define TARGET_VALUE 1

int main(void){
	int i = 0;
	float result = getTanh();

	if(result == TARGET_VALUE)
	{
		printf("PASSED\n");
	}
	else
	{
		printf("FAILED\n");
	}

	return 0;
}