// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from bb_covariance_B5_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5_stall_region (
    input wire [63:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked107,
    input wire [31:0] in_i_064_pop27169,
    input wire [31:0] in_lim_ext132_pop28170,
    input wire [31:0] in_lim_ext167,
    input wire [0:0] in_notcmp122168,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_covariance5_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_readdatavalid,
    output wire [63:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [63:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [7:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    output wire [63:0] out_unnamed_covariance5_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_write,
    output wire [63:0] out_unnamed_covariance5_covariance_avm_writedata,
    output wire [7:0] out_unnamed_covariance5_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_burstcount,
    input wire [31:0] in_memdep_1_covariance_avm_readdata,
    input wire [0:0] in_memdep_1_covariance_avm_writeack,
    input wire [0:0] in_memdep_1_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_1_covariance_avm_readdatavalid,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [31:0] out_memdep_1_covariance_avm_address,
    output wire [0:0] out_memdep_1_covariance_avm_enable,
    output wire [0:0] out_memdep_1_covariance_avm_read,
    output wire [0:0] out_memdep_1_covariance_avm_write,
    output wire [31:0] out_memdep_1_covariance_avm_writedata,
    output wire [3:0] out_memdep_1_covariance_avm_byteenable,
    output wire [0:0] out_memdep_1_covariance_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance6_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance5_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_writedata;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_9_tpl;
    wire [128:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [33:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [128:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [128:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [33:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [33:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_covariance4_covariance3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_covariance4_covariance3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_covariance5_covariance4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_covariance5_covariance4_b;
    wire [97:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [97:0] bubble_join_covariance_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_f;
    wire [290:0] bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_i;
    wire [128:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [128:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [33:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,66)
    assign bubble_join_stall_entry_q = {in_notcmp122168, in_lim_ext167, in_lim_ext132_pop28170, in_i_064_pop27169, in_forked107};

    // bubble_select_stall_entry(BITSELECT,67)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);

    // SE_stall_entry(STALLENABLE,90)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // covariance_B5_merge_reg_aunroll_x(BLACKBOX,33)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    covariance_B5_merge_reg thecovariance_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_covariance_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .out_stall_out(covariance_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_covariance_B5_merge_reg_aunroll_x(BITJOIN,70)
    assign bubble_join_covariance_B5_merge_reg_aunroll_x_q = {covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B5_merge_reg_aunroll_x(BITSELECT,71)
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[65:34]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[97:66]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_covariance_B5_merge_reg_aunroll_x(STALLENABLE,93)
    // Valid signal propagation
    assign SE_out_covariance_B5_merge_reg_aunroll_x_V0 = SE_out_covariance_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B5_merge_reg_aunroll_x_wireValid = covariance_B5_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x(BITJOIN,74)
    assign bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_9_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_8_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_7_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_6_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_5_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_4_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_3_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x(BITSELECT,75)
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[256:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[257:257]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[289:258]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_q[290:290]);

    // join_for_coalesced_delay_1(BITJOIN,53)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_h};

    // bubble_join_i_llvm_fpga_mem_unnamed_covariance5_covariance4(BITJOIN,63)
    assign bubble_join_i_llvm_fpga_mem_unnamed_covariance5_covariance4_q = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_covariance5_covariance4(BITSELECT,64)
    assign bubble_select_i_llvm_fpga_mem_unnamed_covariance5_covariance4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_covariance5_covariance4_q[31:0]);

    // SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_V0 = SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_backStall = i_llvm_fpga_mem_memdep_covariance5_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_and0 = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_wireValid = SE_out_coalesced_delay_0_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_V0 = SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_backStall = i_llvm_fpga_mem_memdep_1_covariance6_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_and0 = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_wireValid = SE_out_coalesced_delay_0_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_and0;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,77)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,78)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[128:0]);

    // sel_for_coalesced_delay_0(BITSELECT,51)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[128:128]);

    // i_llvm_fpga_mem_memdep_1_covariance6(BLACKBOX,7)@35
    // in in_i_stall@20000000
    // out out_memdep_1_covariance_avm_address@20000000
    // out out_memdep_1_covariance_avm_burstcount@20000000
    // out out_memdep_1_covariance_avm_byteenable@20000000
    // out out_memdep_1_covariance_avm_enable@20000000
    // out out_memdep_1_covariance_avm_read@20000000
    // out out_memdep_1_covariance_avm_write@20000000
    // out out_memdep_1_covariance_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_o_writeack@36
    covariance_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_covariance6 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_c),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_covariance5_covariance4_b),
        .in_memdep_1_covariance_avm_readdata(in_memdep_1_covariance_avm_readdata),
        .in_memdep_1_covariance_avm_readdatavalid(in_memdep_1_covariance_avm_readdatavalid),
        .in_memdep_1_covariance_avm_waitrequest(in_memdep_1_covariance_avm_waitrequest),
        .in_memdep_1_covariance_avm_writeack(in_memdep_1_covariance_avm_writeack),
        .out_memdep_1_covariance_avm_address(i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_address),
        .out_memdep_1_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_burstcount),
        .out_memdep_1_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_byteenable),
        .out_memdep_1_covariance_avm_enable(i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_enable),
        .out_memdep_1_covariance_avm_read(i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_read),
        .out_memdep_1_covariance_avm_write(i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_write),
        .out_memdep_1_covariance_avm_writedata(i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_covariance6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_covariance6_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_covariance4_covariance3(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_mem_unnamed_covariance4_covariance3_q = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_covariance4_covariance3(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_mem_unnamed_covariance4_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_covariance4_covariance3_q[31:0]);

    // i_llvm_fpga_mem_memdep_covariance5(BLACKBOX,8)@35
    // in in_i_stall@20000000
    // out out_memdep_covariance_avm_address@20000000
    // out out_memdep_covariance_avm_burstcount@20000000
    // out out_memdep_covariance_avm_byteenable@20000000
    // out out_memdep_covariance_avm_enable@20000000
    // out out_memdep_covariance_avm_read@20000000
    // out out_memdep_covariance_avm_write@20000000
    // out out_memdep_covariance_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_o_writeack@36
    covariance_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_covariance5 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_covariance4_covariance3_b),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .out_memdep_covariance_avm_address(i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_covariance5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_covariance5_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,103)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = i_llvm_fpga_mem_memdep_covariance5_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_memdep_1_covariance6_out_o_valid & SE_out_coalesced_delay_1_fifo_and1;

    // coalesced_delay_1_fifo(STALLFIFO,56)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(34),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,50)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,55)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(129),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_covariance5_covariance4(BLACKBOX,10)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_covariance5_covariance_avm_address@20000000
    // out out_unnamed_covariance5_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance5_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance5_covariance_avm_enable@20000000
    // out out_unnamed_covariance5_covariance_avm_read@20000000
    // out out_unnamed_covariance5_covariance_avm_write@20000000
    // out out_unnamed_covariance5_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_5_covariance0 thei_llvm_fpga_mem_unnamed_covariance5_covariance4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_covariance5_covariance4_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V1),
        .in_unnamed_covariance5_covariance_avm_readdata(in_unnamed_covariance5_covariance_avm_readdata),
        .in_unnamed_covariance5_covariance_avm_readdatavalid(in_unnamed_covariance5_covariance_avm_readdatavalid),
        .in_unnamed_covariance5_covariance_avm_waitrequest(in_unnamed_covariance5_covariance_avm_waitrequest),
        .in_unnamed_covariance5_covariance_avm_writeack(in_unnamed_covariance5_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_valid),
        .out_unnamed_covariance5_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_address),
        .out_unnamed_covariance5_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_burstcount),
        .out_unnamed_covariance5_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_byteenable),
        .out_unnamed_covariance5_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_enable),
        .out_unnamed_covariance5_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_read),
        .out_unnamed_covariance5_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_write),
        .out_unnamed_covariance5_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_covariance4_covariance3(BLACKBOX,9)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_covariance4_covariance_avm_address@20000000
    // out out_unnamed_covariance4_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance4_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance4_covariance_avm_enable@20000000
    // out out_unnamed_covariance4_covariance_avm_read@20000000
    // out out_unnamed_covariance4_covariance_avm_write@20000000
    // out out_unnamed_covariance4_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_4_covariance0 thei_llvm_fpga_mem_unnamed_covariance4_covariance3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V0),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_valid),
        .out_unnamed_covariance4_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x(STALLENABLE,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x(BLACKBOX,42)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit263_0_tpl@3
    // out out_c0_exit263_1_tpl@3
    // out out_c0_exit263_2_tpl@3
    // out out_c0_exit263_3_tpl@3
    // out out_c0_exit263_4_tpl@3
    // out out_c0_exit263_5_tpl@3
    // out out_c0_exit263_6_tpl@3
    // out out_c0_exit263_7_tpl@3
    // out out_c0_exit263_8_tpl@3
    // out out_c0_exit263_9_tpl@3
    // out out_c0_exit263_10_tpl@3
    covariance_i_sfc_s_c0_in_for_body6_s_c0_enter25532_covariance1 thei_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B5_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_e),
        .in_c0_eni5_3_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_f),
        .in_c0_eni5_4_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_d),
        .in_c0_eni5_5_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit263_0_tpl(),
        .out_c0_exit263_1_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_1_tpl),
        .out_c0_exit263_2_tpl(),
        .out_c0_exit263_3_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_3_tpl),
        .out_c0_exit263_4_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_4_tpl),
        .out_c0_exit263_5_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_5_tpl),
        .out_c0_exit263_6_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_6_tpl),
        .out_c0_exit263_7_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_7_tpl),
        .out_c0_exit263_8_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_8_tpl),
        .out_c0_exit263_9_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_c0_exit263_9_tpl),
        .out_c0_exit263_10_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out = i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out = i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body6_covariances_c0_enter25532_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,35)
    assign out_unnamed_covariance4_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_address;
    assign out_unnamed_covariance4_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_enable;
    assign out_unnamed_covariance4_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_read;
    assign out_unnamed_covariance4_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_write;
    assign out_unnamed_covariance4_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_writedata;
    assign out_unnamed_covariance4_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_byteenable;
    assign out_unnamed_covariance4_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance4_covariance3_out_unnamed_covariance4_covariance_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,80)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,81)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[33:0]);

    // sel_for_coalesced_delay_1(BITSELECT,54)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[32:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[33:33]);

    // dupName_0_sync_out_x(GPOUT,36)@36
    assign out_c0_exe7 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe8 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe9 = sel_for_coalesced_delay_1_d;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,38)
    assign out_unnamed_covariance5_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_address;
    assign out_unnamed_covariance5_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_enable;
    assign out_unnamed_covariance5_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_read;
    assign out_unnamed_covariance5_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_write;
    assign out_unnamed_covariance5_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_writedata;
    assign out_unnamed_covariance5_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_byteenable;
    assign out_unnamed_covariance5_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance5_covariance4_out_unnamed_covariance5_covariance_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,40)
    assign out_memdep_covariance_avm_address = i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_address;
    assign out_memdep_covariance_avm_enable = i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_enable;
    assign out_memdep_covariance_avm_read = i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_read;
    assign out_memdep_covariance_avm_write = i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_write;
    assign out_memdep_covariance_avm_writedata = i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_writedata;
    assign out_memdep_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_byteenable;
    assign out_memdep_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_covariance5_out_memdep_covariance_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,41)
    assign out_memdep_1_covariance_avm_address = i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_address;
    assign out_memdep_1_covariance_avm_enable = i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_enable;
    assign out_memdep_1_covariance_avm_read = i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_read;
    assign out_memdep_1_covariance_avm_write = i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_write;
    assign out_memdep_1_covariance_avm_writedata = i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_writedata;
    assign out_memdep_1_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_byteenable;
    assign out_memdep_1_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_1_covariance6_out_memdep_1_covariance_avm_burstcount;

endmodule
