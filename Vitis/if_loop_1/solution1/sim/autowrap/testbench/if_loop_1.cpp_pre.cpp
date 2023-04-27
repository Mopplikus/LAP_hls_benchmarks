# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_1/src/if_loop_1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_1/src/if_loop_1.cpp"



# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_1/src/if_loop_1.h" 1
typedef int in_int_t;

int if_loop_1 (in_int_t a[100], in_int_t n);
# 5 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_1/src/if_loop_1.cpp" 2

int if_loop_1 (in_int_t a[100], in_int_t n) {
 int i;
 int tmp;
 int c = 5;
 int sum = 0;

 for (i=0; i<n; i++) {
  tmp = a[i]*c;

  if (tmp > 10) {

   sum = tmp + sum;
  }

 }

return sum;
}
