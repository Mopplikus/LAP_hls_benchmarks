//------------------------------------------------------------------------
// If loop
//------------------------------------------------------------------------
#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>

#define N 100

using namespace ihc;

component int if_loop_3 (int a[N], int b[N], int n) {
	int i;
 	int dist;
	int sum = 1000;

	hls_memory hls_singlepump int a_local[N];
	hls_memory hls_singlepump int b_local[N];

	/*INIT:for(i = 0; i < N; i++)
	{
		a_local[i] = a[i];
		b_local[i] = b[i];
	}*/

	WORK:for (i=0; i<n; i++) {
		dist = a_local[i] - b_local[i];

		if (dist >= 0){

			sum = (sum /dist);

	  	}

	}
	return sum;
}

int if_loop_3_cont (int a[N], int b[N], int n) {
	int i;
 	int dist;
	int sum = 1000;

	for (i=0; i<n; i++) {
		dist = a[i] - b[i];

		if (dist >= 0){

		sum = (sum /dist);

	  	}

	}
	return sum;
}

#define AMOUNT_OF_TEST 1

int main(void){
	int a[AMOUNT_OF_TEST][N];
	int b[AMOUNT_OF_TEST][N];
	int n[AMOUNT_OF_TEST];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	n[i] = N;
		for(int j = 0; j < N; ++j){
    		a[i][j] = rand()%10;
    		b[i][j] = a[i][j] + 1;
		}
	}

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		printf("Test %d\n", i + 1);
		if(if_loop_3(a[i], b[i], n[i]) == if_loop_3_cont(a[i], b[i], n[i]))
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







