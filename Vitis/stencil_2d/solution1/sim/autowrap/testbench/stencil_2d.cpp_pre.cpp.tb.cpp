// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d.cpp"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d.h" 1
typedef int in_int_t;
typedef int out_int_t;

int stencil_2d (in_int_t orig[900], out_int_t sol[900], in_int_t filter[10]);
# 2 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d.cpp" 2

int stencil_2d (in_int_t orig[900], out_int_t sol[900], in_int_t filter[10]){
    int temp = 0;
int mul = 0;

for (int r=0; r < 28; r++) {
    for (int c=0; c< 28; c++) {
         temp = 0;
         for (int k1=0;k1<3;k1++){
            for (int k2=0;k2<3;k2++){
                mul = filter[k1*3 + k2] * orig[(r+k1)*30 + c+k2];
                temp += mul;
            }
        }
        sol[(r*30) + c] = temp;

    }
}

return temp;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_stencil_2d_ir(int *, int *, int *);
#ifdef __cplusplus
extern "C"
#endif
int stencil_2d_hw_stub(int *orig, int *sol, int *filter){
int _ret = stencil_2d(orig, sol, filter);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_stencil_2d_sw(int *orig, int *sol, int *filter){
int _ret = apatb_stencil_2d_ir(orig, sol, filter);
return _ret;
}
#endif
# 22 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d.cpp"

