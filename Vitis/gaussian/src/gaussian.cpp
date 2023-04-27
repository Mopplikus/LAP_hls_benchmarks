#include "gaussian.h"

#define AMOUNT_OF_TEST 1

void gaussian (in_int_t c[20], inout_int_t A[20][20]) {

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
