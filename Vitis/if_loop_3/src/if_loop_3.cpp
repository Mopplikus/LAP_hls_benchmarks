
//------------------------------------------------------------------------
// If loop
//------------------------------------------------------------------------


#include "if_loop_3.h"

int if_loop_3 (in_int_t a[100], in_int_t b[100], in_int_t n) {
	int i;
 	int dist;
	int sum = 1000;

	for (i=0; i<n; i++) {
		dist = a[i] - b[i];

		if (dist >= 0){

		sum = (sum /dist);

	  	}

	}
return sum;
}


