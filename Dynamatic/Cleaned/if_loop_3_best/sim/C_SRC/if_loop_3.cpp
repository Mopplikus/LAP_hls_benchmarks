
//------------------------------------------------------------------------
// If loop
//------------------------------------------------------------------------

#include <stdlib.h>
#include "if_loop_3.h"

int if_loop_3 (in_int_t a[100], in_int_t b[100], in_int_t n, out_int_t sum[100]) {
	int i;
 	int dist;
	int sum_local = 1000;

	for (i=0; i<n; i++) {
		dist = a[i] - b[i];

		if (dist >= 0){

		sum_local = (sum_local /dist);
		sum[i] = sum_local;

	  	}

	}
return sum_local;
}

#define AMOUNT_OF_TEST 1

int main(void){
	in_int_t a[AMOUNT_OF_TEST][100];
	in_int_t b[AMOUNT_OF_TEST][100];
	in_int_t n[AMOUNT_OF_TEST];
	out_int_t sum[AMOUNT_OF_TEST][100];

	srand(13);
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	n[i] = 100;
		for(int j = 0; j < 100; ++j){
			int value = (rand() % 10) + 5;
    		a[i][j] = value;
    		b[i][j] = value + 1;
		}
	}

	//for(int i = 0; i < AMOUNT_OF_TEST; ++i){
	int i = 0; 
	if_loop_3(a[i], b[i], n[i], sum[i]);
	//}
}







