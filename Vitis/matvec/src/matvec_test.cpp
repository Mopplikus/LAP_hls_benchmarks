#include "matvec.h"
#include <stdlib.h>
#include <stdio.h>

#define AMOUNT_OF_TEST 1

int matvec_ref (in_int_t M[30][30], in_int_t V[30], out_int_t Out[30]) {
	int i, j;
	int tmp = 0;

	for (i=0;i<30;i++) {
		tmp = 0;

		for (j=0;j<30;j++) {
			tmp += V[j]* M[i][j];
		}
		Out[i] = tmp;
	}

	return tmp;

}

int main(void){
	in_int_t M[AMOUNT_OF_TEST][30][30];
	in_int_t V[AMOUNT_OF_TEST][30];
	out_int_t Out[AMOUNT_OF_TEST][30];
	out_int_t Out_ref[AMOUNT_OF_TEST][30];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	for(int y = 0; y < 30; ++y){
      		V[i][y] = rand()%100;
      		for(int x = 0; x < 30; ++x){
      			M[i][y][x] = rand()%100;
      		}
    	}
  	}

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        matvec(M[i], V[i], Out[i]);
        matvec_ref(M[i], V[i], Out_ref[i]);

        for(int j = 0; j < 30; j++)
        {
            if(Out[i][j] != Out_ref[i][j])
            {
                printf("TEST %d FAILED\n", i + 1);
            return 1;
            }
        }
        
        printf("TEST %d PASSED\n", i + 1);
    }

    

    return 0;
}