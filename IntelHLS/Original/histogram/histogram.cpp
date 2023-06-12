#include <HLS/hls.h>
#include <stdio.h>
#include <iostream>

#define N 1000

using namespace ihc;

component void histogram(
    float hist_r[],
    int n
)
{
    hls_memory hls_singlepump int feature[N];
    hls_memory hls_singlepump float weight[N];
    hls_memory hls_singlepump float hist[N];

    int i;
    /*
    INIT:for(i = 0; i < N; i++)
    {
        feature[i] = i + 1;
        weight[i] = (float) (2 * i);
        hist[i] = 0.0f;
    }*/

    WORK:for(i = 0; i < n; i++)
    {
        int m = feature[i];
        float wt = weight[i];
        float x = hist[m];
        hist[m] = x + wt;
    }

    /*
    OUT:for(i = 0; i < N; i++)
    {
        hist_r[i] = hist[i];
    }
    */
}

int main()
{
    float hist[N];

    int i;
    for(i = 0; i < N; i++)
    {
        hist[i] = 0.0f;
    }

    histogram(hist, N - 1);

    bool failed = false;
    for(i = 0; i < N; i++)
    {
        float val = hist[i];

        if(i == 0)
        {
            if(val != 0.0)
            {
                failed = true;
                break;
            }
        }
        else
        {
            if(val != (float) ((i - 1) * 2))
            {
                failed = true;
                break;
            }
        }
        
    }

    if(failed)
    {
        printf("FAILED");
    }
    else
    {
        printf("PASSED");
    }

    return 0;
}
