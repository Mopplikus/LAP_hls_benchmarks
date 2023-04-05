#include "example.h"

int main()
{
	din_A A[N];
	din_B B[N];

	dout_t accum;
	int i, j, retval = 0;
	ofstream FILE;

	for(i = 0; i < N; ++i)
	{
		A[i] = (float) (i % 4);
		B[i] = (float) (i % 5);
	}

	FILE.open("result.dat");

	for(j = 0; j < N; j++)
	{
		accum = example(A, B, j);
		FILE << accum << endl;
	}
	FILE.close();

	retval = system("diff --brief -w result.dat result.golden.dat");
	if(retval != 0)
	{
		cout << "Test failed" << endl;
		retval = 1;
	}
	else
	{
		cout << "Test passed!" << endl;
	}

	return retval;
}
