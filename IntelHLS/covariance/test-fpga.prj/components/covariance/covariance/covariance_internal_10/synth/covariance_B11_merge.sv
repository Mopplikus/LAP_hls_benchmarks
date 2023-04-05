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

// SystemVerilog created from covariance_B11_merge
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B11_merge (
    input wire [0:0] in_exitcond16148_pop53195_0,
    input wire [0:0] in_exitcond16148_pop53195_1,
    input wire [0:0] in_forked70_0,
    input wire [0:0] in_forked70_1,
    input wire [63:0] in_idxprom36190_0,
    input wire [63:0] in_idxprom36190_1,
    input wire [31:0] in_lim_ext133_pop44173_0,
    input wire [31:0] in_lim_ext133_pop44173_1,
    input wire [31:0] in_lim_ext135_pop52193_0,
    input wire [31:0] in_lim_ext135_pop52193_1,
    input wire [31:0] in_mul189_0,
    input wire [31:0] in_mul189_1,
    input wire [0:0] in_notcmp101150_pop54197_0,
    input wire [0:0] in_notcmp101150_pop54197_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond16148_pop53195,
    output wire [0:0] out_forked70,
    output wire [63:0] out_idxprom36190,
    output wire [31:0] out_lim_ext133_pop44173,
    output wire [31:0] out_lim_ext135_pop52193,
    output wire [31:0] out_mul189,
    output wire [0:0] out_notcmp101150_pop54197,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond16148_pop53195_mux_s;
    reg [0:0] exitcond16148_pop53195_mux_q;
    wire [0:0] forked70_mux_s;
    reg [0:0] forked70_mux_q;
    wire [0:0] idxprom36190_mux_s;
    reg [63:0] idxprom36190_mux_q;
    wire [0:0] lim_ext133_pop44173_mux_s;
    reg [31:0] lim_ext133_pop44173_mux_q;
    wire [0:0] lim_ext135_pop52193_mux_s;
    reg [31:0] lim_ext135_pop52193_mux_q;
    wire [0:0] mul189_mux_s;
    reg [31:0] mul189_mux_q;
    wire [0:0] notcmp101150_pop54197_mux_s;
    reg [0:0] notcmp101150_pop54197_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond16148_pop53195_mux(MUX,2)
    assign exitcond16148_pop53195_mux_s = in_valid_in_0;
    always @(exitcond16148_pop53195_mux_s or in_exitcond16148_pop53195_1 or in_exitcond16148_pop53195_0)
    begin
        unique case (exitcond16148_pop53195_mux_s)
            1'b0 : exitcond16148_pop53195_mux_q = in_exitcond16148_pop53195_1;
            1'b1 : exitcond16148_pop53195_mux_q = in_exitcond16148_pop53195_0;
            default : exitcond16148_pop53195_mux_q = 1'b0;
        endcase
    end

    // out_exitcond16148_pop53195(GPOUT,26)
    assign out_exitcond16148_pop53195 = exitcond16148_pop53195_mux_q;

    // forked70_mux(MUX,3)
    assign forked70_mux_s = in_valid_in_0;
    always @(forked70_mux_s or in_forked70_1 or in_forked70_0)
    begin
        unique case (forked70_mux_s)
            1'b0 : forked70_mux_q = in_forked70_1;
            1'b1 : forked70_mux_q = in_forked70_0;
            default : forked70_mux_q = 1'b0;
        endcase
    end

    // out_forked70(GPOUT,27)
    assign out_forked70 = forked70_mux_q;

    // idxprom36190_mux(MUX,4)
    assign idxprom36190_mux_s = in_valid_in_0;
    always @(idxprom36190_mux_s or in_idxprom36190_1 or in_idxprom36190_0)
    begin
        unique case (idxprom36190_mux_s)
            1'b0 : idxprom36190_mux_q = in_idxprom36190_1;
            1'b1 : idxprom36190_mux_q = in_idxprom36190_0;
            default : idxprom36190_mux_q = 64'b0;
        endcase
    end

    // out_idxprom36190(GPOUT,28)
    assign out_idxprom36190 = idxprom36190_mux_q;

    // lim_ext133_pop44173_mux(MUX,22)
    assign lim_ext133_pop44173_mux_s = in_valid_in_0;
    always @(lim_ext133_pop44173_mux_s or in_lim_ext133_pop44173_1 or in_lim_ext133_pop44173_0)
    begin
        unique case (lim_ext133_pop44173_mux_s)
            1'b0 : lim_ext133_pop44173_mux_q = in_lim_ext133_pop44173_1;
            1'b1 : lim_ext133_pop44173_mux_q = in_lim_ext133_pop44173_0;
            default : lim_ext133_pop44173_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext133_pop44173(GPOUT,29)
    assign out_lim_ext133_pop44173 = lim_ext133_pop44173_mux_q;

    // lim_ext135_pop52193_mux(MUX,23)
    assign lim_ext135_pop52193_mux_s = in_valid_in_0;
    always @(lim_ext135_pop52193_mux_s or in_lim_ext135_pop52193_1 or in_lim_ext135_pop52193_0)
    begin
        unique case (lim_ext135_pop52193_mux_s)
            1'b0 : lim_ext135_pop52193_mux_q = in_lim_ext135_pop52193_1;
            1'b1 : lim_ext135_pop52193_mux_q = in_lim_ext135_pop52193_0;
            default : lim_ext135_pop52193_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext135_pop52193(GPOUT,30)
    assign out_lim_ext135_pop52193 = lim_ext135_pop52193_mux_q;

    // mul189_mux(MUX,24)
    assign mul189_mux_s = in_valid_in_0;
    always @(mul189_mux_s or in_mul189_1 or in_mul189_0)
    begin
        unique case (mul189_mux_s)
            1'b0 : mul189_mux_q = in_mul189_1;
            1'b1 : mul189_mux_q = in_mul189_0;
            default : mul189_mux_q = 32'b0;
        endcase
    end

    // out_mul189(GPOUT,31)
    assign out_mul189 = mul189_mux_q;

    // notcmp101150_pop54197_mux(MUX,25)
    assign notcmp101150_pop54197_mux_s = in_valid_in_0;
    always @(notcmp101150_pop54197_mux_s or in_notcmp101150_pop54197_1 or in_notcmp101150_pop54197_0)
    begin
        unique case (notcmp101150_pop54197_mux_s)
            1'b0 : notcmp101150_pop54197_mux_q = in_notcmp101150_pop54197_1;
            1'b1 : notcmp101150_pop54197_mux_q = in_notcmp101150_pop54197_0;
            default : notcmp101150_pop54197_mux_q = 1'b0;
        endcase
    end

    // out_notcmp101150_pop54197(GPOUT,32)
    assign out_notcmp101150_pop54197 = notcmp101150_pop54197_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,35)
    assign out_valid_out = valid_or_q;

endmodule
