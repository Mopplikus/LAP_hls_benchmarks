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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_gaussians_c1_enter95_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c1_in_for_body_s_c1_enter95_gaussian0 (
    output wire [0:0] out_c1_exi2_0_tpl,
    output wire [31:0] out_c1_exi2_1_tpl,
    output wire [0:0] out_c1_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c1_eni194_0_tpl,
    input wire [31:0] in_c1_eni194_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_16_q;
    wire [31:0] c_i32_197_q;
    wire [32:0] i_add_gaussian2_a;
    wire [32:0] i_add_gaussian2_b;
    logic [32:0] i_add_gaussian2_o;
    wire [32:0] i_add_gaussian2_q;
    wire [33:0] i_cmp416_gaussian3_a;
    wire [33:0] i_cmp416_gaussian3_b;
    logic [33:0] i_cmp416_gaussian3_o;
    wire [0:0] i_cmp416_gaussian3_c;
    wire [31:0] bgTrunc_i_add_gaussian2_sel_x_b;
    reg [0:0] redist0_sync_together10_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist1_bgTrunc_i_add_gaussian2_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together10_aunroll_x_in_i_valid_1(DELAY,13)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together10_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist0_sync_together10_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_197(CONSTANT,5)
    assign c_i32_197_q = $unsigned(32'b00000000000000000000000000010011);

    // i_cmp416_gaussian3(COMPARE,7)@4
    assign i_cmp416_gaussian3_a = {2'b00, redist1_bgTrunc_i_add_gaussian2_sel_x_b_1_q};
    assign i_cmp416_gaussian3_b = {2'b00, c_i32_197_q};
    assign i_cmp416_gaussian3_o = $unsigned(i_cmp416_gaussian3_a) - $unsigned(i_cmp416_gaussian3_b);
    assign i_cmp416_gaussian3_c[0] = i_cmp416_gaussian3_o[33];

    // c_i32_16(CONSTANT,4)
    assign c_i32_16_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add_gaussian2(ADD,6)@3
    assign i_add_gaussian2_a = {1'b0, in_c1_eni194_1_tpl};
    assign i_add_gaussian2_b = {1'b0, c_i32_16_q};
    assign i_add_gaussian2_o = $unsigned(i_add_gaussian2_a) + $unsigned(i_add_gaussian2_b);
    assign i_add_gaussian2_q = i_add_gaussian2_o[32:0];

    // bgTrunc_i_add_gaussian2_sel_x(BITSELECT,9)@3
    assign bgTrunc_i_add_gaussian2_sel_x_b = i_add_gaussian2_q[31:0];

    // redist1_bgTrunc_i_add_gaussian2_sel_x_b_1(DELAY,14)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_add_gaussian2_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_gaussian2_sel_x_b);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,10)@4
    assign out_c1_exi2_0_tpl = GND_q;
    assign out_c1_exi2_1_tpl = redist1_bgTrunc_i_add_gaussian2_sel_x_b_1_q;
    assign out_c1_exi2_2_tpl = i_cmp416_gaussian3_c;
    assign out_o_valid = redist0_sync_together10_aunroll_x_in_i_valid_1_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
