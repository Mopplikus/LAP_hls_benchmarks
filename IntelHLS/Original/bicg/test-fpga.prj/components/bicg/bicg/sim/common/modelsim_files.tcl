
namespace eval bicg {
  proc get_design_libraries {} {
    set libraries [dict create]
    dict set libraries bicg_internal_10 1
    dict set libraries bicg             1
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
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_reset_handler.sv"]\"  -work bicg_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/dspba_library_ver.sv"]\"  -work bicg_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ecc_pkg.sv"]\"  -work bicg_internal_10"                                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_data_fifo.v"]\"  -work bicg_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_fifo.v"]\"  -work bicg_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_altera_syncram_wrapped.sv"]\"  -work bicg_internal_10"                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_scfifo_wrapped.sv"]\"  -work bicg_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ecc_decoder.sv"]\"  -work bicg_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ecc_encoder.sv"]\"  -work bicg_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ll_fifo.v"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ll_ram_fifo.v"]\"  -work bicg_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_valid_fifo_counter.v"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_dspba_valid_fifo_counter.v"]\"  -work bicg_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_staging_reg.v"]\"  -work bicg_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_fifo.sv"]\"  -work bicg_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_mid_speed_fifo.sv"]\"  -work bicg_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_latency_one_ram_fifo.sv"]\"  -work bicg_internal_10"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_latency_zero_ram_fifo.sv"]\"  -work bicg_internal_10"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_fifo_zero_width.sv"]\"  -work bicg_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_high_speed_fifo.sv"]\"  -work bicg_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_low_latency_fifo.sv"]\"  -work bicg_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_zero_latency_fifo.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_fanout_pipeline.sv"]\"  -work bicg_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_std_synchronizer_nocut.v"]\"  -work bicg_internal_10"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_tessellated_incr_decr_threshold.sv"]\"  -work bicg_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_tessellated_incr_lookahead.sv"]\"  -work bicg_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_lfsr.sv"]\"  -work bicg_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_mlab_fifo.sv"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_parameter_assert.svh"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_pop_stall_latency.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_sync.sv"]\"  -work bicg_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_desync.sv"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_push_stall_latency.sv"]\"  -work bicg_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_dspba_buffer.v"]\"  -work bicg_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_fast_pipeline.v"]\"  -work bicg_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_push.v"]\"  -work bicg_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_token_fifo_counter.v"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_full_detector.v"]\"  -work bicg_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_tessellated_incr_decr_decr.sv"]\"  -work bicg_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_loop_admit.sv"]\"  -work bicg_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_shift_register_no_reset_dont_merge.sv"]\"  -work bicg_internal_10"                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_memory_depth_quantization_pkg.sv"]\"  -work bicg_internal_10"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_iord.sv"]\"  -work bicg_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_iord_stall_latency.sv"]\"  -work bicg_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_iord_stall_valid.sv"]\"  -work bicg_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_shift_register_no_reset.sv"]\"  -work bicg_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_pop_stall_latency_zero_width.sv"]\"  -work bicg_internal_10"                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_iowr.sv"]\"  -work bicg_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_iowr_stall_latency.sv"]\"  -work bicg_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_iowr_stall_valid.sv"]\"  -work bicg_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_push_stall_latency_zero_width.sv"]\"  -work bicg_internal_10"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_top.v"]\"  -work bicg_internal_10"                                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_permute_address.v"]\"  -work bicg_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_pipelined.v"]\"  -work bicg_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_enabled.v"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_basic_coalescer.v"]\"  -work bicg_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_simple.v"]\"  -work bicg_internal_10"                                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_streaming.v"]\"  -work bicg_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_burst_host.v"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_bursting_load_stores.v"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_non_aligned_write.v"]\"  -work bicg_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_read_cache.v"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_atomic.v"]\"  -work bicg_internal_10"                                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_prefetch_block.v"]\"  -work bicg_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_wide_wrapper.v"]\"  -work bicg_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_streaming_prefetch.v"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_aligned_burst_coalesced_lsu.v"]\"  -work bicg_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_toggle_detect.v"]\"  -work bicg_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_debug_mem.v"]\"  -work bicg_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_burst_coalesced_pipelined_write.sv"]\"  -work bicg_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/lsu_burst_coalesced_pipelined_read.sv"]\"  -work bicg_internal_10"                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_fifo_stall_valid_lookahead.sv"]\"  -work bicg_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_global_load_store.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu.sv"]\"  -work bicg_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_burst_coalescer.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_coalescer_dynamic_timeout.sv"]\"  -work bicg_internal_10"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_data_aligner.sv"]\"  -work bicg_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_read_cache.sv"]\"  -work bicg_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_read_data_alignment.sv"]\"  -work bicg_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_unaligned_controller.sv"]\"  -work bicg_internal_10"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_word_coalescer.sv"]\"  -work bicg_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_write_data_alignment.sv"]\"  -work bicg_internal_10"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_lsu_write_kernel_downstream.sv"]\"  -work bicg_internal_10"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_loop_profiler.sv"]\"  -work bicg_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_sim_latency_tracker.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_function_wrapper.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_function.sv"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B0_runOnce.sv"]\"  -work bicg_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B0_runOnce_stall_region.sv"]\"  -work bicg_internal_10"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"]\"  -work bicg_internal_10"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"]\"  -work bicg_internal_10"                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B0_runOnce_branch.sv"]\"  -work bicg_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B0_runOnce_merge.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B0_runOnce_merge_storage.sv"]\"  -work bicg_internal_10"                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B1_start.sv"]\"  -work bicg_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B1_start_stall_region.sv"]\"  -work bicg_internal_10"                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_pop_i1_memdep_phi_pop7_0.sv"]\"  -work bicg_internal_10"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_iord_bl_call_unnamed_bicg0_bicg0.sv"]\"  -work bicg_internal_10"                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_s_c0_in_wt_entry_s_c0_enter7_bicg1.sv"]\"  -work bicg_internal_10"                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_bicg0.sv"]\"  -work bicg_internal_10"     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_wt_en0000_bicg1_full_detector.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_wt_en0000exit_bicg1_data_fifo.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter7_bicg0.sv"]\"  -work bicg_internal_10"             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_dummy_thread_b1_start_dummy_bicg0.sv"]\"  -work bicg_internal_10"              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_forked_b1_start_forked_bicg0.sv"]\"  -work bicg_internal_10"                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_pipeline_keep_going13_0.sv"]\"  -work bicg_internal_10"                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_push_i1_notexitcond14_0.sv"]\"  -work bicg_internal_10"                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B1_start_branch.sv"]\"  -work bicg_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B1_start_merge.sv"]\"  -work bicg_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B1_start_merge_storage.sv"]\"  -work bicg_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B2.sv"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B2_stall_region.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_iowr_bl_return_unnamed_bicg1_bicg0.sv"]\"  -work bicg_internal_10"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_push_i1_memdep_phi_push7_0.sv"]\"  -work bicg_internal_10"                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B2_branch.sv"]\"  -work bicg_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B2_merge.sv"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B2_merge_storage.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B3.sv"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B3_stall_region.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_pop_i1_memdep_phi2_pop11_0.sv"]\"  -work bicg_internal_10"                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_s_c0_in_for_body_s_c0_enter488_bicg3.sv"]\"  -work bicg_internal_10"                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_body_s_c0_exit52_bicg0.sv"]\"  -work bicg_internal_10"   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_b0000_bicg1_full_detector.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_b0000it52_bicg1_data_fifo.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_logic_s_c0_in_for_body_s_c0_enter488_bicg0.sv"]\"  -work bicg_internal_10"           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_dummy_thread_b3_dummy_bicg0.sv"]\"  -work bicg_internal_10"                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_forked_b3_forked_bicg0.sv"]\"  -work bicg_internal_10"                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_mem_unnamed_2_bicg0.sv"]\"  -work bicg_internal_10"                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_pipeline_keep_going9_0.sv"]\"  -work bicg_internal_10"                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_push_i1_notexitcond10_0.sv"]\"  -work bicg_internal_10"                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B3_branch.sv"]\"  -work bicg_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B3_merge.sv"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B3_merge_storage.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B4.sv"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B4_stall_region.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_push_i1_memdep_phi2_push11_0.sv"]\"  -work bicg_internal_10"                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_s_c0_in_for_cond_cleanup8_s_c0_enter57_bicg2.sv"]\"  -work bicg_internal_10"         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_c0000p8_s_c0_exit61_bicg0.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_c0000_bicg1_full_detector.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_c0000it61_bicg1_data_fifo.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_logic_s_c0_in_for_cond_cleanup8_s_c0_enter57_bicg0.sv"]\"  -work bicg_internal_10"   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_mem_memdep_0.sv"]\"  -work bicg_internal_10"                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B4_branch.sv"]\"  -work bicg_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B4_merge.sv"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B4_merge_storage.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B5.sv"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_bb_B5_stall_region.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_s_c0_in_for_body9_s_c0_enter669_bicg11.sv"]\"  -work bicg_internal_10"               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_body9_s_c0_exit79_bicg0.sv"]\"  -work bicg_internal_10"  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_b0001_bicg1_full_detector.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_b0000it79_bicg1_data_fifo.sv"]\"  -work bicg_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_sfc_logic_s_c0_in_for_body9_s_c0_enter669_bicg0.sv"]\"  -work bicg_internal_10"          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_dummy_thread_b5_dummy_bicg0.sv"]\"  -work bicg_internal_10"                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_forked_b5_forked_bicg0.sv"]\"  -work bicg_internal_10"                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_mem_memdep_1_0.sv"]\"  -work bicg_internal_10"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_mem_unnamed_5_bicg0.sv"]\"  -work bicg_internal_10"                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_mem_unnamed_6_bicg0.sv"]\"  -work bicg_internal_10"                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_mem_unnamed_7_bicg0.sv"]\"  -work bicg_internal_10"                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_mem_unnamed_8_bicg0.sv"]\"  -work bicg_internal_10"                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_pipeline_keep_going_0.sv"]\"  -work bicg_internal_10"                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_i_llvm_fpga_push_i1_notexitcond_0.sv"]\"  -work bicg_internal_10"                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B5_branch.sv"]\"  -work bicg_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B5_merge.sv"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_B5_merge_storage.sv"]\"  -work bicg_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_start_pulse.sv"]\"  -work bicg_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_wait_pulse_extender_inst.sv"]\"  -work bicg_internal_10"                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_avm_to_ic.v"]\"  -work bicg_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_mem1x.v"]\"  -work bicg_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram.sv"]\"  -work bicg_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_ecc.sv"]\"  -work bicg_internal_10"                                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_tall_depth_stitch.sv"]\"  -work bicg_internal_10"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_remaining_width.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_bits_per_enable.sv"]\"  -work bicg_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_generic_two_way_depth_stitch.sv"]\"  -work bicg_internal_10"                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_generic_three_way_depth_stitch.sv"]\"  -work bicg_internal_10"                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_short_depth_stitch.sv"]\"  -work bicg_internal_10"                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_bottom_width_stitch.sv"]\"  -work bicg_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_bottom_depth_stitch.sv"]\"  -work bicg_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_lower.sv"]\"  -work bicg_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_lower_mlab_simple_dual_port.sv"]\"  -work bicg_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_lower_m20k_simple_dual_port.sv"]\"  -work bicg_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/hld_ram_lower_m20k_true_dual_port.sv"]\"  -work bicg_internal_10"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ic_local_mem_router.v"]\"  -work bicg_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ic_host_endpoint.v"]\"  -work bicg_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_arb_intf.v"]\"  -work bicg_internal_10"                                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ic_intf.v"]\"  -work bicg_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ic_agent_endpoint.v"]\"  -work bicg_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ic_agent_rrp.v"]\"  -work bicg_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/acl_ic_agent_wrp.v"]\"  -work bicg_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../bicg_internal_10/sim/bicg_internal.v"]\"  -work bicg_internal_10"                                                    
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/bicg.v"]\"  -work bicg"                                                                                                     
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
