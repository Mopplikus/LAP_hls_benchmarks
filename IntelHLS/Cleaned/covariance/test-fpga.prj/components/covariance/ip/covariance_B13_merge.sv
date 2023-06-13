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

// SystemVerilog created from covariance_B13_merge
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B13_merge (
    input wire [0:0] in_exitcond18175_0,
    input wire [0:0] in_exitcond18175_1,
    input wire [0:0] in_exitcond21102_pop55183_0,
    input wire [0:0] in_exitcond21102_pop55183_1,
    input wire [0:0] in_exitcond21161_0,
    input wire [0:0] in_exitcond21161_1,
    input wire [0:0] in_forked27174_0,
    input wire [0:0] in_forked27174_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [32:0] in_fpga_indvars_iv14_pop23158_0,
    input wire [32:0] in_fpga_indvars_iv14_pop23158_1,
    input wire [31:0] in_i21_072_pop24152_0,
    input wire [31:0] in_i21_072_pop24152_1,
    input wire [31:0] in_i21_072_pop2498_pop53181_0,
    input wire [31:0] in_i21_072_pop2498_pop53181_1,
    input wire [31:0] in_j26_071_pop49177_0,
    input wire [31:0] in_j26_071_pop49177_1,
    input wire [31:0] in_lim_ext81_pop42144_0,
    input wire [31:0] in_lim_ext81_pop42144_1,
    input wire [31:0] in_lim_ext82_pop26170_0,
    input wire [31:0] in_lim_ext82_pop26170_1,
    input wire [31:0] in_lim_ext83_pop51179_0,
    input wire [31:0] in_lim_ext83_pop51179_1,
    input wire [0:0] in_memdep_phi2_pop50178_0,
    input wire [0:0] in_memdep_phi2_pop50178_1,
    input wire [0:0] in_memdep_phi3_pop25106_pop57185_0,
    input wire [0:0] in_memdep_phi3_pop25106_pop57185_1,
    input wire [0:0] in_memdep_phi3_pop25167_0,
    input wire [0:0] in_memdep_phi3_pop25167_1,
    input wire [31:0] in_mul47100_pop54182_0,
    input wire [31:0] in_mul47100_pop54182_1,
    input wire [31:0] in_mul47155_0,
    input wire [31:0] in_mul47155_1,
    input wire [0:0] in_notcmp26176_0,
    input wire [0:0] in_notcmp26176_1,
    input wire [0:0] in_notcmp31104_pop56184_0,
    input wire [0:0] in_notcmp31104_pop56184_1,
    input wire [0:0] in_notcmp31164_0,
    input wire [0:0] in_notcmp31164_1,
    input wire [31:0] in_reorder_limiter_enter121_0,
    input wire [31:0] in_reorder_limiter_enter121_1,
    input wire [31:0] in_reorder_limiter_enter86_pop27173_0,
    input wire [31:0] in_reorder_limiter_enter86_pop27173_1,
    input wire [31:0] in_reorder_limiter_enter87_pop52180_0,
    input wire [31:0] in_reorder_limiter_enter87_pop52180_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond18175,
    output wire [0:0] out_exitcond21102_pop55183,
    output wire [0:0] out_exitcond21161,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked27174,
    output wire [32:0] out_fpga_indvars_iv14_pop23158,
    output wire [31:0] out_i21_072_pop24152,
    output wire [31:0] out_i21_072_pop2498_pop53181,
    output wire [31:0] out_j26_071_pop49177,
    output wire [31:0] out_lim_ext81_pop42144,
    output wire [31:0] out_lim_ext82_pop26170,
    output wire [31:0] out_lim_ext83_pop51179,
    output wire [0:0] out_memdep_phi2_pop50178,
    output wire [0:0] out_memdep_phi3_pop25106_pop57185,
    output wire [0:0] out_memdep_phi3_pop25167,
    output wire [31:0] out_mul47100_pop54182,
    output wire [31:0] out_mul47155,
    output wire [0:0] out_notcmp26176,
    output wire [0:0] out_notcmp31104_pop56184,
    output wire [0:0] out_notcmp31164,
    output wire [31:0] out_reorder_limiter_enter121,
    output wire [31:0] out_reorder_limiter_enter86_pop27173,
    output wire [31:0] out_reorder_limiter_enter87_pop52180,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond18175_mux_s;
    reg [0:0] exitcond18175_mux_q;
    wire [0:0] exitcond21102_pop55183_mux_s;
    reg [0:0] exitcond21102_pop55183_mux_q;
    wire [0:0] exitcond21161_mux_s;
    reg [0:0] exitcond21161_mux_q;
    wire [0:0] forked27174_mux_s;
    reg [0:0] forked27174_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] fpga_indvars_iv14_pop23158_mux_s;
    reg [32:0] fpga_indvars_iv14_pop23158_mux_q;
    wire [0:0] i21_072_pop24152_mux_s;
    reg [31:0] i21_072_pop24152_mux_q;
    wire [0:0] i21_072_pop2498_pop53181_mux_s;
    reg [31:0] i21_072_pop2498_pop53181_mux_q;
    wire [0:0] j26_071_pop49177_mux_s;
    reg [31:0] j26_071_pop49177_mux_q;
    wire [0:0] lim_ext81_pop42144_mux_s;
    reg [31:0] lim_ext81_pop42144_mux_q;
    wire [0:0] lim_ext82_pop26170_mux_s;
    reg [31:0] lim_ext82_pop26170_mux_q;
    wire [0:0] lim_ext83_pop51179_mux_s;
    reg [31:0] lim_ext83_pop51179_mux_q;
    wire [0:0] memdep_phi2_pop50178_mux_s;
    reg [0:0] memdep_phi2_pop50178_mux_q;
    wire [0:0] memdep_phi3_pop25106_pop57185_mux_s;
    reg [0:0] memdep_phi3_pop25106_pop57185_mux_q;
    wire [0:0] memdep_phi3_pop25167_mux_s;
    reg [0:0] memdep_phi3_pop25167_mux_q;
    wire [0:0] mul47100_pop54182_mux_s;
    reg [31:0] mul47100_pop54182_mux_q;
    wire [0:0] mul47155_mux_s;
    reg [31:0] mul47155_mux_q;
    wire [0:0] notcmp26176_mux_s;
    reg [0:0] notcmp26176_mux_q;
    wire [0:0] notcmp31104_pop56184_mux_s;
    reg [0:0] notcmp31104_pop56184_mux_q;
    wire [0:0] notcmp31164_mux_s;
    reg [0:0] notcmp31164_mux_q;
    wire [0:0] reorder_limiter_enter121_mux_s;
    reg [31:0] reorder_limiter_enter121_mux_q;
    wire [0:0] reorder_limiter_enter86_pop27173_mux_s;
    reg [31:0] reorder_limiter_enter86_pop27173_mux_q;
    wire [0:0] reorder_limiter_enter87_pop52180_mux_s;
    reg [31:0] reorder_limiter_enter87_pop52180_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond18175_mux(MUX,2)
    assign exitcond18175_mux_s = in_valid_in_0;
    always @(exitcond18175_mux_s or in_exitcond18175_1 or in_exitcond18175_0)
    begin
        unique case (exitcond18175_mux_s)
            1'b0 : exitcond18175_mux_q = in_exitcond18175_1;
            1'b1 : exitcond18175_mux_q = in_exitcond18175_0;
            default : exitcond18175_mux_q = 1'b0;
        endcase
    end

    // out_exitcond18175(GPOUT,71)
    assign out_exitcond18175 = exitcond18175_mux_q;

    // exitcond21102_pop55183_mux(MUX,3)
    assign exitcond21102_pop55183_mux_s = in_valid_in_0;
    always @(exitcond21102_pop55183_mux_s or in_exitcond21102_pop55183_1 or in_exitcond21102_pop55183_0)
    begin
        unique case (exitcond21102_pop55183_mux_s)
            1'b0 : exitcond21102_pop55183_mux_q = in_exitcond21102_pop55183_1;
            1'b1 : exitcond21102_pop55183_mux_q = in_exitcond21102_pop55183_0;
            default : exitcond21102_pop55183_mux_q = 1'b0;
        endcase
    end

    // out_exitcond21102_pop55183(GPOUT,72)
    assign out_exitcond21102_pop55183 = exitcond21102_pop55183_mux_q;

    // exitcond21161_mux(MUX,4)
    assign exitcond21161_mux_s = in_valid_in_0;
    always @(exitcond21161_mux_s or in_exitcond21161_1 or in_exitcond21161_0)
    begin
        unique case (exitcond21161_mux_s)
            1'b0 : exitcond21161_mux_q = in_exitcond21161_1;
            1'b1 : exitcond21161_mux_q = in_exitcond21161_0;
            default : exitcond21161_mux_q = 1'b0;
        endcase
    end

    // out_exitcond21161(GPOUT,73)
    assign out_exitcond21161 = exitcond21161_mux_q;

    // forked_mux(MUX,6)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,74)
    assign out_forked = forked_mux_q;

    // forked27174_mux(MUX,5)
    assign forked27174_mux_s = in_valid_in_0;
    always @(forked27174_mux_s or in_forked27174_1 or in_forked27174_0)
    begin
        unique case (forked27174_mux_s)
            1'b0 : forked27174_mux_q = in_forked27174_1;
            1'b1 : forked27174_mux_q = in_forked27174_0;
            default : forked27174_mux_q = 1'b0;
        endcase
    end

    // out_forked27174(GPOUT,75)
    assign out_forked27174 = forked27174_mux_q;

    // fpga_indvars_iv14_pop23158_mux(MUX,7)
    assign fpga_indvars_iv14_pop23158_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv14_pop23158_mux_s or in_fpga_indvars_iv14_pop23158_1 or in_fpga_indvars_iv14_pop23158_0)
    begin
        unique case (fpga_indvars_iv14_pop23158_mux_s)
            1'b0 : fpga_indvars_iv14_pop23158_mux_q = in_fpga_indvars_iv14_pop23158_1;
            1'b1 : fpga_indvars_iv14_pop23158_mux_q = in_fpga_indvars_iv14_pop23158_0;
            default : fpga_indvars_iv14_pop23158_mux_q = 33'b0;
        endcase
    end

    // out_fpga_indvars_iv14_pop23158(GPOUT,76)
    assign out_fpga_indvars_iv14_pop23158 = fpga_indvars_iv14_pop23158_mux_q;

    // i21_072_pop24152_mux(MUX,8)
    assign i21_072_pop24152_mux_s = in_valid_in_0;
    always @(i21_072_pop24152_mux_s or in_i21_072_pop24152_1 or in_i21_072_pop24152_0)
    begin
        unique case (i21_072_pop24152_mux_s)
            1'b0 : i21_072_pop24152_mux_q = in_i21_072_pop24152_1;
            1'b1 : i21_072_pop24152_mux_q = in_i21_072_pop24152_0;
            default : i21_072_pop24152_mux_q = 32'b0;
        endcase
    end

    // out_i21_072_pop24152(GPOUT,77)
    assign out_i21_072_pop24152 = i21_072_pop24152_mux_q;

    // i21_072_pop2498_pop53181_mux(MUX,9)
    assign i21_072_pop2498_pop53181_mux_s = in_valid_in_0;
    always @(i21_072_pop2498_pop53181_mux_s or in_i21_072_pop2498_pop53181_1 or in_i21_072_pop2498_pop53181_0)
    begin
        unique case (i21_072_pop2498_pop53181_mux_s)
            1'b0 : i21_072_pop2498_pop53181_mux_q = in_i21_072_pop2498_pop53181_1;
            1'b1 : i21_072_pop2498_pop53181_mux_q = in_i21_072_pop2498_pop53181_0;
            default : i21_072_pop2498_pop53181_mux_q = 32'b0;
        endcase
    end

    // out_i21_072_pop2498_pop53181(GPOUT,78)
    assign out_i21_072_pop2498_pop53181 = i21_072_pop2498_pop53181_mux_q;

    // j26_071_pop49177_mux(MUX,59)
    assign j26_071_pop49177_mux_s = in_valid_in_0;
    always @(j26_071_pop49177_mux_s or in_j26_071_pop49177_1 or in_j26_071_pop49177_0)
    begin
        unique case (j26_071_pop49177_mux_s)
            1'b0 : j26_071_pop49177_mux_q = in_j26_071_pop49177_1;
            1'b1 : j26_071_pop49177_mux_q = in_j26_071_pop49177_0;
            default : j26_071_pop49177_mux_q = 32'b0;
        endcase
    end

    // out_j26_071_pop49177(GPOUT,79)
    assign out_j26_071_pop49177 = j26_071_pop49177_mux_q;

    // lim_ext81_pop42144_mux(MUX,60)
    assign lim_ext81_pop42144_mux_s = in_valid_in_0;
    always @(lim_ext81_pop42144_mux_s or in_lim_ext81_pop42144_1 or in_lim_ext81_pop42144_0)
    begin
        unique case (lim_ext81_pop42144_mux_s)
            1'b0 : lim_ext81_pop42144_mux_q = in_lim_ext81_pop42144_1;
            1'b1 : lim_ext81_pop42144_mux_q = in_lim_ext81_pop42144_0;
            default : lim_ext81_pop42144_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext81_pop42144(GPOUT,80)
    assign out_lim_ext81_pop42144 = lim_ext81_pop42144_mux_q;

    // lim_ext82_pop26170_mux(MUX,61)
    assign lim_ext82_pop26170_mux_s = in_valid_in_0;
    always @(lim_ext82_pop26170_mux_s or in_lim_ext82_pop26170_1 or in_lim_ext82_pop26170_0)
    begin
        unique case (lim_ext82_pop26170_mux_s)
            1'b0 : lim_ext82_pop26170_mux_q = in_lim_ext82_pop26170_1;
            1'b1 : lim_ext82_pop26170_mux_q = in_lim_ext82_pop26170_0;
            default : lim_ext82_pop26170_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext82_pop26170(GPOUT,81)
    assign out_lim_ext82_pop26170 = lim_ext82_pop26170_mux_q;

    // lim_ext83_pop51179_mux(MUX,62)
    assign lim_ext83_pop51179_mux_s = in_valid_in_0;
    always @(lim_ext83_pop51179_mux_s or in_lim_ext83_pop51179_1 or in_lim_ext83_pop51179_0)
    begin
        unique case (lim_ext83_pop51179_mux_s)
            1'b0 : lim_ext83_pop51179_mux_q = in_lim_ext83_pop51179_1;
            1'b1 : lim_ext83_pop51179_mux_q = in_lim_ext83_pop51179_0;
            default : lim_ext83_pop51179_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext83_pop51179(GPOUT,82)
    assign out_lim_ext83_pop51179 = lim_ext83_pop51179_mux_q;

    // memdep_phi2_pop50178_mux(MUX,63)
    assign memdep_phi2_pop50178_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop50178_mux_s or in_memdep_phi2_pop50178_1 or in_memdep_phi2_pop50178_0)
    begin
        unique case (memdep_phi2_pop50178_mux_s)
            1'b0 : memdep_phi2_pop50178_mux_q = in_memdep_phi2_pop50178_1;
            1'b1 : memdep_phi2_pop50178_mux_q = in_memdep_phi2_pop50178_0;
            default : memdep_phi2_pop50178_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop50178(GPOUT,83)
    assign out_memdep_phi2_pop50178 = memdep_phi2_pop50178_mux_q;

    // memdep_phi3_pop25106_pop57185_mux(MUX,64)
    assign memdep_phi3_pop25106_pop57185_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop25106_pop57185_mux_s or in_memdep_phi3_pop25106_pop57185_1 or in_memdep_phi3_pop25106_pop57185_0)
    begin
        unique case (memdep_phi3_pop25106_pop57185_mux_s)
            1'b0 : memdep_phi3_pop25106_pop57185_mux_q = in_memdep_phi3_pop25106_pop57185_1;
            1'b1 : memdep_phi3_pop25106_pop57185_mux_q = in_memdep_phi3_pop25106_pop57185_0;
            default : memdep_phi3_pop25106_pop57185_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop25106_pop57185(GPOUT,84)
    assign out_memdep_phi3_pop25106_pop57185 = memdep_phi3_pop25106_pop57185_mux_q;

    // memdep_phi3_pop25167_mux(MUX,65)
    assign memdep_phi3_pop25167_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop25167_mux_s or in_memdep_phi3_pop25167_1 or in_memdep_phi3_pop25167_0)
    begin
        unique case (memdep_phi3_pop25167_mux_s)
            1'b0 : memdep_phi3_pop25167_mux_q = in_memdep_phi3_pop25167_1;
            1'b1 : memdep_phi3_pop25167_mux_q = in_memdep_phi3_pop25167_0;
            default : memdep_phi3_pop25167_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop25167(GPOUT,85)
    assign out_memdep_phi3_pop25167 = memdep_phi3_pop25167_mux_q;

    // mul47100_pop54182_mux(MUX,66)
    assign mul47100_pop54182_mux_s = in_valid_in_0;
    always @(mul47100_pop54182_mux_s or in_mul47100_pop54182_1 or in_mul47100_pop54182_0)
    begin
        unique case (mul47100_pop54182_mux_s)
            1'b0 : mul47100_pop54182_mux_q = in_mul47100_pop54182_1;
            1'b1 : mul47100_pop54182_mux_q = in_mul47100_pop54182_0;
            default : mul47100_pop54182_mux_q = 32'b0;
        endcase
    end

    // out_mul47100_pop54182(GPOUT,86)
    assign out_mul47100_pop54182 = mul47100_pop54182_mux_q;

    // mul47155_mux(MUX,67)
    assign mul47155_mux_s = in_valid_in_0;
    always @(mul47155_mux_s or in_mul47155_1 or in_mul47155_0)
    begin
        unique case (mul47155_mux_s)
            1'b0 : mul47155_mux_q = in_mul47155_1;
            1'b1 : mul47155_mux_q = in_mul47155_0;
            default : mul47155_mux_q = 32'b0;
        endcase
    end

    // out_mul47155(GPOUT,87)
    assign out_mul47155 = mul47155_mux_q;

    // notcmp26176_mux(MUX,68)
    assign notcmp26176_mux_s = in_valid_in_0;
    always @(notcmp26176_mux_s or in_notcmp26176_1 or in_notcmp26176_0)
    begin
        unique case (notcmp26176_mux_s)
            1'b0 : notcmp26176_mux_q = in_notcmp26176_1;
            1'b1 : notcmp26176_mux_q = in_notcmp26176_0;
            default : notcmp26176_mux_q = 1'b0;
        endcase
    end

    // out_notcmp26176(GPOUT,88)
    assign out_notcmp26176 = notcmp26176_mux_q;

    // notcmp31104_pop56184_mux(MUX,69)
    assign notcmp31104_pop56184_mux_s = in_valid_in_0;
    always @(notcmp31104_pop56184_mux_s or in_notcmp31104_pop56184_1 or in_notcmp31104_pop56184_0)
    begin
        unique case (notcmp31104_pop56184_mux_s)
            1'b0 : notcmp31104_pop56184_mux_q = in_notcmp31104_pop56184_1;
            1'b1 : notcmp31104_pop56184_mux_q = in_notcmp31104_pop56184_0;
            default : notcmp31104_pop56184_mux_q = 1'b0;
        endcase
    end

    // out_notcmp31104_pop56184(GPOUT,89)
    assign out_notcmp31104_pop56184 = notcmp31104_pop56184_mux_q;

    // notcmp31164_mux(MUX,70)
    assign notcmp31164_mux_s = in_valid_in_0;
    always @(notcmp31164_mux_s or in_notcmp31164_1 or in_notcmp31164_0)
    begin
        unique case (notcmp31164_mux_s)
            1'b0 : notcmp31164_mux_q = in_notcmp31164_1;
            1'b1 : notcmp31164_mux_q = in_notcmp31164_0;
            default : notcmp31164_mux_q = 1'b0;
        endcase
    end

    // out_notcmp31164(GPOUT,90)
    assign out_notcmp31164 = notcmp31164_mux_q;

    // reorder_limiter_enter121_mux(MUX,97)
    assign reorder_limiter_enter121_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter121_mux_s or in_reorder_limiter_enter121_1 or in_reorder_limiter_enter121_0)
    begin
        unique case (reorder_limiter_enter121_mux_s)
            1'b0 : reorder_limiter_enter121_mux_q = in_reorder_limiter_enter121_1;
            1'b1 : reorder_limiter_enter121_mux_q = in_reorder_limiter_enter121_0;
            default : reorder_limiter_enter121_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter121(GPOUT,91)
    assign out_reorder_limiter_enter121 = reorder_limiter_enter121_mux_q;

    // reorder_limiter_enter86_pop27173_mux(MUX,98)
    assign reorder_limiter_enter86_pop27173_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter86_pop27173_mux_s or in_reorder_limiter_enter86_pop27173_1 or in_reorder_limiter_enter86_pop27173_0)
    begin
        unique case (reorder_limiter_enter86_pop27173_mux_s)
            1'b0 : reorder_limiter_enter86_pop27173_mux_q = in_reorder_limiter_enter86_pop27173_1;
            1'b1 : reorder_limiter_enter86_pop27173_mux_q = in_reorder_limiter_enter86_pop27173_0;
            default : reorder_limiter_enter86_pop27173_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter86_pop27173(GPOUT,92)
    assign out_reorder_limiter_enter86_pop27173 = reorder_limiter_enter86_pop27173_mux_q;

    // reorder_limiter_enter87_pop52180_mux(MUX,99)
    assign reorder_limiter_enter87_pop52180_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter87_pop52180_mux_s or in_reorder_limiter_enter87_pop52180_1 or in_reorder_limiter_enter87_pop52180_0)
    begin
        unique case (reorder_limiter_enter87_pop52180_mux_s)
            1'b0 : reorder_limiter_enter87_pop52180_mux_q = in_reorder_limiter_enter87_pop52180_1;
            1'b1 : reorder_limiter_enter87_pop52180_mux_q = in_reorder_limiter_enter87_pop52180_0;
            default : reorder_limiter_enter87_pop52180_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter87_pop52180(GPOUT,93)
    assign out_reorder_limiter_enter87_pop52180 = reorder_limiter_enter87_pop52180_mux_q;

    // valid_or(LOGICAL,102)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,100)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,94)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,101)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,95)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,96)
    assign out_valid_out = valid_or_q;

endmodule
