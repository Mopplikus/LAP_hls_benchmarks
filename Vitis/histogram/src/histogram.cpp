
//------------------------------------------------------------------------
// Histogram
//------------------------------------------------------------------------

#include "histogram.h"



int histogram(in_int_t feature[1000], in_int_t weight[1000], inout_int_t hist[1000], in_int_t n) 
{
	int i;
	for (i=0; i<n; ++i) {
    int m = feature[i];
    int wt = weight[i];
    int x = hist[m];
    hist[m] = x + wt;
  }
  return i;
}

