############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gaussian
set_top gaussian
add_files ../../../../Documents/LAP/Vitis/gaussian/gaussian.cpp
add_files ../../../../Documents/LAP/Vitis/gaussian/gaussian.h
add_files -tb ../../../../Documents/LAP/Vitis/gaussian/gaussian_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xck24-ubva530-2LV-c}
create_clock -period 5 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 5
#source "./gaussian/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -flow impl -rtl verilog -format ip_catalog
