# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/gaussian/src/gaussian.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/gaussian/src/gaussian.cpp"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/gaussian/src/gaussian.h" 1
typedef int in_int_t;
typedef int inout_int_t;

void gaussian (in_int_t c[20], inout_int_t A[20][20]);
# 2 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/gaussian/src/gaussian.cpp" 2



void gaussian (in_int_t c[20], inout_int_t A[20][20]) {

    for(int j=1; j<=18; j++)


        { for(int i=j+1; i<=18;i++)

            {

                for(int k=1; k<=19; k++)

                    {

                    A[i][k]=A[i][k]-c[j]*A[j][k];

                    }


            }

        }
    }
