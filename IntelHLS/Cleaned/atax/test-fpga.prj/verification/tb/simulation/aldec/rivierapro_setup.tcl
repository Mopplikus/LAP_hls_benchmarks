
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

# ACDS 21.1 850 win32 2023.06.13.01:54:35
# ----------------------------------------
# Auto-generated simulation script rivierapro_setup.tcl
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
# into a new file, e.g. named "aldec.do", and modify the text as directed.
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
# source $QSYS_SIMDIR/aldec/rivierapro_setup.tcl
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
# vlog -sv2k5 <your compilation options> <design and testbench files>
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
# run
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

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                       ./libraries/altera_ver           
vmap       altera_ver            ./libraries/altera_ver           
ensure_lib                       ./libraries/lpm_ver              
vmap       lpm_ver               ./libraries/lpm_ver              
ensure_lib                       ./libraries/sgate_ver            
vmap       sgate_ver             ./libraries/sgate_ver            
ensure_lib                       ./libraries/altera_mf_ver        
vmap       altera_mf_ver         ./libraries/altera_mf_ver        
ensure_lib                       ./libraries/altera_lnsim_ver     
vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver     
ensure_lib                       ./libraries/cyclonev_ver         
vmap       cyclonev_ver          ./libraries/cyclonev_ver         
ensure_lib                       ./libraries/cyclonev_hssi_ver    
vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver    
ensure_lib                       ./libraries/cyclonev_pcie_hip_ver
vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver
ensure_lib                                                                  ./libraries/altera_common_sv_packages                                       
vmap       altera_common_sv_packages                                        ./libraries/altera_common_sv_packages                                       
ensure_lib                                                                  ./libraries/atax_internal_inst                                              
vmap       atax_internal_inst                                               ./libraries/atax_internal_inst                                              
ensure_lib                                                                  ./libraries/irq_mapper                                                      
vmap       irq_mapper                                                       ./libraries/irq_mapper                                                      
ensure_lib                                                                  ./libraries/stream_source_dpi_bfm_atax_A_inst                               
vmap       stream_source_dpi_bfm_atax_A_inst                                ./libraries/stream_source_dpi_bfm_atax_A_inst                               
ensure_lib                                                                  ./libraries/split_component_start_inst                                      
vmap       split_component_start_inst                                       ./libraries/split_component_start_inst                                      
ensure_lib                                                                  ./libraries/mm_agent_dpi_bfm_atax_avmm_1_rw_inst                            
vmap       mm_agent_dpi_bfm_atax_avmm_1_rw_inst                             ./libraries/mm_agent_dpi_bfm_atax_avmm_1_rw_inst                            
ensure_lib                                                                  ./libraries/main_dpi_controller_inst                                        
vmap       main_dpi_controller_inst                                         ./libraries/main_dpi_controller_inst                                        
ensure_lib                                                                  ./libraries/concatenate_component_done_inst                                 
vmap       concatenate_component_done_inst                                  ./libraries/concatenate_component_done_inst                                 
ensure_lib                                                                  ./libraries/component_dpi_controller_atax_inst                              
vmap       component_dpi_controller_atax_inst                               ./libraries/component_dpi_controller_atax_inst                              
ensure_lib                                                                  ./libraries/clock_reset_inst                                                
vmap       clock_reset_inst                                                 ./libraries/clock_reset_inst                                                
ensure_lib                                                                  ./libraries/atax_inst                                                       
vmap       atax_inst                                                        ./libraries/atax_inst                                                       
ensure_lib                                                                  ./libraries/atax_component_dpi_controller_implicit_ready_conduit_fanout_inst
vmap       atax_component_dpi_controller_implicit_ready_conduit_fanout_inst ./libraries/atax_component_dpi_controller_implicit_ready_conduit_fanout_inst
ensure_lib                                                                  ./libraries/atax_component_dpi_controller_bind_conduit_fanout_inst          
vmap       atax_component_dpi_controller_bind_conduit_fanout_inst           ./libraries/atax_component_dpi_controller_bind_conduit_fanout_inst          

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  eval vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                    -work altera_ver           
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                             -work lpm_ver              
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                -work sgate_ver            
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                            -work altera_mf_ver        
  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                        -work altera_lnsim_ver     
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                       -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                  -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"              -work cyclonev_pcie_hip_ver
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                                                    -work altera_common_sv_packages                                       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                                                    -work altera_common_sv_packages                                       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                                             -work altera_common_sv_packages                                       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/dspba_library_ver.sv"                                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_pkg.sv"                                                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv"                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv"                                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_decoder.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_encoder.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv"                                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv"                                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv"                                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_mlab_fifo.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_parameter_assert.svh"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_pop.v"                                                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_push.v"                                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv"                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord.sv"                                                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv"                                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv"                                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv"                                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ffwdsrc.v"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ffwddst.sv"                                                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_top.v"                                                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_permute_address.v"                                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_pipelined.v"                                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_enabled.v"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_basic_coalescer.v"                                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_simple.v"                                                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_streaming.v"                                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_burst_host.v"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_non_aligned_write.v"                                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_read_cache.v"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_atomic.v"                                                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_prefetch_block.v"                                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_wide_wrapper.v"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v"                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_toggle_detect.v"                                                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_debug_mem.v"                                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv"                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv"                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv"                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_global_load_store.sv"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu.sv"                                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_burst_coalescer.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_coalescer_dynamic_timeout.sv"                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_data_aligner.sv"                                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_read_cache.sv"                                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_read_data_alignment.sv"                                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_unaligned_controller.sv"                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_word_coalescer.sv"                                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_write_data_alignment.sv"                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_write_kernel_downstream.sv"                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr.sv"                                                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv"                                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv"                                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_loop_profiler.sv"                                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_loop_limiter.v"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_function_wrapper.sv"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_function.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B2_sr_1.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B3_sr_0.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B4_sr_1.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B5_sr_1.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B6_sr_0.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B7_sr_0.sv"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B0_runOnce.sv"                                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B0_runOnce_branch.sv"                                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B0_runOnce_merge.sv"                                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B0_runOnce_stall_region.sv"                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B0_runOnce_merge_reg.sv"                                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B1_start.sv"                                                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B1_start_branch.sv"                                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B1_start_merge.sv"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B1_start_stall_region.sv"                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_iord_bl_call_unnamed_atax2_atax0.sv"                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_s_c0_in_wt_entry_s_c0_enter14_atax0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_atax0.sv"         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter14_atax0.sv"                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going41_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notexitcond42_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B1_start_merge_reg.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_source_p1025i32_unnamed_4_atax0.sv"               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_source_p1025i32_unnamed_5_atax0.sv"               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_source_p1025i32_unnamed_6_atax0.sv"               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_source_p1025s_clas0000osts_unnamed_3_atax0.sv"    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B2.sv"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B2_branch.sv"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B2_merge.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B2_stall_region.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B2_merge_reg.sv"                                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_s_c0_in_for_body_s_c0_enter8615_atax1.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_sfc_exit_s_c0_out_for_body_s_c0_exit88_atax0.sv"       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_logic_s_c0_in_for_body_s_c0_enter8615_atax0.sv"              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going37_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop10_0.sv"                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notexitcond38_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i6_fpga_indvars_iv10_push10_0.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_s_c1_in_for_body_s_c1_enter_atax6.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_sfc_exit_s_c1_out_for_body_s_c1_exit_atax0.sv"         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_logic_s_c1_in_for_body_s_c1_enter_atax0.sv"                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_0.sv"            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_i_076_pop11_0.sv"                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_i_076_push11_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_mem_unnamed_7_atax0.sv"                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_readdata_reg_unnamed_7_atax0.sv"                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi3_pop13_0.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi3_pop13_4_reg.sv"                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi_pop12_0.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi_pop12_3_reg.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B3.sv"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B3_branch.sv"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B3_merge.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B3_stall_region.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B4.sv"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B4_branch.sv"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B4_merge.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B4_stall_region.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B4_merge_reg.sv"                                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_s_c0_in_for_body3_s_c0_enter9116_atax1.sv"                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_sfc_exit_s_c0_out_for_body3_s_c0_exit96_atax0.sv"      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_logic_s_c0_in_for_body3_s_c0_enter9116_atax0.sv"             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_0.sv"            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_0.sv"        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going23_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_exitcond1250_pop22_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_0.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_0.sv"                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_notcmp3552_pop23_0.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i2_cleanups26_pop18_0.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i2_initerations21_pop17_0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_j_073_pop16_0.sv"                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_mul_add1448_pop21_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_0.sv"                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_0.sv"        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_exitcond1250_push22_0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_lastiniteration25_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_0.sv"               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_0.sv"                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notcmp3552_push23_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notexitcond33_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i2_cleanups26_push18_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i2_initerations21_push17_0.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_j_073_push16_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_mul_add1448_push21_0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_0.sv"                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_0.sv"      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_s_c1_in_for_body3_s_c1_enter102_atax6.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_sfc_exit_s_c1_out_for_body3_s_c1_exit106_atax0.sv"     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_sfc_logic_s_c1_in_for_body3_s_c1_enter102_atax0.sv"              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_t_074_pop15_0.sv"                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_t_074_push15_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_mem_unnamed_12_atax0.sv"                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_readdata_reg_unnamed_12_atax1.sv"                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_mem_unnamed_13_atax0.sv"                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_readdata_reg_unnamed_13_atax2.sv"                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B5.sv"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B5_branch.sv"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B5_merge.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B5_stall_region.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B5_merge_reg.sv"                                                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_0.sv"            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_mem_memdep_0.sv"                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_mem_unnamed_15_atax0.sv"                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_readdata_reg_unnamed_15_atax3.sv"                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_mem_unnamed_17_atax0.sv"                               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_readdata_reg_unnamed_17_atax4.sv"                                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going_0.sv"                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going_4_reg.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_exitcond1251_pop32_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_exitcond1251_pop32_50_reg.sv"                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi1_pop27_0.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi1_pop27_24_reg.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_0.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_14_reg.sv"               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_0.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_31_reg.sv"            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_notcmp3553_pop33_0.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i1_notcmp3553_pop33_52_reg.sv"                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i2_cleanups_pop29_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i2_cleanups_pop29_0_reg.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i2_initerations_pop28_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i2_initerations_pop28_5_reg.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_add758_pop37_0.sv"                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_add758_pop37_27_reg.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_j_175_pop26_0.sv"                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_j_175_pop26_10_reg.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_mul_add1449_pop31_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i32_mul_add1449_pop31_17_reg.sv"                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_0.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_37_reg.sv"               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_0.sv"            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_21_reg.sv"       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_0.sv"        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pop_p1025i32_mptr_bitca0000dex8846_pop30_48_reg.sv"    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_exitcond1251_push32_0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_exitcond1251_push32_51_reg.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_lastiniteration_0.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_lastiniteration_9_reg.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi1_push27_0.sv"                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi1_push27_34_reg.sv"                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_0.sv"                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_15_reg.sv"             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_0.sv"               -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_32_reg.sv"          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notcmp3553_push33_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notcmp3553_push33_53_reg.sv"                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notexitcond_0.sv"                              -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_notexitcond_41_reg.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i2_cleanups_push29_0.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i2_cleanups_push29_44_reg.sv"                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i2_initerations_push28_0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i2_initerations_push28_7_reg.sv"                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_add758_push37_0.sv"                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_add758_push37_28_reg.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_j_175_push26_0.sv"                            -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_j_175_push26_36_reg.sv"                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_mul_add1449_push31_0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i32_mul_add1449_push31_18_reg.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_0.sv"                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_46_reg.sv"             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_0.sv"          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_22_reg.sv"     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_0.sv"      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_p1025i32_mptr_bitc0000ex8846_push30_49_reg.sv"    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B6.sv"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B6_branch.sv"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B6_merge.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B6_stall_region.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_mem_memdep_2_0.sv"                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi3_push13_0.sv"                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi3_push13_2_reg.sv"                   -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi_push12_0.sv"                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_i1_memdep_phi_push12_0_reg.sv"                    -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B7.sv"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B7_branch.sv"                                                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_B7_merge.sv"                                                       -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_bb_B7_stall_region.sv"                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_iowr_bl_return_unnamed_atax18_atax0.sv"                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_token_i1_throttle_push_0.sv"                      -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_push_token_i1_throttle_push_1_reg.sv"                  -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going23_6_sr.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going23_6_valid_fifo.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going37_2_sr.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going37_2_valid_fifo.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going41_1_sr.sv"                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going41_1_valid_fifo.sv"                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_i_llvm_fpga_pipeline_keep_going_4_sr.sv"                           -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_loop_limiter_0.sv"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_loop_limiter_1.sv"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_loop_limiter_2.sv"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_avm_to_ic.v"                                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v"                                                 -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_arb_intf.v"                                                         -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_intf.v"                                                          -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v"                                                -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v"                                                     -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_arb2.v"                                                             -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_to_avm.v"                                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/atax_internal.v"                                                        -l altera_common_sv_packages -work atax_internal_inst                                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                       -l altera_common_sv_packages -work irq_mapper                                                      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                       -l altera_common_sv_packages -work stream_source_dpi_bfm_atax_A_inst                               
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                       -l altera_common_sv_packages -work split_component_start_inst                                      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                          -l altera_common_sv_packages -work mm_agent_dpi_bfm_atax_avmm_1_rw_inst                            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_mm_agent_dpi_bfm.sv"                                            -l altera_common_sv_packages -work mm_agent_dpi_bfm_atax_avmm_1_rw_inst                            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                         -l altera_common_sv_packages -work main_dpi_controller_inst                                        
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv"                                  -l altera_common_sv_packages -work concatenate_component_done_inst                                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                         -l altera_common_sv_packages -work component_dpi_controller_atax_inst                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                       -l altera_common_sv_packages -work component_dpi_controller_atax_inst                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                             -l altera_common_sv_packages -work component_dpi_controller_atax_inst                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                                    -l altera_common_sv_packages -work component_dpi_controller_atax_inst                              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                                 -l altera_common_sv_packages -work clock_reset_inst                                                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_atax_inst.v"                                                                                      -work atax_inst                                                       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_atax_component_dpi_controller_implicit_ready_conduit_fanout_inst.sv" -l altera_common_sv_packages -work atax_component_dpi_controller_implicit_ready_conduit_fanout_inst
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_atax_component_dpi_controller_bind_conduit_fanout_inst.sv"           -l altera_common_sv_packages -work atax_component_dpi_controller_bind_conduit_fanout_inst          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                 
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L altera_common_sv_packages -L atax_internal_inst -L irq_mapper -L stream_source_dpi_bfm_atax_A_inst -L split_component_start_inst -L mm_agent_dpi_bfm_atax_avmm_1_rw_inst -L main_dpi_controller_inst -L concatenate_component_done_inst -L component_dpi_controller_atax_inst -L clock_reset_inst -L atax_inst -L atax_component_dpi_controller_implicit_ready_conduit_fanout_inst -L atax_component_dpi_controller_bind_conduit_fanout_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L altera_common_sv_packages -L atax_internal_inst -L irq_mapper -L stream_source_dpi_bfm_atax_A_inst -L split_component_start_inst -L mm_agent_dpi_bfm_atax_avmm_1_rw_inst -L main_dpi_controller_inst -L concatenate_component_done_inst -L component_dpi_controller_atax_inst -L clock_reset_inst -L atax_inst -L atax_component_dpi_controller_implicit_ready_conduit_fanout_inst -L atax_component_dpi_controller_bind_conduit_fanout_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
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
  echo "elab_debug                                        -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -dbg -O2"
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
