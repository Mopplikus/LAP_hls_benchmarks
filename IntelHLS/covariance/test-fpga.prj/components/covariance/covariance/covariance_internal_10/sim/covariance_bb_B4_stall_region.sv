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

// SystemVerilog created from bb_covariance_B4_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B4_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe102498,
    input wire [31:0] in_c0_exe112509,
    input wire [0:0] in_c0_exe1225110,
    input wire [0:0] in_c0_exe1311,
    input wire [0:0] in_c0_exe1412,
    input wire [63:0] in_c0_exe22411,
    input wire [0:0] in_c0_exe32422,
    input wire [31:0] in_c0_exe42433,
    input wire [31:0] in_c0_exe62454,
    input wire [0:0] in_c0_exe72465,
    input wire [0:0] in_c0_exe82476,
    input wire [0:0] in_c0_exe92487,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe102498,
    output wire [31:0] out_c0_exe112509,
    output wire [0:0] out_c0_exe1225110,
    output wire [0:0] out_c0_exe1311,
    output wire [0:0] out_c0_exe1412,
    output wire [63:0] out_c0_exe22411,
    output wire [0:0] out_c0_exe32422,
    output wire [31:0] out_c0_exe62454,
    output wire [0:0] out_c0_exe72465,
    output wire [0:0] out_c0_exe82476,
    output wire [0:0] out_c0_exe92487,
    output wire [31:0] out_mul,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_mul_covariance0_vt_join_q;
    wire [30:0] i_mul_covariance0_vt_select_31_b;
    wire [30:0] leftShiftStage0Idx1Rng1_uid23_i_mul_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid23_i_mul_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid24_i_mul_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid26_i_mul_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid26_i_mul_covariance0_shift_x_q;
    wire [167:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,32)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = in_stall_in | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // leftShiftStage0Idx1Rng1_uid23_i_mul_covariance0_shift_x(BITSELECT,22)@0
    assign leftShiftStage0Idx1Rng1_uid23_i_mul_covariance0_shift_x_in = bubble_select_stall_entry_i[30:0];
    assign leftShiftStage0Idx1Rng1_uid23_i_mul_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid23_i_mul_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid24_i_mul_covariance0_shift_x(BITJOIN,23)@0
    assign leftShiftStage0Idx1_uid24_i_mul_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid23_i_mul_covariance0_shift_x_b, GND_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid26_i_mul_covariance0_shift_x(MUX,25)@0
    assign leftShiftStage0_uid26_i_mul_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid26_i_mul_covariance0_shift_x_s or bubble_select_stall_entry_i or leftShiftStage0Idx1_uid24_i_mul_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid26_i_mul_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid26_i_mul_covariance0_shift_x_q = bubble_select_stall_entry_i;
            1'b1 : leftShiftStage0_uid26_i_mul_covariance0_shift_x_q = leftShiftStage0Idx1_uid24_i_mul_covariance0_shift_x_q;
            default : leftShiftStage0_uid26_i_mul_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_covariance0_vt_select_31(BITSELECT,7)@0
    assign i_mul_covariance0_vt_select_31_b = leftShiftStage0_uid26_i_mul_covariance0_shift_x_q[31:1];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_mul_covariance0_vt_join(BITJOIN,6)@0
    assign i_mul_covariance0_vt_join_q = {i_mul_covariance0_vt_select_31_b, GND_q};

    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {in_c0_exe92487, in_c0_exe82476, in_c0_exe72465, in_c0_exe62454, in_c0_exe42433, in_c0_exe32422, in_c0_exe22411, in_c0_exe1412, in_c0_exe1311, in_c0_exe1225110, in_c0_exe112509, in_c0_exe102498};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[132:101]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[164:133]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[165:165]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[166:166]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[167:167]);

    // dupName_0_sync_out_x(GPOUT,13)@0
    assign out_c0_exe102498 = bubble_select_stall_entry_b;
    assign out_c0_exe112509 = bubble_select_stall_entry_c;
    assign out_c0_exe1225110 = bubble_select_stall_entry_d;
    assign out_c0_exe1311 = bubble_select_stall_entry_e;
    assign out_c0_exe1412 = bubble_select_stall_entry_f;
    assign out_c0_exe22411 = bubble_select_stall_entry_g;
    assign out_c0_exe32422 = bubble_select_stall_entry_h;
    assign out_c0_exe62454 = bubble_select_stall_entry_j;
    assign out_c0_exe72465 = bubble_select_stall_entry_k;
    assign out_c0_exe82476 = bubble_select_stall_entry_l;
    assign out_c0_exe92487 = bubble_select_stall_entry_m;
    assign out_mul = i_mul_covariance0_vt_join_q;
    assign out_valid_out = SE_stall_entry_V0;

endmodule
