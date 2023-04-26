#include "histogram.h"
#include <stdlib.h>
#include <stdio.h>

int histogram_ref(in_int_t feature[1000], in_int_t weight[1000], inout_int_t hist[1000], in_int_t n) 
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

#define AMOUNT_OF_TEST 1

int main(void){
	  in_int_t feature[AMOUNT_OF_TEST][1000];
	  in_int_t weight[AMOUNT_OF_TEST][1000];
	  inout_int_t hist[AMOUNT_OF_TEST][1000];
	  inout_int_t hist_ref[AMOUNT_OF_TEST][1000];
	  in_int_t n[AMOUNT_OF_TEST];
    
	srand(13);
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
        n[i] = 1000;
        for(int j = 0; j < 1000; ++j){
            feature[i][j] = rand()%1000;
            weight[i][j] = rand()%100;
            int r = rand() % 100;
            hist[i][j] = r;
            hist_ref[i][j] = r;
        }
	}

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		histogram(feature[i], weight[i], hist[i], n[i]);
        histogram_ref(feature[i], weight[i], hist_ref[i], n[i]);

        for(int j = 0; j < 1000; j++)
        {
            if(hist[i][j] != hist_ref[i][j])
            {
                printf("TEST %d FAILED\n", i + 1);
                return 1;
            }
        }
        printf("TEST %d PASSED\n", i + 1);
	}
}