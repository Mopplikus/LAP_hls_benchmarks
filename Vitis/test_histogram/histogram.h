#ifndef _HISTOGRAM_H_
#define _HISTOGRAM_H_

#include <iostream>
#include <fstream>
using namespace std;

typedef int din_feature;
typedef float din_weight;
typedef float din_hist;
typedef float din_n;
typedef float dout_out;

#define N 1000

void histogram(
    din_feature feature[N], 
    din_weight weight[N], 
    din_hist hist[N], 
    din_n n);

#endif
