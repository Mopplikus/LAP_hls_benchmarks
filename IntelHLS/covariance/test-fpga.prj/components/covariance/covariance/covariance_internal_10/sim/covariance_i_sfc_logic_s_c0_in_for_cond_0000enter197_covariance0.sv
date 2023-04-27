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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond_cleanup5_covariances_c0_enter197_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond_0000enter197_covariance0 (
    output wire [0:0] out_c0_exi1199_0_tpl,
    output wire [31:0] out_c0_exi1199_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance1,
    input wire [0:0] in_c0_eni1196_0_tpl,
    input wire [31:0] in_c0_eni1196_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_mul_covariance2_vt_join_q;
    wire [30:0] i_mul_covariance2_vt_select_31_b;
    wire [30:0] leftShiftStage0Idx1Rng1_uid19_i_mul_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid19_i_mul_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid20_i_mul_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid22_i_mul_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid22_i_mul_covariance0_shift_x_q;


    // leftShiftStage0Idx1Rng1_uid19_i_mul_covariance0_shift_x(BITSELECT,18)@0
    assign leftShiftStage0Idx1Rng1_uid19_i_mul_covariance0_shift_x_in = in_c0_eni1196_1_tpl[30:0];
    assign leftShiftStage0Idx1Rng1_uid19_i_mul_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid19_i_mul_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid20_i_mul_covariance0_shift_x(BITJOIN,19)@0
    assign leftShiftStage0Idx1_uid20_i_mul_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid19_i_mul_covariance0_shift_x_b, GND_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid22_i_mul_covariance0_shift_x(MUX,21)@0
    assign leftShiftStage0_uid22_i_mul_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid22_i_mul_covariance0_shift_x_s or in_c0_eni1196_1_tpl or leftShiftStage0Idx1_uid20_i_mul_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid22_i_mul_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid22_i_mul_covariance0_shift_x_q = in_c0_eni1196_1_tpl;
            1'b1 : leftShiftStage0_uid22_i_mul_covariance0_shift_x_q = leftShiftStage0Idx1_uid20_i_mul_covariance0_shift_x_q;
            default : leftShiftStage0_uid22_i_mul_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_covariance2_vt_select_31(BITSELECT,6)@0
    assign i_mul_covariance2_vt_select_31_b = leftShiftStage0_uid22_i_mul_covariance0_shift_x_q[31:1];

    // i_mul_covariance2_vt_join(BITJOIN,5)@0
    assign i_mul_covariance2_vt_join_q = {i_mul_covariance2_vt_select_31_b, GND_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,12)@0
    assign out_c0_exi1199_0_tpl = GND_q;
    assign out_c0_exi1199_1_tpl = i_mul_covariance2_vt_join_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_covariance1 = GND_q;

endmodule
