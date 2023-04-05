#include "histogram.h"

void histogram(
    din_feature feature[N], 
    din_weight weight[N], 
    din_hist hist[N], 
    din_n n)
{
	int i;

	LOOP_I:for(i = 0; i < N - 1; i++)
	{
		int m 			= feature[i];
		float wt 		= weight[i];
		float x			= hist[m];
		hist[m]	= x + wt;
	}
}
