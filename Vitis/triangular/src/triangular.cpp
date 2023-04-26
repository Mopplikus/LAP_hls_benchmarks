#include "triangular.h"
//------------------------------------------------------------------------
// Triangular
//------------------------------------------------------------------------

int triangular( in_int_t x[100], inout_int_t A[100][100] , in_int_t n) {
	int i;
    for (i=n-1; i>=0; i--) {
	    for (int k=i-1;k>=0; k--) {
            A[k][n] -= A[k][i] * x[i];
        }
	}

	return i + n;
}




