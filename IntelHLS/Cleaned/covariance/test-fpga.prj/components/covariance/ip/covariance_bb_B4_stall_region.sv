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
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B4_stall_region (
    output wire [0:0] out_c0_exe105,
    output wire [31:0] out_c0_exe126,
    output wire [63:0] out_c0_exe32231,
    output wire [31:0] out_c0_exe42242,
    output wire [31:0] out_c0_exe83,
    output wire [0:0] out_c0_exe94,
    output wire [31:0] out_mul6,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe105,
    input wire [31:0] in_c0_exe126,
    input wire [63:0] in_c0_exe32231,
    input wire [31:0] in_c0_exe42242,
    input wire [31:0] in_c0_exe83,
    input wire [0:0] in_c0_exe94,
    input wire [31:0] in_c1_exe12327,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_mul6_covariance0_vt_join_q;
    wire [30:0] i_mul6_covariance0_vt_select_31_b;
    wire [30:0] leftShiftStage0Idx1Rng1_uid23_i_mul6_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid23_i_mul6_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid24_i_mul6_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid26_i_mul6_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid26_i_mul6_covariance0_shift_x_q;
    wire [193:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
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

    // leftShiftStage0Idx1Rng1_uid23_i_mul6_covariance0_shift_x(BITSELECT,22)@0
    assign leftShiftStage0Idx1Rng1_uid23_i_mul6_covariance0_shift_x_in = bubble_select_stall_entry_h[30:0];
    assign leftShiftStage0Idx1Rng1_uid23_i_mul6_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid23_i_mul6_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid24_i_mul6_covariance0_shift_x(BITJOIN,23)@0
    assign leftShiftStage0Idx1_uid24_i_mul6_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid23_i_mul6_covariance0_shift_x_b, GND_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid26_i_mul6_covariance0_shift_x(MUX,25)@0
    assign leftShiftStage0_uid26_i_mul6_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid26_i_mul6_covariance0_shift_x_s or bubble_select_stall_entry_h or leftShiftStage0Idx1_uid24_i_mul6_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid26_i_mul6_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid26_i_mul6_covariance0_shift_x_q = bubble_select_stall_entry_h;
            1'b1 : leftShiftStage0_uid26_i_mul6_covariance0_shift_x_q = leftShiftStage0Idx1_uid24_i_mul6_covariance0_shift_x_q;
            default : leftShiftStage0_uid26_i_mul6_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul6_covariance0_vt_select_31(BITSELECT,12)@0
    assign i_mul6_covariance0_vt_select_31_b = leftShiftStage0_uid26_i_mul6_covariance0_shift_x_q[31:1];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_mul6_covariance0_vt_join(BITJOIN,11)@0
    assign i_mul6_covariance0_vt_join_q = {i_mul6_covariance0_vt_select_31_b, GND_q};

    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {in_c1_exe12327, in_c0_exe94, in_c0_exe83, in_c0_exe42242, in_c0_exe32231, in_c0_exe126, in_c0_exe105};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[193:162]);

    // dupName_0_sync_out_x(GPOUT,2)@0
    assign out_c0_exe105 = bubble_select_stall_entry_b;
    assign out_c0_exe126 = bubble_select_stall_entry_c;
    assign out_c0_exe32231 = bubble_select_stall_entry_d;
    assign out_c0_exe42242 = bubble_select_stall_entry_e;
    assign out_c0_exe83 = bubble_select_stall_entry_f;
    assign out_c0_exe94 = bubble_select_stall_entry_g;
    assign out_mul6 = i_mul6_covariance0_vt_join_q;
    assign out_valid_out = SE_stall_entry_V0;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
