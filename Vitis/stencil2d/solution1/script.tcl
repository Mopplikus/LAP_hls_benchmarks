############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project stencil2d
set_top stencil_2d
add_files ../../../../Documents/LAP/Vitis/stencil2d/stencil2d.cpp
add_files ../../../../Documents/LAP/Vitis/stencil2d/stencil2d.h
add_files -tb ../../../../Documents/LAP/Vitis/stencil2d/stencil2d_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xck24-ubva530-2LV-c}
create_clock -period 5 -name default
config_export -flow impl -format ip_catalog -rtl vhdl -vivado_clock 5
set_clock_uncertainty 0
#source "./stencil2d/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog
