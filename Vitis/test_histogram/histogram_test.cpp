#include "histogram.h"

int main()
{
	din_feature feature[N];
	din_weight weight[N];
	din_n n = N - 1;
	din_hist hist[N];

	int i, j, retval = 0;
	ofstream FILE;

	for(i = 0; i < N; i++)
	{
		feature[i] = i + 1;
		weight[i] = (float) (i * 2);
		hist[i] = 0.0f;
	}

	histogram(feature, weight, hist, n);

	FILE.open("result.dat");

	for(j = 0; j < N; j++)
	{
		FILE << hist[j] << endl;
	}

	FILE.close();

	retval = system("diff --brief -w result.dat result.golden.dat");
	cout << retval << endl;
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
