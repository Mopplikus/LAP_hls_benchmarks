#include <stdlib.h>

#define AMOUNT_OF_TEST 1

int matvec (int M[30][30], int V[30], int Out[30]) {
	int i, j;
	int tmp = 0;

	for (i=0;i<30;i++) {
		tmp = 0;

		for (j=0;j<30;j++) {
			tmp += V[j]* M[i][j];
		}
		Out[i] = tmp;
	}

	return tmp;

}

int main(void){
	int M[AMOUNT_OF_TEST][30][30];
	int V[AMOUNT_OF_TEST][30];
	int Out[AMOUNT_OF_TEST][30];
    
	for(int i = 0; i < AMOUNT_OF_TEST; ++i){
    	for(int y = 0; y < 30; ++y){
      		V[i][y] = rand()%100;
      		for(int x = 0; x < 30; ++x){
      			M[i][y][x] = rand()%100;
      		}
    	}
  	}

  	int i = 0;
	matvec(M[i], V[i], Out[i]);
}