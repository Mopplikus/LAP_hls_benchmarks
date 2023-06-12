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

// SystemVerilog created from i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm26
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_s_c0_in_for_body47_s_c0_enter42852_kernel_3mm26 (
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_eni26_0_tpl,
    input wire [0:0] in_c0_eni26_1_tpl,
    input wire [63:0] in_c0_eni26_2_tpl,
    input wire [63:0] in_c0_eni26_3_tpl,
    input wire [31:0] in_c0_eni26_4_tpl,
    input wire [0:0] in_c0_eni26_5_tpl,
    input wire [0:0] in_c0_eni26_6_tpl,
    input wire [0:0] in_c0_eni26_7_tpl,
    input wire [0:0] in_c0_eni26_8_tpl,
    input wire [0:0] in_c0_eni26_9_tpl,
    input wire [31:0] in_c0_eni26_10_tpl,
    input wire [0:0] in_c0_eni26_11_tpl,
    input wire [0:0] in_c0_eni26_12_tpl,
    input wire [0:0] in_c0_eni26_13_tpl,
    input wire [63:0] in_c0_eni26_14_tpl,
    input wire [0:0] in_c0_eni26_15_tpl,
    input wire [0:0] in_c0_eni26_16_tpl,
    input wire [0:0] in_c0_eni26_17_tpl,
    input wire [0:0] in_c0_eni26_18_tpl,
    input wire [0:0] in_c0_eni26_19_tpl,
    input wire [31:0] in_c0_eni26_20_tpl,
    input wire [0:0] in_c0_eni26_21_tpl,
    input wire [0:0] in_c0_eni26_22_tpl,
    input wire [0:0] in_c0_eni26_23_tpl,
    input wire [0:0] in_c0_eni26_24_tpl,
    input wire [0:0] in_c0_eni26_25_tpl,
    input wire [0:0] in_c0_eni26_26_tpl,
    input wire [0:0] in_empty_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exit475_0_tpl,
    output wire [31:0] out_c0_exit475_1_tpl,
    output wire [0:0] out_c0_exit475_2_tpl,
    output wire [0:0] out_c0_exit475_3_tpl,
    output wire [0:0] out_c0_exit475_4_tpl,
    output wire [0:0] out_c0_exit475_5_tpl,
    output wire [0:0] out_c0_exit475_6_tpl,
    output wire [0:0] out_c0_exit475_7_tpl,
    output wire [0:0] out_c0_exit475_8_tpl,
    output wire [63:0] out_c0_exit475_9_tpl,
    output wire [0:0] out_c0_exit475_10_tpl,
    output wire [0:0] out_c0_exit475_11_tpl,
    output wire [0:0] out_c0_exit475_12_tpl,
    output wire [0:0] out_c0_exit475_13_tpl,
    output wire [0:0] out_c0_exit475_14_tpl,
    output wire [31:0] out_c0_exit475_15_tpl,
    output wire [0:0] out_c0_exit475_16_tpl,
    output wire [0:0] out_c0_exit475_17_tpl,
    output wire [0:0] out_c0_exit475_18_tpl,
    output wire [0:0] out_c0_exit475_19_tpl,
    output wire [0:0] out_c0_exit475_20_tpl,
    output wire [0:0] out_c0_exit475_21_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exiting_q;
    wire [0:0] loop_admit_i_almost_empty;
    wire loop_admit_i_almost_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_empty;
    wire loop_admit_i_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_exit;
    wire loop_admit_i_exit_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_dummy;
    wire loop_admit_i_exit_dummy_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_forked;
    wire loop_admit_i_exit_forked_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_valid;
    wire loop_admit_i_exit_valid_bitsignaltemp;
    wire [0:0] loop_admit_i_stall;
    wire loop_admit_i_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_dummy;
    wire loop_admit_o_dummy_bitsignaltemp;
    wire [0:0] loop_admit_o_forked;
    wire loop_admit_o_forked_bitsignaltemp;
    wire [0:0] loop_admit_o_stall;
    wire loop_admit_o_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_valid;
    wire loop_admit_o_valid_bitsignaltemp;
    reg [0:0] stall_out_reg_0_q;
    reg [0:0] stall_out_reg_1_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_empty_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_8_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_12_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_13_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_18_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_21_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_kernel_3mm_B6_current_iter_isspec;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_dummy_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_forked_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_8_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_12_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_13_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_15_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_17_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_18_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_19_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_20_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_21_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x(BLACKBOX,31)@18
    // in in_stall_in@20000000
    // out out_almost_empty_out@49
    // out out_empty_out@49
    // out out_stall_entry@20000000
    // out out_valid_out@49
    // out out_data_out_0_tpl@49
    // out out_data_out_1_tpl@49
    // out out_data_out_2_tpl@49
    // out out_data_out_3_tpl@49
    // out out_data_out_4_tpl@49
    // out out_data_out_5_tpl@49
    // out out_data_out_6_tpl@49
    // out out_data_out_7_tpl@49
    // out out_data_out_8_tpl@49
    // out out_data_out_9_tpl@49
    // out out_data_out_10_tpl@49
    // out out_data_out_11_tpl@49
    // out out_data_out_12_tpl@49
    // out out_data_out_13_tpl@49
    // out out_data_out_14_tpl@49
    // out out_data_out_15_tpl@49
    // out out_data_out_16_tpl@49
    // out out_data_out_17_tpl@49
    // out out_data_out_18_tpl@49
    // out out_data_out_19_tpl@49
    // out out_data_out_20_tpl@49
    // out out_data_out_21_tpl@49
    kernel_3mm_i_llvm_fpga_sfc_exit_s_c0_out0000_exit475_kernel_3mm0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x (
        .in_input_accepted(loop_admit_o_valid),
        .in_mask_valid(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_kernel_3mm_B6_current_iter_isspec),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_21_tpl),
        .out_almost_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_empty_out),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_21_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_out_reg_0(REG,15)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_0_q <= i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_stall_entry;
        end
    end

    // stall_out_reg_1(REG,16)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_1_q <= stall_out_reg_0_q;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exiting(LOGICAL,2)
    assign exiting_q = ~ (i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_exiting_valid_out);

    // loop_admit(EXTIFACE,3)
    assign loop_admit_i_almost_empty = in_almost_empty_in;
    assign loop_admit_i_empty = in_empty_in;
    assign loop_admit_i_exit = exiting_q;
    assign loop_admit_i_exit_dummy = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_dummy_out;
    assign loop_admit_i_exit_forked = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_forked_out;
    assign loop_admit_i_exit_valid = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_valid_out;
    assign loop_admit_i_stall = stall_out_reg_1_q;
    assign loop_admit_i_almost_empty_bitsignaltemp = loop_admit_i_almost_empty[0];
    assign loop_admit_i_empty_bitsignaltemp = loop_admit_i_empty[0];
    assign loop_admit_i_exit_bitsignaltemp = loop_admit_i_exit[0];
    assign loop_admit_i_exit_dummy_bitsignaltemp = loop_admit_i_exit_dummy[0];
    assign loop_admit_i_exit_forked_bitsignaltemp = loop_admit_i_exit_forked[0];
    assign loop_admit_i_exit_valid_bitsignaltemp = loop_admit_i_exit_valid[0];
    assign loop_admit_i_stall_bitsignaltemp = loop_admit_i_stall[0];
    assign loop_admit_o_dummy[0] = loop_admit_o_dummy_bitsignaltemp;
    assign loop_admit_o_forked[0] = loop_admit_o_forked_bitsignaltemp;
    assign loop_admit_o_stall[0] = loop_admit_o_stall_bitsignaltemp;
    assign loop_admit_o_valid[0] = loop_admit_o_valid_bitsignaltemp;
    acl_loop_admit #(
        .ENABLE_INTERLEAVING(0),
        .II(1),
        .LATENCY_UPSTREAM_EMPTY(5),
        .LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP(4),
        .ASYNC_RESET(0),
        .FAST_ADMIT(0),
        .SYNCHRONIZE_RESET(0)
    ) theloop_admit (
        .i_almost_empty(loop_admit_i_almost_empty_bitsignaltemp),
        .i_empty(loop_admit_i_empty_bitsignaltemp),
        .i_exit(loop_admit_i_exit_bitsignaltemp),
        .i_exit_dummy(loop_admit_i_exit_dummy_bitsignaltemp),
        .i_exit_forked(loop_admit_i_exit_forked_bitsignaltemp),
        .i_exit_valid(loop_admit_i_exit_valid_bitsignaltemp),
        .i_stall(loop_admit_i_stall_bitsignaltemp),
        .o_dummy(loop_admit_o_dummy_bitsignaltemp),
        .o_forked(loop_admit_o_forked_bitsignaltemp),
        .o_stall(loop_admit_o_stall_bitsignaltemp),
        .o_valid(loop_admit_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x(BLACKBOX,32)@0
    // out out_exiting_valid_out@20000000
    // out out_kernel_3mm_B6_current_iter_isspec@18
    // out out_o_valid@18
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata@20000000
    // out out_c0_exi21474_0_tpl@18
    // out out_c0_exi21474_1_tpl@18
    // out out_c0_exi21474_2_tpl@18
    // out out_c0_exi21474_3_tpl@18
    // out out_c0_exi21474_4_tpl@18
    // out out_c0_exi21474_5_tpl@18
    // out out_c0_exi21474_6_tpl@18
    // out out_c0_exi21474_7_tpl@18
    // out out_c0_exi21474_8_tpl@18
    // out out_c0_exi21474_9_tpl@18
    // out out_c0_exi21474_10_tpl@18
    // out out_c0_exi21474_11_tpl@18
    // out out_c0_exi21474_12_tpl@18
    // out out_c0_exi21474_13_tpl@18
    // out out_c0_exi21474_14_tpl@18
    // out out_c0_exi21474_15_tpl@18
    // out out_c0_exi21474_16_tpl@18
    // out out_c0_exi21474_17_tpl@18
    // out out_c0_exi21474_18_tpl@18
    // out out_c0_exi21474_19_tpl@18
    // out out_c0_exi21474_20_tpl@18
    // out out_c0_exi21474_21_tpl@18
    kernel_3mm_i_sfc_logic_s_c0_in_for_body40000ter42852_kernel_3mm0 thei_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x (
        .in_buffer_in(loop_admit_o_forked),
        .in_dummy_in(loop_admit_o_dummy),
        .in_flush(in_flush),
        .in_i_valid(loop_admit_o_valid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .in_c0_eni26_0_tpl(in_c0_eni26_0_tpl),
        .in_c0_eni26_1_tpl(in_c0_eni26_1_tpl),
        .in_c0_eni26_2_tpl(in_c0_eni26_2_tpl),
        .in_c0_eni26_3_tpl(in_c0_eni26_3_tpl),
        .in_c0_eni26_4_tpl(in_c0_eni26_4_tpl),
        .in_c0_eni26_5_tpl(in_c0_eni26_5_tpl),
        .in_c0_eni26_6_tpl(in_c0_eni26_6_tpl),
        .in_c0_eni26_7_tpl(in_c0_eni26_7_tpl),
        .in_c0_eni26_8_tpl(in_c0_eni26_8_tpl),
        .in_c0_eni26_9_tpl(in_c0_eni26_9_tpl),
        .in_c0_eni26_10_tpl(in_c0_eni26_10_tpl),
        .in_c0_eni26_11_tpl(in_c0_eni26_11_tpl),
        .in_c0_eni26_12_tpl(in_c0_eni26_12_tpl),
        .in_c0_eni26_13_tpl(in_c0_eni26_13_tpl),
        .in_c0_eni26_14_tpl(in_c0_eni26_14_tpl),
        .in_c0_eni26_15_tpl(in_c0_eni26_15_tpl),
        .in_c0_eni26_16_tpl(in_c0_eni26_16_tpl),
        .in_c0_eni26_17_tpl(in_c0_eni26_17_tpl),
        .in_c0_eni26_18_tpl(in_c0_eni26_18_tpl),
        .in_c0_eni26_19_tpl(in_c0_eni26_19_tpl),
        .in_c0_eni26_20_tpl(in_c0_eni26_20_tpl),
        .in_c0_eni26_21_tpl(in_c0_eni26_21_tpl),
        .in_c0_eni26_22_tpl(in_c0_eni26_22_tpl),
        .in_c0_eni26_23_tpl(in_c0_eni26_23_tpl),
        .in_c0_eni26_24_tpl(in_c0_eni26_24_tpl),
        .in_c0_eni26_25_tpl(in_c0_eni26_25_tpl),
        .in_c0_eni26_26_tpl(in_c0_eni26_26_tpl),
        .out_exiting_valid_out(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_exiting_valid_out),
        .out_kernel_3mm_B6_current_iter_isspec(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_kernel_3mm_B6_current_iter_isspec),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_o_valid),
        .out_pipeline_dummy_out(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .out_c0_exi21474_0_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_0_tpl),
        .out_c0_exi21474_1_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_1_tpl),
        .out_c0_exi21474_2_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_2_tpl),
        .out_c0_exi21474_3_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_3_tpl),
        .out_c0_exi21474_4_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_4_tpl),
        .out_c0_exi21474_5_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_5_tpl),
        .out_c0_exi21474_6_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_6_tpl),
        .out_c0_exi21474_7_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_7_tpl),
        .out_c0_exi21474_8_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_8_tpl),
        .out_c0_exi21474_9_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_9_tpl),
        .out_c0_exi21474_10_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_10_tpl),
        .out_c0_exi21474_11_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_11_tpl),
        .out_c0_exi21474_12_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_12_tpl),
        .out_c0_exi21474_13_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_13_tpl),
        .out_c0_exi21474_14_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_14_tpl),
        .out_c0_exi21474_15_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_15_tpl),
        .out_c0_exi21474_16_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_16_tpl),
        .out_c0_exi21474_17_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_17_tpl),
        .out_c0_exi21474_18_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_18_tpl),
        .out_c0_exi21474_19_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_19_tpl),
        .out_c0_exi21474_20_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_20_tpl),
        .out_c0_exi21474_21_tpl(i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_c0_exi21474_21_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,13)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;

    // sync_out(GPOUT,17)@20000000
    assign out_o_stall = loop_admit_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,18)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,19)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,20)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,21)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,22)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,23)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;

    // dupName_6_regfree_osync_x(GPOUT,24)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;

    // dupName_7_regfree_osync_x(GPOUT,25)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,26)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;

    // dupName_9_regfree_osync_x(GPOUT,27)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;

    // dupName_10_regfree_osync_x(GPOUT,28)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;

    // dupName_11_regfree_osync_x(GPOUT,29)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;

    // dupName_12_regfree_osync_x(GPOUT,30)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,35)@49
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_almost_empty_out;
    assign out_c0_exit475_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit475_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit475_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit475_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit475_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit475_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit475_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit475_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit475_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit475_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit475_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit475_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit475_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit475_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit475_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit475_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit475_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit475_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit475_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit475_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit475_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit475_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_data_out_21_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_empty_out;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body47_kernel_3mms_c0_exit475_kernel_3mm1_aunroll_x_out_valid_out;
    assign out_profile_loop_o_valid = loop_admit_o_valid;

    // rst_sync(RESETSYNC,36)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
