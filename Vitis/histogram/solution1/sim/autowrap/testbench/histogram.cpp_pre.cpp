# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/histogram/src/histogram.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/histogram/src/histogram.cpp"





# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/histogram/src/histogram.h" 1
typedef int in_int_t;
typedef int in_float_t;
typedef int inout_float_t;
typedef int inout_int_t;



int histogram(in_int_t feature[1000], in_float_t weight[1000], inout_float_t hist[1000], in_int_t n);
# 7 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/histogram/src/histogram.cpp" 2



int histogram(in_int_t feature[1000], in_int_t weight[1000], inout_int_t hist[1000], in_int_t n)
{
 int i;
 for (i=0; i<n; ++i) {
    int m = feature[i];
    int wt = weight[i];
    int x = hist[m];
    hist[m] = x + wt;
  }
  return i;
}
