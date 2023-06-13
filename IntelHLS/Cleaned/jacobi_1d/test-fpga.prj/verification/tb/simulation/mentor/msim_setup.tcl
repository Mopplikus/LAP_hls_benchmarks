
# (C) 2001-2023 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 21.1 850 win32 2023.06.13.02:55:15

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "tb"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "F:/quartus/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*Intel*FPGA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
}
ensure_lib                                                                       ./libraries/altera_common_sv_packages/                                            
vmap       altera_common_sv_packages                                             ./libraries/altera_common_sv_packages/                                            
ensure_lib                                                                       ./libraries/jacobi_1d_internal_inst/                                              
vmap       jacobi_1d_internal_inst                                               ./libraries/jacobi_1d_internal_inst/                                              
ensure_lib                                                                       ./libraries/irq_mapper/                                                           
vmap       irq_mapper                                                            ./libraries/irq_mapper/                                                           
ensure_lib                                                                       ./libraries/stream_source_dpi_bfm_jacobi_1d_A_1_inst/                             
vmap       stream_source_dpi_bfm_jacobi_1d_A_1_inst                              ./libraries/stream_source_dpi_bfm_jacobi_1d_A_1_inst/                             
ensure_lib                                                                       ./libraries/split_component_start_inst/                                           
vmap       split_component_start_inst                                            ./libraries/split_component_start_inst/                                           
ensure_lib                                                                       ./libraries/mm_agent_dpi_bfm_jacobi_1d_avmm_1_rw_inst/                            
vmap       mm_agent_dpi_bfm_jacobi_1d_avmm_1_rw_inst                             ./libraries/mm_agent_dpi_bfm_jacobi_1d_avmm_1_rw_inst/                            
ensure_lib                                                                       ./libraries/main_dpi_controller_inst/                                             
vmap       main_dpi_controller_inst                                              ./libraries/main_dpi_controller_inst/                                             
ensure_lib                                                                       ./libraries/jacobi_1d_inst/                                                       
vmap       jacobi_1d_inst                                                        ./libraries/jacobi_1d_inst/                                                       
ensure_lib                                                                       ./libraries/jacobi_1d_component_dpi_controller_implicit_ready_conduit_fanout_inst/
vmap       jacobi_1d_component_dpi_controller_implicit_ready_conduit_fanout_inst ./libraries/jacobi_1d_component_dpi_controller_implicit_ready_conduit_fanout_inst/
ensure_lib                                                                       ./libraries/jacobi_1d_component_dpi_controller_bind_conduit_fanout_inst/          
vmap       jacobi_1d_component_dpi_controller_bind_conduit_fanout_inst           ./libraries/jacobi_1d_component_dpi_controller_bind_conduit_fanout_inst/          
ensure_lib                                                                       ./libraries/concatenate_component_done_inst/                                      
vmap       concatenate_component_done_inst                                       ./libraries/concatenate_component_done_inst/                                      
ensure_lib                                                                       ./libraries/component_dpi_controller_jacobi_1d_inst/                              
vmap       component_dpi_controller_jacobi_1d_inst                               ./libraries/component_dpi_controller_jacobi_1d_inst/                              
ensure_lib                                                                       ./libraries/clock_reset_inst/                                                     
vmap       clock_reset_inst                                                      ./libraries/clock_reset_inst/                                                     

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*Intel*FPGA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                        -work cyclonev_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                   -work cyclonev_hssi_ver    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"               -work cyclonev_pcie_hip_ver
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                                                         -work altera_common_sv_packages                                            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                                                         -work altera_common_sv_packages                                            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                                                  -work altera_common_sv_packages                                            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dspba_library_ver.sv"                                                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_pkg.sv"                                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv"                                               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_decoder.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_encoder.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv"                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv"                                                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mlab_fifo.sv"                                                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_parameter_assert.svh"                                                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pop.v"                                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_push.v"                                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv"                                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord.sv"                                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv"                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv"                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwdsrc.v"                                                               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwddst.sv"                                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_top.v"                                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_permute_address.v"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_pipelined.v"                                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_enabled.v"                                                               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_basic_coalescer.v"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_simple.v"                                                                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming.v"                                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_host.v"                                                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v"                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_non_aligned_write.v"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_read_cache.v"                                                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_atomic.v"                                                                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_prefetch_block.v"                                                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_wide_wrapper.v"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v"                                                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v"                                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_toggle_detect.v"                                                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_debug_mem.v"                                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv"                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv"                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv"                                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_global_load_store.sv"                                                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu.sv"                                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_burst_coalescer.sv"                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_coalescer_dynamic_timeout.sv"                                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_data_aligner.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_read_cache.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_read_data_alignment.sv"                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_unaligned_controller.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_word_coalescer.sv"                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_write_data_alignment.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_write_kernel_downstream.sv"                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr.sv"                                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv"                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_loop_profiler.sv"                                                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_loop_limiter.v"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_function_wrapper.sv"                                               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_function.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B2_sr_1.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B3_sr_0.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B4_sr_1.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B5_sr_1.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B6_sr_0.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B7_sr_0.sv"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B0_runOnce.sv"                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B0_runOnce_stall_region.sv"                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B0_runOnce_merge_reg.sv"                                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B0_runOnce_branch.sv"                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B0_runOnce_merge.sv"                                               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B1_start.sv"                                                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B1_start_stall_region.sv"                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_iord_bl_call_unnamed_jacobi_1d2_jacobi_1d0.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_sfc_s_c0_in_wt_entry_s_c0_enter9_jacobi_1d0.sv"                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_jacobi_1d0.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter9_jacobi_1d0.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going45_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notexitcond46_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_ffwd_source_p1025i32_unnamed_5_jacobi_1d0.sv"          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_ffwd_source_p1025s0000unnamed_3_jacobi_1d0.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_ffwd_source_p1025s0000unnamed_4_jacobi_1d0.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B1_start_merge_reg.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B1_start_branch.sv"                                                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B1_start_merge.sv"                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B2.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B2_stall_region.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_sfc_s_c0_in_for_cond1_prehea0000enter7610_jacobi_1d1.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit78_jacobi_1d0.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_sfc_logic_s_c0_in_for_cond1_0000enter7610_jacobi_1d0.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going41_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_0.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notexitcond42_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_0.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B2_merge_reg.sv"                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi1_pop11_0.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi1_pop11_3_reg.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi4_pop12_0.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi4_pop12_4_reg.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B2_branch.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B2_merge.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B3.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B3_stall_region.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi1_push11_0.sv"                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi1_push11_0_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B3_branch.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B3_merge.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B4.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B4_stall_region.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B4_merge_reg.sv"                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_ffwd_dest_p1025s_c0000c_mm_hosts_a_17820_0.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_ffwd_dest_p1025s_c0000ihc_mm_hosts_b8021_0.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_mem_memdep_0.sv"                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_mem_unnamed_11_jacobi_1d0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_readdata_reg_unnamed_11_jacobi_1d2.sv"                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_mem_unnamed_7_jacobi_1d0.sv"                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_readdata_reg_unnamed_7_jacobi_1d0.sv"                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_mem_unnamed_9_jacobi_1d0.sv"                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_readdata_reg_unnamed_9_jacobi_1d1.sv"                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going27_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going27_4_reg.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_exitcond1749_pop19_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_exitcond1749_pop19_55_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_0.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_18_reg.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_0.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_39_reg.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_0.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_20_reg.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi_pop16_0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi_pop16_23_reg.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_notcmp3951_pop20_0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_notcmp3951_pop20_57_reg.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_cleanups30_pop18_0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_cleanups30_pop18_0_reg.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_initerations25_pop17_0.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_initerations25_pop17_5_reg.sv"                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i32_i_059_pop15_0.sv"                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i32_i_059_pop15_14_reg.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_0.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_44_reg.sv"                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_exitcond1749_push19_0.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_exitcond1749_push19_56_reg.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_lastiniteration29_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_lastiniteration29_9_reg.sv"                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_0.sv"               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_19_reg.sv"          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_0.sv"               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_40_reg.sv"          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_0.sv"               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_21_reg.sv"          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi_push16_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi_push16_43_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notcmp3951_push20_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notcmp3951_push20_58_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notexitcond37_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notexitcond37_48_reg.sv"                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_cleanups30_push18_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_cleanups30_push18_51_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_initerations25_push17_0.sv"                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_initerations25_push17_7_reg.sv"                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i32_i_059_push15_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i32_i_059_push15_30_reg.sv"                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_0.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_53_reg.sv"              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B4_branch.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B4_merge.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B5.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B5_stall_region.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B5_merge_reg.sv"                                                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_0.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_mem_memdep_5_0.sv"                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_mem_unnamed_13_jacobi_1d0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_readdata_reg_unnamed_13_jacobi_1d3.sv"                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going_0.sv"                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going_4_reg.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_exitcond1750_pop29_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_exitcond1750_pop29_38_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi10_pop26_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi10_pop26_15_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_0.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_16_reg.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_notcmp3952_pop30_0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i1_notcmp3952_pop30_40_reg.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_cleanups_pop28_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_cleanups_pop28_0_reg.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_initerations_pop27_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i2_initerations_pop27_5_reg.sv"                    -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i32_j_060_pop25_0.sv"                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i32_j_060_pop25_10_reg.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_0.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_27_reg.sv"              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_0.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pop_p1025i32_mptr_0000t707657_pop32_12_reg.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_exitcond1750_push29_0.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_exitcond1750_push29_39_reg.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_lastiniteration_0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_lastiniteration_9_reg.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi10_push26_0.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi10_push26_24_reg.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_0.sv"               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_17_reg.sv"          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notcmp3952_push30_0.sv"                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notcmp3952_push30_41_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notexitcond_0.sv"                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_notexitcond_31_reg.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_cleanups_push28_0.sv"                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_cleanups_push28_34_reg.sv"                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_initerations_push27_0.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i2_initerations_push27_7_reg.sv"                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i32_j_060_push25_0.sv"                            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i32_j_060_push25_26_reg.sv"                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_0.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_36_reg.sv"            -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_0.sv"          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_p1025i32_mptr0000707657_push32_13_reg.sv"         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B5_branch.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B5_merge.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B6.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B6_stall_region.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi4_push12_0.sv"                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_i1_memdep_phi4_push12_0_reg.sv"                   -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B6_branch.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B6_merge.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B7.sv"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_bb_B7_stall_region.sv"                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_iowr_bl_return_unnamed_jacobi_1d14_jacobi_1d0.sv"                -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_token_i1_throttle_push_0.sv"                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_push_token_i1_throttle_push_1_reg.sv"                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B7_branch.sv"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_B7_merge.sv"                                                       -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going27_4_sr.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going41_2_sr.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going41_2_valid_fifo.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going45_1_sr.sv"                         -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going45_1_valid_fifo.sv"                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_i_llvm_fpga_pipeline_keep_going_4_sr.sv"                           -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_loop_limiter_0.sv"                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_loop_limiter_1.sv"                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_loop_limiter_2.sv"                                                 -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_avm_to_ic.v"                                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v"                                                      -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb_intf.v"                                                              -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_intf.v"                                                               -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v"                                                     -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v"                                                          -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb2.v"                                                                  -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_to_avm.v"                                                             -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/jacobi_1d_internal.v"                                                        -L altera_common_sv_packages -work jacobi_1d_internal_inst                                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                            -L altera_common_sv_packages -work irq_mapper                                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                            -L altera_common_sv_packages -work stream_source_dpi_bfm_jacobi_1d_A_1_inst                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                            -L altera_common_sv_packages -work split_component_start_inst                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                               -L altera_common_sv_packages -work mm_agent_dpi_bfm_jacobi_1d_avmm_1_rw_inst                            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_mm_agent_dpi_bfm.sv"                                                 -L altera_common_sv_packages -work mm_agent_dpi_bfm_jacobi_1d_avmm_1_rw_inst                            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                              -L altera_common_sv_packages -work main_dpi_controller_inst                                             
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_jacobi_1d_inst.v"                                                                                      -work jacobi_1d_inst                                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_jacobi_1d_component_dpi_controller_implicit_ready_conduit_fanout_inst.sv" -L altera_common_sv_packages -work jacobi_1d_component_dpi_controller_implicit_ready_conduit_fanout_inst
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_jacobi_1d_component_dpi_controller_bind_conduit_fanout_inst.sv"           -L altera_common_sv_packages -work jacobi_1d_component_dpi_controller_bind_conduit_fanout_inst          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv"                                       -L altera_common_sv_packages -work concatenate_component_done_inst                                      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                              -L altera_common_sv_packages -work component_dpi_controller_jacobi_1d_inst                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                            -L altera_common_sv_packages -work component_dpi_controller_jacobi_1d_inst                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                                  -L altera_common_sv_packages -work component_dpi_controller_jacobi_1d_inst                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                                         -L altera_common_sv_packages -work component_dpi_controller_jacobi_1d_inst                              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                                      -L altera_common_sv_packages -work clock_reset_inst                                                     
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                           
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L jacobi_1d_internal_inst -L irq_mapper -L stream_source_dpi_bfm_jacobi_1d_A_1_inst -L split_component_start_inst -L mm_agent_dpi_bfm_jacobi_1d_avmm_1_rw_inst -L main_dpi_controller_inst -L jacobi_1d_inst -L jacobi_1d_component_dpi_controller_implicit_ready_conduit_fanout_inst -L jacobi_1d_component_dpi_controller_bind_conduit_fanout_inst -L concatenate_component_done_inst -L component_dpi_controller_jacobi_1d_inst -L clock_reset_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -voptargs=+acc option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -voptargs=+acc -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L jacobi_1d_internal_inst -L irq_mapper -L stream_source_dpi_bfm_jacobi_1d_A_1_inst -L split_component_start_inst -L mm_agent_dpi_bfm_jacobi_1d_avmm_1_rw_inst -L main_dpi_controller_inst -L jacobi_1d_inst -L jacobi_1d_component_dpi_controller_implicit_ready_conduit_fanout_inst -L jacobi_1d_component_dpi_controller_bind_conduit_fanout_inst -L concatenate_component_done_inst -L component_dpi_controller_jacobi_1d_inst -L clock_reset_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -voptargs=+acc
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with -voptargs=+acc option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -voptargs=+acc"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Platform Designer base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
}
file_copy
h
