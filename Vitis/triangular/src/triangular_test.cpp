#include "triangular.h"

int triangular_ref( in_int_t x[100], inout_int_t A[100][100] , in_int_t n) {
	int i;
    for (i=n-1; i>=0; i--) {
       // x[i] = A[i][n]/A[i][i];
	    for (int k=i-1;k>=0; k--) {
            A[k][n] -= A[k][i] * x[i];
        }
	}

	return i + n;
}

#include <stdlib.h>
#include <stdio.h>

#define AMOUNT_OF_TEST 1

int main(void){
	in_int_t xArray[AMOUNT_OF_TEST][100];
	inout_int_t A[AMOUNT_OF_TEST][100][100];
    inout_int_t A_ref[AMOUNT_OF_TEST][100][100];
	in_int_t n[AMOUNT_OF_TEST];

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		n[i] = 100; //(rand() % 100);
		for(int x = 0; x < 100; ++x){
            xArray[i][x] = rand() % 10;
		    for(int y = 0; y < 100; ++y){
                int input = rand() % 10;
			    A[i][y][x] = input;
                A_ref[i][y][x] = input;
		    }
	    }
    }
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
	    triangular(xArray[i], A[i], n[i]);
        triangular_ref(xArray[i], A_ref[i], n[i]);

        for(int x = 0; x < 100; x++)
        {
            for(int y = 0; y < 100; y++)
            {
                //printf("%d\t%d\n", A[i][x][y], A_ref[i][x][y]);
                if(A[i][x][y] != A_ref[i][x][y])
                {
                    printf("TEST %d FAILED\n", i + 1);
                    return 1;
                }
            }
        }
        printf("TEST %d PASSED\n", i + 1);
	}

    return 0;
}