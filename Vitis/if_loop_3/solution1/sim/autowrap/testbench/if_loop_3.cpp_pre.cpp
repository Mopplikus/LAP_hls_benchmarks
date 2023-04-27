# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.cpp"




# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.h" 1
typedef int in_int_t;

int if_loop_3 (in_int_t a[100], in_int_t b[100], in_int_t n);
# 6 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.cpp" 2

int if_loop_3 (in_int_t a[100], in_int_t b[100], in_int_t n) {
 int i;
  int dist;
 int sum = 1000;

 for (i=0; i<n; i++) {
  dist = a[i] - b[i];

  if (dist >= 0){

  sum = (sum /dist);

    }

 }
return sum;
}
