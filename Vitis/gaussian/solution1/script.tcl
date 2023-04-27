############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gaussian
set_top gaussian
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/gaussian/src/gaussian.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/gaussian/src/gaussian.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/gaussian/src/gaussian_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
#source "./gaussian/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
