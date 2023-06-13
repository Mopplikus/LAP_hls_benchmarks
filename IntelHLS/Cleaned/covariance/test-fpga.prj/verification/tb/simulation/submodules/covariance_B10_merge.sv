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

// SystemVerilog created from covariance_B10_merge
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B10_merge (
    input wire [0:0] in_exitcond21159_0,
    input wire [0:0] in_exitcond21159_1,
    input wire [0:0] in_forked27_0,
    input wire [0:0] in_forked27_1,
    input wire [32:0] in_fpga_indvars_iv14_pop23156_0,
    input wire [32:0] in_fpga_indvars_iv14_pop23156_1,
    input wire [31:0] in_i21_072_pop24150_0,
    input wire [31:0] in_i21_072_pop24150_1,
    input wire [31:0] in_lim_ext81_pop42145_0,
    input wire [31:0] in_lim_ext81_pop42145_1,
    input wire [31:0] in_lim_ext82_pop26168_0,
    input wire [31:0] in_lim_ext82_pop26168_1,
    input wire [0:0] in_memdep_phi3_pop25165_0,
    input wire [0:0] in_memdep_phi3_pop25165_1,
    input wire [31:0] in_mul47153_0,
    input wire [31:0] in_mul47153_1,
    input wire [0:0] in_notcmp31162_0,
    input wire [0:0] in_notcmp31162_1,
    input wire [31:0] in_reorder_limiter_enter122_0,
    input wire [31:0] in_reorder_limiter_enter122_1,
    input wire [31:0] in_reorder_limiter_enter86_pop27171_0,
    input wire [31:0] in_reorder_limiter_enter86_pop27171_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond21159,
    output wire [0:0] out_forked27,
    output wire [32:0] out_fpga_indvars_iv14_pop23156,
    output wire [31:0] out_i21_072_pop24150,
    output wire [31:0] out_lim_ext81_pop42145,
    output wire [31:0] out_lim_ext82_pop26168,
    output wire [0:0] out_memdep_phi3_pop25165,
    output wire [31:0] out_mul47153,
    output wire [0:0] out_notcmp31162,
    output wire [31:0] out_reorder_limiter_enter122,
    output wire [31:0] out_reorder_limiter_enter86_pop27171,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond21159_mux_s;
    reg [0:0] exitcond21159_mux_q;
    wire [0:0] forked27_mux_s;
    reg [0:0] forked27_mux_q;
    wire [0:0] fpga_indvars_iv14_pop23156_mux_s;
    reg [32:0] fpga_indvars_iv14_pop23156_mux_q;
    wire [0:0] i21_072_pop24150_mux_s;
    reg [31:0] i21_072_pop24150_mux_q;
    wire [0:0] lim_ext81_pop42145_mux_s;
    reg [31:0] lim_ext81_pop42145_mux_q;
    wire [0:0] lim_ext82_pop26168_mux_s;
    reg [31:0] lim_ext82_pop26168_mux_q;
    wire [0:0] memdep_phi3_pop25165_mux_s;
    reg [0:0] memdep_phi3_pop25165_mux_q;
    wire [0:0] mul47153_mux_s;
    reg [31:0] mul47153_mux_q;
    wire [0:0] notcmp31162_mux_s;
    reg [0:0] notcmp31162_mux_q;
    wire [0:0] reorder_limiter_enter122_mux_s;
    reg [31:0] reorder_limiter_enter122_mux_q;
    wire [0:0] reorder_limiter_enter86_pop27171_mux_s;
    reg [31:0] reorder_limiter_enter86_pop27171_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond21159_mux(MUX,2)
    assign exitcond21159_mux_s = in_valid_in_0;
    always @(exitcond21159_mux_s or in_exitcond21159_1 or in_exitcond21159_0)
    begin
        unique case (exitcond21159_mux_s)
            1'b0 : exitcond21159_mux_q = in_exitcond21159_1;
            1'b1 : exitcond21159_mux_q = in_exitcond21159_0;
            default : exitcond21159_mux_q = 1'b0;
        endcase
    end

    // out_exitcond21159(GPOUT,36)
    assign out_exitcond21159 = exitcond21159_mux_q;

    // forked27_mux(MUX,3)
    assign forked27_mux_s = in_valid_in_0;
    always @(forked27_mux_s or in_forked27_1 or in_forked27_0)
    begin
        unique case (forked27_mux_s)
            1'b0 : forked27_mux_q = in_forked27_1;
            1'b1 : forked27_mux_q = in_forked27_0;
            default : forked27_mux_q = 1'b0;
        endcase
    end

    // out_forked27(GPOUT,37)
    assign out_forked27 = forked27_mux_q;

    // fpga_indvars_iv14_pop23156_mux(MUX,4)
    assign fpga_indvars_iv14_pop23156_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv14_pop23156_mux_s or in_fpga_indvars_iv14_pop23156_1 or in_fpga_indvars_iv14_pop23156_0)
    begin
        unique case (fpga_indvars_iv14_pop23156_mux_s)
            1'b0 : fpga_indvars_iv14_pop23156_mux_q = in_fpga_indvars_iv14_pop23156_1;
            1'b1 : fpga_indvars_iv14_pop23156_mux_q = in_fpga_indvars_iv14_pop23156_0;
            default : fpga_indvars_iv14_pop23156_mux_q = 33'b0;
        endcase
    end

    // out_fpga_indvars_iv14_pop23156(GPOUT,38)
    assign out_fpga_indvars_iv14_pop23156 = fpga_indvars_iv14_pop23156_mux_q;

    // i21_072_pop24150_mux(MUX,5)
    assign i21_072_pop24150_mux_s = in_valid_in_0;
    always @(i21_072_pop24150_mux_s or in_i21_072_pop24150_1 or in_i21_072_pop24150_0)
    begin
        unique case (i21_072_pop24150_mux_s)
            1'b0 : i21_072_pop24150_mux_q = in_i21_072_pop24150_1;
            1'b1 : i21_072_pop24150_mux_q = in_i21_072_pop24150_0;
            default : i21_072_pop24150_mux_q = 32'b0;
        endcase
    end

    // out_i21_072_pop24150(GPOUT,39)
    assign out_i21_072_pop24150 = i21_072_pop24150_mux_q;

    // lim_ext81_pop42145_mux(MUX,31)
    assign lim_ext81_pop42145_mux_s = in_valid_in_0;
    always @(lim_ext81_pop42145_mux_s or in_lim_ext81_pop42145_1 or in_lim_ext81_pop42145_0)
    begin
        unique case (lim_ext81_pop42145_mux_s)
            1'b0 : lim_ext81_pop42145_mux_q = in_lim_ext81_pop42145_1;
            1'b1 : lim_ext81_pop42145_mux_q = in_lim_ext81_pop42145_0;
            default : lim_ext81_pop42145_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext81_pop42145(GPOUT,40)
    assign out_lim_ext81_pop42145 = lim_ext81_pop42145_mux_q;

    // lim_ext82_pop26168_mux(MUX,32)
    assign lim_ext82_pop26168_mux_s = in_valid_in_0;
    always @(lim_ext82_pop26168_mux_s or in_lim_ext82_pop26168_1 or in_lim_ext82_pop26168_0)
    begin
        unique case (lim_ext82_pop26168_mux_s)
            1'b0 : lim_ext82_pop26168_mux_q = in_lim_ext82_pop26168_1;
            1'b1 : lim_ext82_pop26168_mux_q = in_lim_ext82_pop26168_0;
            default : lim_ext82_pop26168_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext82_pop26168(GPOUT,41)
    assign out_lim_ext82_pop26168 = lim_ext82_pop26168_mux_q;

    // memdep_phi3_pop25165_mux(MUX,33)
    assign memdep_phi3_pop25165_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop25165_mux_s or in_memdep_phi3_pop25165_1 or in_memdep_phi3_pop25165_0)
    begin
        unique case (memdep_phi3_pop25165_mux_s)
            1'b0 : memdep_phi3_pop25165_mux_q = in_memdep_phi3_pop25165_1;
            1'b1 : memdep_phi3_pop25165_mux_q = in_memdep_phi3_pop25165_0;
            default : memdep_phi3_pop25165_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop25165(GPOUT,42)
    assign out_memdep_phi3_pop25165 = memdep_phi3_pop25165_mux_q;

    // mul47153_mux(MUX,34)
    assign mul47153_mux_s = in_valid_in_0;
    always @(mul47153_mux_s or in_mul47153_1 or in_mul47153_0)
    begin
        unique case (mul47153_mux_s)
            1'b0 : mul47153_mux_q = in_mul47153_1;
            1'b1 : mul47153_mux_q = in_mul47153_0;
            default : mul47153_mux_q = 32'b0;
        endcase
    end

    // out_mul47153(GPOUT,43)
    assign out_mul47153 = mul47153_mux_q;

    // notcmp31162_mux(MUX,35)
    assign notcmp31162_mux_s = in_valid_in_0;
    always @(notcmp31162_mux_s or in_notcmp31162_1 or in_notcmp31162_0)
    begin
        unique case (notcmp31162_mux_s)
            1'b0 : notcmp31162_mux_q = in_notcmp31162_1;
            1'b1 : notcmp31162_mux_q = in_notcmp31162_0;
            default : notcmp31162_mux_q = 1'b0;
        endcase
    end

    // out_notcmp31162(GPOUT,44)
    assign out_notcmp31162 = notcmp31162_mux_q;

    // reorder_limiter_enter122_mux(MUX,50)
    assign reorder_limiter_enter122_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter122_mux_s or in_reorder_limiter_enter122_1 or in_reorder_limiter_enter122_0)
    begin
        unique case (reorder_limiter_enter122_mux_s)
            1'b0 : reorder_limiter_enter122_mux_q = in_reorder_limiter_enter122_1;
            1'b1 : reorder_limiter_enter122_mux_q = in_reorder_limiter_enter122_0;
            default : reorder_limiter_enter122_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter122(GPOUT,45)
    assign out_reorder_limiter_enter122 = reorder_limiter_enter122_mux_q;

    // reorder_limiter_enter86_pop27171_mux(MUX,51)
    assign reorder_limiter_enter86_pop27171_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter86_pop27171_mux_s or in_reorder_limiter_enter86_pop27171_1 or in_reorder_limiter_enter86_pop27171_0)
    begin
        unique case (reorder_limiter_enter86_pop27171_mux_s)
            1'b0 : reorder_limiter_enter86_pop27171_mux_q = in_reorder_limiter_enter86_pop27171_1;
            1'b1 : reorder_limiter_enter86_pop27171_mux_q = in_reorder_limiter_enter86_pop27171_0;
            default : reorder_limiter_enter86_pop27171_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter86_pop27171(GPOUT,46)
    assign out_reorder_limiter_enter86_pop27171 = reorder_limiter_enter86_pop27171_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,52)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,53)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,49)
    assign out_valid_out = valid_or_q;

endmodule
