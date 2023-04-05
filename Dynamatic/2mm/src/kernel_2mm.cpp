#include <stdio.h>
#include <stdlib.h>

#define NI 10
#define NJ 10
#define NK 10
#define NL 10
#define N 10

#define S 1000

int kernel_2mm(int alpha, int beta, int tmp[N][N], int A[N][N], int B[N][N], int C[N][N], int D[N][N])
{
    int i, j, k;

    for (i = 0; i < NI; i++)
        for (j = 0; j < NJ; j++) {
            int x = tmp[i][j];
            for (k = 0; k < NK; ++k)
                x += alpha * A[i][k] * B[k][j];
            tmp[i][j] = x;
        }

    for (i = 0; i < NI; i++)
        for (j = 0; j < NL; j++) {
            int x = D[i][j]*beta;
            for (k = 0; k < NJ; ++k)
                x += tmp[i][k] * C[k][j];
            D[i][j] = x;
        }

    return k;

}


#define AMOUNT_OF_TEST 1

int main(void){
    int alpha[AMOUNT_OF_TEST];
    int beta[AMOUNT_OF_TEST];
    int tmp[AMOUNT_OF_TEST][N][N];
    int A[AMOUNT_OF_TEST][N][N];
    int B[AMOUNT_OF_TEST][N][N];
    int C[AMOUNT_OF_TEST][N][N];
    int D[AMOUNT_OF_TEST][N][N];
    

    for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        alpha[i] = rand();
        beta[i] = rand();
        for(int y = 0; y < N; ++y){
            for(int x = 0; x < N; ++x){
                A[i][y][x] = rand()%100;
                B[i][y][x] = rand()%100;
                C[i][y][x] = rand()%100;
                D[i][y][x] = rand()%100;
            }
        }
    }

	//for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		//int i = 0;
        kernel_2mm(alpha[0], beta[0], tmp[0], A[0], B[0], C[0], D[0]);
	//}
	

}
