//------------------------------------------------------------------------
// If loop
//------------------------------------------------------------------------
#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>

#define N 100

using namespace ihc;

component int if_loop_1 (int a[N],  int n) {
	int i;
	int tmp;
	int c = 5;
	int sum = 0;

	hls_memory hls_singlepump int a_local[N];

	/*INIT:for(i = 0; i < N; i++)
	{
		a_local[i] = a[i];
	}*/

	WORK:for (i=0; i<n; i++) {
		tmp = a_local[i]*c;

		if (tmp > 10) {
			sum = tmp + sum;
		}

	}

	return sum;
}

int if_loop_1_cont (int a[N],  int n) {
	int i;
	int tmp;
	int c = 5;
	int sum = 0;

	for (i=0; i<n; i++) {
		tmp = a[i]*c;

		if (tmp > 10) {
			sum = tmp + sum;
		}

	}

	return sum;
}


#define AMOUNT_OF_TEST 1

int main(void){
	int a[AMOUNT_OF_TEST][N];
	int n[AMOUNT_OF_TEST];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	n[i] = N;
		for(int j = 0; j < N; ++j){
    		a[i][j] = rand()%N;
		}
	}

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		printf("Test %d\n", i + 1);
		if(if_loop_1(a[i], n[i]) == if_loop_1_cont(a[i], n[i]))
		{
			printf("PASSED");
		}
		else
		{
			printf("FAILED");
		}
		printf("\n\n"); 
	}

	return 0;
}


