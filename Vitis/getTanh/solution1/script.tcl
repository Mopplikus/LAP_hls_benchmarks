############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project getTanh
set_top getTanh
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/getTanh/src/getTanh.h
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/getTanh/src/getTanh.cpp
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/getTanh/src/getTanh_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
source "./getTanh/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
