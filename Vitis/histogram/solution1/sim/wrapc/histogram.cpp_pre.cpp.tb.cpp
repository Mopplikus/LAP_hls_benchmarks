// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
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
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_histogram_ir(int *, int *, int *, int);
#ifdef __cplusplus
extern "C"
#endif
int histogram_hw_stub(int *feature, int *weight, int *hist, int n){
int _ret = histogram(feature, weight, hist, n);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_histogram_sw(int *feature, int *weight, int *hist, int n){
int _ret = apatb_histogram_ir(feature, weight, hist, n);
return _ret;
}
#endif
# 20 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/histogram/src/histogram.cpp"

