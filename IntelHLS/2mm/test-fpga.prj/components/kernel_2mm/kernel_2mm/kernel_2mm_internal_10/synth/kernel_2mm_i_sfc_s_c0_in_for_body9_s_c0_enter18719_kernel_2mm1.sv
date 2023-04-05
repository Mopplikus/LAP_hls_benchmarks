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

// SystemVerilog created from i_sfc_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm1
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_s_c0_in_for_body9_s_c0_enter18719_kernel_2mm1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_writeack,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_memdep_4_kernel_2mm_avm_readdata,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_4_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_writedata,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit192_0_tpl,
    output wire [0:0] out_c0_exit192_1_tpl,
    output wire [0:0] out_c0_exit192_2_tpl,
    output wire [63:0] out_c0_exit192_3_tpl,
    output wire [63:0] out_c0_exit192_4_tpl,
    output wire [63:0] out_c0_exit192_5_tpl,
    output wire [63:0] out_c0_exit192_6_tpl,
    output wire [63:0] out_c0_exit192_7_tpl,
    output wire [63:0] out_c0_exit192_8_tpl,
    output wire [63:0] out_c0_exit192_9_tpl,
    output wire [63:0] out_c0_exit192_10_tpl,
    output wire [0:0] out_c0_exit192_11_tpl,
    output wire [0:0] out_c0_exit192_12_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_2_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_4_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_5_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_6_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_7_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_8_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_9_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_12_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_2_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_3_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_4_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_5_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_6_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_7_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_8_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_9_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_12_tpl;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,3)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,2)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x(BLACKBOX,26)@4
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    kernel_2mm_i_llvm_fpga_sfc_exit_s_c0_out0000_exit192_kernel_2mm0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_12_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x(BLACKBOX,27)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out@20000000
    // out out_memdep_4_kernel_2mm_avm_address@20000000
    // out out_memdep_4_kernel_2mm_avm_burstcount@20000000
    // out out_memdep_4_kernel_2mm_avm_byteenable@20000000
    // out out_memdep_4_kernel_2mm_avm_enable@20000000
    // out out_memdep_4_kernel_2mm_avm_read@20000000
    // out out_memdep_4_kernel_2mm_avm_write@20000000
    // out out_memdep_4_kernel_2mm_avm_writedata@20000000
    // out out_o_valid@4
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_2mm1@4
    // out out_c0_exi12_0_tpl@4
    // out out_c0_exi12_1_tpl@4
    // out out_c0_exi12_2_tpl@4
    // out out_c0_exi12_3_tpl@4
    // out out_c0_exi12_4_tpl@4
    // out out_c0_exi12_5_tpl@4
    // out out_c0_exi12_6_tpl@4
    // out out_c0_exi12_7_tpl@4
    // out out_c0_exi12_8_tpl@4
    // out out_c0_exi12_9_tpl@4
    // out out_c0_exi12_10_tpl@4
    // out out_c0_exi12_11_tpl@4
    // out out_c0_exi12_12_tpl@4
    kernel_2mm_i_sfc_logic_s_c0_in_for_body90000ter18719_kernel_2mm0 thei_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x (
        .in_enable(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_enable),
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_memdep_4_kernel_2mm_avm_readdata(in_memdep_4_kernel_2mm_avm_readdata),
        .in_memdep_4_kernel_2mm_avm_readdatavalid(in_memdep_4_kernel_2mm_avm_readdatavalid),
        .in_memdep_4_kernel_2mm_avm_waitrequest(in_memdep_4_kernel_2mm_avm_waitrequest),
        .in_memdep_4_kernel_2mm_avm_writeack(in_memdep_4_kernel_2mm_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(in_c0_eni3_0_tpl),
        .in_c0_eni3_1_tpl(in_c0_eni3_1_tpl),
        .in_c0_eni3_2_tpl(in_c0_eni3_2_tpl),
        .in_c0_eni3_3_tpl(in_c0_eni3_3_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out),
        .out_memdep_4_kernel_2mm_avm_address(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_address),
        .out_memdep_4_kernel_2mm_avm_burstcount(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_burstcount),
        .out_memdep_4_kernel_2mm_avm_byteenable(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_byteenable),
        .out_memdep_4_kernel_2mm_avm_enable(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_enable),
        .out_memdep_4_kernel_2mm_avm_read(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_read),
        .out_memdep_4_kernel_2mm_avm_write(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_write),
        .out_memdep_4_kernel_2mm_avm_writedata(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_2mm1(),
        .out_c0_exi12_0_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_0_tpl),
        .out_c0_exi12_1_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_1_tpl),
        .out_c0_exi12_2_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_2_tpl),
        .out_c0_exi12_3_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_3_tpl),
        .out_c0_exi12_4_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_4_tpl),
        .out_c0_exi12_5_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_5_tpl),
        .out_c0_exi12_6_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_6_tpl),
        .out_c0_exi12_7_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_7_tpl),
        .out_c0_exi12_8_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_8_tpl),
        .out_c0_exi12_9_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_9_tpl),
        .out_c0_exi12_10_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_10_tpl),
        .out_c0_exi12_11_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_11_tpl),
        .out_c0_exi12_12_tpl(i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_c0_exi12_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,5)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out;

    // sync_out(GPOUT,17)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,18)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,19)
    assign out_memdep_4_kernel_2mm_avm_address = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,20)
    assign out_memdep_4_kernel_2mm_avm_burstcount = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,21)
    assign out_memdep_4_kernel_2mm_avm_byteenable = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,22)
    assign out_memdep_4_kernel_2mm_avm_enable = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,23)
    assign out_memdep_4_kernel_2mm_avm_read = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,24)
    assign out_memdep_4_kernel_2mm_avm_write = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,25)
    assign out_memdep_4_kernel_2mm_avm_writedata = i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0_aunroll_x_out_memdep_4_kernel_2mm_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,29)@4
    assign out_c0_exit192_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit192_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit192_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit192_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit192_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit192_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit192_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit192_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit192_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit192_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit192_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit192_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit192_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_data_out_12_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit192_kernel_2mm1_aunroll_x_out_valid_out;

endmodule
