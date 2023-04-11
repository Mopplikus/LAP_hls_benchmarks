
namespace eval getTanh {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    dict set design_files "dspba_library_ver.sv"                                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/dspba_library_ver.sv"                                               
    dict set design_files "acl_ecc_pkg.sv"                                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ecc_pkg.sv"                                                     
    dict set design_files "acl_data_fifo.v"                                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_data_fifo.v"                                                    
    dict set design_files "acl_fifo.v"                                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_fifo.v"                                                         
    dict set design_files "acl_altera_syncram_wrapped.sv"                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_altera_syncram_wrapped.sv"                                      
    dict set design_files "acl_scfifo_wrapped.sv"                                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_scfifo_wrapped.sv"                                              
    dict set design_files "acl_ecc_decoder.sv"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ecc_decoder.sv"                                                 
    dict set design_files "acl_ecc_encoder.sv"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ecc_encoder.sv"                                                 
    dict set design_files "acl_ll_fifo.v"                                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ll_fifo.v"                                                      
    dict set design_files "acl_ll_ram_fifo.v"                                                   "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ll_ram_fifo.v"                                                  
    dict set design_files "acl_valid_fifo_counter.v"                                            "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_valid_fifo_counter.v"                                           
    dict set design_files "acl_dspba_valid_fifo_counter.v"                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_dspba_valid_fifo_counter.v"                                     
    dict set design_files "acl_staging_reg.v"                                                   "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_staging_reg.v"                                                  
    dict set design_files "hld_fifo.sv"                                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_fifo.sv"                                                        
    dict set design_files "acl_mid_speed_fifo.sv"                                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_mid_speed_fifo.sv"                                              
    dict set design_files "acl_latency_one_ram_fifo.sv"                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_latency_one_ram_fifo.sv"                                        
    dict set design_files "acl_latency_zero_ram_fifo.sv"                                        "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_latency_zero_ram_fifo.sv"                                       
    dict set design_files "hld_fifo_zero_width.sv"                                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_fifo_zero_width.sv"                                             
    dict set design_files "acl_high_speed_fifo.sv"                                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_high_speed_fifo.sv"                                             
    dict set design_files "acl_low_latency_fifo.sv"                                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_low_latency_fifo.sv"                                            
    dict set design_files "acl_zero_latency_fifo.sv"                                            "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_zero_latency_fifo.sv"                                           
    dict set design_files "acl_fanout_pipeline.sv"                                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_fanout_pipeline.sv"                                             
    dict set design_files "acl_std_synchronizer_nocut.v"                                        "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_std_synchronizer_nocut.v"                                       
    dict set design_files "acl_tessellated_incr_decr_threshold.sv"                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_tessellated_incr_decr_threshold.sv"                             
    dict set design_files "acl_tessellated_incr_lookahead.sv"                                   "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_tessellated_incr_lookahead.sv"                                  
    dict set design_files "acl_reset_handler.sv"                                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_reset_handler.sv"                                               
    dict set design_files "acl_lfsr.sv"                                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_lfsr.sv"                                                        
    dict set design_files "acl_mlab_fifo.sv"                                                    "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_mlab_fifo.sv"                                                   
    dict set design_files "acl_parameter_assert.svh"                                            "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_parameter_assert.svh"                                           
    dict set design_files "acl_pop.v"                                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_pop.v"                                                          
    dict set design_files "acl_push.v"                                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_push.v"                                                         
    dict set design_files "acl_token_fifo_counter.v"                                            "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_token_fifo_counter.v"                                           
    dict set design_files "acl_pipeline.v"                                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_pipeline.v"                                                     
    dict set design_files "acl_dspba_buffer.v"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_dspba_buffer.v"                                                 
    dict set design_files "acl_enable_sink.v"                                                   "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_enable_sink.v"                                                  
    dict set design_files "hld_memory_depth_quantization_pkg.sv"                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_memory_depth_quantization_pkg.sv"                               
    dict set design_files "hld_iord.sv"                                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iord.sv"                                                        
    dict set design_files "hld_iord_stall_latency.sv"                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iord_stall_latency.sv"                                          
    dict set design_files "hld_iord_stall_valid.sv"                                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iord_stall_valid.sv"                                            
    dict set design_files "acl_shift_register_no_reset.sv"                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_shift_register_no_reset.sv"                                     
    dict set design_files "acl_ffwddst.sv"                                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ffwddst.sv"                                                     
    dict set design_files "hld_iowr.sv"                                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iowr.sv"                                                        
    dict set design_files "hld_iowr_stall_latency.sv"                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iowr_stall_latency.sv"                                          
    dict set design_files "hld_iowr_stall_valid.sv"                                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iowr_stall_valid.sv"                                            
    dict set design_files "lsu_top.v"                                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_top.v"                                                          
    dict set design_files "lsu_permute_address.v"                                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_permute_address.v"                                              
    dict set design_files "lsu_pipelined.v"                                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_pipelined.v"                                                    
    dict set design_files "lsu_enabled.v"                                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_enabled.v"                                                      
    dict set design_files "lsu_basic_coalescer.v"                                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_basic_coalescer.v"                                              
    dict set design_files "lsu_simple.v"                                                        "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_simple.v"                                                       
    dict set design_files "lsu_streaming.v"                                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_streaming.v"                                                    
    dict set design_files "lsu_burst_host.v"                                                    "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_burst_host.v"                                                   
    dict set design_files "lsu_bursting_load_stores.v"                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_bursting_load_stores.v"                                         
    dict set design_files "lsu_non_aligned_write.v"                                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_non_aligned_write.v"                                            
    dict set design_files "lsu_read_cache.v"                                                    "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_read_cache.v"                                                   
    dict set design_files "lsu_atomic.v"                                                        "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_atomic.v"                                                       
    dict set design_files "lsu_prefetch_block.v"                                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_prefetch_block.v"                                               
    dict set design_files "lsu_wide_wrapper.v"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_wide_wrapper.v"                                                 
    dict set design_files "lsu_streaming_prefetch.v"                                            "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_streaming_prefetch.v"                                           
    dict set design_files "acl_aligned_burst_coalesced_lsu.v"                                   "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_aligned_burst_coalesced_lsu.v"                                  
    dict set design_files "acl_toggle_detect.v"                                                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_toggle_detect.v"                                                
    dict set design_files "acl_debug_mem.v"                                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_debug_mem.v"                                                    
    dict set design_files "lsu_burst_coalesced_pipelined_write.sv"                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_burst_coalesced_pipelined_write.sv"                             
    dict set design_files "lsu_burst_coalesced_pipelined_read.sv"                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_burst_coalesced_pipelined_read.sv"                              
    dict set design_files "acl_fifo_stall_valid_lookahead.sv"                                   "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_fifo_stall_valid_lookahead.sv"                                  
    dict set design_files "hld_global_load_store.sv"                                            "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_global_load_store.sv"                                           
    dict set design_files "hld_lsu.sv"                                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu.sv"                                                         
    dict set design_files "hld_lsu_burst_coalescer.sv"                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_burst_coalescer.sv"                                         
    dict set design_files "hld_lsu_coalescer_dynamic_timeout.sv"                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_coalescer_dynamic_timeout.sv"                               
    dict set design_files "hld_lsu_data_aligner.sv"                                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_data_aligner.sv"                                            
    dict set design_files "hld_lsu_read_cache.sv"                                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_read_cache.sv"                                              
    dict set design_files "hld_lsu_read_data_alignment.sv"                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_read_data_alignment.sv"                                     
    dict set design_files "hld_lsu_unaligned_controller.sv"                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_unaligned_controller.sv"                                    
    dict set design_files "hld_lsu_word_coalescer.sv"                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_word_coalescer.sv"                                          
    dict set design_files "hld_lsu_write_data_alignment.sv"                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_write_data_alignment.sv"                                    
    dict set design_files "hld_lsu_write_kernel_downstream.sv"                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_write_kernel_downstream.sv"                                 
    dict set design_files "acl_ffwdsrc.v"                                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ffwdsrc.v"                                                      
    dict set design_files "acl_full_detector.v"                                                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_full_detector.v"                                                
    dict set design_files "acl_tessellated_incr_decr_decr.sv"                                   "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_tessellated_incr_decr_decr.sv"                                  
    dict set design_files "hld_loop_profiler.sv"                                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_loop_profiler.sv"                                               
    dict set design_files "hld_sim_latency_tracker.sv"                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_sim_latency_tracker.sv"                                         
    dict set design_files "acl_loop_limiter.v"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_loop_limiter.v"                                                 
    dict set design_files "acl_reset_wire.v"                                                    "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_reset_wire.v"                                                   
    dict set design_files "getTanh_function_wrapper.sv"                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_function_wrapper.sv"                                        
    dict set design_files "getTanh_function.sv"                                                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_function.sv"                                                
    dict set design_files "getTanh_bb_B0_runOnce.sv"                                            "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B0_runOnce.sv"                                           
    dict set design_files "getTanh_bb_B0_runOnce_stall_region.sv"                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B0_runOnce_stall_region.sv"                              
    dict set design_files "getTanh_B0_runOnce_merge_reg.sv"                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B0_runOnce_merge_reg.sv"                                    
    dict set design_files "getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv"              "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv"             
    dict set design_files "getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0_reg.sv"          "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0_reg.sv"         
    dict set design_files "getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv"            "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv"           
    dict set design_files "getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh1_reg.sv"        "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh1_reg.sv"       
    dict set design_files "getTanh_B0_runOnce_branch.sv"                                        "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B0_runOnce_branch.sv"                                       
    dict set design_files "getTanh_B0_runOnce_merge.sv"                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B0_runOnce_merge.sv"                                        
    dict set design_files "getTanh_bb_B1_start.sv"                                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B1_start.sv"                                             
    dict set design_files "getTanh_bb_B1_start_stall_region.sv"                                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B1_start_stall_region.sv"                                
    dict set design_files "getTanh_B1_start_merge_reg.sv"                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B1_start_merge_reg.sv"                                      
    dict set design_files "getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0.sv"         "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0.sv"        
    dict set design_files "getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv"        "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv"       
    dict set design_files "getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_reg.sv"    "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_reg.sv"   
    dict set design_files "getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"       "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"      
    dict set design_files "getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv"
    dict set design_files "getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"
    dict set design_files "getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh0.sv"                "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh0.sv"               
    dict set design_files "getTanh_i_llvm_fpga_push_i1_notexitcond5_gettanh0.sv"                "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i1_notexitcond5_gettanh0.sv"               
    dict set design_files "getTanh_B1_start_branch.sv"                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B1_start_branch.sv"                                         
    dict set design_files "getTanh_B1_start_merge.sv"                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B1_start_merge.sv"                                          
    dict set design_files "getTanh_bb_B2.sv"                                                    "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B2.sv"                                                   
    dict set design_files "getTanh_bb_B2_stall_region.sv"                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B2_stall_region.sv"                                      
    dict set design_files "getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh3_gettanh0.sv"       "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh3_gettanh0.sv"      
    dict set design_files "getTanh_i_llvm_fpga_ffwd_dest_f32_acl_1_gettanh0.sv"                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_ffwd_dest_f32_acl_1_gettanh0.sv"                
    dict set design_files "getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv"         "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv"        
    dict set design_files "getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh2_reg.sv"     "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh2_reg.sv"    
    dict set design_files "getTanh_B2_branch.sv"                                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B2_branch.sv"                                               
    dict set design_files "getTanh_B2_merge.sv"                                                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B2_merge.sv"                                                
    dict set design_files "getTanh_bb_B3.sv"                                                    "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B3.sv"                                                   
    dict set design_files "getTanh_bb_B3_stall_region.sv"                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B3_stall_region.sv"                                      
    dict set design_files "getTanh_B3_merge_reg.sv"                                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B3_merge_reg.sv"                                            
    dict set design_files "getTanh_i_sfc_s_c0_in_for_body_gettanhs_c0_enter82_gettanh1.sv"      "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_s_c0_in_for_body_gettanhs_c0_enter82_gettanh1.sv"     
    dict set design_files "getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0000s_c0_exit10_gettanh0.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0000s_c0_exit10_gettanh0.sv"
    dict set design_files "getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0000ttanh1_full_detector.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0000ttanh1_full_detector.sv"
    dict set design_files "getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo00000_gettanh1_data_fifo.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo00000_gettanh1_data_fifo.sv"
    dict set design_files "getTanh_i_sfc_logic_s_c0_in_for_body_get0000_c0_enter82_gettanh0.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_logic_s_c0_in_for_body_get0000_c0_enter82_gettanh0.sv"
    dict set design_files "getTanh_i_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh0.sv"    "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh0.sv"   
    dict set design_files "getTanh_flt_i_sfc_logic_s_c0_in_for_body0000xk5id06uq0cp0jv34qcz.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_flt_i_sfc_logic_s_c0_in_for_body0000xk5id06uq0cp0jv34qcz.sv"
    dict set design_files "getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv"                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv"                         
    dict set design_files "getTanh_i_llvm_fpga_mem_unnamed_gettanh4_gettanh0.sv"                "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_mem_unnamed_gettanh4_gettanh0.sv"               
    dict set design_files "getTanh_i_llvm_fpga_mem_unnamed_gettanh5_gettanh0.sv"                "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_mem_unnamed_gettanh5_gettanh0.sv"               
    dict set design_files "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv"                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv"                
    dict set design_files "getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0.sv"        "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0.sv"       
    dict set design_files "getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0.sv"              "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0.sv"             
    dict set design_files "getTanh_i_llvm_fpga_pop_i32_i_014_pop7_gettanh0.sv"                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_i32_i_014_pop7_gettanh0.sv"                 
    dict set design_files "getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0.sv"               "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0.sv"              
    dict set design_files "getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0.sv"            "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0.sv"           
    dict set design_files "getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0.sv"      "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0.sv"     
    dict set design_files "getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0.sv"             "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0.sv"            
    dict set design_files "getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0.sv"            "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0.sv"           
    dict set design_files "getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv"                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv"                
    dict set design_files "getTanh_i_llvm_fpga_push_i32_i_014_push7_gettanh0.sv"                "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i32_i_014_push7_gettanh0.sv"               
    dict set design_files "getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0.sv"             "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0.sv"            
    dict set design_files "getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0.sv"          "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0.sv"         
    dict set design_files "getTanh_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y.sv" "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y.sv"
    dict set design_files "getTanh_B3_branch.sv"                                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B3_branch.sv"                                               
    dict set design_files "getTanh_B3_merge.sv"                                                 "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B3_merge.sv"                                                
    dict set design_files "getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh1_sr.sv"             "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh1_sr.sv"            
    dict set design_files "getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo.sv"     "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo.sv"    
    dict set design_files "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh6_sr.sv"              "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh6_sr.sv"             
    dict set design_files "getTanh_i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo.sv"      "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo.sv"     
    dict set design_files "getTanh_loop_limiter_0.sv"                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_loop_limiter_0.sv"                                          
    dict set design_files "getTanh_bb_B2_sr_0.sv"                                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B2_sr_0.sv"                                              
    dict set design_files "getTanh_bb_B3_sr_1.sv"                                               "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B3_sr_1.sv"                                              
    dict set design_files "acl_avm_to_ic.v"                                                     "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_avm_to_ic.v"                                                    
    dict set design_files "acl_mem1x.v"                                                         "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_mem1x.v"                                                        
    dict set design_files "hld_ram.sv"                                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram.sv"                                                         
    dict set design_files "hld_ram_ecc.sv"                                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_ecc.sv"                                                     
    dict set design_files "hld_ram_tall_depth_stitch.sv"                                        "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_tall_depth_stitch.sv"                                       
    dict set design_files "hld_ram_remaining_width.sv"                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_remaining_width.sv"                                         
    dict set design_files "hld_ram_bits_per_enable.sv"                                          "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_bits_per_enable.sv"                                         
    dict set design_files "hld_ram_generic_two_way_depth_stitch.sv"                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_generic_two_way_depth_stitch.sv"                            
    dict set design_files "hld_ram_generic_three_way_depth_stitch.sv"                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_generic_three_way_depth_stitch.sv"                          
    dict set design_files "hld_ram_short_depth_stitch.sv"                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_short_depth_stitch.sv"                                      
    dict set design_files "hld_ram_bottom_width_stitch.sv"                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_bottom_width_stitch.sv"                                     
    dict set design_files "hld_ram_bottom_depth_stitch.sv"                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_bottom_depth_stitch.sv"                                     
    dict set design_files "hld_ram_lower.sv"                                                    "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower.sv"                                                   
    dict set design_files "hld_ram_lower_mlab_simple_dual_port.sv"                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower_mlab_simple_dual_port.sv"                             
    dict set design_files "hld_ram_lower_m20k_simple_dual_port.sv"                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower_m20k_simple_dual_port.sv"                             
    dict set design_files "hld_ram_lower_m20k_true_dual_port.sv"                                "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower_m20k_true_dual_port.sv"                               
    dict set design_files "acl_ic_local_mem_router.v"                                           "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_local_mem_router.v"                                          
    dict set design_files "acl_ic_host_endpoint.v"                                              "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_host_endpoint.v"                                             
    dict set design_files "acl_arb_intf.v"                                                      "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_arb_intf.v"                                                     
    dict set design_files "acl_ic_intf.v"                                                       "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_intf.v"                                                      
    dict set design_files "acl_ic_agent_endpoint.v"                                             "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_agent_endpoint.v"                                            
    dict set design_files "acl_ic_agent_rrp.v"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_agent_rrp.v"                                                 
    dict set design_files "acl_ic_agent_wrp.v"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_agent_wrp.v"                                                 
    dict set design_files "getTanh_internal.v"                                                  "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_internal.v"                                                 
    dict set design_files "getTanh.v"                                                           "$QSYS_SIMDIR/getTanh.v"                                                                                     
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
