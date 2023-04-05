#include "histogram.h"

void histogram(
    din_feature feature[N], 
    din_weight weight[N], 
    din_hist hist[N], 
    din_n n,
	dout_out out[N])
{
	int i;
	float hist_local[N];
	LOOP_INIT:for(i = 0; i < N; i++)
	{
		hist_local[i] = hist[i];
	}

	LOOP_I:for(i = 0; i < n; i++)
	{
		int m 			= feature[i];
		float wt 		= weight[i];
		float x			= hist_local[m];
		hist_local[m]	= x + wt;
	}

	LOOP_END:for(i = 0; i < N; i++)
	{
		out[i] = hist_local[i];
	}
}
