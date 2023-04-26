#include "bicg.h"

int bicg_cont(in_int_t A[N][N], inout_int_t s[N], inout_int_t q[N], in_int_t p[N], in_int_t r[N])
{
    int i, j;

    int tmp_q = 0;

    for (i = 0; i < NX; i++)
    {
        tmp_q = q[i];
        for (j = 0; j < NY; j++)
        {
            int tmp =  A[i][j];
            s[j] = s[j] + r[i] * tmp;
            tmp_q = tmp_q + tmp * p[j];
        }
        q[i] = tmp_q;
    }
    return tmp_q;
}


#define AMOUNT_OF_TEST 1

int main(void){
    in_int_t A[AMOUNT_OF_TEST][N][N];
    inout_int_t s[AMOUNT_OF_TEST][N];
    inout_int_t s_cont[AMOUNT_OF_TEST][N];
    inout_int_t q[AMOUNT_OF_TEST][N];
    inout_int_t q_cont[AMOUNT_OF_TEST][N];
    in_int_t p[AMOUNT_OF_TEST][N];
    in_int_t r[AMOUNT_OF_TEST][N];

    srand(13);
    
    for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        for(int y = 0; y < N; ++y){
            int s_i = rand() % 100;
            s[i][y] = s_i;
            s_cont[i][y] = s_i;
            int q_i = rand() % 100;
            q[i][y] = q_i;
            q_cont[i][y] = q_i;
            p[i][y] = rand() % 100;
            r[i][y] = rand() % 100;
            for(int x = 0; x < N; ++x){
                A[i][y][x] = rand() % 100;
            }
        }
    }

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){ 
        bicg(A[i], s[i], q[i], p[i], r[i]);
        bicg_cont(A[i], s_cont[i], q_cont[i], p[i], r[i]);
        for(int j = 0; j < N; j++)
        {
            if(s_cont[i][j] != s[i][j] || q_cont[i][j] != q[i][j])
            {
                printf("FAILED TEST %d AT INDEX %d\n", i + 1, j);
                return 1;
            }
        }
        printf("PASSED TEST %d\n", i + 1);
	}

    return 0;
}