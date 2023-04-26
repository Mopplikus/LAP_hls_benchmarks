#include <ac_std_float.h>
#include <ac_channel.h>
#include <stdio.h>

#define N 1000

#pragma hls_design top
void getTanh(int A[N], int addr[N], int* out)
{
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

	*out = result;
}

void getTanh_ref(int A[N], int addr[N], int* out)
{
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

	*out = result;
}

int main(void)
{
    int A[N];
    int A_ref[N];
    int B[N];
    int out = 0.0f;
    int out_ref = 0.0f;

    int i;
    for(i = 0; i < N; i++)
    {
        A[i] = i;
        B[i] = i;

        if(i % 100 == 0)
        {
            A[i] = 0;
        }
    }

    getTanh(A, B, &out);
    getTanh_ref(A_ref, B, &out_ref);

    if(out == out_ref)
    {
        printf("PASSED\n");
    }
    else
    {
        printf("FAILED\n");
    }

    return 0;
}
