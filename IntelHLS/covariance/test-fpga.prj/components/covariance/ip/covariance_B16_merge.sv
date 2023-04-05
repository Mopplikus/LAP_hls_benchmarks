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

// SystemVerilog created from covariance_B16_merge
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B16_merge (
    input wire [0:0] in_forked43_0,
    input wire [0:0] in_forked43_1,
    input wire [0:0] in_forked59224_0,
    input wire [0:0] in_forked59224_1,
    input wire [32:0] in_fpga_indvars_iv20_pop34211_0,
    input wire [32:0] in_fpga_indvars_iv20_pop34211_1,
    input wire [31:0] in_i56_057_pop35158_pop71230_0,
    input wire [31:0] in_i56_057_pop35158_pop71230_1,
    input wire [31:0] in_i56_057_pop35217_0,
    input wire [31:0] in_i56_057_pop35217_1,
    input wire [31:0] in_j60_056_pop67226_0,
    input wire [31:0] in_j60_056_pop67226_1,
    input wire [31:0] in_lim_ext136_pop61203_0,
    input wire [31:0] in_lim_ext136_pop61203_1,
    input wire [31:0] in_lim_ext137_pop36220_0,
    input wire [31:0] in_lim_ext137_pop36220_1,
    input wire [31:0] in_lim_ext138_pop68227_0,
    input wire [31:0] in_lim_ext138_pop68227_1,
    input wire [0:0] in_notcmp58225_0,
    input wire [0:0] in_notcmp58225_1,
    input wire [0:0] in_notcmp63156_pop70229_0,
    input wire [0:0] in_notcmp63156_pop70229_1,
    input wire [0:0] in_notcmp63214_0,
    input wire [0:0] in_notcmp63214_1,
    input wire [31:0] in_reorder_limiter_enter142_pop37223_0,
    input wire [31:0] in_reorder_limiter_enter142_pop37223_1,
    input wire [31:0] in_reorder_limiter_enter143_pop69228_0,
    input wire [31:0] in_reorder_limiter_enter143_pop69228_1,
    input wire [31:0] in_reorder_limiter_enter182_0,
    input wire [31:0] in_reorder_limiter_enter182_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked43,
    output wire [0:0] out_forked59224,
    output wire [32:0] out_fpga_indvars_iv20_pop34211,
    output wire [31:0] out_i56_057_pop35158_pop71230,
    output wire [31:0] out_i56_057_pop35217,
    output wire [31:0] out_j60_056_pop67226,
    output wire [31:0] out_lim_ext136_pop61203,
    output wire [31:0] out_lim_ext137_pop36220,
    output wire [31:0] out_lim_ext138_pop68227,
    output wire [0:0] out_notcmp58225,
    output wire [0:0] out_notcmp63156_pop70229,
    output wire [0:0] out_notcmp63214,
    output wire [31:0] out_reorder_limiter_enter142_pop37223,
    output wire [31:0] out_reorder_limiter_enter143_pop69228,
    output wire [31:0] out_reorder_limiter_enter182,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked43_mux_s;
    reg [0:0] forked43_mux_q;
    wire [0:0] forked59224_mux_s;
    reg [0:0] forked59224_mux_q;
    wire [0:0] fpga_indvars_iv20_pop34211_mux_s;
    reg [32:0] fpga_indvars_iv20_pop34211_mux_q;
    wire [0:0] i56_057_pop35158_pop71230_mux_s;
    reg [31:0] i56_057_pop35158_pop71230_mux_q;
    wire [0:0] i56_057_pop35217_mux_s;
    reg [31:0] i56_057_pop35217_mux_q;
    wire [0:0] j60_056_pop67226_mux_s;
    reg [31:0] j60_056_pop67226_mux_q;
    wire [0:0] lim_ext136_pop61203_mux_s;
    reg [31:0] lim_ext136_pop61203_mux_q;
    wire [0:0] lim_ext137_pop36220_mux_s;
    reg [31:0] lim_ext137_pop36220_mux_q;
    wire [0:0] lim_ext138_pop68227_mux_s;
    reg [31:0] lim_ext138_pop68227_mux_q;
    wire [0:0] notcmp58225_mux_s;
    reg [0:0] notcmp58225_mux_q;
    wire [0:0] notcmp63156_pop70229_mux_s;
    reg [0:0] notcmp63156_pop70229_mux_q;
    wire [0:0] notcmp63214_mux_s;
    reg [0:0] notcmp63214_mux_q;
    wire [0:0] reorder_limiter_enter142_pop37223_mux_s;
    reg [31:0] reorder_limiter_enter142_pop37223_mux_q;
    wire [0:0] reorder_limiter_enter143_pop69228_mux_s;
    reg [31:0] reorder_limiter_enter143_pop69228_mux_q;
    wire [0:0] reorder_limiter_enter182_mux_s;
    reg [31:0] reorder_limiter_enter182_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked43_mux(MUX,2)
    assign forked43_mux_s = in_valid_in_0;
    always @(forked43_mux_s or in_forked43_1 or in_forked43_0)
    begin
        unique case (forked43_mux_s)
            1'b0 : forked43_mux_q = in_forked43_1;
            1'b1 : forked43_mux_q = in_forked43_0;
            default : forked43_mux_q = 1'b0;
        endcase
    end

    // out_forked43(GPOUT,47)
    assign out_forked43 = forked43_mux_q;

    // forked59224_mux(MUX,3)
    assign forked59224_mux_s = in_valid_in_0;
    always @(forked59224_mux_s or in_forked59224_1 or in_forked59224_0)
    begin
        unique case (forked59224_mux_s)
            1'b0 : forked59224_mux_q = in_forked59224_1;
            1'b1 : forked59224_mux_q = in_forked59224_0;
            default : forked59224_mux_q = 1'b0;
        endcase
    end

    // out_forked59224(GPOUT,48)
    assign out_forked59224 = forked59224_mux_q;

    // fpga_indvars_iv20_pop34211_mux(MUX,4)
    assign fpga_indvars_iv20_pop34211_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv20_pop34211_mux_s or in_fpga_indvars_iv20_pop34211_1 or in_fpga_indvars_iv20_pop34211_0)
    begin
        unique case (fpga_indvars_iv20_pop34211_mux_s)
            1'b0 : fpga_indvars_iv20_pop34211_mux_q = in_fpga_indvars_iv20_pop34211_1;
            1'b1 : fpga_indvars_iv20_pop34211_mux_q = in_fpga_indvars_iv20_pop34211_0;
            default : fpga_indvars_iv20_pop34211_mux_q = 33'b0;
        endcase
    end

    // out_fpga_indvars_iv20_pop34211(GPOUT,49)
    assign out_fpga_indvars_iv20_pop34211 = fpga_indvars_iv20_pop34211_mux_q;

    // i56_057_pop35158_pop71230_mux(MUX,5)
    assign i56_057_pop35158_pop71230_mux_s = in_valid_in_0;
    always @(i56_057_pop35158_pop71230_mux_s or in_i56_057_pop35158_pop71230_1 or in_i56_057_pop35158_pop71230_0)
    begin
        unique case (i56_057_pop35158_pop71230_mux_s)
            1'b0 : i56_057_pop35158_pop71230_mux_q = in_i56_057_pop35158_pop71230_1;
            1'b1 : i56_057_pop35158_pop71230_mux_q = in_i56_057_pop35158_pop71230_0;
            default : i56_057_pop35158_pop71230_mux_q = 32'b0;
        endcase
    end

    // out_i56_057_pop35158_pop71230(GPOUT,50)
    assign out_i56_057_pop35158_pop71230 = i56_057_pop35158_pop71230_mux_q;

    // i56_057_pop35217_mux(MUX,6)
    assign i56_057_pop35217_mux_s = in_valid_in_0;
    always @(i56_057_pop35217_mux_s or in_i56_057_pop35217_1 or in_i56_057_pop35217_0)
    begin
        unique case (i56_057_pop35217_mux_s)
            1'b0 : i56_057_pop35217_mux_q = in_i56_057_pop35217_1;
            1'b1 : i56_057_pop35217_mux_q = in_i56_057_pop35217_0;
            default : i56_057_pop35217_mux_q = 32'b0;
        endcase
    end

    // out_i56_057_pop35217(GPOUT,51)
    assign out_i56_057_pop35217 = i56_057_pop35217_mux_q;

    // j60_056_pop67226_mux(MUX,40)
    assign j60_056_pop67226_mux_s = in_valid_in_0;
    always @(j60_056_pop67226_mux_s or in_j60_056_pop67226_1 or in_j60_056_pop67226_0)
    begin
        unique case (j60_056_pop67226_mux_s)
            1'b0 : j60_056_pop67226_mux_q = in_j60_056_pop67226_1;
            1'b1 : j60_056_pop67226_mux_q = in_j60_056_pop67226_0;
            default : j60_056_pop67226_mux_q = 32'b0;
        endcase
    end

    // out_j60_056_pop67226(GPOUT,52)
    assign out_j60_056_pop67226 = j60_056_pop67226_mux_q;

    // lim_ext136_pop61203_mux(MUX,41)
    assign lim_ext136_pop61203_mux_s = in_valid_in_0;
    always @(lim_ext136_pop61203_mux_s or in_lim_ext136_pop61203_1 or in_lim_ext136_pop61203_0)
    begin
        unique case (lim_ext136_pop61203_mux_s)
            1'b0 : lim_ext136_pop61203_mux_q = in_lim_ext136_pop61203_1;
            1'b1 : lim_ext136_pop61203_mux_q = in_lim_ext136_pop61203_0;
            default : lim_ext136_pop61203_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext136_pop61203(GPOUT,53)
    assign out_lim_ext136_pop61203 = lim_ext136_pop61203_mux_q;

    // lim_ext137_pop36220_mux(MUX,42)
    assign lim_ext137_pop36220_mux_s = in_valid_in_0;
    always @(lim_ext137_pop36220_mux_s or in_lim_ext137_pop36220_1 or in_lim_ext137_pop36220_0)
    begin
        unique case (lim_ext137_pop36220_mux_s)
            1'b0 : lim_ext137_pop36220_mux_q = in_lim_ext137_pop36220_1;
            1'b1 : lim_ext137_pop36220_mux_q = in_lim_ext137_pop36220_0;
            default : lim_ext137_pop36220_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext137_pop36220(GPOUT,54)
    assign out_lim_ext137_pop36220 = lim_ext137_pop36220_mux_q;

    // lim_ext138_pop68227_mux(MUX,43)
    assign lim_ext138_pop68227_mux_s = in_valid_in_0;
    always @(lim_ext138_pop68227_mux_s or in_lim_ext138_pop68227_1 or in_lim_ext138_pop68227_0)
    begin
        unique case (lim_ext138_pop68227_mux_s)
            1'b0 : lim_ext138_pop68227_mux_q = in_lim_ext138_pop68227_1;
            1'b1 : lim_ext138_pop68227_mux_q = in_lim_ext138_pop68227_0;
            default : lim_ext138_pop68227_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext138_pop68227(GPOUT,55)
    assign out_lim_ext138_pop68227 = lim_ext138_pop68227_mux_q;

    // notcmp58225_mux(MUX,44)
    assign notcmp58225_mux_s = in_valid_in_0;
    always @(notcmp58225_mux_s or in_notcmp58225_1 or in_notcmp58225_0)
    begin
        unique case (notcmp58225_mux_s)
            1'b0 : notcmp58225_mux_q = in_notcmp58225_1;
            1'b1 : notcmp58225_mux_q = in_notcmp58225_0;
            default : notcmp58225_mux_q = 1'b0;
        endcase
    end

    // out_notcmp58225(GPOUT,56)
    assign out_notcmp58225 = notcmp58225_mux_q;

    // notcmp63156_pop70229_mux(MUX,45)
    assign notcmp63156_pop70229_mux_s = in_valid_in_0;
    always @(notcmp63156_pop70229_mux_s or in_notcmp63156_pop70229_1 or in_notcmp63156_pop70229_0)
    begin
        unique case (notcmp63156_pop70229_mux_s)
            1'b0 : notcmp63156_pop70229_mux_q = in_notcmp63156_pop70229_1;
            1'b1 : notcmp63156_pop70229_mux_q = in_notcmp63156_pop70229_0;
            default : notcmp63156_pop70229_mux_q = 1'b0;
        endcase
    end

    // out_notcmp63156_pop70229(GPOUT,57)
    assign out_notcmp63156_pop70229 = notcmp63156_pop70229_mux_q;

    // notcmp63214_mux(MUX,46)
    assign notcmp63214_mux_s = in_valid_in_0;
    always @(notcmp63214_mux_s or in_notcmp63214_1 or in_notcmp63214_0)
    begin
        unique case (notcmp63214_mux_s)
            1'b0 : notcmp63214_mux_q = in_notcmp63214_1;
            1'b1 : notcmp63214_mux_q = in_notcmp63214_0;
            default : notcmp63214_mux_q = 1'b0;
        endcase
    end

    // out_notcmp63214(GPOUT,58)
    assign out_notcmp63214 = notcmp63214_mux_q;

    // reorder_limiter_enter142_pop37223_mux(MUX,65)
    assign reorder_limiter_enter142_pop37223_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter142_pop37223_mux_s or in_reorder_limiter_enter142_pop37223_1 or in_reorder_limiter_enter142_pop37223_0)
    begin
        unique case (reorder_limiter_enter142_pop37223_mux_s)
            1'b0 : reorder_limiter_enter142_pop37223_mux_q = in_reorder_limiter_enter142_pop37223_1;
            1'b1 : reorder_limiter_enter142_pop37223_mux_q = in_reorder_limiter_enter142_pop37223_0;
            default : reorder_limiter_enter142_pop37223_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter142_pop37223(GPOUT,59)
    assign out_reorder_limiter_enter142_pop37223 = reorder_limiter_enter142_pop37223_mux_q;

    // reorder_limiter_enter143_pop69228_mux(MUX,66)
    assign reorder_limiter_enter143_pop69228_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter143_pop69228_mux_s or in_reorder_limiter_enter143_pop69228_1 or in_reorder_limiter_enter143_pop69228_0)
    begin
        unique case (reorder_limiter_enter143_pop69228_mux_s)
            1'b0 : reorder_limiter_enter143_pop69228_mux_q = in_reorder_limiter_enter143_pop69228_1;
            1'b1 : reorder_limiter_enter143_pop69228_mux_q = in_reorder_limiter_enter143_pop69228_0;
            default : reorder_limiter_enter143_pop69228_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter143_pop69228(GPOUT,60)
    assign out_reorder_limiter_enter143_pop69228 = reorder_limiter_enter143_pop69228_mux_q;

    // reorder_limiter_enter182_mux(MUX,67)
    assign reorder_limiter_enter182_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter182_mux_s or in_reorder_limiter_enter182_1 or in_reorder_limiter_enter182_0)
    begin
        unique case (reorder_limiter_enter182_mux_s)
            1'b0 : reorder_limiter_enter182_mux_q = in_reorder_limiter_enter182_1;
            1'b1 : reorder_limiter_enter182_mux_q = in_reorder_limiter_enter182_0;
            default : reorder_limiter_enter182_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter182(GPOUT,61)
    assign out_reorder_limiter_enter182 = reorder_limiter_enter182_mux_q;

    // valid_or(LOGICAL,70)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,68)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,62)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,69)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,63)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,64)
    assign out_valid_out = valid_or_q;

endmodule
