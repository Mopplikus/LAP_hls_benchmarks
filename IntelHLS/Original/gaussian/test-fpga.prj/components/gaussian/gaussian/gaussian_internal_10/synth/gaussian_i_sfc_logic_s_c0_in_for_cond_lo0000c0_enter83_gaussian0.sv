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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_cond_lo0000c0_enter83_gaussian0 (
    output wire [0:0] out_c0_exi185_0_tpl,
    output wire [31:0] out_c0_exi185_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni182_0_tpl,
    input wire [31:0] in_c0_eni182_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_15_q;
    wire [32:0] i_fpga_indvars_iv_next10_gaussian2_a;
    wire [32:0] i_fpga_indvars_iv_next10_gaussian2_b;
    logic [32:0] i_fpga_indvars_iv_next10_gaussian2_o;
    wire [32:0] i_fpga_indvars_iv_next10_gaussian2_q;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next10_gaussian2_sel_x_b;


    // c_i32_15(CONSTANT,4)
    assign c_i32_15_q = $unsigned(32'b11111111111111111111111111111111);

    // i_fpga_indvars_iv_next10_gaussian2(ADD,5)@0
    assign i_fpga_indvars_iv_next10_gaussian2_a = {1'b0, in_c0_eni182_1_tpl};
    assign i_fpga_indvars_iv_next10_gaussian2_b = {1'b0, c_i32_15_q};
    assign i_fpga_indvars_iv_next10_gaussian2_o = $unsigned(i_fpga_indvars_iv_next10_gaussian2_a) + $unsigned(i_fpga_indvars_iv_next10_gaussian2_b);
    assign i_fpga_indvars_iv_next10_gaussian2_q = i_fpga_indvars_iv_next10_gaussian2_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next10_gaussian2_sel_x(BITSELECT,7)@0
    assign bgTrunc_i_fpga_indvars_iv_next10_gaussian2_sel_x_b = i_fpga_indvars_iv_next10_gaussian2_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,8)@0
    assign out_c0_exi185_0_tpl = GND_q;
    assign out_c0_exi185_1_tpl = bgTrunc_i_fpga_indvars_iv_next10_gaussian2_sel_x_b;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
