
namespace eval fir {
  proc get_design_libraries {} {
    set libraries [dict create]
    dict set libraries fir_internal_10 1
    dict set libraries fir             1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_reset_handler.sv"]\"  -work fir_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/dspba_library_ver.sv"]\"  -work fir_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ecc_pkg.sv"]\"  -work fir_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_data_fifo.v"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_fifo.v"]\"  -work fir_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_altera_syncram_wrapped.sv"]\"  -work fir_internal_10"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_scfifo_wrapped.sv"]\"  -work fir_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ecc_decoder.sv"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ecc_encoder.sv"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ll_fifo.v"]\"  -work fir_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ll_ram_fifo.v"]\"  -work fir_internal_10"                                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_valid_fifo_counter.v"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_dspba_valid_fifo_counter.v"]\"  -work fir_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_staging_reg.v"]\"  -work fir_internal_10"                                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_fifo.sv"]\"  -work fir_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_mid_speed_fifo.sv"]\"  -work fir_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_latency_one_ram_fifo.sv"]\"  -work fir_internal_10"                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_latency_zero_ram_fifo.sv"]\"  -work fir_internal_10"                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_fifo_zero_width.sv"]\"  -work fir_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_high_speed_fifo.sv"]\"  -work fir_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_low_latency_fifo.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_zero_latency_fifo.sv"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_fanout_pipeline.sv"]\"  -work fir_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_std_synchronizer_nocut.v"]\"  -work fir_internal_10"                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_tessellated_incr_decr_threshold.sv"]\"  -work fir_internal_10"                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_tessellated_incr_lookahead.sv"]\"  -work fir_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_lfsr.sv"]\"  -work fir_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_mlab_fifo.sv"]\"  -work fir_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_parameter_assert.svh"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_pop_stall_latency.sv"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_sync.sv"]\"  -work fir_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_desync.sv"]\"  -work fir_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_push_stall_latency.sv"]\"  -work fir_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_dspba_buffer.v"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_fast_pipeline.v"]\"  -work fir_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_push.v"]\"  -work fir_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_token_fifo_counter.v"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_full_detector.v"]\"  -work fir_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_tessellated_incr_decr_decr.sv"]\"  -work fir_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_loop_admit.sv"]\"  -work fir_internal_10"                                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_shift_register_no_reset_dont_merge.sv"]\"  -work fir_internal_10"                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_memory_depth_quantization_pkg.sv"]\"  -work fir_internal_10"                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_iord.sv"]\"  -work fir_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_iord_stall_latency.sv"]\"  -work fir_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_iord_stall_valid.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_shift_register_no_reset.sv"]\"  -work fir_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ffwddst.sv"]\"  -work fir_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_iowr.sv"]\"  -work fir_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_iowr_stall_latency.sv"]\"  -work fir_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_iowr_stall_valid.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_top.v"]\"  -work fir_internal_10"                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_permute_address.v"]\"  -work fir_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_pipelined.v"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_enabled.v"]\"  -work fir_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_basic_coalescer.v"]\"  -work fir_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_simple.v"]\"  -work fir_internal_10"                                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_streaming.v"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_burst_host.v"]\"  -work fir_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_bursting_load_stores.v"]\"  -work fir_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_non_aligned_write.v"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_read_cache.v"]\"  -work fir_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_atomic.v"]\"  -work fir_internal_10"                                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_prefetch_block.v"]\"  -work fir_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_wide_wrapper.v"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_streaming_prefetch.v"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_aligned_burst_coalesced_lsu.v"]\"  -work fir_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_toggle_detect.v"]\"  -work fir_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_debug_mem.v"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_burst_coalesced_pipelined_write.sv"]\"  -work fir_internal_10"                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/lsu_burst_coalesced_pipelined_read.sv"]\"  -work fir_internal_10"                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_fifo_stall_valid_lookahead.sv"]\"  -work fir_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_global_load_store.sv"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu.sv"]\"  -work fir_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_burst_coalescer.sv"]\"  -work fir_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_coalescer_dynamic_timeout.sv"]\"  -work fir_internal_10"                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_data_aligner.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_read_cache.sv"]\"  -work fir_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_read_data_alignment.sv"]\"  -work fir_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_unaligned_controller.sv"]\"  -work fir_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_word_coalescer.sv"]\"  -work fir_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_write_data_alignment.sv"]\"  -work fir_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_lsu_write_kernel_downstream.sv"]\"  -work fir_internal_10"                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ffwdsrc.v"]\"  -work fir_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_loop_profiler.sv"]\"  -work fir_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_sim_latency_tracker.sv"]\"  -work fir_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_function_wrapper.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_function.sv"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B0_runOnce.sv"]\"  -work fir_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B0_runOnce_stall_region.sv"]\"  -work fir_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"]\"  -work fir_internal_10"                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"]\"  -work fir_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B0_runOnce_branch.sv"]\"  -work fir_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B0_runOnce_merge.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B0_runOnce_merge_storage.sv"]\"  -work fir_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B1_start.sv"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B1_start_stall_region.sv"]\"  -work fir_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"]\"  -work fir_internal_10"                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_iord_bl_call_unnamed_fir1_fir0.sv"]\"  -work fir_internal_10"                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_sfc_s_c0_in_wt_entry_s_c0_enter1_fir0.sv"]\"  -work fir_internal_10"                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_fir0.sv"]\"  -work fir_internal_10"       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_wt_ent0000t_fir1_full_detector.sv"]\"  -work fir_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_wt_ent0000_exit_fir1_data_fifo.sv"]\"  -work fir_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_fir0.sv"]\"  -work fir_internal_10"               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_dummy_thread_b1_start_dummy_fir0.sv"]\"  -work fir_internal_10"                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_forked_b1_start_forked_fir0.sv"]\"  -work fir_internal_10"                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_pipeline_keep_going3_0.sv"]\"  -work fir_internal_10"                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_push_i1_notexitcond4_0.sv"]\"  -work fir_internal_10"                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B1_start_branch.sv"]\"  -work fir_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B1_start_merge.sv"]\"  -work fir_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B1_start_merge_storage.sv"]\"  -work fir_internal_10"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B2.sv"]\"  -work fir_internal_10"                                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B2_stall_region.sv"]\"  -work fir_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_iowr_bl_return_unnamed_fir4_fir0.sv"]\"  -work fir_internal_10"                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_push_token_i1_throttle_push_0.sv"]\"  -work fir_internal_10"                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_sfc_s_c0_in_for_cond_cleanup_s_c0_enter6_fir0.sv"]\"  -work fir_internal_10"             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_for_co0000anup_s_c0_exit8_fir0.sv"]\"  -work fir_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_for_co00008_fir1_full_detector.sv"]\"  -work fir_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_for_co0000exit8_fir1_data_fifo.sv"]\"  -work fir_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_sfc_logic_s_c0_in_for_cond_cleanup_s_c0_enter6_fir0.sv"]\"  -work fir_internal_10"       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_ffwd_dest_i32_add1_0.sv"]\"  -work fir_internal_10"                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B2_branch.sv"]\"  -work fir_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B2_merge.sv"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B2_merge_storage.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B3.sv"]\"  -work fir_internal_10"                                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_bb_B3_stall_region.sv"]\"  -work fir_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_sfc_s_c0_in_for_body_s_c0_enter102_fir1.sv"]\"  -work fir_internal_10"                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_for_body_s_c0_exit12_fir0.sv"]\"  -work fir_internal_10"     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_for_bo00002_fir1_full_detector.sv"]\"  -work fir_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_sfc_exit_s_c0_out_for_bo0000xit12_fir1_data_fifo.sv"]\"  -work fir_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_sfc_logic_s_c0_in_for_body_s_c0_enter102_fir0.sv"]\"  -work fir_internal_10"             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_dummy_thread_b3_dummy_fir0.sv"]\"  -work fir_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_ffwd_source_i32_unnamed_7_fir0.sv"]\"  -work fir_internal_10"                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_forked_b3_forked_fir0.sv"]\"  -work fir_internal_10"                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_mem_unnamed_5_fir0.sv"]\"  -work fir_internal_10"                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_mem_unnamed_6_fir0.sv"]\"  -work fir_internal_10"                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_pipeline_keep_going_0.sv"]\"  -work fir_internal_10"                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_i_llvm_fpga_push_i1_notexitcond_0.sv"]\"  -work fir_internal_10"                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B3_branch.sv"]\"  -work fir_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B3_merge.sv"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_B3_merge_storage.sv"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_start_pulse.sv"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_wait_pulse_extender_inst.sv"]\"  -work fir_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_avm_to_ic.v"]\"  -work fir_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_mem1x.v"]\"  -work fir_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram.sv"]\"  -work fir_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_ecc.sv"]\"  -work fir_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_tall_depth_stitch.sv"]\"  -work fir_internal_10"                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_remaining_width.sv"]\"  -work fir_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_bits_per_enable.sv"]\"  -work fir_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_generic_two_way_depth_stitch.sv"]\"  -work fir_internal_10"                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_generic_three_way_depth_stitch.sv"]\"  -work fir_internal_10"                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_short_depth_stitch.sv"]\"  -work fir_internal_10"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_bottom_width_stitch.sv"]\"  -work fir_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_bottom_depth_stitch.sv"]\"  -work fir_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_lower.sv"]\"  -work fir_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_lower_mlab_simple_dual_port.sv"]\"  -work fir_internal_10"                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_lower_m20k_simple_dual_port.sv"]\"  -work fir_internal_10"                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/hld_ram_lower_m20k_true_dual_port.sv"]\"  -work fir_internal_10"                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ic_local_mem_router.v"]\"  -work fir_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ic_host_endpoint.v"]\"  -work fir_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_arb_intf.v"]\"  -work fir_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ic_intf.v"]\"  -work fir_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ic_agent_endpoint.v"]\"  -work fir_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ic_agent_rrp.v"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/acl_ic_agent_wrp.v"]\"  -work fir_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../fir_internal_10/sim/fir_internal.v"]\"  -work fir_internal_10"                                                     
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/fir.v"]\"  -work fir"                                                                                            
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
  
  
  proc normalize_path {FILEPATH} {
      if {[catch { package require fileutil } err]} { 
          return $FILEPATH 
      } 
      set path [fileutil::lexnormalize [file join [pwd] $FILEPATH]]  
      if {[file pathtype $FILEPATH] eq "relative"} { 
          set path [fileutil::relative [pwd] $path] 
      } 
      return $path 
  } 
}
