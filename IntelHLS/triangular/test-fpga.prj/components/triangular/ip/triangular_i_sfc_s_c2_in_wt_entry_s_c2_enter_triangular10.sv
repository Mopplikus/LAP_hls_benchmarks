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

// SystemVerilog created from i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_s_c2_in_wt_entry_s_c2_enter_triangular10 (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_c2_eni1_0_tpl,
    input wire [63:0] in_c2_eni1_1_tpl,
    input wire [63:0] in_c2_eni1_2_tpl,
    input wire [31:0] in_c2_eni1_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c2_exit_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [32:0] i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x(BLACKBOX,11)@13
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@17
    // out out_data_out_0_tpl@17
    triangular_i_llvm_fpga_sfc_exit_s_c2_out0000_c2_exit_triangular0 thei_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x(BLACKBOX,12)@10
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_valid@13
    // out out_unnamed_triangular0@13
    // out out_unnamed_triangular6_0_tpl@13
    triangular_i_sfc_logic_s_c2_in_wt_entry_s_c2_enter_triangular0 thei_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_c2_eni1_0_tpl(in_c2_eni1_0_tpl),
        .in_c2_eni1_1_tpl(in_c2_eni1_1_tpl),
        .in_c2_eni1_2_tpl(in_c2_eni1_2_tpl),
        .in_c2_eni1_3_tpl(in_c2_eni1_3_tpl),
        .out_intel_reserved_ffwd_0_0(i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_valid(i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_o_valid),
        .out_unnamed_triangular0(),
        .out_unnamed_triangular6_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,5)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,7)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_1_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,14)@17
    assign out_c2_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_triangulars_c2_exit_triangular1_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,15)
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
