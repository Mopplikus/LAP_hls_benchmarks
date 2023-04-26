#include "fir.h"
//------------------------------------------------------------------------
// FIR
//------------------------------------------------------------------------

//SEPARATOR_FOR_MAIN

#define AMOUNT_OF_TEST 1

int fir (in_int_t d_i[1000], in_int_t idx[1000] ) {
	int i;
	int tmp=0;

	For_Loop: for (i=0;i<1000;i++) {
		tmp += idx [i] * d_i[999-i];

	}

        //out [0] = tmp;
	return tmp;
}
//SEPARATOR_FOR_MAIN


