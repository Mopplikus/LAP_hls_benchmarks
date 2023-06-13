#include <HLS/hls.h>
#include <stdio.h>
#include <iostream>

#define N 1000

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_feature;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_weight;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_hist;

component void histogram(mem_feature &feature, mem_weight &weight, mem_hist &hist, int n)
{
    int i;
	for (i=0; i<n; ++i) {
    int m = feature[i];
    int wt = weight[i];
    int x = hist[m];
    hist[m] = x + wt;
  }
}

void histogram_ref(int feature[1000], int weight[1000], int hist[1000], int n) 
{
	int i;
	for (i=0; i<n; ++i) {
    int m = feature[i];
    int wt = weight[i];
    int x = hist[m];
    hist[m] = x + wt;
  }
}

int main()
{
    int feature[1000];
    int weight[1000];
    int hist[1000];
    int feature_ref[1000];
    int weight_ref[1000];
    int hist_ref[1000];
    int n = N;

    srand(13);

    for(int j = 0; j < 1000; ++j){
        feature_ref[j] = rand()%1000;
        feature[j] = feature_ref[j];
        weight_ref[j] = rand()%100;
        weight[j] = weight_ref[j];
        hist_ref[j] = rand()%100;
        hist[j] = hist_ref[j];
    }

    histogram_ref(feature_ref, weight_ref, hist_ref, n);

    mem_feature mem_host_feature(feature, N * sizeof(int), false);
	mem_weight mem_host_weight(weight, N * sizeof(int), false);
	mem_hist mem_host_hist(hist, N * sizeof(int), false);

    ihc_hls_enqueue_noret(&histogram, mem_host_feature, mem_host_weight, mem_host_hist, n);
	ihc_hls_component_run_all(&histogram);

    for(int i = 0; i < N; i++)
    {
        if(hist[i] != hist_ref[i])
        {
            printf("FAILED\n");
            return 1;
        }
    }

    printf("PASSED\n");

    return 0;
}
