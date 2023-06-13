
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

# ACDS 21.1 850 win32 2023.06.13.02:57:39

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
# ACDS 21.1 850 win32 2023.06.13.02:57:39
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
  $QSYS_SIMDIR/submodules/acl_full_detector.v \
  $QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_decr.sv \
  $QSYS_SIMDIR/submodules/acl_ffwddst.sv \
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
  $QSYS_SIMDIR/submodules/hld_loop_profiler.sv \
  $QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv \
  $QSYS_SIMDIR/submodules/acl_loop_limiter.v \
  $QSYS_SIMDIR/submodules/acl_reset_wire.v \
  $QSYS_SIMDIR/submodules/matvec_function_wrapper.sv \
  $QSYS_SIMDIR/submodules/matvec_function.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B2_sr_1.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B3_sr_1.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B4_sr_0.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B5_sr_0.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B0_runOnce.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B0_runOnce_stall_region.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_token_i1_wt_limpush_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_B0_runOnce_merge_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_B0_runOnce_branch.sv \
  $QSYS_SIMDIR/submodules/matvec_B0_runOnce_merge.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B1_start.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B1_start_stall_region.sv \
  $QSYS_SIMDIR/submodules/matvec_i_iord_bl_call_unnamed_matvec2_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_s_c0_in_wt_entry_s_c0_enter5_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter5_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going13_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_notexitcond14_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_ffwd_source_p1025i32_unnamed_3_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_ffwd_source_p1025i32_unnamed_4_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_ffwd_source_p1025i32_unnamed_5_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_B1_start_merge_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_B1_start_branch.sv \
  $QSYS_SIMDIR/submodules/matvec_B1_start_merge.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B2.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B2_stall_region.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_s_c0_in_for_cond1_preheader_s_c0_enter296_matvec1.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_sfc_exit_s_c0_out_for0000_s_c0_exit31_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_sfc_exit_s_c0_out_for000031_matvec1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_sfc_exit_s_c0_out_for0000atvec1_full_detector.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_logic_s_c0_in_for_cond1_pre0000_c0_enter296_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going9_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i32_i_032_pop9_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop8_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_notexitcond10_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i32_i_032_push9_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i6_fpga_indvars_iv1_push8_0.sv \
  $QSYS_SIMDIR/submodules/matvec_B2_merge_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i1_memdep_phi_pop10_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i1_memdep_phi_pop10_3_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_B2_branch.sv \
  $QSYS_SIMDIR/submodules/matvec_B2_merge.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B3.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B3_stall_region.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_s_c0_in_for_body3_s_c0_enter347_matvec1.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_sfc_exit_s_c0_out_for0000_s_c0_exit40_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_logic_s_c0_in_for_body3_s_c0_enter347_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i1_exitcond317_pop16_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i1_notcmp718_pop17_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i2_cleanups_pop15_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i2_initerations_pop14_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i32_i_032_pop919_pop18_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i32_j_030_pop13_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_exitcond317_push16_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_lastiniteration_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_notcmp718_push17_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_notexitcond_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i2_cleanups_push15_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i2_initerations_push14_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i32_i_032_pop919_push18_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i32_j_030_push13_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i6_fpga_indvars_iv_push11_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_s_c1_in_for_body3_s_c1_enter_matvec6.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_sfc_exit_s_c1_out_for_body3_s_c1_exit_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_sfc_logic_s_c1_in_for_body3_s_c1_enter_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pop_i32_tmp_031_pop12_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i32_tmp_031_push12_0.sv \
  $QSYS_SIMDIR/submodules/matvec_B3_merge_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_mem_unnamed_8_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_readdata_reg_unnamed_8_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_mem_unnamed_9_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_readdata_reg_unnamed_9_matvec1.sv \
  $QSYS_SIMDIR/submodules/matvec_B3_branch.sv \
  $QSYS_SIMDIR/submodules/matvec_B3_merge.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B4.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B4_stall_region.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_mem_memdep_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_memdep_phi_push10_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_i1_memdep_phi_push10_4_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_B4_branch.sv \
  $QSYS_SIMDIR/submodules/matvec_B4_merge.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B5.sv \
  $QSYS_SIMDIR/submodules/matvec_bb_B5_stall_region.sv \
  $QSYS_SIMDIR/submodules/matvec_i_iowr_bl_return_unnamed_matvec11_matvec0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_token_i1_throttle_push_0.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_push_token_i1_throttle_push_1_reg.sv \
  $QSYS_SIMDIR/submodules/matvec_B5_branch.sv \
  $QSYS_SIMDIR/submodules/matvec_B5_merge.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going13_1_sr.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going13_1_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going9_2_sr.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going9_2_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going_6_sr.sv \
  $QSYS_SIMDIR/submodules/matvec_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/matvec_loop_limiter_0.sv \
  $QSYS_SIMDIR/submodules/matvec_loop_limiter_1.sv \
  $QSYS_SIMDIR/submodules/acl_avm_to_ic.v \
  $QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v \
  $QSYS_SIMDIR/submodules/acl_arb_intf.v \
  $QSYS_SIMDIR/submodules/acl_ic_intf.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v \
  $QSYS_SIMDIR/submodules/acl_arb2.v \
  $QSYS_SIMDIR/submodules/acl_ic_to_avm.v \
  $QSYS_SIMDIR/submodules/matvec_internal.v \
  $QSYS_SIMDIR/submodules/tb_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv \
  $QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv \
  $QSYS_SIMDIR/submodules/hls_sim_mm_agent_dpi_bfm.sv \
  $QSYS_SIMDIR/submodules/tb_matvec_inst.v \
  $QSYS_SIMDIR/submodules/tb_matvec_component_dpi_controller_implicit_ready_conduit_fanout_inst.sv \
  $QSYS_SIMDIR/submodules/tb_matvec_component_dpi_controller_bind_conduit_fanout_inst.sv \
  $QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv \
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
