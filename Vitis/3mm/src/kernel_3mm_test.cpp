#include <stdio.h>
#include <stdlib.h>
#include "kernel_3mm.h"

#define AMOUNT_OF_TEST 1

int main(void){
    in_int_t A[AMOUNT_OF_TEST][N][N];
    in_int_t B[AMOUNT_OF_TEST][N][N];
    in_int_t C[AMOUNT_OF_TEST][N][N];
    in_int_t D[AMOUNT_OF_TEST][N][N];
    inout_int_t E[AMOUNT_OF_TEST][N][N];
    inout_int_t F[AMOUNT_OF_TEST][N][N];
    out_int_t G[AMOUNT_OF_TEST][N][N];
    
    for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        for(int y = 0; y < N; ++y){
            for(int x = 0; x < N; ++x){
                A[i][y][x] = rand() % 10;
                B[i][y][x] = rand() % 10;
                C[i][y][x] = rand() % 10;
                D[i][y][x] = rand() % 10;
                E[i][y][x] = rand() % 10;
                F[i][y][x] = rand() % 10;
                G[i][y][x] = rand() % 10;
            }
        }
    }

	//for(int i = 0; i < AMOUNT_OF_TEST; ++i){

    kernel_3mm(A[0], B[0], C[0], D[0], E[0], F[0], G[0]);
	//}
	
}


