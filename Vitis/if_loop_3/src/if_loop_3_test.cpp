#include "if_loop_3.h"
#include <stdlib.h>
#include <stdio.h>

int if_loop_3_ref (in_int_t a[100], in_int_t b[100], in_int_t n) {
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
	in_int_t a[AMOUNT_OF_TEST][100];
	in_int_t b[AMOUNT_OF_TEST][100];
	in_int_t n[AMOUNT_OF_TEST];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	n[i] = 100;
		for(int j = 0; j < 100; ++j){
    		a[i][j] = rand()%10;
    		b[i][j] = a[i][j] + 1;
		}
	}

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
	    if(if_loop_3(a[i], b[i], n[i]) == if_loop_3_ref(a[i], b[i], n[i]))
        {
            printf("TEST %d PASSED\n", i + 1);
        }
        else
        {
            printf("TEST %d FAILED\n", i + 1);
            return 1;
        }
	}

    return 0;
}


