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

// SystemVerilog created from bb_covariance_B17_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B17_stall_region (
    input wire [0:0] in_wgl_12_exit_exit_valid_out,
    input wire [0:0] in_wgl_12_exit_exit_stall_out,
    output wire [0:0] out_wgl_12_exit_exit_valid_in,
    output wire [0:0] out_wgl_12_exit_exit_stall_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe645519,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_exit_stall_in;
    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_exit_valid_in;
    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_valid_out;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;


    // SE_stall_entry(STALLENABLE,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0(STALLENABLE,21)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_wireValid = i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,16)
    assign bubble_join_stall_entry_q = in_c0_exe645519;

    // bubble_select_stall_entry(BITSELECT,17)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_exit_stall_in@1
    // out out_exit_valid_in@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    covariance_i_llvm_fpga_wg_limiter_exit_unnamed_10_covariance0 thei_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0 (
        .in_data_in(bubble_select_stall_entry_b),
        .in_exit_stall_out(in_wgl_12_exit_exit_stall_out),
        .in_exit_valid_out(in_wgl_12_exit_exit_valid_out),
        .in_stall_in(SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_exit_stall_in(i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_exit_stall_in),
        .out_exit_valid_in(i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_exit_valid_in),
        .out_stall_out(i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_stall_out),
        .out_valid_out(i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_wgl_12_exit_exit_valid_in = i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_exit_valid_in;
    assign out_wgl_12_exit_exit_stall_in = i_llvm_fpga_wg_limiter_exit_unnamed_covariance10_covariance0_out_exit_stall_in;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,14)@0
    assign out_valid_out = SE_stall_entry_V0;

endmodule
