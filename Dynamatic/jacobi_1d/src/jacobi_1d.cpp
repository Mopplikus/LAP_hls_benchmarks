#include <stdlib.h>
#define TSTEPS 3
#define N 100

int jacobi_1d(int A_1[N], int A_2[N], int B[N])
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

    int A[AMOUNT_OF_TEST][N];
    int B[AMOUNT_OF_TEST][N];
    int C[AMOUNT_OF_TEST][N];


    for(int i = 0; i < AMOUNT_OF_TEST; ++i){

        for(int j = 0; j < N; ++j){
            A[i][j] = rand()%100;
            B[i][j] = rand()%100;
            C[i][j] = rand()%100;
        }
	}



    //for(int i = 0; i < AMOUNT_OF_TEST; ++i){

        int i = 0;

        jacobi_1d(A[i], B[i], C[i]);

    //}

}
