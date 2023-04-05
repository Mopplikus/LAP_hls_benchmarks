#include <ac_std_float.h>
#include <ac_channel.h>

#define N 100

#pragma hls_design
void example(ac_channel<ac_ieee_float32> &A, ac_channel<ac_ieee_float32> &B, ac_ieee_float32 out)
{
    out = 0.0f;

    int i;
    for(i = 0; i < N; i++)
    {
        ac_ieee_float32 d = A.read() - B.read();
        if(d >= 0.0f)
        {
            out += d;
        }
    }
}

#pragma hls_design top
int main(void)
{
    static ac_channel<ac_ieee_float32 > A;
    static ac_channel<ac_ieee_float32 > B;

    int i;
    for(i = 0; i < N; i++)
    {
        A.write((float) (i % 3));
        B.write((float) (i % 4));
    }

    ac_ieee_float32 out = 0.0f;
    example(A, B, out);
    if(out == 32.0f)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}
