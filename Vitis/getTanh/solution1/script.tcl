############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project getTanh
set_top getTanh
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/getTanh/getTanh.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/getTanh/getTanh.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/getTanh/getTanh_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xck24-ubva530-2LV-c}
create_clock -period 5 -name default
config_export -flow impl -format ip_catalog -rtl verilog -vivado_clock 5
source "./getTanh/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -flow impl -rtl verilog -format ip_catalog
