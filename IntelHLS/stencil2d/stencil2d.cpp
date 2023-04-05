#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

using namespace ihc;

component int stencil_2d ()
{
	hls_memory hls_singlepump int orig[900];
	hls_memory hls_singlepump int sol[900];
	hls_memory hls_singlepump int filter[10];

	INIT_1:for(int j = 0; j < 900; ++j)
	{
		orig[j] = 35 * j % 100; 
	}
	INIT_2:for(int j = 0; j < 10; ++j)
	{
		filter[j] = 42 * j % 100; 
	}

    int temp = 0;
	int mul = 0;

	WORK:for (int r=0; r < 28; r++) 
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
#define TARGET_VALUE 23580

int main(void)
{    
	int i = 0;
	int out = stencil_2d();

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


