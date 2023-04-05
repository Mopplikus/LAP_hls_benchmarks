
namespace eval example {
  proc get_design_libraries {} {
    set libraries [dict create]
    dict set libraries example_internal_10 1
    dict set libraries example             1
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
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/dspba_library_ver.sv"]\"  -work example_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ecc_pkg.sv"]\"  -work example_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_data_fifo.v"]\"  -work example_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_fifo.v"]\"  -work example_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_altera_syncram_wrapped.sv"]\"  -work example_internal_10"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_scfifo_wrapped.sv"]\"  -work example_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ecc_decoder.sv"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ecc_encoder.sv"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ll_fifo.v"]\"  -work example_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ll_ram_fifo.v"]\"  -work example_internal_10"                                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_valid_fifo_counter.v"]\"  -work example_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_dspba_valid_fifo_counter.v"]\"  -work example_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_staging_reg.v"]\"  -work example_internal_10"                                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_fifo.sv"]\"  -work example_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_mid_speed_fifo.sv"]\"  -work example_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_latency_one_ram_fifo.sv"]\"  -work example_internal_10"                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_latency_zero_ram_fifo.sv"]\"  -work example_internal_10"                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_fifo_zero_width.sv"]\"  -work example_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_high_speed_fifo.sv"]\"  -work example_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_low_latency_fifo.sv"]\"  -work example_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_zero_latency_fifo.sv"]\"  -work example_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_fanout_pipeline.sv"]\"  -work example_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_std_synchronizer_nocut.v"]\"  -work example_internal_10"                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_tessellated_incr_decr_threshold.sv"]\"  -work example_internal_10"                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_tessellated_incr_lookahead.sv"]\"  -work example_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_reset_handler.sv"]\"  -work example_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_lfsr.sv"]\"  -work example_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_mlab_fifo.sv"]\"  -work example_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_parameter_assert.svh"]\"  -work example_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_pop.v"]\"  -work example_internal_10"                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_push.v"]\"  -work example_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_token_fifo_counter.v"]\"  -work example_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_pipeline.v"]\"  -work example_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_dspba_buffer.v"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_enable_sink.v"]\"  -work example_internal_10"                                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_memory_depth_quantization_pkg.sv"]\"  -work example_internal_10"                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_iord.sv"]\"  -work example_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_iord_stall_latency.sv"]\"  -work example_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_iord_stall_valid.sv"]\"  -work example_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_shift_register_no_reset.sv"]\"  -work example_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ffwdsrc.v"]\"  -work example_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ffwddst.sv"]\"  -work example_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_top.v"]\"  -work example_internal_10"                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_permute_address.v"]\"  -work example_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_pipelined.v"]\"  -work example_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_enabled.v"]\"  -work example_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_basic_coalescer.v"]\"  -work example_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_simple.v"]\"  -work example_internal_10"                                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_streaming.v"]\"  -work example_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_burst_host.v"]\"  -work example_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_bursting_load_stores.v"]\"  -work example_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_non_aligned_write.v"]\"  -work example_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_read_cache.v"]\"  -work example_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_atomic.v"]\"  -work example_internal_10"                                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_prefetch_block.v"]\"  -work example_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_wide_wrapper.v"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_streaming_prefetch.v"]\"  -work example_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_aligned_burst_coalesced_lsu.v"]\"  -work example_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_toggle_detect.v"]\"  -work example_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_debug_mem.v"]\"  -work example_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_burst_coalesced_pipelined_write.sv"]\"  -work example_internal_10"                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/lsu_burst_coalesced_pipelined_read.sv"]\"  -work example_internal_10"                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_fifo_stall_valid_lookahead.sv"]\"  -work example_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_global_load_store.sv"]\"  -work example_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu.sv"]\"  -work example_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_burst_coalescer.sv"]\"  -work example_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_coalescer_dynamic_timeout.sv"]\"  -work example_internal_10"                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_data_aligner.sv"]\"  -work example_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_read_cache.sv"]\"  -work example_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_read_data_alignment.sv"]\"  -work example_internal_10"                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_unaligned_controller.sv"]\"  -work example_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_word_coalescer.sv"]\"  -work example_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_write_data_alignment.sv"]\"  -work example_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_lsu_write_kernel_downstream.sv"]\"  -work example_internal_10"                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_full_detector.v"]\"  -work example_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_tessellated_incr_decr_decr.sv"]\"  -work example_internal_10"                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_iowr.sv"]\"  -work example_internal_10"                                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_iowr_stall_latency.sv"]\"  -work example_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_iowr_stall_valid.sv"]\"  -work example_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_loop_profiler.sv"]\"  -work example_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/hld_sim_latency_tracker.sv"]\"  -work example_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_loop_limiter.v"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_reset_wire.v"]\"  -work example_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_function_wrapper.sv"]\"  -work example_internal_10"                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_function.sv"]\"  -work example_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B0_runOnce.sv"]\"  -work example_internal_10"                                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B0_runOnce_stall_region.sv"]\"  -work example_internal_10"                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B0_runOnce_merge_reg.sv"]\"  -work example_internal_10"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"]\"  -work example_internal_10"                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"]\"  -work example_internal_10"                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"]\"  -work example_internal_10"                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"]\"  -work example_internal_10"              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B0_runOnce_branch.sv"]\"  -work example_internal_10"                                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B0_runOnce_merge.sv"]\"  -work example_internal_10"                                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B1_start.sv"]\"  -work example_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B1_start_stall_region.sv"]\"  -work example_internal_10"                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B1_start_merge_reg.sv"]\"  -work example_internal_10"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_ffwd_source_p1024f32_unnamed_3_example0.sv"]\"  -work example_internal_10"     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_ffwd_source_p1024f32_unnamed_4_example0.sv"]\"  -work example_internal_10"     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"]\"  -work example_internal_10"              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv"]\"  -work example_internal_10"          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_iord_bl_call_unnamed_example2_example0.sv"]\"  -work example_internal_10"                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_sfc_s_c0_in_wt_entry_s_c0_enter1_example0.sv"]\"  -work example_internal_10"             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_sfc_exit_s_c0_out_wt0000y_s_c0_exit_example0.sv"]\"  -work example_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_example0.sv"]\"  -work example_internal_10"       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pipeline_keep_going5_0.sv"]\"  -work example_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_i1_notexitcond6_0.sv"]\"  -work example_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B1_start_branch.sv"]\"  -work example_internal_10"                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B1_start_merge.sv"]\"  -work example_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B2.sv"]\"  -work example_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B2_stall_region.sv"]\"  -work example_internal_10"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_mem_unnamed_5_example0.sv"]\"  -work example_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_readdata_reg_unnamed_5_example0.sv"]\"  -work example_internal_10"                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_mem_unnamed_6_example0.sv"]\"  -work example_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_readdata_reg_unnamed_6_example1.sv"]\"  -work example_internal_10"                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B2_merge_reg.sv"]\"  -work example_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_sfc_s_c0_in_for_body_s_c0_enter82_example1.sv"]\"  -work example_internal_10"            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_sfc_exit_s_c0_out_fo0000s_c0_exit10_example0.sv"]\"  -work example_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_sfc_logic_s_c0_in_for_body_s_c0_enter82_example0.sv"]\"  -work example_internal_10"      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_ffwd_dest_p1024f32_a121_0.sv"]\"  -work example_internal_10"                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_ffwd_dest_p1024f32_b132_0.sv"]\"  -work example_internal_10"                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pipeline_keep_going_0.sv"]\"  -work example_internal_10"                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_i32_i_011_pop7_0.sv"]\"  -work example_internal_10"                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_i4_cleanups_pop10_0.sv"]\"  -work example_internal_10"                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_i4_initerations_pop9_0.sv"]\"  -work example_internal_10"                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_0.sv"]\"  -work example_internal_10"               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_i1_lastiniteration_0.sv"]\"  -work example_internal_10"                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_i1_notexitcond_0.sv"]\"  -work example_internal_10"                       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_i32_i_011_push7_0.sv"]\"  -work example_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_i4_cleanups_push10_0.sv"]\"  -work example_internal_10"                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_i4_initerations_push9_0.sv"]\"  -work example_internal_10"                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_0.sv"]\"  -work example_internal_10"             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_sfc_s_c1_in_for_body_s_c1_enter_example6.sv"]\"  -work example_internal_10"              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_sfc_exit_s_c1_out_fo0000y_s_c1_exit_example0.sv"]\"  -work example_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_sfc_exit_s_c1_out_fo0000ample1_full_detector.sv"]\"  -work example_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_sfc_exit_s_c1_out_fo0000t_example1_data_fifo.sv"]\"  -work example_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_sfc_logic_s_c1_in_for_body_s_c1_enter_example0.sv"]\"  -work example_internal_10"        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_flt_i_sfc_logic_s_c1_in_for_body00003a0054c2a6344c246w65.sv"]\"  -work example_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_ffwd_source_f32_unnamed_7_example0.sv"]\"  -work example_internal_10"          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pop_f32_s_010_pop8_0.sv"]\"  -work example_internal_10"                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_f32_s_010_push8_0.sv"]\"  -work example_internal_10"                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_flt_i_sfc_logic_s_c1_in_for_body00002463a0054c2a6342iyc5.sv"]\"  -work example_internal_10"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B2_branch.sv"]\"  -work example_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B2_merge.sv"]\"  -work example_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B3.sv"]\"  -work example_internal_10"                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B3_stall_region.sv"]\"  -work example_internal_10"                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_iowr_bl_return_unnamed_example10_example0.sv"]\"  -work example_internal_10"             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_ffwd_dest_f32_unnamed_9_example0.sv"]\"  -work example_internal_10"            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_token_i1_throttle_push_0.sv"]\"  -work example_internal_10"               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_push_token_i1_throttle_push_2_reg.sv"]\"  -work example_internal_10"           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B3_branch.sv"]\"  -work example_internal_10"                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_B3_merge.sv"]\"  -work example_internal_10"                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pipeline_keep_going5_1_sr.sv"]\"  -work example_internal_10"                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pipeline_keep_going5_1_valid_fifo.sv"]\"  -work example_internal_10"           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pipeline_keep_going_6_sr.sv"]\"  -work example_internal_10"                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv"]\"  -work example_internal_10"            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_loop_limiter_0.sv"]\"  -work example_internal_10"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B2_sr_1.sv"]\"  -work example_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_bb_B3_sr_0.sv"]\"  -work example_internal_10"                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_avm_to_ic.v"]\"  -work example_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ic_host_endpoint.v"]\"  -work example_internal_10"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_arb_intf.v"]\"  -work example_internal_10"                                                     
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ic_intf.v"]\"  -work example_internal_10"                                                      
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ic_agent_endpoint.v"]\"  -work example_internal_10"                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ic_agent_rrp.v"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ic_agent_wrp.v"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_arb2.v"]\"  -work example_internal_10"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/acl_ic_to_avm.v"]\"  -work example_internal_10"                                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../example_internal_10/sim/example_internal.v"]\"  -work example_internal_10"                                                 
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/example.v"]\"  -work example"                                                                                            
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
