//------------------------------------------------------------------------
// If loop
//------------------------------------------------------------------------



#include "if_loop_2.h"

int if_loop_2 (in_int_t a[100],  in_int_t n) {
	int i;
	int tmp;
	int sum = 0;

	for (i=0; i<n; i++) {
		tmp = a[i];

		if (tmp > 10) {
    
			sum = tmp + sum;
		}

	}

return sum;
}


