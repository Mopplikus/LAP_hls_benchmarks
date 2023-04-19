#include "if_loop_1.h"

#define AMOUNT_OF_TEST 1

int if_loop_1_cont (in_int_t a[100],  in_int_t n) {
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

int main(void){
	in_int_t a[AMOUNT_OF_TEST][100];
	in_int_t n[AMOUNT_OF_TEST];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	n[i] = 100;
		for(int j = 0; j < 100; ++j){
    		a[i][j] = rand()%100;
		}
	}

	//for(int i = 0; i < AMOUNT_OF_TEST; ++i){
	int i = 0;
	if(if_loop_1(a[i], n[i]) == if_loop_1_cont(a[i], n[i]))
    {
        printf("PASSED\n");
    }
    else
    {
        printf("FAILED");
    }
	//}

    return 0;
}