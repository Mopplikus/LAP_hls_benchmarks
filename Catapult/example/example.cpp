#include <ac_std_float.h>
#include <ac_channel.h>
#include <stdio.h>

#define N 100

#pragma hls_design top
void example(ac_ieee_float32 A[N], ac_ieee_float32 B[N], ac_ieee_float32 *out)
{
    ac_ieee_float32 s = 0.0f;

    int i;
    for(i = 0; i < N; i++)
    {
        ac_ieee_float32 d = A[i] - B[i];
        if(d >= 0.0f)
        {
            s += d;
        }
    }

    *out = s;
}

int main(void)
{
    ac_ieee_float32 A[N];
    ac_ieee_float32 B[N];
    ac_ieee_float32 out = 0.0f;

    int i;
    for(i = 0; i < N; i++)
    {
        A[i] = ((float) (i % 3));
        B[i] = ((float) (i % 4));
    }
    example(A, B, &out);
    if(out == 32.0f)
    {
        printf("PASSED\n");
    }
    else
    {
        printf("FAILED\n");
    }

    return 0;
}
