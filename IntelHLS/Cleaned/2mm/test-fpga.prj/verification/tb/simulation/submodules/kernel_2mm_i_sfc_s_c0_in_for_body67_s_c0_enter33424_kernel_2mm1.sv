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

// SystemVerilog created from i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_s_c0_in_for_body67_s_c0_enter33424_kernel_2mm1 (
    output wire [0:0] out_c0_exit361_0_tpl,
    output wire [0:0] out_c0_exit361_1_tpl,
    output wire [0:0] out_c0_exit361_2_tpl,
    output wire [31:0] out_c0_exit361_3_tpl,
    output wire [63:0] out_c0_exit361_4_tpl,
    output wire [0:0] out_c0_exit361_5_tpl,
    output wire [0:0] out_c0_exit361_6_tpl,
    output wire [0:0] out_c0_exit361_7_tpl,
    output wire [0:0] out_c0_exit361_8_tpl,
    output wire [63:0] out_c0_exit361_9_tpl,
    output wire [0:0] out_c0_exit361_10_tpl,
    output wire [0:0] out_c0_exit361_11_tpl,
    output wire [0:0] out_c0_exit361_12_tpl,
    output wire [31:0] out_c0_exit361_13_tpl,
    output wire [31:0] out_c0_exit361_14_tpl,
    output wire [0:0] out_c0_exit361_15_tpl,
    output wire [0:0] out_c0_exit361_16_tpl,
    output wire [0:0] out_c0_exit361_17_tpl,
    output wire [31:0] out_c0_exit361_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata,
    input wire [0:0] in_c0_eni17_0_tpl,
    input wire [0:0] in_c0_eni17_1_tpl,
    input wire [31:0] in_c0_eni17_2_tpl,
    input wire [31:0] in_c0_eni17_3_tpl,
    input wire [0:0] in_c0_eni17_4_tpl,
    input wire [0:0] in_c0_eni17_5_tpl,
    input wire [31:0] in_c0_eni17_6_tpl,
    input wire [0:0] in_c0_eni17_7_tpl,
    input wire [0:0] in_c0_eni17_8_tpl,
    input wire [63:0] in_c0_eni17_9_tpl,
    input wire [0:0] in_c0_eni17_10_tpl,
    input wire [0:0] in_c0_eni17_11_tpl,
    input wire [31:0] in_c0_eni17_12_tpl,
    input wire [31:0] in_c0_eni17_13_tpl,
    input wire [0:0] in_c0_eni17_14_tpl,
    input wire [0:0] in_c0_eni17_15_tpl,
    input wire [0:0] in_c0_eni17_16_tpl,
    input wire [31:0] in_c0_eni17_17_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_8_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_14_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_17_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_18_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_3_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_8_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_14_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_15_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_17_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_18_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,16)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,15)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x(BLACKBOX,12)@1
    // out out_c0_exi18_0_tpl@9
    // out out_c0_exi18_1_tpl@9
    // out out_c0_exi18_2_tpl@9
    // out out_c0_exi18_3_tpl@9
    // out out_c0_exi18_4_tpl@9
    // out out_c0_exi18_5_tpl@9
    // out out_c0_exi18_6_tpl@9
    // out out_c0_exi18_7_tpl@9
    // out out_c0_exi18_8_tpl@9
    // out out_c0_exi18_9_tpl@9
    // out out_c0_exi18_10_tpl@9
    // out out_c0_exi18_11_tpl@9
    // out out_c0_exi18_12_tpl@9
    // out out_c0_exi18_13_tpl@9
    // out out_c0_exi18_14_tpl@9
    // out out_c0_exi18_15_tpl@9
    // out out_c0_exi18_16_tpl@9
    // out out_c0_exi18_17_tpl@9
    // out out_c0_exi18_18_tpl@9
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_2mm1@9
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_sfc_logic_s_c0_in_for_body60000ter33424_kernel_2mm0 thei_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x (
        .in_c0_eni17_0_tpl(in_c0_eni17_0_tpl),
        .in_c0_eni17_1_tpl(in_c0_eni17_1_tpl),
        .in_c0_eni17_2_tpl(in_c0_eni17_2_tpl),
        .in_c0_eni17_3_tpl(in_c0_eni17_3_tpl),
        .in_c0_eni17_4_tpl(in_c0_eni17_4_tpl),
        .in_c0_eni17_5_tpl(in_c0_eni17_5_tpl),
        .in_c0_eni17_6_tpl(in_c0_eni17_6_tpl),
        .in_c0_eni17_7_tpl(in_c0_eni17_7_tpl),
        .in_c0_eni17_8_tpl(in_c0_eni17_8_tpl),
        .in_c0_eni17_9_tpl(in_c0_eni17_9_tpl),
        .in_c0_eni17_10_tpl(in_c0_eni17_10_tpl),
        .in_c0_eni17_11_tpl(in_c0_eni17_11_tpl),
        .in_c0_eni17_12_tpl(in_c0_eni17_12_tpl),
        .in_c0_eni17_13_tpl(in_c0_eni17_13_tpl),
        .in_c0_eni17_14_tpl(in_c0_eni17_14_tpl),
        .in_c0_eni17_15_tpl(in_c0_eni17_15_tpl),
        .in_c0_eni17_16_tpl(in_c0_eni17_16_tpl),
        .in_c0_eni17_17_tpl(in_c0_eni17_17_tpl),
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack),
        .out_c0_exi18_0_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_0_tpl),
        .out_c0_exi18_1_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_1_tpl),
        .out_c0_exi18_2_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_2_tpl),
        .out_c0_exi18_3_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_3_tpl),
        .out_c0_exi18_4_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_4_tpl),
        .out_c0_exi18_5_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_5_tpl),
        .out_c0_exi18_6_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_6_tpl),
        .out_c0_exi18_7_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_7_tpl),
        .out_c0_exi18_8_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_8_tpl),
        .out_c0_exi18_9_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_9_tpl),
        .out_c0_exi18_10_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_10_tpl),
        .out_c0_exi18_11_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_11_tpl),
        .out_c0_exi18_12_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_12_tpl),
        .out_c0_exi18_13_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_13_tpl),
        .out_c0_exi18_14_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_14_tpl),
        .out_c0_exi18_15_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_15_tpl),
        .out_c0_exi18_16_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_16_tpl),
        .out_c0_exi18_17_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_17_tpl),
        .out_c0_exi18_18_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_18_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_2mm1(),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_address(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_enable(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_read(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_write(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x(BLACKBOX,11)@9
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@12
    // out out_data_out_1_tpl@12
    // out out_data_out_2_tpl@12
    // out out_data_out_3_tpl@12
    // out out_data_out_4_tpl@12
    // out out_data_out_5_tpl@12
    // out out_data_out_6_tpl@12
    // out out_data_out_7_tpl@12
    // out out_data_out_8_tpl@12
    // out out_data_out_9_tpl@12
    // out out_data_out_10_tpl@12
    // out out_data_out_11_tpl@12
    // out out_data_out_12_tpl@12
    // out out_data_out_13_tpl@12
    // out out_data_out_14_tpl@12
    // out out_data_out_15_tpl@12
    // out out_data_out_16_tpl@12
    // out out_data_out_17_tpl@12
    // out out_data_out_18_tpl@12
    // out out_stall_entry@20000000
    // out out_valid_out@12
    kernel_2mm_i_llvm_fpga_sfc_exit_s_c0_out0000_exit361_kernel_2mm0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_c0_exi18_18_tpl),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_18_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@12
    assign out_c0_exit361_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit361_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit361_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit361_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit361_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit361_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit361_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit361_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit361_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit361_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit361_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit361_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit361_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit361_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit361_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit361_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit361_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit361_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit361_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_data_out_18_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_address = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_enable = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_read = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,9)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_write = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,10)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;

    // sync_out(GPOUT,27)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body67_kernel_2mms_c0_exit361_kernel_2mm1_aunroll_x_out_stall_entry;

endmodule
