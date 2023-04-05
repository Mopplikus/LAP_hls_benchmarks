#include <stdlib.h>

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#define N 30

#define AMOUNT_OF_TEST 1

int getTanh (int A[1000], int addr[1000]) {
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

#define AMOUNT_OF_TEST 1

int main(void){
	int a[AMOUNT_OF_TEST][1000];
	int b[AMOUNT_OF_TEST][1000];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		for(int j = 0; j < 1000; ++j){
    		a[i][j] = j;//(float) j;
			b[i][j] = j;

			if (j%100 == 0)
			   	a[i][j] = 0;
		}
	}

	//for(int i = 0; i < AMOUNT_OF_TEST; ++i){
	int i = 0;
	//gsum(a[i]);
	getTanh (a[i], b[i]);

}