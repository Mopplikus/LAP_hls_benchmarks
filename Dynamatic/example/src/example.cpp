#include "example.h"

#include <stdlib.h>

#define AMOUNT_OF_TEST 1

#define N 100

int example(in_float_t A[N], in_float_t B[N], out_float_t out)
{
    float d, s = 0.0;
    int i;
    for(i = 0; i < N; i++)
    {
        d = A[i] - B[i];
        if(d >= 0)
        {
            s += d;
        }
    }
    out = s;
    return i;
}

int main(void)
{
    in_float_t A[AMOUNT_OF_TEST][N];
    in_float_t B[AMOUNT_OF_TEST][N];
    out_float_t out[AMOUNT_OF_TEST];
    int a = 5;


    srand(15);
    for(int j = 0; j < AMOUNT_OF_TEST; j++)
    {
	for(int i = 0; i < N; i++)
	{
	    A[j][i] = (in_float_t)(rand()/(RAND_MAX/a));
	    B[j][i] = (in_float_t)(rand()/(RAND_MAX/a));
        out[j] = (out_float_t) 0.0f;
	}
    }

    for(int i = 0; i < AMOUNT_OF_TEST; i++)
    {
    	example(A[i], B[i], out[i]);
    }

    return 0;
}
