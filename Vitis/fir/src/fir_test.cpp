#include "fir.h"

#define AMOUNT_OF_TEST 1

int fir_ref (in_int_t d_i[1000], in_int_t idx[1000] ) {
	int i;
	int tmp=0;

	For_Loop: for (i=0;i<1000;i++) {
		tmp += idx [i] * d_i[999-i];

	}

        //out [0] = tmp;
	return tmp;
}

int main(void){
	  in_int_t d_i[AMOUNT_OF_TEST][1000];
	  in_int_t idx[AMOUNT_OF_TEST][1000];	
    
	srand(13);
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	for(int j = 0; j < 1000; ++j){
			d_i[0][j] = rand() % 100;
			idx[0][j] = rand() % 100;
		}
	}

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		if(fir(d_i[i], idx[i]) == fir_ref(d_i[i], idx[i]))
        {
            printf("PASSED TEST %d\n", i + 1);
        }
        else
        {
            printf("FAILED TEST %d\n", i + 1);
            return 1;
        }
	}

    return 0;
}