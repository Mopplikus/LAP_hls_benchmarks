############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project triangular
set_top triangular
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/triangular/src/triangular.h
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/triangular/src/triangular.cpp
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/triangular/src/triangular_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7k160t-fbg484-1}
create_clock -period 5 -name default
source "./triangular/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
