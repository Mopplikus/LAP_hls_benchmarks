package require -exact qsys 15.0
set_module_property NAME getTanh_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME getTanh_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Cyclone V"}
set_module_assignment hls.cosim.name {\3fgetTanh@@YAHAEAV\3f$mm_host@HU\3f$dwidth@$0CA@@ihc@@U\3f$awidth@$0CA@@2@U\3f$latency@$00@2@@ihc@@0@Z}
set_module_assignment hls.compressed.name {getTanh}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL getTanh_internal
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "windows64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv"
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
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mlab_fifo.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "ip/acl_pop.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_pipeline.v"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_enable_sink.v" SYSTEM_VERILOG PATH "ip/acl_enable_sink.v"
add_fileset_file "hld_memory_depth_quantization_pkg.sv" SYSTEM_VERILOG PATH "ip/hld_memory_depth_quantization_pkg.sv"
add_fileset_file "hld_iord.sv" SYSTEM_VERILOG PATH "ip/hld_iord.sv"
add_fileset_file "hld_iord_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_latency.sv"
add_fileset_file "hld_iord_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_valid.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "ip/acl_ffwdsrc.v"
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "ip/acl_ffwddst.sv"
add_fileset_file "hld_iowr.sv" SYSTEM_VERILOG PATH "ip/hld_iowr.sv"
add_fileset_file "hld_iowr_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_latency.sv"
add_fileset_file "hld_iowr_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_valid.sv"
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
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "ip/hld_loop_profiler.sv"
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "ip/hld_sim_latency_tracker.sv"
add_fileset_file "acl_loop_limiter.v" SYSTEM_VERILOG PATH "ip/acl_loop_limiter.v"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "getTanh_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/getTanh_function_wrapper.sv"
add_fileset_file "getTanh_function.sv" SYSTEM_VERILOG PATH "ip/getTanh_function.sv"
add_fileset_file "getTanh_bb_B2_sr_0.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B2_sr_0.sv"
add_fileset_file "getTanh_bb_B3_sr_1.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B3_sr_1.sv"
add_fileset_file "getTanh_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B0_runOnce.sv"
add_fileset_file "getTanh_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B0_runOnce_stall_region.sv"
add_fileset_file "getTanh_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_B0_runOnce_merge_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh1_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh1_reg.sv"
add_fileset_file "getTanh_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B0_runOnce_branch.sv"
add_fileset_file "getTanh_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B0_runOnce_merge.sv"
add_fileset_file "getTanh_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B1_start.sv"
add_fileset_file "getTanh_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B1_start_stall_region.sv"
add_fileset_file "getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0.sv"
add_fileset_file "getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv"
add_fileset_file "getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_notexitcond7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_notexitcond7_gettanh0.sv"
add_fileset_file "getTanh_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_B1_start_merge_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh3_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh3_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh4_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh4_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_reg.sv"
add_fileset_file "getTanh_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B1_start_branch.sv"
add_fileset_file "getTanh_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B1_start_merge.sv"
add_fileset_file "getTanh_bb_B2.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B2.sv"
add_fileset_file "getTanh_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B2_stall_region.sv"
add_fileset_file "getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh5_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh5_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_dest_i32_acl_3_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_dest_i32_acl_3_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh2_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh2_reg.sv"
add_fileset_file "getTanh_B2_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B2_branch.sv"
add_fileset_file "getTanh_B2_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B2_merge.sv"
add_fileset_file "getTanh_bb_B3.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B3.sv"
add_fileset_file "getTanh_bb_B3_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B3_stall_region.sv"
add_fileset_file "getTanh_B3_merge_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_B3_merge_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast37412_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast37412_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast39431_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast39431_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_mem_unnamed_gettanh7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_mem_unnamed_gettanh7_gettanh0.sv"
add_fileset_file "getTanh_readdata_reg_unnamed_7_getTanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_readdata_reg_unnamed_7_getTanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_mem_unnamed_gettanh9_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_mem_unnamed_gettanh9_gettanh0.sv"
add_fileset_file "getTanh_readdata_reg_unnamed_9_getTanh1.sv" SYSTEM_VERILOG PATH "ip/getTanh_readdata_reg_unnamed_9_getTanh1.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh9_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh9_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh36_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh36_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh31_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh31_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh7_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh7_reg.sv"
add_fileset_file "getTanh_B3_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B3_branch.sv"
add_fileset_file "getTanh_B3_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B3_merge.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_sr.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_sr.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_valid_fifo.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_sr.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_sr.sv"
add_fileset_file "getTanh_loop_limiter_0.sv" SYSTEM_VERILOG PATH "ip/getTanh_loop_limiter_0.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_host_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_host_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_agent_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_endpoint.v"
add_fileset_file "acl_ic_agent_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_rrp.v"
add_fileset_file "acl_ic_agent_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "getTanh_internal.v" SYSTEM_VERILOG PATH "getTanh_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL getTanh_internal
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "windows64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv"
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
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mlab_fifo.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "ip/acl_pop.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_pipeline.v"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_enable_sink.v" SYSTEM_VERILOG PATH "ip/acl_enable_sink.v"
add_fileset_file "hld_memory_depth_quantization_pkg.sv" SYSTEM_VERILOG PATH "ip/hld_memory_depth_quantization_pkg.sv"
add_fileset_file "hld_iord.sv" SYSTEM_VERILOG PATH "ip/hld_iord.sv"
add_fileset_file "hld_iord_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_latency.sv"
add_fileset_file "hld_iord_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_valid.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "ip/acl_ffwdsrc.v"
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "ip/acl_ffwddst.sv"
add_fileset_file "hld_iowr.sv" SYSTEM_VERILOG PATH "ip/hld_iowr.sv"
add_fileset_file "hld_iowr_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_latency.sv"
add_fileset_file "hld_iowr_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_valid.sv"
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
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "ip/hld_loop_profiler.sv"
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "ip/hld_sim_latency_tracker.sv"
add_fileset_file "acl_loop_limiter.v" SYSTEM_VERILOG PATH "ip/acl_loop_limiter.v"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "getTanh_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/getTanh_function_wrapper.sv"
add_fileset_file "getTanh_function.sv" SYSTEM_VERILOG PATH "ip/getTanh_function.sv"
add_fileset_file "getTanh_bb_B2_sr_0.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B2_sr_0.sv"
add_fileset_file "getTanh_bb_B3_sr_1.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B3_sr_1.sv"
add_fileset_file "getTanh_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B0_runOnce.sv"
add_fileset_file "getTanh_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B0_runOnce_stall_region.sv"
add_fileset_file "getTanh_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_B0_runOnce_merge_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh1_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh1_reg.sv"
add_fileset_file "getTanh_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B0_runOnce_branch.sv"
add_fileset_file "getTanh_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B0_runOnce_merge.sv"
add_fileset_file "getTanh_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B1_start.sv"
add_fileset_file "getTanh_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B1_start_stall_region.sv"
add_fileset_file "getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0.sv"
add_fileset_file "getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv"
add_fileset_file "getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_notexitcond7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_notexitcond7_gettanh0.sv"
add_fileset_file "getTanh_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_B1_start_merge_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh3_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh3_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh4_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_source_p1025i320000ed_gettanh4_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_reg.sv"
add_fileset_file "getTanh_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B1_start_branch.sv"
add_fileset_file "getTanh_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B1_start_merge.sv"
add_fileset_file "getTanh_bb_B2.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B2.sv"
add_fileset_file "getTanh_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B2_stall_region.sv"
add_fileset_file "getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh5_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh5_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_dest_i32_acl_3_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_dest_i32_acl_3_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh2_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh2_reg.sv"
add_fileset_file "getTanh_B2_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B2_branch.sv"
add_fileset_file "getTanh_B2_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B2_merge.sv"
add_fileset_file "getTanh_bb_B3.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B3.sv"
add_fileset_file "getTanh_bb_B3_stall_region.sv" SYSTEM_VERILOG PATH "ip/getTanh_bb_B3_stall_region.sv"
add_fileset_file "getTanh_B3_merge_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_B3_merge_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast37412_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast37412_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast39431_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast39431_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_mem_unnamed_gettanh7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_mem_unnamed_gettanh7_gettanh0.sv"
add_fileset_file "getTanh_readdata_reg_unnamed_7_getTanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_readdata_reg_unnamed_7_getTanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_mem_unnamed_gettanh9_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_mem_unnamed_gettanh9_gettanh0.sv"
add_fileset_file "getTanh_readdata_reg_unnamed_9_getTanh1.sv" SYSTEM_VERILOG PATH "ip/getTanh_readdata_reg_unnamed_9_getTanh1.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh9_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh9_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh36_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh36_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh31_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh31_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_reg.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0.sv"
add_fileset_file "getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh7_reg.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh7_reg.sv"
add_fileset_file "getTanh_B3_branch.sv" SYSTEM_VERILOG PATH "ip/getTanh_B3_branch.sv"
add_fileset_file "getTanh_B3_merge.sv" SYSTEM_VERILOG PATH "ip/getTanh_B3_merge.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_sr.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_sr.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going6_gettanh1_valid_fifo.sv"
add_fileset_file "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_sr.sv" SYSTEM_VERILOG PATH "ip/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh4_sr.sv"
add_fileset_file "getTanh_loop_limiter_0.sv" SYSTEM_VERILOG PATH "ip/getTanh_loop_limiter_0.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_host_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_host_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_agent_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_endpoint.v"
add_fileset_file "acl_ic_agent_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_rrp.v"
add_fileset_file "acl_ic_agent_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_agent_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "getTanh_internal.v" SYSTEM_VERILOG PATH "getTanh_internal.v"

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

#### Parameter A interface
add_interface A conduit sink
set_interface_property A associatedClock clock
set_interface_property A associatedReset reset
set_interface_assignment A hls.cosim.name {A}
add_interface_port A A data input 64

#### Parameter addr interface
add_interface addr conduit sink
set_interface_property addr associatedClock clock
set_interface_property addr associatedReset reset
set_interface_assignment addr hls.cosim.name {addr}
add_interface_port addr addr data input 64

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
add_interface_port avmm_1_rw avmm_1_rw_byteenable byteenable output 4
add_interface_port avmm_1_rw avmm_1_rw_read read output 1
add_interface_port avmm_1_rw avmm_1_rw_readdata readdata input 32
add_interface_port avmm_1_rw avmm_1_rw_write write output 1
add_interface_port avmm_1_rw avmm_1_rw_writedata writedata output 32

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }
