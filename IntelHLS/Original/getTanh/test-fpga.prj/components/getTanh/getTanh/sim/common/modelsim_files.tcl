
namespace eval getTanh {
  proc get_design_libraries {} {
    set libraries [dict create]
    dict set libraries getTanh_internal_10 1
    dict set libraries getTanh             1
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
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_reset_handler.sv"]\"  -work getTanh_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/dspba_library_ver.sv"]\"  -work getTanh_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ecc_pkg.sv"]\"  -work getTanh_internal_10"                                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_data_fifo.v"]\"  -work getTanh_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_fifo.v"]\"  -work getTanh_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_altera_syncram_wrapped.sv"]\"  -work getTanh_internal_10"                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_scfifo_wrapped.sv"]\"  -work getTanh_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ecc_decoder.sv"]\"  -work getTanh_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ecc_encoder.sv"]\"  -work getTanh_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ll_fifo.v"]\"  -work getTanh_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ll_ram_fifo.v"]\"  -work getTanh_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_valid_fifo_counter.v"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_dspba_valid_fifo_counter.v"]\"  -work getTanh_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_staging_reg.v"]\"  -work getTanh_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_fifo.sv"]\"  -work getTanh_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_mid_speed_fifo.sv"]\"  -work getTanh_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_latency_one_ram_fifo.sv"]\"  -work getTanh_internal_10"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_latency_zero_ram_fifo.sv"]\"  -work getTanh_internal_10"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_fifo_zero_width.sv"]\"  -work getTanh_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_high_speed_fifo.sv"]\"  -work getTanh_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_low_latency_fifo.sv"]\"  -work getTanh_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_zero_latency_fifo.sv"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_fanout_pipeline.sv"]\"  -work getTanh_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_std_synchronizer_nocut.v"]\"  -work getTanh_internal_10"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_tessellated_incr_decr_threshold.sv"]\"  -work getTanh_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_tessellated_incr_lookahead.sv"]\"  -work getTanh_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_lfsr.sv"]\"  -work getTanh_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_mlab_fifo.sv"]\"  -work getTanh_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_parameter_assert.svh"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_pop_stall_latency.sv"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_sync.sv"]\"  -work getTanh_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_desync.sv"]\"  -work getTanh_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_push_stall_latency.sv"]\"  -work getTanh_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_dspba_buffer.v"]\"  -work getTanh_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_fast_pipeline.v"]\"  -work getTanh_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_push.v"]\"  -work getTanh_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_token_fifo_counter.v"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_full_detector.v"]\"  -work getTanh_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_tessellated_incr_decr_decr.sv"]\"  -work getTanh_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_loop_admit.sv"]\"  -work getTanh_internal_10"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_shift_register_no_reset_dont_merge.sv"]\"  -work getTanh_internal_10"                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_memory_depth_quantization_pkg.sv"]\"  -work getTanh_internal_10"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iord.sv"]\"  -work getTanh_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iord_stall_latency.sv"]\"  -work getTanh_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iord_stall_valid.sv"]\"  -work getTanh_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_shift_register_no_reset.sv"]\"  -work getTanh_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ffwddst.sv"]\"  -work getTanh_internal_10"                                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iowr.sv"]\"  -work getTanh_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iowr_stall_latency.sv"]\"  -work getTanh_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_iowr_stall_valid.sv"]\"  -work getTanh_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_top.v"]\"  -work getTanh_internal_10"                                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_permute_address.v"]\"  -work getTanh_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_pipelined.v"]\"  -work getTanh_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_enabled.v"]\"  -work getTanh_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_basic_coalescer.v"]\"  -work getTanh_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_simple.v"]\"  -work getTanh_internal_10"                                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_streaming.v"]\"  -work getTanh_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_burst_host.v"]\"  -work getTanh_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_bursting_load_stores.v"]\"  -work getTanh_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_non_aligned_write.v"]\"  -work getTanh_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_read_cache.v"]\"  -work getTanh_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_atomic.v"]\"  -work getTanh_internal_10"                                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_prefetch_block.v"]\"  -work getTanh_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_wide_wrapper.v"]\"  -work getTanh_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_streaming_prefetch.v"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_aligned_burst_coalesced_lsu.v"]\"  -work getTanh_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_toggle_detect.v"]\"  -work getTanh_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_debug_mem.v"]\"  -work getTanh_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_burst_coalesced_pipelined_write.sv"]\"  -work getTanh_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/lsu_burst_coalesced_pipelined_read.sv"]\"  -work getTanh_internal_10"                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_fifo_stall_valid_lookahead.sv"]\"  -work getTanh_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_global_load_store.sv"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu.sv"]\"  -work getTanh_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_burst_coalescer.sv"]\"  -work getTanh_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_coalescer_dynamic_timeout.sv"]\"  -work getTanh_internal_10"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_data_aligner.sv"]\"  -work getTanh_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_read_cache.sv"]\"  -work getTanh_internal_10"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_read_data_alignment.sv"]\"  -work getTanh_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_unaligned_controller.sv"]\"  -work getTanh_internal_10"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_word_coalescer.sv"]\"  -work getTanh_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_write_data_alignment.sv"]\"  -work getTanh_internal_10"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_lsu_write_kernel_downstream.sv"]\"  -work getTanh_internal_10"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ffwdsrc.v"]\"  -work getTanh_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_loop_profiler.sv"]\"  -work getTanh_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_sim_latency_tracker.sv"]\"  -work getTanh_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_function_wrapper.sv"]\"  -work getTanh_internal_10"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_function.sv"]\"  -work getTanh_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B0_runOnce.sv"]\"  -work getTanh_internal_10"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B0_runOnce_stall_region.sv"]\"  -work getTanh_internal_10"                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_token_i1_wt_limpop_gettanh0.sv"]\"  -work getTanh_internal_10"             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_token_i1_wt_limpush_gettanh0.sv"]\"  -work getTanh_internal_10"           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B0_runOnce_branch.sv"]\"  -work getTanh_internal_10"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B0_runOnce_merge.sv"]\"  -work getTanh_internal_10"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B0_runOnce_merge_storage.sv"]\"  -work getTanh_internal_10"                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B1_start.sv"]\"  -work getTanh_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B1_start_stall_region.sv"]\"  -work getTanh_internal_10"                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_iord_bl_call_gettanh_unnamed_gettanh1_gettanh0.sv"]\"  -work getTanh_internal_10"        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0.sv"]\"  -work getTanh_internal_10"       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"]\"  -work getTanh_internal_10"      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000nhs_c0_exit_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000ttanh1_full_detector.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_wt0000t_gettanh1_data_fifo.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_logic_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_dummy_thread_gettanh_b1_start_dummy_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_forked_gettanh_b1_start_forked_gettanh0.sv"]\"  -work getTanh_internal_10"     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going3_gettanh0.sv"]\"  -work getTanh_internal_10"               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i1_notexitcond4_gettanh0.sv"]\"  -work getTanh_internal_10"               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B1_start_branch.sv"]\"  -work getTanh_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B1_start_merge.sv"]\"  -work getTanh_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B1_start_merge_storage.sv"]\"  -work getTanh_internal_10"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B2.sv"]\"  -work getTanh_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B2_stall_region.sv"]\"  -work getTanh_internal_10"                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_iowr_bl_return_gettanh_unnamed_gettanh4_gettanh0.sv"]\"  -work getTanh_internal_10"      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_token_i1_throttle_push_gettanh0.sv"]\"  -work getTanh_internal_10"        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_s_c0_in_for_cond_cleanup_g0000s_c0_enter7_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0000hs_c0_exit9_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0000ttanh1_full_detector.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo00009_gettanh1_data_fifo.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_logic_s_c0_in_for_cond_cle0000s_c0_enter7_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_ffwd_dest_f32_acl_1_gettanh0.sv"]\"  -work getTanh_internal_10"                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B2_branch.sv"]\"  -work getTanh_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B2_merge.sv"]\"  -work getTanh_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B2_merge_storage.sv"]\"  -work getTanh_internal_10"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B3.sv"]\"  -work getTanh_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_bb_B3_stall_region.sv"]\"  -work getTanh_internal_10"                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1.sv"]\"  -work getTanh_internal_10"    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0000s_c0_exit13_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo0001ttanh1_full_detector.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_sfc_exit_s_c0_out_fo00003_gettanh1_data_fifo.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_sfc_logic_s_c0_in_for_body_get0000c0_enter112_gettanh0.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh0.sv"]\"  -work getTanh_internal_10"      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_ffwd_source_f32_unnamed_gettanh7_gettanh0.sv"]\"  -work getTanh_internal_10"   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_forked_gettanh_b3_forked_gettanh0.sv"]\"  -work getTanh_internal_10"           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_flt_i_sfc_logic_s_c0_in_for_body0000xk5id06uq0cp0jv34qcz.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_mem_memdep_gettanh0.sv"]\"  -work getTanh_internal_10"                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_mem_unnamed_gettanh5_gettanh0.sv"]\"  -work getTanh_internal_10"               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_mem_unnamed_gettanh6_gettanh0.sv"]\"  -work getTanh_internal_10"               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0.sv"]\"  -work getTanh_internal_10"                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0.sv"]\"  -work getTanh_internal_10"                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y.sv"]\"  -work getTanh_internal_10"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B3_branch.sv"]\"  -work getTanh_internal_10"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B3_merge.sv"]\"  -work getTanh_internal_10"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_B3_merge_storage.sv"]\"  -work getTanh_internal_10"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_start_pulse.sv"]\"  -work getTanh_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_wait_pulse_extender_inst.sv"]\"  -work getTanh_internal_10"                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_avm_to_ic.v"]\"  -work getTanh_internal_10"                                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_mem1x.v"]\"  -work getTanh_internal_10"                                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram.sv"]\"  -work getTanh_internal_10"                                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_ecc.sv"]\"  -work getTanh_internal_10"                                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_tall_depth_stitch.sv"]\"  -work getTanh_internal_10"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_remaining_width.sv"]\"  -work getTanh_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_bits_per_enable.sv"]\"  -work getTanh_internal_10"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_generic_two_way_depth_stitch.sv"]\"  -work getTanh_internal_10"                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_generic_three_way_depth_stitch.sv"]\"  -work getTanh_internal_10"                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_short_depth_stitch.sv"]\"  -work getTanh_internal_10"                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_bottom_width_stitch.sv"]\"  -work getTanh_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_bottom_depth_stitch.sv"]\"  -work getTanh_internal_10"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower.sv"]\"  -work getTanh_internal_10"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower_mlab_simple_dual_port.sv"]\"  -work getTanh_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower_m20k_simple_dual_port.sv"]\"  -work getTanh_internal_10"                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/hld_ram_lower_m20k_true_dual_port.sv"]\"  -work getTanh_internal_10"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_local_mem_router.v"]\"  -work getTanh_internal_10"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_host_endpoint.v"]\"  -work getTanh_internal_10"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_arb_intf.v"]\"  -work getTanh_internal_10"                                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_intf.v"]\"  -work getTanh_internal_10"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_agent_endpoint.v"]\"  -work getTanh_internal_10"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_agent_rrp.v"]\"  -work getTanh_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/acl_ic_agent_wrp.v"]\"  -work getTanh_internal_10"                                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../getTanh_internal_10/sim/getTanh_internal.v"]\"  -work getTanh_internal_10"                                                 
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/getTanh.v"]\"  -work getTanh"                                                                                                     
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
