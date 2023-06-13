
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

# ACDS 21.1 850 win32 2023.06.13.02:27:00

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
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
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
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
# ACDS 21.1 850 win32 2023.06.13.02:27:00
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="tb"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="F:/quartus/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/getTanh_internal_inst/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/stream_source_dpi_bfm_getTanh_A_inst/
mkdir -p ./libraries/split_component_start_inst/
mkdir -p ./libraries/mm_agent_dpi_bfm_getTanh_avmm_1_rw_inst/
mkdir -p ./libraries/main_dpi_controller_inst/
mkdir -p ./libraries/getTanh_inst/
mkdir -p ./libraries/getTanh_component_dpi_controller_implicit_ready_conduit_fanout_inst/
mkdir -p ./libraries/getTanh_component_dpi_controller_bind_conduit_fanout_inst/
mkdir -p ./libraries/concatenate_component_done_inst/
mkdir -p ./libraries/component_dpi_controller_getTanh_inst/
mkdir -p ./libraries/clock_reset_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                          -work altera_common_sv_packages                                           -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                          -work altera_common_sv_packages                                           -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                   -work altera_common_sv_packages                                           -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dspba_library_ver.sv"                                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_pkg.sv"                                                            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv"                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv"                                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_decoder.sv"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_encoder.sv"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv"                                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv"                                               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv"                                              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mlab_fifo.sv"                                                          -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_parameter_assert.svh"                                                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pop.v"                                                                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_push.v"                                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv"                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord.sv"                                                               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv"                                                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv"                                                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv"                                            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwdsrc.v"                                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwddst.sv"                                                            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr.sv"                                                               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv"                                                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv"                                                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_top.v"                                                                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_permute_address.v"                                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_pipelined.v"                                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_enabled.v"                                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_basic_coalescer.v"                                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_simple.v"                                                              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming.v"                                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_host.v"                                                          -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v"                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_non_aligned_write.v"                                                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_read_cache.v"                                                          -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_atomic.v"                                                              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_prefetch_block.v"                                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_wide_wrapper.v"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v"                                                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v"                                         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_toggle_detect.v"                                                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_debug_mem.v"                                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv"                                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv"                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv"                                         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_global_load_store.sv"                                                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu.sv"                                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_burst_coalescer.sv"                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_coalescer_dynamic_timeout.sv"                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_data_aligner.sv"                                                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_read_cache.sv"                                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_read_data_alignment.sv"                                            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_unaligned_controller.sv"                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_word_coalescer.sv"                                                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_write_data_alignment.sv"                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_write_kernel_downstream.sv"                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_loop_profiler.sv"                                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_loop_limiter.v"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                          -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_function_wrapper.sv"                                               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_function.sv"                                                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B2_sr_0.sv"                                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B3_sr_1.sv"                                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B0_runOnce.sv"                                                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B0_runOnce_stall_region.sv"                                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B0_runOnce_merge_reg.sv"                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv"                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0_reg.sv"                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv"                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh1_reg.sv"              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B0_runOnce_branch.sv"                                              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B0_runOnce_merge.sv"                                               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B1_start.sv"                                                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B1_start_stall_region.sv"                                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0.sv"               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv"       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh0.sv"                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i1_notexitcond7_gettanh0.sv"                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B1_start_merge_reg.sv"                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh3_gettanh0.sv"       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh4_gettanh0.sv"       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv"              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_reg.sv"          -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B1_start_branch.sv"                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B1_start_merge.sv"                                                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B2.sv"                                                          -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B2_stall_region.sv"                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh5_gettanh0.sv"             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_ffwd_dest_i32_acl_3_gettanh0.sv"                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv"               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh2_reg.sv"           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B2_branch.sv"                                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B2_merge.sv"                                                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B3.sv"                                                          -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_bb_B3_stall_region.sv"                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B3_merge_reg.sv"                                                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast37412_gettanh0.sv"       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast39431_gettanh0.sv"       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh0.sv"         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv"                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_mem_unnamed_gettanh7_gettanh0.sv"                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_readdata_reg_unnamed_7_getTanh0.sv"                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_mem_unnamed_gettanh9_gettanh0.sv"                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_readdata_reg_unnamed_9_getTanh1.sv"                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv"                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_reg.sv"                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0.sv"              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_reg.sv"         -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0.sv"                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_reg.sv"               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh0.sv"                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_reg.sv"                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0.sv"                     -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_reg.sv"                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0.sv"                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_reg.sv"              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0.sv"            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_reg.sv"       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0.sv"                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh9_reg.sv"               -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0.sv"                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_reg.sv"             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv"                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh36_reg.sv"                  -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh0.sv"                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh31_reg.sv"                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0.sv"                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_reg.sv"              -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0.sv"                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh7_reg.sv"            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B3_branch.sv"                                                      -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_B3_merge.sv"                                                       -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_sr.sv"                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_valid_fifo.sv"           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_sr.sv"                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_loop_limiter_0.sv"                                                 -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_avm_to_ic.v"                                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v"                                                    -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb_intf.v"                                                            -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_intf.v"                                                             -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v"                                                   -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb2.v"                                                                -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_to_avm.v"                                                           -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/getTanh_internal.v"                                                        -work getTanh_internal_inst                                               -cdslib ./cds_libs/getTanh_internal_inst.cds.lib                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                          -work irq_mapper                                                          -cdslib ./cds_libs/irq_mapper.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                          -work stream_source_dpi_bfm_getTanh_A_inst                                -cdslib ./cds_libs/stream_source_dpi_bfm_getTanh_A_inst.cds.lib                               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                          -work split_component_start_inst                                          -cdslib ./cds_libs/split_component_start_inst.cds.lib                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                             -work mm_agent_dpi_bfm_getTanh_avmm_1_rw_inst                             -cdslib ./cds_libs/mm_agent_dpi_bfm_getTanh_avmm_1_rw_inst.cds.lib                            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_mm_agent_dpi_bfm.sv"                                               -work mm_agent_dpi_bfm_getTanh_avmm_1_rw_inst                             -cdslib ./cds_libs/mm_agent_dpi_bfm_getTanh_avmm_1_rw_inst.cds.lib                            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                            -work main_dpi_controller_inst                                            -cdslib ./cds_libs/main_dpi_controller_inst.cds.lib                                           
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_getTanh_inst.v"                                                         -work getTanh_inst                                                        -cdslib ./cds_libs/getTanh_inst.cds.lib                                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_getTanh_component_dpi_controller_implicit_ready_conduit_fanout_inst.sv" -work getTanh_component_dpi_controller_implicit_ready_conduit_fanout_inst -cdslib ./cds_libs/getTanh_component_dpi_controller_implicit_ready_conduit_fanout_inst.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_getTanh_component_dpi_controller_bind_conduit_fanout_inst.sv"           -work getTanh_component_dpi_controller_bind_conduit_fanout_inst           -cdslib ./cds_libs/getTanh_component_dpi_controller_bind_conduit_fanout_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv"                                     -work concatenate_component_done_inst                                     -cdslib ./cds_libs/concatenate_component_done_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                            -work component_dpi_controller_getTanh_inst                               -cdslib ./cds_libs/component_dpi_controller_getTanh_inst.cds.lib                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                          -work component_dpi_controller_getTanh_inst                               -cdslib ./cds_libs/component_dpi_controller_getTanh_inst.cds.lib                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                                -work component_dpi_controller_getTanh_inst                               -cdslib ./cds_libs/component_dpi_controller_getTanh_inst.cds.lib                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                                       -work component_dpi_controller_getTanh_inst                               -cdslib ./cds_libs/component_dpi_controller_getTanh_inst.cds.lib                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                                    -work clock_reset_inst                                                    -cdslib ./cds_libs/clock_reset_inst.cds.lib                                                   
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                                                                                         
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
