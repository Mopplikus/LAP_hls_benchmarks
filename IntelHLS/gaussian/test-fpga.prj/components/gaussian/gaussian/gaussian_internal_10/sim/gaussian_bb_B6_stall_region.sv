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

// SystemVerilog created from bb_gaussian_B6_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B6_stall_region (
    output wire [0:0] out_feedback_out_10,
    input wire [0:0] in_feedback_stall_in_10,
    output wire [0:0] out_feedback_valid_out_10,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1015415,
    input wire [0:0] in_c0_exe11452,
    input wire [0:0] in_c0_exe21463,
    input wire [0:0] in_c0_exe41487,
    input wire [31:0] in_c0_exe61509,
    input wire [31:0] in_c0_exe715111,
    input wire [31:0] in_c0_exe815213,
    input wire [0:0] in_c0_exe915314,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1015415,
    output wire [0:0] out_c0_exe11452,
    output wire [0:0] out_c0_exe21463,
    output wire [0:0] out_c0_exe41487,
    output wire [31:0] out_c0_exe61509,
    output wire [31:0] out_c0_exe715111,
    output wire [31:0] out_c0_exe815213,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_valid_out;
    wire [100:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_backStall;
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
    reg [0:0] rst_sync_rst_sclrn;


    // SE_stall_entry(STALLENABLE,22)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
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
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0(STALLENABLE,21)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_wireValid = i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,17)
    assign bubble_join_stall_entry_q = {in_c0_exe915314, in_c0_exe815213, in_c0_exe715111, in_c0_exe61509, in_c0_exe41487, in_c0_exe21463, in_c0_exe11452, in_c0_exe1015415};

    // bubble_select_stall_entry(BITSELECT,18)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:100]);

    // i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    gaussian_i_llvm_fpga_push_i1_memdep_phi_push10_0 thei_llvm_fpga_push_i1_memdep_phi_push10_gaussian0 (
        .in_c0_exe915314(bubble_select_stall_entry_i),
        .in_data_in(bubble_select_stall_entry_d),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_out_10_sync(GPOUT,4)
    assign out_feedback_out_10 = i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_feedback_out_10;

    // feedback_valid_out_10_sync(GPOUT,6)
    assign out_feedback_valid_out_10 = i_llvm_fpga_push_i1_memdep_phi_push10_gaussian0_out_feedback_valid_out_10;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,15)@0
    assign out_c0_exe1015415 = bubble_select_stall_entry_b;
    assign out_c0_exe11452 = bubble_select_stall_entry_c;
    assign out_c0_exe21463 = bubble_select_stall_entry_d;
    assign out_c0_exe41487 = bubble_select_stall_entry_e;
    assign out_c0_exe61509 = bubble_select_stall_entry_f;
    assign out_c0_exe715111 = bubble_select_stall_entry_g;
    assign out_c0_exe815213 = bubble_select_stall_entry_h;
    assign out_valid_out = SE_stall_entry_V0;

    // rst_sync(RESETSYNC,30)
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
