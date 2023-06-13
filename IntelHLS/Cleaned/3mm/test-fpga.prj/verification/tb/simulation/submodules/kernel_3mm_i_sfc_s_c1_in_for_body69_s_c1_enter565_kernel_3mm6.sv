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

// SystemVerilog created from i_sfc_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm6
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_s_c1_in_for_body69_s_c1_enter565_kernel_3mm6 (
    output wire [0:0] out_c1_exit572_0_tpl,
    output wire [31:0] out_c1_exit572_1_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_c0_exe12554,
    input wire [0:0] in_c0_exe2544,
    input wire [0:0] in_c1_eni5564_0_tpl,
    input wire [31:0] in_c1_eni5564_1_tpl,
    input wire [31:0] in_c1_eni5564_2_tpl,
    input wire [31:0] in_c1_eni5564_3_tpl,
    input wire [0:0] in_c1_eni5564_4_tpl,
    input wire [0:0] in_c1_eni5564_5_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_c1_exi1571_0_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_c1_exi1571_1_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,7)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,6)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x(BLACKBOX,4)@42
    // out out_c1_exi1571_0_tpl@47
    // out out_c1_exi1571_1_tpl@47
    // out out_o_valid@47
    // out out_unnamed_kernel_3mm1@47
    kernel_3mm_i_sfc_logic_s_c1_in_for_body60000enter565_kernel_3mm0 thei_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x (
        .in_c1_eni5564_0_tpl(in_c1_eni5564_0_tpl),
        .in_c1_eni5564_1_tpl(in_c1_eni5564_1_tpl),
        .in_c1_eni5564_2_tpl(in_c1_eni5564_2_tpl),
        .in_c1_eni5564_3_tpl(in_c1_eni5564_3_tpl),
        .in_c1_eni5564_4_tpl(in_c1_eni5564_4_tpl),
        .in_c1_eni5564_5_tpl(in_c1_eni5564_5_tpl),
        .in_enable(i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .out_c1_exi1571_0_tpl(i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_c1_exi1571_0_tpl),
        .out_c1_exi1571_1_tpl(i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_c1_exi1571_1_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_o_valid),
        .out_unnamed_kernel_3mm1(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x(BLACKBOX,3)@47
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    kernel_3mm_i_llvm_fpga_sfc_exit_s_c1_out0000_exit572_kernel_3mm0 thei_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_c1_exi1571_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_c1_exi1571_1_tpl),
        .in_dec_pipelined_thread(in_c0_exe2544),
        .in_inc_pipelined_thread(in_c0_exe12554),
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body69_kernel_3mms_c1_enter565_kernel_3mm0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_data_out_1_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@47
    assign out_c1_exit572_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit572_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_data_out_1_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_valid_out;

    // sync_out(GPOUT,9)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body69_kernel_3mms_c1_exit572_kernel_3mm1_aunroll_x_out_stall_entry;

endmodule
