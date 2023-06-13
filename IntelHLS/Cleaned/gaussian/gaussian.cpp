#include <HLS/hls.h>
#include <stdio.h>
#include <stdlib.h>

using namespace ihc;

#define N 20

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_c;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A;

component void gaussian (mem_c &c, mem_A &A) {
    for(int j=1; j<=18; j++)
    /* loop for the generation of upper triangular matrix*/

        { for(int i=j+1; i<=18;i++)

            {

                for(int k=1; k<=19; k++)

                    {

                    A[i * N + k]=A[i * N + k]-c[j]*A[j * N + k];

                    }


            }

        }
}

void gaussian_ref(int c[20], int A[20][20])
{
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

int main(void){

    int A[20 * 20];
    int A_ref[20][20];
    int c[20];
    int c_ref[20];

    srand(13);
    for(int y = 0; y < 20; ++y){
        c_ref[y] = rand()%20;
        c[y] = c_ref[y];

        for(int x = 0; x < 20; ++x){
            A_ref[y][x] = rand()%20;
            A[y * N + x] = A_ref[y][x];
        }
    }

    gaussian_ref(c_ref, A_ref);

    mem_c mem_host_c(c, N * sizeof(int), false);
	mem_A mem_host_A(A, N * N * sizeof(int), false);

    ihc_hls_enqueue_noret(&gaussian, mem_host_c, mem_host_A);
	ihc_hls_component_run_all(&gaussian);

    for(int i = 0; i < 20; i++)
    {
        for(int j = 0; j < 20; j++)
        {
            if(A[i * N + j] != A_ref[i][j])
            {
                printf("FAILED\n");
                return 1;
            }
        }
    }
    printf("PASSED\n");
    return 0;
}
