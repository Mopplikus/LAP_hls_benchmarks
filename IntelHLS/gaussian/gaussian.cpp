#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

using namespace ihc;

#define AMOUNT_OF_TEST 1

component void gaussian (int c[20], int A[20][20]) {

    for(int j=1; j<=18; j++)
    /* loop for the generation of upper triangular matrix*/

        { for(int i=j+1; i<=18;i++)

            {

                for(int k=1; k<=19; k++)

                    {

                    A[i][k]=A[i][k]-c[j]*A[j][k];

                    }


            }

        }
    }
    
int breakout()
{
    printf("FAILED\n");
    return 1;
}

int main(void){
	  int c[AMOUNT_OF_TEST][20];
	  int A[AMOUNT_OF_TEST][20][20];

	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	for(int y = 0; y < 20; ++y){
            c[i][y] = 1; //rand()%20;
    	    for(int x = 0; x < 20; ++x){
			    A[i][y][x] = 1; //rand()%20;
            }
		}
	}

    int i = 0;
    gaussian(c[i], A[i]);

    for(int i = 0; i < 20; i++)
    {
        for(int j = 0; j < 20; j++)
        {
            if(i <= 1 || i == 19 || j == 0)
            {
                if(A[0][i][j] != 1)
                {
                    return breakout();
                }
            }
            else
            {
                if(A[0][i][j] != 0)
                {
                    return breakout();
                }
            }
        }
    }
    printf("PASSED\n");
    return 0;
}
