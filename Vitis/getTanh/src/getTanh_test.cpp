#include "getTanh.h"

int getTanh_ref (inout_int_t A[1000], in_int_t addr[1000]) {
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

#define AMOUNT_OF_TEST 1

int main(void){
	inout_int_t a[AMOUNT_OF_TEST][1000];
	inout_int_t a_ref[AMOUNT_OF_TEST][1000];
	in_int_t b[AMOUNT_OF_TEST][1000];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		for(int j = 0; j < 1000; ++j){
    		a[i][j] = j;//(float) j;
            a_ref[i][j] = j;
			b[i][j] = j;

			if (j%100 == 0)
            {
                a[i][j] = 0;
                a_ref[i][j] = 0;
            }
		}
	}

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
	    getTanh (a[i], b[i]);
        getTanh_ref(a_ref[i], b[i]);

        for(int j = 0; j < 1000; j++)
        {
            if(a_ref[i][j] != a[i][j])
            {
                printf("TEST %d FAILED\n", i + 1);
                return 1;
            }
        }
        printf("TEST %d PASSED\n", i + 1);
    }

    return 0;

    

}