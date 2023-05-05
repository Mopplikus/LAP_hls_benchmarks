package require -exact qsys 15.0
set_module_property NAME if_loop_3_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME if_loop_3_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Stratix 10"}
set_module_assignment hls.cosim.name {_Z9if_loop_3RN3ihc7mm_hostIiJNS_6dwidthILi256EEENS_6awidthILi32EEENS_6aspaceILi1EEENS_7latencyILi1EEEEEERNS0_IiJS2_S4_NS5_ILi4EEES8_EEEi}
set_module_assignment hls.compressed.name {if_loop_3}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL if_loop_3_internal
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "linux64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv"
add_fileset_file "acl_ecc_pkg.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_pkg.sv"
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "ip/acl_data_fifo.v"
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "ip/acl_fifo.v"
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_altera_syncram_wrapped.sv"
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_scfifo_wrapped.sv"
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_decoder.sv"
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_encoder.sv"
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_fifo.v"
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_ram_fifo.v"
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_valid_fifo_counter.v"
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_dspba_valid_fifo_counter.v"
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "ip/acl_staging_reg.v"
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "ip/hld_fifo.sv"
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mid_speed_fifo.sv"
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_one_ram_fifo.sv"
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_zero_ram_fifo.sv"
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "ip/hld_fifo_zero_width.sv"
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_high_speed_fifo.sv"
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_low_latency_fifo.sv"
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_zero_latency_fifo.sv"
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "ip/acl_fanout_pipeline.sv"
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "ip/acl_std_synchronizer_nocut.v"
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_threshold.sv"
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_lookahead.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mlab_fifo.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "acl_pop_stall_latency.sv" SYSTEM_VERILOG PATH "ip/acl_pop_stall_latency.sv"
add_fileset_file "acl_sync.sv" SYSTEM_VERILOG PATH "ip/acl_sync.sv"
add_fileset_file "acl_desync.sv" SYSTEM_VERILOG PATH "ip/acl_desync.sv"
add_fileset_file "acl_push_stall_latency.sv" SYSTEM_VERILOG PATH "ip/acl_push_stall_latency.sv"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_fast_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_fast_pipeline.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "ip/acl_full_detector.v"
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_decr.sv"
add_fileset_file "acl_loop_admit.sv" SYSTEM_VERILOG PATH "ip/acl_loop_admit.sv"
add_fileset_file "acl_shift_register_no_reset_dont_merge.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset_dont_merge.sv"
add_fileset_file "hld_memory_depth_quantization_pkg.sv" SYSTEM_VERILOG PATH "ip/hld_memory_depth_quantization_pkg.sv"
add_fileset_file "hld_iord.sv" SYSTEM_VERILOG PATH "ip/hld_iord.sv"
add_fileset_file "hld_iord_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_latency.sv"
add_fileset_file "hld_iord_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_valid.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "ip/acl_ffwdsrc.v"
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "ip/acl_ffwddst.sv"
add_fileset_file "lsu_top.v" SYSTEM_VERILOG PATH "ip/lsu_top.v"
add_fileset_file "lsu_permute_address.v" SYSTEM_VERILOG PATH "ip/lsu_permute_address.v"
add_fileset_file "lsu_pipelined.v" SYSTEM_VERILOG PATH "ip/lsu_pipelined.v"
add_fileset_file "lsu_enabled.v" SYSTEM_VERILOG PATH "ip/lsu_enabled.v"
add_fileset_file "lsu_basic_coalescer.v" SYSTEM_VERILOG PATH "ip/lsu_basic_coalescer.v"
add_fileset_file "lsu_simple.v" SYSTEM_VERILOG PATH "ip/lsu_simple.v"
add_fileset_file "lsu_streaming.v" SYSTEM_VERILOG PATH "ip/lsu_streaming.v"
add_fileset_file "lsu_burst_host.v" SYSTEM_VERILOG PATH "ip/lsu_burst_host.v"
add_fileset_file "lsu_bursting_load_stores.v" SYSTEM_VERILOG PATH "ip/lsu_bursting_load_stores.v"
add_fileset_file "lsu_non_aligned_write.v" SYSTEM_VERILOG PATH "ip/lsu_non_aligned_write.v"
add_fileset_file "lsu_read_cache.v" SYSTEM_VERILOG PATH "ip/lsu_read_cache.v"
add_fileset_file "lsu_atomic.v" SYSTEM_VERILOG PATH "ip/lsu_atomic.v"
add_fileset_file "lsu_prefetch_block.v" SYSTEM_VERILOG PATH "ip/lsu_prefetch_block.v"
add_fileset_file "lsu_wide_wrapper.v" SYSTEM_VERILOG PATH "ip/lsu_wide_wrapper.v"
add_fileset_file "lsu_streaming_prefetch.v" SYSTEM_VERILOG PATH "ip/lsu_streaming_prefetch.v"
add_fileset_file "acl_aligned_burst_coalesced_lsu.v" SYSTEM_VERILOG PATH "ip/acl_aligned_burst_coalesced_lsu.v"
add_fileset_file "acl_toggle_detect.v" SYSTEM_VERILOG PATH "ip/acl_toggle_detect.v"
add_fileset_file "acl_debug_mem.v" SYSTEM_VERILOG PATH "ip/acl_debug_mem.v"
add_fileset_file "lsu_burst_coalesced_pipelined_write.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_write.sv"
add_fileset_file "lsu_burst_coalesced_pipelined_read.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_read.sv"
add_fileset_file "acl_fifo_stall_valid_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_fifo_stall_valid_lookahead.sv"
add_fileset_file "hld_global_load_store.sv" SYSTEM_VERILOG PATH "ip/hld_global_load_store.sv"
add_fileset_file "hld_lsu.sv" SYSTEM_VERILOG PATH "ip/hld_lsu.sv"
add_fileset_file "hld_lsu_burst_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_burst_coalescer.sv"
add_fileset_file "hld_lsu_coalescer_dynamic_timeout.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_coalescer_dynamic_timeout.sv"
add_fileset_file "hld_lsu_data_aligner.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_data_aligner.sv"
add_fileset_file "hld_lsu_read_cache.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_cache.sv"
add_fileset_file "hld_lsu_read_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_data_alignment.sv"
add_fileset_file "hld_lsu_unaligned_controller.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_unaligned_controller.sv"
add_fileset_file "hld_lsu_word_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_word_coalescer.sv"
add_fileset_file "hld_lsu_write_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_data_alignment.sv"
add_fileset_file "hld_lsu_write_kernel_downstream.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_kernel_downstream.sv"
add_fileset_file "hld_iowr.sv" SYSTEM_VERILOG PATH "ip/hld_iowr.sv"
add_fileset_file "hld_iowr_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_latency.sv"
add_fileset_file "hld_iowr_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_valid.sv"
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "ip/hld_loop_profiler.sv"
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "ip/hld_sim_latency_tracker.sv"
add_fileset_file "if_loop_3_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_function_wrapper.sv"
add_fileset_file "if_loop_3_function.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_function.sv"
add_fileset_file "if_loop_3_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B0_runOnce.sv"
add_fileset_file "if_loop_3_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B0_runOnce_stall_region.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "if_loop_3_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B0_runOnce_branch.sv"
add_fileset_file "if_loop_3_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B0_runOnce_merge.sv"
add_fileset_file "if_loop_3_B0_runOnce_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B0_runOnce_merge_storage.sv"
add_fileset_file "if_loop_3_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B1_start.sv"
add_fileset_file "if_loop_3_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B1_start_stall_region.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"
add_fileset_file "if_loop_3_i_iord_bl_call_unnamed_if_loop_31_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_iord_bl_call_unnamed_if_loop_31_if_loop_30.sv"
add_fileset_file "if_loop_3_i_sfc_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_dummy_thread_b1_start_dummy_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_dummy_thread_b1_start_dummy_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_forked_b1_start_forked_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_forked_b1_start_forked_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pipeline_keep_going10_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pipeline_keep_going10_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_i1_notexitcond11_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_i1_notexitcond11_0.sv"
add_fileset_file "if_loop_3_i_sfc_s_c1_in_wt_entry_s_c1_enter_if_loop_34.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c1_in_wt_entry_s_c1_enter_if_loop_34.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000s_c1_exit_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000s_c1_exit_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_i1_unnamed_2_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_i1_unnamed_2_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_i33_unnamed_5_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_i33_unnamed_5_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_p1025i32_unnamed_3_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_p1025i32_unnamed_3_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_p1028i32_unnamed_4_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_p1028i32_unnamed_4_if_loop_30.sv"
add_fileset_file "if_loop_3_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B1_start_branch.sv"
add_fileset_file "if_loop_3_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B1_start_merge.sv"
add_fileset_file "if_loop_3_B1_start_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B1_start_merge_storage.sv"
add_fileset_file "if_loop_3_bb_B2.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B2.sv"
add_fileset_file "if_loop_3_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B2_stall_region.sv"
add_fileset_file "if_loop_3_i_sfc_s_c0_in_for_body_s_c0_enter132_if_loop_31.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c0_in_for_body_s_c0_enter132_if_loop_31.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit15_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit15_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter132_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter132_if_loop_30.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000256_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000256_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000259_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000259_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000262_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000262_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000265_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000265_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_llvm_fpga_dummy_thread_b2_dummy_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_dummy_thread_b2_dummy_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp215_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp215_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_8_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_8_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_10_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_10_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_forked_b2_forked_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_forked_b2_forked_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_mem_lm1_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_mem_lm1_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_mem_lm22_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_mem_lm22_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "if_loop_3_B2_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B2_branch.sv"
add_fileset_file "if_loop_3_B2_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B2_merge.sv"
add_fileset_file "if_loop_3_B2_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B2_merge_storage.sv"
add_fileset_file "if_loop_3_bb_B3.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B3.sv"
add_fileset_file "if_loop_3_bb_B3_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B3_stall_region.sv"
add_fileset_file "if_loop_3_i_iowr_bl_return_unnamed_if_loop_312_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_iowr_bl_return_unnamed_if_loop_312_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_token_i1_throttle_push_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_token_i1_throttle_push_0.sv"
add_fileset_file "if_loop_3_i_sfc_s_c0_in_for_end_loopexit_s_c0_enter17_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c0_in_for_end_loopexit_s_c0_enter17_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit19_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit19_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_end_lo00000_enter17_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_end_lo00000_enter17_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp213_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp213_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i32_acl_8_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i32_acl_8_0.sv"
add_fileset_file "if_loop_3_B3_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B3_branch.sv"
add_fileset_file "if_loop_3_B3_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B3_merge.sv"
add_fileset_file "if_loop_3_B3_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B3_merge_storage.sv"
add_fileset_file "if_loop_3_start_pulse.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_start_pulse.sv"
add_fileset_file "if_loop_3_wait_pulse_extender_inst.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_wait_pulse_extender_inst.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_host_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_host_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_agent_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_endpoint.v"
add_fileset_file "acl_ic_agent_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_rrp.v"
add_fileset_file "acl_ic_agent_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "if_loop_3_internal.v" SYSTEM_VERILOG PATH "if_loop_3_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL if_loop_3_internal
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "linux64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv"
add_fileset_file "acl_ecc_pkg.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_pkg.sv"
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "ip/acl_data_fifo.v"
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "ip/acl_fifo.v"
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_altera_syncram_wrapped.sv"
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_scfifo_wrapped.sv"
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_decoder.sv"
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_encoder.sv"
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_fifo.v"
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_ram_fifo.v"
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_valid_fifo_counter.v"
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_dspba_valid_fifo_counter.v"
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "ip/acl_staging_reg.v"
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "ip/hld_fifo.sv"
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mid_speed_fifo.sv"
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_one_ram_fifo.sv"
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_zero_ram_fifo.sv"
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "ip/hld_fifo_zero_width.sv"
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_high_speed_fifo.sv"
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_low_latency_fifo.sv"
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_zero_latency_fifo.sv"
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "ip/acl_fanout_pipeline.sv"
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "ip/acl_std_synchronizer_nocut.v"
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_threshold.sv"
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_lookahead.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mlab_fifo.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "acl_pop_stall_latency.sv" SYSTEM_VERILOG PATH "ip/acl_pop_stall_latency.sv"
add_fileset_file "acl_sync.sv" SYSTEM_VERILOG PATH "ip/acl_sync.sv"
add_fileset_file "acl_desync.sv" SYSTEM_VERILOG PATH "ip/acl_desync.sv"
add_fileset_file "acl_push_stall_latency.sv" SYSTEM_VERILOG PATH "ip/acl_push_stall_latency.sv"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_fast_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_fast_pipeline.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "ip/acl_full_detector.v"
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_decr.sv"
add_fileset_file "acl_loop_admit.sv" SYSTEM_VERILOG PATH "ip/acl_loop_admit.sv"
add_fileset_file "acl_shift_register_no_reset_dont_merge.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset_dont_merge.sv"
add_fileset_file "hld_memory_depth_quantization_pkg.sv" SYSTEM_VERILOG PATH "ip/hld_memory_depth_quantization_pkg.sv"
add_fileset_file "hld_iord.sv" SYSTEM_VERILOG PATH "ip/hld_iord.sv"
add_fileset_file "hld_iord_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_latency.sv"
add_fileset_file "hld_iord_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_valid.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "ip/acl_ffwdsrc.v"
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "ip/acl_ffwddst.sv"
add_fileset_file "lsu_top.v" SYSTEM_VERILOG PATH "ip/lsu_top.v"
add_fileset_file "lsu_permute_address.v" SYSTEM_VERILOG PATH "ip/lsu_permute_address.v"
add_fileset_file "lsu_pipelined.v" SYSTEM_VERILOG PATH "ip/lsu_pipelined.v"
add_fileset_file "lsu_enabled.v" SYSTEM_VERILOG PATH "ip/lsu_enabled.v"
add_fileset_file "lsu_basic_coalescer.v" SYSTEM_VERILOG PATH "ip/lsu_basic_coalescer.v"
add_fileset_file "lsu_simple.v" SYSTEM_VERILOG PATH "ip/lsu_simple.v"
add_fileset_file "lsu_streaming.v" SYSTEM_VERILOG PATH "ip/lsu_streaming.v"
add_fileset_file "lsu_burst_host.v" SYSTEM_VERILOG PATH "ip/lsu_burst_host.v"
add_fileset_file "lsu_bursting_load_stores.v" SYSTEM_VERILOG PATH "ip/lsu_bursting_load_stores.v"
add_fileset_file "lsu_non_aligned_write.v" SYSTEM_VERILOG PATH "ip/lsu_non_aligned_write.v"
add_fileset_file "lsu_read_cache.v" SYSTEM_VERILOG PATH "ip/lsu_read_cache.v"
add_fileset_file "lsu_atomic.v" SYSTEM_VERILOG PATH "ip/lsu_atomic.v"
add_fileset_file "lsu_prefetch_block.v" SYSTEM_VERILOG PATH "ip/lsu_prefetch_block.v"
add_fileset_file "lsu_wide_wrapper.v" SYSTEM_VERILOG PATH "ip/lsu_wide_wrapper.v"
add_fileset_file "lsu_streaming_prefetch.v" SYSTEM_VERILOG PATH "ip/lsu_streaming_prefetch.v"
add_fileset_file "acl_aligned_burst_coalesced_lsu.v" SYSTEM_VERILOG PATH "ip/acl_aligned_burst_coalesced_lsu.v"
add_fileset_file "acl_toggle_detect.v" SYSTEM_VERILOG PATH "ip/acl_toggle_detect.v"
add_fileset_file "acl_debug_mem.v" SYSTEM_VERILOG PATH "ip/acl_debug_mem.v"
add_fileset_file "lsu_burst_coalesced_pipelined_write.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_write.sv"
add_fileset_file "lsu_burst_coalesced_pipelined_read.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_read.sv"
add_fileset_file "acl_fifo_stall_valid_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_fifo_stall_valid_lookahead.sv"
add_fileset_file "hld_global_load_store.sv" SYSTEM_VERILOG PATH "ip/hld_global_load_store.sv"
add_fileset_file "hld_lsu.sv" SYSTEM_VERILOG PATH "ip/hld_lsu.sv"
add_fileset_file "hld_lsu_burst_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_burst_coalescer.sv"
add_fileset_file "hld_lsu_coalescer_dynamic_timeout.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_coalescer_dynamic_timeout.sv"
add_fileset_file "hld_lsu_data_aligner.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_data_aligner.sv"
add_fileset_file "hld_lsu_read_cache.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_cache.sv"
add_fileset_file "hld_lsu_read_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_data_alignment.sv"
add_fileset_file "hld_lsu_unaligned_controller.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_unaligned_controller.sv"
add_fileset_file "hld_lsu_word_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_word_coalescer.sv"
add_fileset_file "hld_lsu_write_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_data_alignment.sv"
add_fileset_file "hld_lsu_write_kernel_downstream.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_kernel_downstream.sv"
add_fileset_file "hld_iowr.sv" SYSTEM_VERILOG PATH "ip/hld_iowr.sv"
add_fileset_file "hld_iowr_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_latency.sv"
add_fileset_file "hld_iowr_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_valid.sv"
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "ip/hld_loop_profiler.sv"
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "ip/hld_sim_latency_tracker.sv"
add_fileset_file "if_loop_3_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_function_wrapper.sv"
add_fileset_file "if_loop_3_function.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_function.sv"
add_fileset_file "if_loop_3_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B0_runOnce.sv"
add_fileset_file "if_loop_3_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B0_runOnce_stall_region.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "if_loop_3_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B0_runOnce_branch.sv"
add_fileset_file "if_loop_3_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B0_runOnce_merge.sv"
add_fileset_file "if_loop_3_B0_runOnce_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B0_runOnce_merge_storage.sv"
add_fileset_file "if_loop_3_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B1_start.sv"
add_fileset_file "if_loop_3_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B1_start_stall_region.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"
add_fileset_file "if_loop_3_i_iord_bl_call_unnamed_if_loop_31_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_iord_bl_call_unnamed_if_loop_31_if_loop_30.sv"
add_fileset_file "if_loop_3_i_sfc_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_dummy_thread_b1_start_dummy_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_dummy_thread_b1_start_dummy_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_forked_b1_start_forked_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_forked_b1_start_forked_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pipeline_keep_going10_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pipeline_keep_going10_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_i1_notexitcond11_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_i1_notexitcond11_0.sv"
add_fileset_file "if_loop_3_i_sfc_s_c1_in_wt_entry_s_c1_enter_if_loop_34.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c1_in_wt_entry_s_c1_enter_if_loop_34.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000s_c1_exit_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000s_c1_exit_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c1_out_0000if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_i1_unnamed_2_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_i1_unnamed_2_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_i33_unnamed_5_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_i33_unnamed_5_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_p1025i32_unnamed_3_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_p1025i32_unnamed_3_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_p1028i32_unnamed_4_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_p1028i32_unnamed_4_if_loop_30.sv"
add_fileset_file "if_loop_3_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B1_start_branch.sv"
add_fileset_file "if_loop_3_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B1_start_merge.sv"
add_fileset_file "if_loop_3_B1_start_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B1_start_merge_storage.sv"
add_fileset_file "if_loop_3_bb_B2.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B2.sv"
add_fileset_file "if_loop_3_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B2_stall_region.sv"
add_fileset_file "if_loop_3_i_sfc_s_c0_in_for_body_s_c0_enter132_if_loop_31.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c0_in_for_body_s_c0_enter132_if_loop_31.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit15_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit15_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0001if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter132_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter132_if_loop_30.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000256_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000256_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000259_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000259_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000262_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000262_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000265_invTabGen_lutmem.hex" HEX PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000265_invTabGen_lutmem.hex"
add_fileset_file "if_loop_3_i_llvm_fpga_dummy_thread_b2_dummy_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_dummy_thread_b2_dummy_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp215_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp215_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_8_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_8_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_10_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_10_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_forked_b2_forked_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_forked_b2_forked_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_mem_lm1_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_mem_lm1_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_mem_lm22_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_mem_lm22_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "if_loop_3_B2_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B2_branch.sv"
add_fileset_file "if_loop_3_B2_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B2_merge.sv"
add_fileset_file "if_loop_3_B2_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B2_merge_storage.sv"
add_fileset_file "if_loop_3_bb_B3.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B3.sv"
add_fileset_file "if_loop_3_bb_B3_stall_region.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_bb_B3_stall_region.sv"
add_fileset_file "if_loop_3_i_iowr_bl_return_unnamed_if_loop_312_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_iowr_bl_return_unnamed_if_loop_312_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_push_token_i1_throttle_push_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_push_token_i1_throttle_push_0.sv"
add_fileset_file "if_loop_3_i_sfc_s_c0_in_for_end_loopexit_s_c0_enter17_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_s_c0_in_for_end_loopexit_s_c0_enter17_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit19_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit19_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002oop_31_full_detector.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002oop_31_full_detector.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002if_loop_31_data_fifo.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_sfc_exit_s_c0_out_0002if_loop_31_data_fifo.sv"
add_fileset_file "if_loop_3_i_sfc_logic_s_c0_in_for_end_lo00000_enter17_if_loop_30.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_sfc_logic_s_c0_in_for_end_lo00000_enter17_if_loop_30.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp213_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp213_0.sv"
add_fileset_file "if_loop_3_i_llvm_fpga_ffwd_dest_i32_acl_8_0.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_i_llvm_fpga_ffwd_dest_i32_acl_8_0.sv"
add_fileset_file "if_loop_3_B3_branch.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B3_branch.sv"
add_fileset_file "if_loop_3_B3_merge.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B3_merge.sv"
add_fileset_file "if_loop_3_B3_merge_storage.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_B3_merge_storage.sv"
add_fileset_file "if_loop_3_start_pulse.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_start_pulse.sv"
add_fileset_file "if_loop_3_wait_pulse_extender_inst.sv" SYSTEM_VERILOG PATH "ip/if_loop_3_wait_pulse_extender_inst.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_host_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_host_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_agent_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_endpoint.v"
add_fileset_file "acl_ic_agent_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_rrp.v"
add_fileset_file "acl_ic_agent_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "if_loop_3_internal.v" SYSTEM_VERILOG PATH "if_loop_3_internal.v"

#### Primary clock for the component
add_interface clock clock end
set_interface_property clock ENABLED true
set_interface_assignment clock hls.cosim.name {$clock}
add_interface_port clock clock clk input 1

#### Primary reset for the component
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_assignment reset hls.cosim.name {$reset}
add_interface_port reset resetn reset_n input 1

#### The component invocation protocol interface (call)
add_interface call conduit sink
set_interface_property call associatedClock clock
set_interface_property call associatedReset reset
set_interface_assignment call hls.cosim.name {$call}
add_interface_port call start valid input 1
add_interface_port call busy stall output 1

#### The component return protocol interface (return)
add_interface return conduit source
set_interface_property return associatedClock clock
set_interface_property return associatedReset reset
set_interface_assignment return hls.cosim.name {$return}
add_interface_port return done valid output 1
add_interface_port return stall stall input 1

#### The component return data interface (returndata)
add_interface returndata conduit source
set_interface_property returndata associatedClock clock
set_interface_property returndata associatedReset reset
set_interface_assignment returndata hls.cosim.name {$returndata}
add_interface_port returndata returndata data output 32

#### Parameter a interface
add_interface a conduit sink
set_interface_property a associatedClock clock
set_interface_property a associatedReset reset
set_interface_assignment a hls.cosim.name {a}
add_interface_port a a data input 64

#### Parameter b interface
add_interface b conduit sink
set_interface_property b associatedClock clock
set_interface_property b associatedReset reset
set_interface_assignment b hls.cosim.name {b}
add_interface_port b b data input 64

#### Parameter n interface
add_interface n conduit sink
set_interface_property n associatedClock clock
set_interface_property n associatedReset reset
set_interface_assignment n hls.cosim.name {n}
add_interface_port n n data input 32

#### Host interface avmm_1_rw with base address 0
add_interface avmm_1_rw avalon start
set_interface_property avmm_1_rw ENABLED true
set_interface_property avmm_1_rw associatedClock clock
set_interface_property avmm_1_rw burstOnBurstBoundariesOnly false
set_interface_property avmm_1_rw doStreamReads false
set_interface_property avmm_1_rw doStreamWrites false
set_interface_property avmm_1_rw linewrapBursts false
set_interface_property avmm_1_rw readWaitTime 0
set_interface_property avmm_1_rw readLatency 1
add_interface_port avmm_1_rw avmm_1_rw_address address output 32
add_interface_port avmm_1_rw avmm_1_rw_byteenable byteenable output 32
add_interface_port avmm_1_rw avmm_1_rw_read read output 1
add_interface_port avmm_1_rw avmm_1_rw_readdata readdata input 256
add_interface_port avmm_1_rw avmm_1_rw_write write output 1
add_interface_port avmm_1_rw avmm_1_rw_writedata writedata output 256

#### Host interface avmm_4_rw with base address 0
add_interface avmm_4_rw avalon start
set_interface_property avmm_4_rw ENABLED true
set_interface_property avmm_4_rw associatedClock clock
set_interface_property avmm_4_rw burstOnBurstBoundariesOnly false
set_interface_property avmm_4_rw doStreamReads false
set_interface_property avmm_4_rw doStreamWrites false
set_interface_property avmm_4_rw linewrapBursts false
set_interface_property avmm_4_rw readWaitTime 0
set_interface_property avmm_4_rw readLatency 1
add_interface_port avmm_4_rw avmm_4_rw_address address output 32
add_interface_port avmm_4_rw avmm_4_rw_byteenable byteenable output 32
add_interface_port avmm_4_rw avmm_4_rw_read read output 1
add_interface_port avmm_4_rw avmm_4_rw_readdata readdata input 256
add_interface_port avmm_4_rw avmm_4_rw_write write output 1
add_interface_port avmm_4_rw avmm_4_rw_writedata writedata output 256

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }
