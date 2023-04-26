#include "jacobi_1d.h"
#include <stdlib.h>
#include <stdio.h>

int jacobi_1d_ref(inout_int_t A_1[N], inout_int_t A_2[N], inout_int_t B[N])
{

	int t, i, j;

	for (t = 0; t < TSTEPS; t++)
	{

		for (i = 1; i < N - 1; i++) {
		    B[i] = 3 * (A_1[i-1] + A_1[i] + A_1[i + 1]);
		}

		for (j = 1; j < N - 1; j++) {
		    A_2[j] = B[j];
		}

	}		

	return t;

}



#define AMOUNT_OF_TEST 1



int main(void){

    inout_int_t A[AMOUNT_OF_TEST][N];
    inout_int_t B[AMOUNT_OF_TEST][N];
    inout_int_t B_ref[AMOUNT_OF_TEST][N];
    inout_int_t C[AMOUNT_OF_TEST][N];
    inout_int_t C_ref[AMOUNT_OF_TEST][N];


    for(int i = 0; i < AMOUNT_OF_TEST; ++i){

        for(int j = 0; j < N; ++j){
            A[i][j] = rand()%100;
            int b_r = rand() % 100;
            B[i][j] = b_r;
            B_ref[i][j] = b_r;
            int c_r = rand() % 100;
            C[i][j] = c_r;
            C_ref[i][j] = c_r;
        }
	}



    for(int i = 0; i < AMOUNT_OF_TEST; ++i){

        jacobi_1d(A[i], B[i], C[i]);
        jacobi_1d_ref(A[i], B_ref[i], C_ref[i]);

        for(int j = 0; j < N; j++)
        {
            if(B_ref[i][j] != B[i][j] || C_ref[i][j] != C[i][j])
            {
                printf("TEST %d FAILED\n", i + 1);
                return 1;
            }
        }
        printf("TEST %d PASSED\n", i + 1);

    }

    return 0;

}