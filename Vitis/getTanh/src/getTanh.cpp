#include "getTanh.h"
//------------------------------------------------------------------------
// getTanh
//------------------------------------------------------------------------

//SEPARATOR_FOR_MAIN

#define N 30

int getTanh (inout_int_t A[1000], in_int_t addr[1000]) {
	// getTanh
	int result, beta;
	for(int i = 0; i < 1000; i++) {
		int address = addr[i];
		beta = A[address];

		if(beta >= 1) //float)1.0)
			result = 1;//(float)1.0;
		else
			result = (beta*beta+19)*beta*beta + 3*beta; //((beta*beta+(float)19.52381)*beta*beta + (float)3.704762)*beta;

		A[address] = result;

	}

	return result;
}
