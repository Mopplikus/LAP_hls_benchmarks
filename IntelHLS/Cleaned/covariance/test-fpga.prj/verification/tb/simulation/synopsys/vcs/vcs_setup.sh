
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

# ACDS 21.1 850 win32 2023.06.13.02:08:30

# ----------------------------------------
# vcs - auto-generated simulation script

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
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
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
# ACDS 21.1 850 win32 2023.06.13.02:08:30
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="F:/quartus/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
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
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  $QSYS_SIMDIR/submodules/verbosity_pkg.sv \
  $QSYS_SIMDIR/submodules/avalon_mm_pkg.sv \
  $QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv \
  $QSYS_SIMDIR/submodules/dspba_library_ver.sv \
  $QSYS_SIMDIR/submodules/acl_ecc_pkg.sv \
  $QSYS_SIMDIR/submodules/acl_data_fifo.v \
  $QSYS_SIMDIR/submodules/acl_fifo.v \
  $QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv \
  $QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv \
  $QSYS_SIMDIR/submodules/acl_ecc_decoder.sv \
  $QSYS_SIMDIR/submodules/acl_ecc_encoder.sv \
  $QSYS_SIMDIR/submodules/acl_ll_fifo.v \
  $QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v \
  $QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v \
  $QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v \
  $QSYS_SIMDIR/submodules/acl_staging_reg.v \
  $QSYS_SIMDIR/submodules/hld_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv \
  $QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv \
  $QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv \
  $QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v \
  $QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv \
  $QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv \
  $QSYS_SIMDIR/submodules/acl_reset_handler.sv \
  $QSYS_SIMDIR/submodules/acl_lfsr.sv \
  $QSYS_SIMDIR/submodules/acl_mlab_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_parameter_assert.svh \
  $QSYS_SIMDIR/submodules/acl_pop.v \
  $QSYS_SIMDIR/submodules/acl_push.v \
  $QSYS_SIMDIR/submodules/acl_token_fifo_counter.v \
  $QSYS_SIMDIR/submodules/acl_pipeline.v \
  $QSYS_SIMDIR/submodules/acl_dspba_buffer.v \
  $QSYS_SIMDIR/submodules/acl_enable_sink.v \
  $QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv \
  $QSYS_SIMDIR/submodules/hld_iord.sv \
  $QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv \
  $QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv \
  $QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv \
  $QSYS_SIMDIR/submodules/acl_ffwdsrc.v \
  $QSYS_SIMDIR/submodules/acl_ffwddst.sv \
  $QSYS_SIMDIR/submodules/acl_work_group_limiter.v \
  $QSYS_SIMDIR/submodules/acl_work_group_limiter_dspba.v \
  $QSYS_SIMDIR/submodules/acl_full_detector.v \
  $QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_decr.sv \
  $QSYS_SIMDIR/submodules/lsu_top.v \
  $QSYS_SIMDIR/submodules/lsu_permute_address.v \
  $QSYS_SIMDIR/submodules/lsu_pipelined.v \
  $QSYS_SIMDIR/submodules/lsu_enabled.v \
  $QSYS_SIMDIR/submodules/lsu_basic_coalescer.v \
  $QSYS_SIMDIR/submodules/lsu_simple.v \
  $QSYS_SIMDIR/submodules/lsu_streaming.v \
  $QSYS_SIMDIR/submodules/lsu_burst_host.v \
  $QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v \
  $QSYS_SIMDIR/submodules/lsu_non_aligned_write.v \
  $QSYS_SIMDIR/submodules/lsu_read_cache.v \
  $QSYS_SIMDIR/submodules/lsu_atomic.v \
  $QSYS_SIMDIR/submodules/lsu_prefetch_block.v \
  $QSYS_SIMDIR/submodules/lsu_wide_wrapper.v \
  $QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v \
  $QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v \
  $QSYS_SIMDIR/submodules/acl_toggle_detect.v \
  $QSYS_SIMDIR/submodules/acl_debug_mem.v \
  $QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv \
  $QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv \
  $QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv \
  $QSYS_SIMDIR/submodules/hld_global_load_store.sv \
  $QSYS_SIMDIR/submodules/hld_lsu.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_burst_coalescer.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_coalescer_dynamic_timeout.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_data_aligner.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_read_cache.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_read_data_alignment.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_unaligned_controller.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_word_coalescer.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_write_data_alignment.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_write_kernel_downstream.sv \
  $QSYS_SIMDIR/submodules/hld_iowr.sv \
  $QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv \
  $QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv \
  $QSYS_SIMDIR/submodules/hld_loop_exit_reorder_counter.sv \
  $QSYS_SIMDIR/submodules/hld_loop_profiler.sv \
  $QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv \
  $QSYS_SIMDIR/submodules/acl_loop_limiter.v \
  $QSYS_SIMDIR/submodules/acl_reset_wire.v \
  $QSYS_SIMDIR/submodules/covariance_function_wrapper.sv \
  $QSYS_SIMDIR/submodules/covariance_function.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B10_sr_1.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B11_sr_0.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B12_sr_0.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B13_sr_1.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B1_start.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B1_start_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B1_start_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_iord_bl_call_unnamed_covariance1_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_source_s_str0000ariance2_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_wt_entry_s_c0_enter28_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_c0_exit_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter28_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going75_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notexitcond76_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c1_in_wt_entry_s_c1_enter_covariance5.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c1_out0000_c1_exit_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i16_reorder_limiter_count_push17_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_source_p10250000nnamed_3_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_throttle_i1_throttle_pop_3_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B1_start_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B1_start_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B2_sr_0.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B3_sr_1.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B4_sr_0.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B5.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B5_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B5_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_for_body4_s_c0_enter21131_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_exit220_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0001ovariance1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0001iance1_full_detector.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_for_body40000ter21131_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_dest_s_struc0000ariance5_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_source_p10250000nnamed_7_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going57_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_exitcond1089_pop34_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_notcmp6991_pop35_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i2_cleanups60_pop32_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i2_initerations55_pop31_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_i_075_pop29_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_lim_ext80_pop33_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_exitcond1089_push34_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_lastiniteration59_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notcmp6991_push35_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notexitcond67_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i2_cleanups60_push32_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i2_initerations55_push31_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_i_075_push29_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_j_077_pop1993_push36_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_lim_ext80_push33_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i6_fpga_indvars_iv_push28_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c1_in_for_body4_s_c1_enter228_covariance5.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c1_out0000_exit231_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c1_in_for_body40000enter228_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_m_074_pop30_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_m_074_push30_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_mem_unnamed_8_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_readdata_reg_unnamed_8_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_B5_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B5_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B5_sr_1.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B6_sr_0.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B7_sr_1.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B8_sr_1.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B9_sr_0.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B0_runOnce.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B0_runOnce_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B0_runOnce_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_token_i1_wt_limpush_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B0_runOnce_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B0_runOnce_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B10.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B10_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B10_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_for_cond31_preh0000ter31533_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_exit336_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0004ovariance1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0004iance1_full_detector.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_for_cond30000ter31533_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going28_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_exitcond21102_pop55_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_notcmp31104_pop56_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_j26_071_pop49_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_lim_ext83_pop51_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_mul47100_pop54_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_exitcond21102_push55_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notcmp31104_push56_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notexitcond29_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_i21_072_pop2498_push53_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_j26_071_push49_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_lim_ext83_push51_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_mul47100_push54_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop50_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop50_3_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B10_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B10_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B11.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B11_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi3_push25_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi3_push25_0_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B11_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B11_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B12.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B12_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_for_cond_cleanu0000enter353_covariance7.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_exit359_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0005ovariance1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0005iance1_full_detector.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_for_cond_0000enter353_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_mem_memdep_1_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi2_push50_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi2_push50_12_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B12_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B12_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B13.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B13_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B13_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_for_body34_s_c0_enter37234_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_exit405_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0006ovariance1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0006iance1_full_detector.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_for_body30000ter37234_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_exitcond18109_pop71_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_exitcond21103_pop67_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_forked27108_pop70_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_notcmp26110_pop72_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_notcmp31105_pop68_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i2_cleanups_pop62_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i2_initerations_pop61_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_k_069_pop59_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_lim_ext84_pop63_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_mul47101_pop66_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_exitcond18109_push71_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_exitcond21103_push67_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_forked27108_push70_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_lastiniteration_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notcmp26110_push72_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notcmp31105_push68_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notexitcond_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i2_cleanups_push62_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i2_initerations_push61_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_i21_072_pop2499_push65_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_j26_071_pop49111_push73_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_k_069_push59_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_lim_ext84_push63_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_mul47101_push66_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c1_in_for_body34_s_c1_enter431_covariance6.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c1_out0000_exit437_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c1_in_for_body30000enter431_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_c_068_pop60_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_c_068_push60_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_mem_unnamed_16_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_readdata_reg_unnamed_16_covariance2.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_mem_unnamed_17_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_readdata_reg_unnamed_17_covariance3.sv \
  $QSYS_SIMDIR/submodules/covariance_B13_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B13_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B2.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B2_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_dest_p1025s_0000c_mm_hosts_cov9222_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_ffwd_source_p10250000nnamed_4_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0.sv \
  $QSYS_SIMDIR/submodules/covariance_B2_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B2_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B3.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B3_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B3_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_for_body_s_c0_enter20229_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_exit206_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000ovariance1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000iance1_full_detector.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_for_body_0000ter20229_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going71_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_j_077_pop19_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_lim_ext79_pop21_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notexitcond72_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_j_077_push19_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_lim_ext79_push21_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi_pop20_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi_pop20_3_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B3_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B3_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B4.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B4_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B4_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B4_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B6.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B6_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi_push20_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_memdep_phi_push20_0_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B6_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B6_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B7.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B7_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B7_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_for_body11_s_c0_enter24032_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_exit258_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0002ovariance1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0002iance1_full_detector.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_for_body10000ter24032_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going41_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_exitcond1090_pop43_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_notcmp6992_pop44_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i2_cleanups44_pop41_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i2_initerations39_pop40_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_i7_076_pop39_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_j_077_pop1994_pop45_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_lim_ext81_pop42_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_exitcond1090_push43_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_lastiniteration43_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notcmp6992_push44_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notexitcond51_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i2_cleanups44_push41_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i2_initerations39_push40_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_i7_076_push39_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_j_077_pop1994_push45_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_lim_ext81_push42_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c1_in_for_body11_s_c1_enter272_covariance5.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c1_out0000_exit277_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c1_in_for_body10000enter272_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_mul696_pop46_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_mul696_push46_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_mem_memdep_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_mem_unnamed_10_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_readdata_reg_unnamed_10_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_B7_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B7_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B8.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B8_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_B8_merge_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_s_c0_in_for_cond31_preh0000ter28230_covariance1.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0000_exit296_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0003ovariance1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_sfc_exit_s_c0_out0003iance1_full_detector.sv \
  $QSYS_SIMDIR/submodules/covariance_i_sfc_logic_s_c0_in_for_cond30000ter28230_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going33_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_i21_072_pop24_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_lim_ext82_pop26_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i1_notexitcond34_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_i21_072_push24_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_lim_ext82_push26_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi3_pop25_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pop_i1_memdep_phi3_pop25_3_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_B8_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B8_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B9.sv \
  $QSYS_SIMDIR/submodules/covariance_bb_B9_stall_region.sv \
  $QSYS_SIMDIR/submodules/covariance_i_iowr_bl_return_unnamed_covariance12_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_token_i1_throttle_push_0.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_push_token_i1_throttle_push_2_reg.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_wg_limiter_exit_unnamed_11_covariance0.sv \
  $QSYS_SIMDIR/submodules/covariance_wgl_exit_storage.sv \
  $QSYS_SIMDIR/submodules/covariance_B9_branch.sv \
  $QSYS_SIMDIR/submodules/covariance_B9_merge.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going28_2_sr.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going28_2_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going33_2_sr.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going33_2_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going41_6_sr.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going41_6_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going57_6_sr.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going57_6_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going71_2_sr.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going71_2_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going75_2_sr.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going75_2_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going_6_sr.sv \
  $QSYS_SIMDIR/submodules/covariance_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/covariance_loop_limiter_0.sv \
  $QSYS_SIMDIR/submodules/covariance_loop_limiter_1.sv \
  $QSYS_SIMDIR/submodules/covariance_loop_limiter_2.sv \
  $QSYS_SIMDIR/submodules/covariance_loop_limiter_3.sv \
  $QSYS_SIMDIR/submodules/covariance_loop_limiter_4.sv \
  $QSYS_SIMDIR/submodules/covariance_loop_limiter_5.sv \
  $QSYS_SIMDIR/submodules/acl_avm_to_ic.v \
  $QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v \
  $QSYS_SIMDIR/submodules/acl_arb_intf.v \
  $QSYS_SIMDIR/submodules/acl_ic_intf.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v \
  $QSYS_SIMDIR/submodules/acl_arb2.v \
  $QSYS_SIMDIR/submodules/acl_ic_to_avm.v \
  $QSYS_SIMDIR/submodules/covariance_internal.v \
  $QSYS_SIMDIR/submodules/tb_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv \
  $QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv \
  $QSYS_SIMDIR/submodules/hls_sim_mm_agent_dpi_bfm.sv \
  $QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv \
  $QSYS_SIMDIR/submodules/tb_covariance_inst.v \
  $QSYS_SIMDIR/submodules/tb_covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst.sv \
  $QSYS_SIMDIR/submodules/tb_covariance_component_dpi_controller_bind_conduit_fanout_inst.sv \
  $QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv \
  $QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv \
  $QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv \
  $QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv \
  $QSYS_SIMDIR/tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
