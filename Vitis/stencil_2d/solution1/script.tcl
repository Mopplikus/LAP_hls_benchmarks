############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project stencil_2d
set_top stencil_2d
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d.cpp
add_files ../../../../Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d.h
add_files -tb ../../../../Documents/LAP_hls_benchmarks/Vitis/stencil2d/src/stencil_2d_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
#source "./stencil_2d/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
