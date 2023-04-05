#include <stdlib.h>
#define N 100


#define AMOUNT_OF_TEST 1

void histogram(int feature[], float weight[], float hist[], int n)
{
    for(int i = 0; i < n; ++i)
    {
        int m = feature[i];
        float wt = weight[i];
        float x = hist[m];
        hist[m] = x + wt;
    }
}


int main(void)
{
    int feature[AMOUNT_OF_TEST][N];
    float weight[AMOUNT_OF_TEST][N];
    float hist[AMOUNT_OF_TEST][N];
    float a = 10.0;

    srand(15);
    for(int i = 0; i < AMOUNT_OF_TEST; i++)
    {
	for(int indx = 0; indx < N; indx ++)
	{
	    feature[i][indx] = rand() % (N + 1);
	    weight[i][indx] = (float) rand() / (float)(RAND_MAX/a);
	    hist[i][indx] = (float) rand() / (float)(RAND_MAX/a);
	}
    }

    for(int i = 0; i < AMOUNT_OF_TEST; i++)
    {
	histogram(feature[i], weight[i], hist[i], N);
    }

    return 0;
}
