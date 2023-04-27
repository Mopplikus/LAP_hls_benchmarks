############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project 3mm
set_top kernel_3mm
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
#source "./3mm/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
