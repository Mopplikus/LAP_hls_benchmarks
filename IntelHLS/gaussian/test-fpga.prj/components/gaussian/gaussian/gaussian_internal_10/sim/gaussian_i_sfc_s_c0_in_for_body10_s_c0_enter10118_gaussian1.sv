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

// SystemVerilog created from i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_s_c0_in_for_body10_s_c0_enter10118_gaussian1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    input wire [0:0] in_c0_eni18_0_tpl,
    input wire [0:0] in_c0_eni18_1_tpl,
    input wire [31:0] in_c0_eni18_2_tpl,
    input wire [0:0] in_c0_eni18_3_tpl,
    input wire [31:0] in_c0_eni18_4_tpl,
    input wire [0:0] in_c0_eni18_5_tpl,
    input wire [0:0] in_c0_eni18_6_tpl,
    input wire [31:0] in_c0_eni18_7_tpl,
    input wire [31:0] in_c0_eni18_8_tpl,
    input wire [31:0] in_c0_eni18_9_tpl,
    input wire [0:0] in_c0_eni18_10_tpl,
    input wire [0:0] in_c0_eni18_11_tpl,
    input wire [31:0] in_c0_eni18_12_tpl,
    input wire [31:0] in_c0_eni18_13_tpl,
    input wire [31:0] in_c0_eni18_14_tpl,
    input wire [0:0] in_c0_eni18_15_tpl,
    input wire [32:0] in_c0_eni18_16_tpl,
    input wire [31:0] in_c0_eni18_17_tpl,
    input wire [0:0] in_c0_eni18_18_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit127_0_tpl,
    output wire [0:0] out_c0_exit127_1_tpl,
    output wire [0:0] out_c0_exit127_2_tpl,
    output wire [0:0] out_c0_exit127_3_tpl,
    output wire [0:0] out_c0_exit127_4_tpl,
    output wire [0:0] out_c0_exit127_5_tpl,
    output wire [31:0] out_c0_exit127_6_tpl,
    output wire [31:0] out_c0_exit127_7_tpl,
    output wire [31:0] out_c0_exit127_8_tpl,
    output wire [0:0] out_c0_exit127_9_tpl,
    output wire [0:0] out_c0_exit127_10_tpl,
    output wire [31:0] out_c0_exit127_11_tpl,
    output wire [31:0] out_c0_exit127_12_tpl,
    output wire [31:0] out_c0_exit127_13_tpl,
    output wire [0:0] out_c0_exit127_14_tpl,
    output wire [32:0] out_c0_exit127_15_tpl,
    output wire [31:0] out_c0_exit127_16_tpl,
    output wire [0:0] out_c0_exit127_17_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_13_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_14_tpl;
    wire [32:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_6_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_10_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_11_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_13_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_14_tpl;
    wire [32:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_17_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x(BLACKBOX,56)@10
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@13
    // out out_data_out_0_tpl@13
    // out out_data_out_1_tpl@13
    // out out_data_out_2_tpl@13
    // out out_data_out_3_tpl@13
    // out out_data_out_4_tpl@13
    // out out_data_out_5_tpl@13
    // out out_data_out_6_tpl@13
    // out out_data_out_7_tpl@13
    // out out_data_out_8_tpl@13
    // out out_data_out_9_tpl@13
    // out out_data_out_10_tpl@13
    // out out_data_out_11_tpl@13
    // out out_data_out_12_tpl@13
    // out out_data_out_13_tpl@13
    // out out_data_out_14_tpl@13
    // out out_data_out_15_tpl@13
    // out out_data_out_16_tpl@13
    // out out_data_out_17_tpl@13
    gaussian_i_llvm_fpga_sfc_exit_s_c0_out_f0000c0_exit127_gaussian0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_17_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x(BLACKBOX,57)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_lm62_gaussian_avm_address@20000000
    // out out_lm62_gaussian_avm_burstcount@20000000
    // out out_lm62_gaussian_avm_byteenable@20000000
    // out out_lm62_gaussian_avm_enable@20000000
    // out out_lm62_gaussian_avm_read@20000000
    // out out_lm62_gaussian_avm_write@20000000
    // out out_lm62_gaussian_avm_writedata@20000000
    // out out_lm83_gaussian_avm_address@20000000
    // out out_lm83_gaussian_avm_burstcount@20000000
    // out out_lm83_gaussian_avm_byteenable@20000000
    // out out_lm83_gaussian_avm_enable@20000000
    // out out_lm83_gaussian_avm_read@20000000
    // out out_lm83_gaussian_avm_write@20000000
    // out out_lm83_gaussian_avm_writedata@20000000
    // out out_memdep_gaussian_avm_address@20000000
    // out out_memdep_gaussian_avm_burstcount@20000000
    // out out_memdep_gaussian_avm_byteenable@20000000
    // out out_memdep_gaussian_avm_enable@20000000
    // out out_memdep_gaussian_avm_read@20000000
    // out out_memdep_gaussian_avm_write@20000000
    // out out_memdep_gaussian_avm_writedata@20000000
    // out out_o_valid@10
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_gaussian0@10
    // out out_c0_exi17126_0_tpl@10
    // out out_c0_exi17126_1_tpl@10
    // out out_c0_exi17126_2_tpl@10
    // out out_c0_exi17126_3_tpl@10
    // out out_c0_exi17126_4_tpl@10
    // out out_c0_exi17126_5_tpl@10
    // out out_c0_exi17126_6_tpl@10
    // out out_c0_exi17126_7_tpl@10
    // out out_c0_exi17126_8_tpl@10
    // out out_c0_exi17126_9_tpl@10
    // out out_c0_exi17126_10_tpl@10
    // out out_c0_exi17126_11_tpl@10
    // out out_c0_exi17126_12_tpl@10
    // out out_c0_exi17126_13_tpl@10
    // out out_c0_exi17126_14_tpl@10
    // out out_c0_exi17126_15_tpl@10
    // out out_c0_exi17126_16_tpl@10
    // out out_c0_exi17126_17_tpl@10
    gaussian_i_sfc_logic_s_c0_in_for_body10_0000enter10118_gaussian0 thei_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni18_0_tpl(in_c0_eni18_0_tpl),
        .in_c0_eni18_1_tpl(in_c0_eni18_1_tpl),
        .in_c0_eni18_2_tpl(in_c0_eni18_2_tpl),
        .in_c0_eni18_3_tpl(in_c0_eni18_3_tpl),
        .in_c0_eni18_4_tpl(in_c0_eni18_4_tpl),
        .in_c0_eni18_5_tpl(in_c0_eni18_5_tpl),
        .in_c0_eni18_6_tpl(in_c0_eni18_6_tpl),
        .in_c0_eni18_7_tpl(in_c0_eni18_7_tpl),
        .in_c0_eni18_8_tpl(in_c0_eni18_8_tpl),
        .in_c0_eni18_9_tpl(in_c0_eni18_9_tpl),
        .in_c0_eni18_10_tpl(in_c0_eni18_10_tpl),
        .in_c0_eni18_11_tpl(in_c0_eni18_11_tpl),
        .in_c0_eni18_12_tpl(in_c0_eni18_12_tpl),
        .in_c0_eni18_13_tpl(in_c0_eni18_13_tpl),
        .in_c0_eni18_14_tpl(in_c0_eni18_14_tpl),
        .in_c0_eni18_15_tpl(in_c0_eni18_15_tpl),
        .in_c0_eni18_16_tpl(in_c0_eni18_16_tpl),
        .in_c0_eni18_17_tpl(in_c0_eni18_17_tpl),
        .in_c0_eni18_18_tpl(in_c0_eni18_18_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out),
        .out_lm1_gaussian_avm_address(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_gaussian0(),
        .out_c0_exi17126_0_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_0_tpl),
        .out_c0_exi17126_1_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_1_tpl),
        .out_c0_exi17126_2_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_2_tpl),
        .out_c0_exi17126_3_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_3_tpl),
        .out_c0_exi17126_4_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_4_tpl),
        .out_c0_exi17126_5_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_5_tpl),
        .out_c0_exi17126_6_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_6_tpl),
        .out_c0_exi17126_7_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_7_tpl),
        .out_c0_exi17126_8_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_8_tpl),
        .out_c0_exi17126_9_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_9_tpl),
        .out_c0_exi17126_10_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_10_tpl),
        .out_c0_exi17126_11_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_11_tpl),
        .out_c0_exi17126_12_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_12_tpl),
        .out_c0_exi17126_13_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_13_tpl),
        .out_c0_exi17126_14_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_14_tpl),
        .out_c0_exi17126_15_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_15_tpl),
        .out_c0_exi17126_16_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_16_tpl),
        .out_c0_exi17126_17_tpl(i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_c0_exi17126_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out;

    // sync_out(GPOUT,26)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,28)
    assign out_lm1_gaussian_avm_address = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,29)
    assign out_lm1_gaussian_avm_burstcount = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,30)
    assign out_lm1_gaussian_avm_byteenable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,31)
    assign out_lm1_gaussian_avm_enable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,32)
    assign out_lm1_gaussian_avm_read = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,33)
    assign out_lm1_gaussian_avm_write = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,34)
    assign out_lm1_gaussian_avm_writedata = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm1_gaussian_avm_writedata;

    // dupName_8_regfree_osync_x(GPOUT,35)
    assign out_lm62_gaussian_avm_address = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_address;

    // dupName_9_regfree_osync_x(GPOUT,36)
    assign out_lm62_gaussian_avm_burstcount = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_burstcount;

    // dupName_10_regfree_osync_x(GPOUT,37)
    assign out_lm62_gaussian_avm_byteenable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_byteenable;

    // dupName_11_regfree_osync_x(GPOUT,38)
    assign out_lm62_gaussian_avm_enable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_enable;

    // dupName_12_regfree_osync_x(GPOUT,39)
    assign out_lm62_gaussian_avm_read = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_read;

    // dupName_13_regfree_osync_x(GPOUT,40)
    assign out_lm62_gaussian_avm_write = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_write;

    // dupName_14_regfree_osync_x(GPOUT,41)
    assign out_lm62_gaussian_avm_writedata = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm62_gaussian_avm_writedata;

    // dupName_15_regfree_osync_x(GPOUT,42)
    assign out_lm83_gaussian_avm_address = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_address;

    // dupName_16_regfree_osync_x(GPOUT,43)
    assign out_lm83_gaussian_avm_burstcount = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_burstcount;

    // dupName_17_regfree_osync_x(GPOUT,44)
    assign out_lm83_gaussian_avm_byteenable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_byteenable;

    // dupName_18_regfree_osync_x(GPOUT,45)
    assign out_lm83_gaussian_avm_enable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_enable;

    // dupName_19_regfree_osync_x(GPOUT,46)
    assign out_lm83_gaussian_avm_read = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_read;

    // dupName_20_regfree_osync_x(GPOUT,47)
    assign out_lm83_gaussian_avm_write = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_write;

    // dupName_21_regfree_osync_x(GPOUT,48)
    assign out_lm83_gaussian_avm_writedata = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_lm83_gaussian_avm_writedata;

    // dupName_22_regfree_osync_x(GPOUT,49)
    assign out_memdep_gaussian_avm_address = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_address;

    // dupName_23_regfree_osync_x(GPOUT,50)
    assign out_memdep_gaussian_avm_burstcount = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_burstcount;

    // dupName_24_regfree_osync_x(GPOUT,51)
    assign out_memdep_gaussian_avm_byteenable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_byteenable;

    // dupName_25_regfree_osync_x(GPOUT,52)
    assign out_memdep_gaussian_avm_enable = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_enable;

    // dupName_26_regfree_osync_x(GPOUT,53)
    assign out_memdep_gaussian_avm_read = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_read;

    // dupName_27_regfree_osync_x(GPOUT,54)
    assign out_memdep_gaussian_avm_write = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_write;

    // dupName_28_regfree_osync_x(GPOUT,55)
    assign out_memdep_gaussian_avm_writedata = i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0_aunroll_x_out_memdep_gaussian_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,59)@13
    assign out_c0_exit127_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit127_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit127_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit127_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit127_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit127_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit127_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit127_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit127_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit127_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit127_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit127_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit127_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit127_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit127_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit127_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit127_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit127_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_data_out_17_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_gaussians_c0_exit127_gaussian1_aunroll_x_out_valid_out;

endmodule
