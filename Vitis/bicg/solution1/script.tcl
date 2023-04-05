############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project bicg
set_top bicg
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/bicg/bicg.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/bicg/bicg.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/bicg/bicg_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xck24-ubva530-2LV-c}
create_clock -period 5 -name default
source "./bicg/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
