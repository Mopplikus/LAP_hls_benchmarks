############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project if_loop_1
set_top if_loop_1
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/if_loop_1/src/if_loop_1.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/if_loop_1/src/if_loop_1.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/if_loop_1/src/if_loop_1_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
#source "./if_loop_1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
