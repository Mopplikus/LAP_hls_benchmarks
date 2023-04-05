#include <ac_std_float.h>
#include <ac_int.h>
#include <ac_channel.h>

#define N 100

#pragma hls_design
void histogram(
    ac_channel<ac_int<32> > &feature, 
    ac_channel<ac_ieee_float32> &weight,
    ac_channel<ac_ieee_float32> &hist, 
    ac_int<32> n,
    ac_channel<ac_ieee_float32> &out)
{
    ac_ieee_float32 hist_local[N];

    // Copy over the histogram data to a local array
    int size = 0;
    ac_ieee_float32 read;
    while(size < N && hist.nb_read(read))
    {
        hist_local[size] = read;
        size++;
    }
    
    // Build the histogram
    int i;
    for(i = 0; i < n; i++)
    {
        int m = feature.read();
        ac_ieee_float32 wt = weight.read();
        ac_ieee_float32 x = hist_local[m];
        hist_local[m] = x + wt;
    }

    // Push to the output
    for(i = 0; i < size; i++)
    {
        out.write(hist_local[i]);
    }

    /*
    for ( int i =0; i <n; ++ i)
    {
        int m = feature [i ];
        float wt = weight [i ];
        float x = hist [m ];
        hist [m] = x + wt ;
    }*/
}

#pragma hls_design top
int main(void)
{
    static ac_channel<ac_int<32> > feature;
    static ac_channel<ac_ieee_float32 > weight;
    static ac_channel<ac_ieee_float32 > hist;
    static ac_channel<ac_ieee_float32 > out;

    int i;
    ac_ieee_float32 wt = 0.0f;
    for(i = 0; i < N; i++)
    {
        wt += 2.0f;
        feature.write(i + 1);
        weight.write(wt);
        hist.write(0.0f);
    }

    histogram(feature, weight, hist, N, out);

    for(i = 0; i < N; i++)
    {
        if(i == 0)
        {
            if(out.read() != 0.0f)
            {
                return 1;
            }
        }
        else
        {
            if(i % 2 == 0)
            {
                if(out.read() != 1.0f)
                {
                    return 1;
                }
            }
            else
            {
                if(out.read() != 0.0f)
                {
                    return 1;
                }
            }
        }
    }
}

