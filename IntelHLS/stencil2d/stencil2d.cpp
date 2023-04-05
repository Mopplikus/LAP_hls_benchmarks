#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

using namespace ihc;

component int stencil_2d (int orig[900], int sol[900], int filter[10])
{
    int temp = 0;
	int mul = 0;

	for (int r=0; r < 28; r++) 
	{
		for (int c=0; c< 28; c++) 
		{
			temp = 0;
			for (int k1=0;k1<3;k1++)
			{
				for (int k2=0;k2<3;k2++)
				{
					mul = filter[k1*3 + k2] * orig[(r+k1)*30 + c+k2];
					temp += mul;
				}
			}
			sol[(r*30) + c] = temp;
		
		}
	}

	return temp;
}

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


