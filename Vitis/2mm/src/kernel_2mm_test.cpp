#include "kernel_2mm.h"
#include <stdio.h>
#include <stdlib.h>

#define AMOUNT_OF_TEST 1

int main(void){
    in_int_t alpha[AMOUNT_OF_TEST];
    in_int_t beta[AMOUNT_OF_TEST];
    in_int_t tmp[AMOUNT_OF_TEST][N][N];
    in_int_t A[AMOUNT_OF_TEST][N][N];
    in_int_t B[AMOUNT_OF_TEST][N][N];
    in_int_t C[AMOUNT_OF_TEST][N][N];
    inout_int_t D[AMOUNT_OF_TEST][N][N];
    

    for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        alpha[i] = rand();
        beta[i] = rand();
        for(int y = 0; y < N; ++y){
            for(int x = 0; x < N; ++x){
                A[i][y][x] = rand()%100;
                B[i][y][x] = rand()%100;
                C[i][y][x] = rand()%100;
                D[i][y][x] = rand() % 100;
            }
        }
    }

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        kernel_2mm(alpha[0], beta[0], tmp[0], A[0], B[0], C[0], D[0]);
	}

    return 0;
	
}


