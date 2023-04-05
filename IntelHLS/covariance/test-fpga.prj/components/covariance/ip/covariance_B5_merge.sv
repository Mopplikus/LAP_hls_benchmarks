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

// SystemVerilog created from covariance_B5_merge
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B5_merge (
    input wire [0:0] in_forked107_0,
    input wire [0:0] in_forked107_1,
    input wire [31:0] in_i_064_pop27169_0,
    input wire [31:0] in_i_064_pop27169_1,
    input wire [31:0] in_lim_ext132_pop28170_0,
    input wire [31:0] in_lim_ext132_pop28170_1,
    input wire [31:0] in_lim_ext167_0,
    input wire [31:0] in_lim_ext167_1,
    input wire [0:0] in_notcmp122168_0,
    input wire [0:0] in_notcmp122168_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked107,
    output wire [31:0] out_i_064_pop27169,
    output wire [31:0] out_lim_ext132_pop28170,
    output wire [31:0] out_lim_ext167,
    output wire [0:0] out_notcmp122168,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked107_mux_s;
    reg [0:0] forked107_mux_q;
    wire [0:0] i_064_pop27169_mux_s;
    reg [31:0] i_064_pop27169_mux_q;
    wire [0:0] lim_ext132_pop28170_mux_s;
    reg [31:0] lim_ext132_pop28170_mux_q;
    wire [0:0] lim_ext167_mux_s;
    reg [31:0] lim_ext167_mux_q;
    wire [0:0] notcmp122168_mux_s;
    reg [0:0] notcmp122168_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked107_mux(MUX,2)
    assign forked107_mux_s = in_valid_in_0;
    always @(forked107_mux_s or in_forked107_1 or in_forked107_0)
    begin
        unique case (forked107_mux_s)
            1'b0 : forked107_mux_q = in_forked107_1;
            1'b1 : forked107_mux_q = in_forked107_0;
            default : forked107_mux_q = 1'b0;
        endcase
    end

    // out_forked107(GPOUT,20)
    assign out_forked107 = forked107_mux_q;

    // i_064_pop27169_mux(MUX,3)
    assign i_064_pop27169_mux_s = in_valid_in_0;
    always @(i_064_pop27169_mux_s or in_i_064_pop27169_1 or in_i_064_pop27169_0)
    begin
        unique case (i_064_pop27169_mux_s)
            1'b0 : i_064_pop27169_mux_q = in_i_064_pop27169_1;
            1'b1 : i_064_pop27169_mux_q = in_i_064_pop27169_0;
            default : i_064_pop27169_mux_q = 32'b0;
        endcase
    end

    // out_i_064_pop27169(GPOUT,21)
    assign out_i_064_pop27169 = i_064_pop27169_mux_q;

    // lim_ext132_pop28170_mux(MUX,17)
    assign lim_ext132_pop28170_mux_s = in_valid_in_0;
    always @(lim_ext132_pop28170_mux_s or in_lim_ext132_pop28170_1 or in_lim_ext132_pop28170_0)
    begin
        unique case (lim_ext132_pop28170_mux_s)
            1'b0 : lim_ext132_pop28170_mux_q = in_lim_ext132_pop28170_1;
            1'b1 : lim_ext132_pop28170_mux_q = in_lim_ext132_pop28170_0;
            default : lim_ext132_pop28170_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext132_pop28170(GPOUT,22)
    assign out_lim_ext132_pop28170 = lim_ext132_pop28170_mux_q;

    // lim_ext167_mux(MUX,18)
    assign lim_ext167_mux_s = in_valid_in_0;
    always @(lim_ext167_mux_s or in_lim_ext167_1 or in_lim_ext167_0)
    begin
        unique case (lim_ext167_mux_s)
            1'b0 : lim_ext167_mux_q = in_lim_ext167_1;
            1'b1 : lim_ext167_mux_q = in_lim_ext167_0;
            default : lim_ext167_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext167(GPOUT,23)
    assign out_lim_ext167 = lim_ext167_mux_q;

    // notcmp122168_mux(MUX,19)
    assign notcmp122168_mux_s = in_valid_in_0;
    always @(notcmp122168_mux_s or in_notcmp122168_1 or in_notcmp122168_0)
    begin
        unique case (notcmp122168_mux_s)
            1'b0 : notcmp122168_mux_q = in_notcmp122168_1;
            1'b1 : notcmp122168_mux_q = in_notcmp122168_0;
            default : notcmp122168_mux_q = 1'b0;
        endcase
    end

    // out_notcmp122168(GPOUT,24)
    assign out_notcmp122168 = notcmp122168_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
