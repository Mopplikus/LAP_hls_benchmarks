#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

using namespace ihc;

component void gaussian (int A_r[20][20]) {

    hls_memory hls_singlepump int c[20];
	hls_memory hls_singlepump int A[20][20];

    INIT:for(int y = 0; y < 20; ++y){
        c[y] = 1; //rand()%20;
        for(int x = 0; x < 20; ++x){
            A[y][x] = 1; //rand()%20;
        }
    }

    WORK:for(int j=1; j<=18; j++)
    /* loop for the generation of upper triangular matrix*/
    { 
        for(int i=j+1; i<=18;i++)
        {
            for(int k=1; k<=19; k++)
            {
                A[i][k]=A[i][k]-c[j]*A[j][k];
            }


        }

    }

    OUT:for(int i = 0; i < 20; i++)
    {
        for(int j = 0; j < 20; j++)
        {
            A_r[i][j] = A[i][j];
        }
    }
}
    
int breakout()
{
    printf("FAILED\n");
    return 1;
}

int main(void){

    int A[20][20];

    gaussian(A);

    for(int i = 0; i < 20; i++)
    {
        for(int j = 0; j < 20; j++)
        {
            if(i <= 1 || i == 19 || j == 0)
            {
                if(A[i][j] != 1)
                {
                    return breakout();
                }
            }
            else
            {
                if(A[i][j] != 0)
                {
                    return breakout();
                }
            }
        }
    }
    printf("PASSED\n");
    return 0;
}
