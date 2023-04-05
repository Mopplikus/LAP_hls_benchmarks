#include <stdlib.h>
#include "fir.h"

#define N 1000

int fir (int d_i[N], int idx[N] ) {
	int i;
	int tmp=0;

	For_Loop: for (i=0;i<N;i++) {
		tmp += idx [i] * d_i[N-1-i];
	}

	return tmp;
}

int main(void){
	  int d_i[N];
	  int idx[N];
 	  int out[N];	
    
	srand(13);
    for(int j = 0; j < N; ++j){
        d_i[j] = rand() % 100;
        idx[j] = rand() % 100;
    }

    fir(d_i, idx);
}
