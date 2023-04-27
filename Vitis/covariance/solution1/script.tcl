############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project covariance
set_top covariance
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/covariance/src/covariance.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/covariance/src/covariance.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/covariance/src/covariance_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
#source "./covariance/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
