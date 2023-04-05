############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matvec
set_top matvec
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/matvec/matvec.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/matvec/matvec.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/matvec/matvec_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xck24-ubva530-2LV-c}
create_clock -period 5 -name default
source "./matvec/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
