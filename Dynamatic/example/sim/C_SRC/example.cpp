#include <stdlib.h>

#define N 100

#define AMOUNT_OF_TEST 1

float example(float A[], float B[])
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
    return s;
}

int main(void)
{
    float A[AMOUNT_OF_TEST][N];
    float B[AMOUNT_OF_TEST][N];
    float a = 5.0;


    srand(15);
    for(int j = 0; j < AMOUNT_OF_TEST; j++)
    {
	for(int i = 0; i < N; i++)
	{
	    A[j][i] = (float)rand()/(float)(RAND_MAX/a);
	    B[j][i] = (float)rand()/(float)(RAND_MAX/a);
	}
    }

    for(int i = 0; i < AMOUNT_OF_TEST; i++)
    {
    	example(A[i], B[i]);
    }

    return 0;
}
