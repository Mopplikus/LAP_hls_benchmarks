#include <HLS/hls.h>
#include <stdio.h>

#define N 100

#define TARGET_VALUE 32.0

using namespace ihc;

component float example(float A[], float B[])
{

    float d = 0.0;
    float s = 0.0;

    int i = 0;
    for(i = i; i < N; i++)
    {
        d = A[i] - B[i];
        if(d >= 0)
        {
            s += d;
        }
    }

    return s;
}

int main()
{
    float A[N];
    float B[N];

    int i;
    for(i = 0; i < N; i++)
    {
        A[i] = (float) (i % 3);
        B[i] = (float) (i % 4);
    }

    float result = example(A, B);

    if(result == TARGET_VALUE)
    {
        printf("PASSED\n");
    }
    else
    {
        printf("FAILED\n");
    }

    return 0;
}