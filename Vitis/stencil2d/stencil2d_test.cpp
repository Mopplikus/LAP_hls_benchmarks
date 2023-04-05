#include "stencil2d.h"

#define AMOUNT_OF_TEST 1
#define TARGET_VALUE 23580

int main(void)
{
	int orig[AMOUNT_OF_TEST][900];
	int sol[AMOUNT_OF_TEST][900];
	int filter[AMOUNT_OF_TEST][10];


	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
		for(int j = 0; j < 900; ++j){
			orig[i][j] = 35 * j % 100; 
		}
        for(int j = 0; j < 10; ++j){
			filter[i][j] = 42 * j % 100; 
		}
	}
    
	int i = 0;
	int out = stencil_2d(orig[i], sol[i], filter[i]);

	if(out == TARGET_VALUE)
	{
		printf("PASSED\n");
	}
	else
	{
		printf("FAILED\n");
	}

	return 0;
}
