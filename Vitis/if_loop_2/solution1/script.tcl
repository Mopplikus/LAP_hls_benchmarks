############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project if_loop_2
set_top if_loop_2
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xck24-ubva530-2LV-c}
create_clock -period 5 -name default
#source "./if_loop_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
