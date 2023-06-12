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

// SystemVerilog created from i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_s_c0_in_for_body_s_c0_enter547_triangular3 (
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [31:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit58_0_tpl,
    output wire [32:0] out_c0_exit58_1_tpl,
    output wire [31:0] out_c0_exit58_2_tpl,
    output wire [31:0] out_c0_exit58_3_tpl,
    output wire [0:0] out_c0_exit58_4_tpl,
    output wire [0:0] out_c0_exit58_5_tpl,
    output wire [0:0] out_c0_exit58_6_tpl,
    output wire [31:0] out_c0_exit58_7_tpl,
    output wire [31:0] out_c0_exit58_8_tpl,
    output wire [0:0] out_c0_exit58_9_tpl,
    output wire [31:0] out_c0_exit58_10_tpl,
    output wire [31:0] out_c0_exit58_11_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] cluster_valid_entry_q;
    wire [0:0] exiting_q;
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
    wire [0:0] loop_not_stall_q;
    wire [0:0] not_valid_in_q;
    reg [0:0] stall_out_reg_0_q;
    reg [0:0] stall_out_reg_1_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_0_tpl;
    wire [32:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_dummy_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_forked_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_triangular_B4_current_iter_isspec;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_0_tpl;
    wire [32:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_6_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_9_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_10_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_11_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // loop_not_stall(LOGICAL,5)
    assign loop_not_stall_q = ~ (stall_out_reg_1_q);

    // cluster_valid_entry(LOGICAL,2)
    assign cluster_valid_entry_q = loop_not_stall_q & loop_admit_o_valid;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x(BLACKBOX,15)@6
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@10
    // out out_data_out_0_tpl@10
    // out out_data_out_1_tpl@10
    // out out_data_out_2_tpl@10
    // out out_data_out_3_tpl@10
    // out out_data_out_4_tpl@10
    // out out_data_out_5_tpl@10
    // out out_data_out_6_tpl@10
    // out out_data_out_7_tpl@10
    // out out_data_out_8_tpl@10
    // out out_data_out_9_tpl@10
    // out out_data_out_10_tpl@10
    // out out_data_out_11_tpl@10
    triangular_i_llvm_fpga_sfc_exit_s_c0_out00000_exit58_triangular0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x (
        .in_input_accepted(cluster_valid_entry_q),
        .in_mask_valid(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_triangular_B4_current_iter_isspec),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_11_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_11_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_out_reg_0(REG,12)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_0_q <= i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_stall_entry;
        end
    end

    // stall_out_reg_1(REG,13)
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

    // i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x(BLACKBOX,16)@0
    // out out_exiting_valid_out@20000000
    // out out_o_valid@6
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_profile_loop_o_valid@6
    // out out_triangular_B4_current_iter_isspec@6
    // out out_c0_exi11_0_tpl@6
    // out out_c0_exi11_1_tpl@6
    // out out_c0_exi11_2_tpl@6
    // out out_c0_exi11_3_tpl@6
    // out out_c0_exi11_4_tpl@6
    // out out_c0_exi11_5_tpl@6
    // out out_c0_exi11_6_tpl@6
    // out out_c0_exi11_7_tpl@6
    // out out_c0_exi11_8_tpl@6
    // out out_c0_exi11_9_tpl@6
    // out out_c0_exi11_10_tpl@6
    // out out_c0_exi11_11_tpl@6
    triangular_i_sfc_logic_s_c0_in_for_body_0000enter547_triangular0 thei_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x (
        .in_buffer_in(loop_admit_o_forked),
        .in_dummy_in(loop_admit_o_dummy),
        .in_i_valid(cluster_valid_entry_q),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_c0_eni3_0_tpl(in_c0_eni3_0_tpl),
        .in_c0_eni3_1_tpl(in_c0_eni3_1_tpl),
        .in_c0_eni3_2_tpl(in_c0_eni3_2_tpl),
        .in_c0_eni3_3_tpl(in_c0_eni3_3_tpl),
        .out_exiting_valid_out(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_o_valid),
        .out_pipeline_dummy_out(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_valid_out),
        .out_profile_loop_o_valid(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_profile_loop_o_valid),
        .out_triangular_B4_current_iter_isspec(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_triangular_B4_current_iter_isspec),
        .out_c0_exi11_0_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_0_tpl),
        .out_c0_exi11_1_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_1_tpl),
        .out_c0_exi11_2_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_2_tpl),
        .out_c0_exi11_3_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_3_tpl),
        .out_c0_exi11_4_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_4_tpl),
        .out_c0_exi11_5_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_5_tpl),
        .out_c0_exi11_6_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_6_tpl),
        .out_c0_exi11_7_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_7_tpl),
        .out_c0_exi11_8_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_8_tpl),
        .out_c0_exi11_9_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_9_tpl),
        .out_c0_exi11_10_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_10_tpl),
        .out_c0_exi11_11_tpl(i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_c0_exi11_11_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // exiting(LOGICAL,3)
    assign exiting_q = ~ (i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_exiting_valid_out);

    // not_valid_in(LOGICAL,6)
    assign not_valid_in_q = ~ (in_i_valid);

    // loop_admit(EXTIFACE,4)
    assign loop_admit_i_empty = not_valid_in_q;
    assign loop_admit_i_exit = exiting_q;
    assign loop_admit_i_exit_dummy = i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_dummy_out;
    assign loop_admit_i_exit_forked = i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_forked_out;
    assign loop_admit_i_exit_valid = i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_pipeline_valid_out;
    assign loop_admit_i_stall = stall_out_reg_1_q;
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
        .ASYNC_RESET(0),
        .FAST_ADMIT(1),
        .LATENCY_UPSTREAM_EMPTY(1),
        .LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP(0),
        .SYNCHRONIZE_RESET(0)
    ) theloop_admit (
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

    // sync_out(GPOUT,14)@20000000
    assign out_o_stall = loop_admit_o_stall;

    // dupName_0_sync_out_aunroll_x(GPOUT,18)@10
    assign out_c0_exit58_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit58_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit58_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit58_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit58_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit58_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit58_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit58_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit58_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit58_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit58_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit58_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_data_out_11_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_triangulars_c0_exit58_triangular1_aunroll_x_out_valid_out;
    assign out_profile_loop_o_valid = i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0_aunroll_x_out_profile_loop_o_valid;

    // rst_sync(RESETSYNC,19)
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
