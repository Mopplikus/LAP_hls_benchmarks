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

// SystemVerilog created from gaussian_B7_merge
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B7_merge (
    input wire [31:0] in_add32_pop1566_0,
    input wire [31:0] in_add32_pop1566_1,
    input wire [31:0] in_add54_0,
    input wire [31:0] in_add54_1,
    input wire [0:0] in_cmp41634_pop1658_0,
    input wire [0:0] in_cmp41634_pop1658_1,
    input wire [0:0] in_cmp41657_0,
    input wire [0:0] in_cmp41657_1,
    input wire [31:0] in_fpga_indvars_iv728_pop1364_0,
    input wire [31:0] in_fpga_indvars_iv728_pop1364_1,
    input wire [31:0] in_fpga_indvars_iv745_0,
    input wire [31:0] in_fpga_indvars_iv745_1,
    input wire [31:0] in_fpga_indvars_iv926_pop1263_0,
    input wire [31:0] in_fpga_indvars_iv926_pop1263_1,
    input wire [31:0] in_fpga_indvars_iv942_0,
    input wire [31:0] in_fpga_indvars_iv942_1,
    input wire [31:0] in_i_017_pop960_0,
    input wire [31:0] in_i_017_pop960_1,
    input wire [31:0] in_j_01830_pop1465_0,
    input wire [31:0] in_j_01830_pop1465_1,
    input wire [31:0] in_j_01848_0,
    input wire [31:0] in_j_01848_1,
    input wire [0:0] in_memdep_phi4_pop723_pop1162_0,
    input wire [0:0] in_memdep_phi4_pop723_pop1162_1,
    input wire [0:0] in_memdep_phi4_pop72551_0,
    input wire [0:0] in_memdep_phi4_pop72551_1,
    input wire [0:0] in_memdep_phi_pop1061_0,
    input wire [0:0] in_memdep_phi_pop1061_1,
    input wire [0:0] in_notcmp1459_0,
    input wire [0:0] in_notcmp1459_1,
    input wire [0:0] in_stall_in,
    input wire [32:0] in_unnamed_gaussian4_0,
    input wire [32:0] in_unnamed_gaussian4_1,
    input wire [0:0] in_unnamed_gaussian5_0,
    input wire [0:0] in_unnamed_gaussian5_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add32_pop1566,
    output wire [31:0] out_add54,
    output wire [0:0] out_cmp41634_pop1658,
    output wire [0:0] out_cmp41657,
    output wire [31:0] out_fpga_indvars_iv728_pop1364,
    output wire [31:0] out_fpga_indvars_iv745,
    output wire [31:0] out_fpga_indvars_iv926_pop1263,
    output wire [31:0] out_fpga_indvars_iv942,
    output wire [31:0] out_i_017_pop960,
    output wire [31:0] out_j_01830_pop1465,
    output wire [31:0] out_j_01848,
    output wire [0:0] out_memdep_phi4_pop723_pop1162,
    output wire [0:0] out_memdep_phi4_pop72551,
    output wire [0:0] out_memdep_phi_pop1061,
    output wire [0:0] out_notcmp1459,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [32:0] out_unnamed_gaussian4,
    output wire [0:0] out_unnamed_gaussian5,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add32_pop1566_mux_s;
    reg [31:0] add32_pop1566_mux_q;
    wire [0:0] add54_mux_s;
    reg [31:0] add54_mux_q;
    wire [0:0] cmp41634_pop1658_mux_s;
    reg [0:0] cmp41634_pop1658_mux_q;
    wire [0:0] cmp41657_mux_s;
    reg [0:0] cmp41657_mux_q;
    wire [0:0] fpga_indvars_iv728_pop1364_mux_s;
    reg [31:0] fpga_indvars_iv728_pop1364_mux_q;
    wire [0:0] fpga_indvars_iv745_mux_s;
    reg [31:0] fpga_indvars_iv745_mux_q;
    wire [0:0] fpga_indvars_iv926_pop1263_mux_s;
    reg [31:0] fpga_indvars_iv926_pop1263_mux_q;
    wire [0:0] fpga_indvars_iv942_mux_s;
    reg [31:0] fpga_indvars_iv942_mux_q;
    wire [0:0] i_017_pop960_mux_s;
    reg [31:0] i_017_pop960_mux_q;
    wire [0:0] j_01830_pop1465_mux_s;
    reg [31:0] j_01830_pop1465_mux_q;
    wire [0:0] j_01848_mux_s;
    reg [31:0] j_01848_mux_q;
    wire [0:0] memdep_phi4_pop723_pop1162_mux_s;
    reg [0:0] memdep_phi4_pop723_pop1162_mux_q;
    wire [0:0] memdep_phi4_pop72551_mux_s;
    reg [0:0] memdep_phi4_pop72551_mux_q;
    wire [0:0] memdep_phi_pop1061_mux_s;
    reg [0:0] memdep_phi_pop1061_mux_q;
    wire [0:0] notcmp1459_mux_s;
    reg [0:0] notcmp1459_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_gaussian4_mux_s;
    reg [32:0] unnamed_gaussian4_mux_q;
    wire [0:0] unnamed_gaussian5_mux_s;
    reg [0:0] unnamed_gaussian5_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add32_pop1566_mux(MUX,2)
    assign add32_pop1566_mux_s = in_valid_in_0;
    always @(add32_pop1566_mux_s or in_add32_pop1566_1 or in_add32_pop1566_0)
    begin
        unique case (add32_pop1566_mux_s)
            1'b0 : add32_pop1566_mux_q = in_add32_pop1566_1;
            1'b1 : add32_pop1566_mux_q = in_add32_pop1566_0;
            default : add32_pop1566_mux_q = 32'b0;
        endcase
    end

    // out_add32_pop1566(GPOUT,54)
    assign out_add32_pop1566 = add32_pop1566_mux_q;

    // add54_mux(MUX,3)
    assign add54_mux_s = in_valid_in_0;
    always @(add54_mux_s or in_add54_1 or in_add54_0)
    begin
        unique case (add54_mux_s)
            1'b0 : add54_mux_q = in_add54_1;
            1'b1 : add54_mux_q = in_add54_0;
            default : add54_mux_q = 32'b0;
        endcase
    end

    // out_add54(GPOUT,55)
    assign out_add54 = add54_mux_q;

    // cmp41634_pop1658_mux(MUX,4)
    assign cmp41634_pop1658_mux_s = in_valid_in_0;
    always @(cmp41634_pop1658_mux_s or in_cmp41634_pop1658_1 or in_cmp41634_pop1658_0)
    begin
        unique case (cmp41634_pop1658_mux_s)
            1'b0 : cmp41634_pop1658_mux_q = in_cmp41634_pop1658_1;
            1'b1 : cmp41634_pop1658_mux_q = in_cmp41634_pop1658_0;
            default : cmp41634_pop1658_mux_q = 1'b0;
        endcase
    end

    // out_cmp41634_pop1658(GPOUT,56)
    assign out_cmp41634_pop1658 = cmp41634_pop1658_mux_q;

    // cmp41657_mux(MUX,5)
    assign cmp41657_mux_s = in_valid_in_0;
    always @(cmp41657_mux_s or in_cmp41657_1 or in_cmp41657_0)
    begin
        unique case (cmp41657_mux_s)
            1'b0 : cmp41657_mux_q = in_cmp41657_1;
            1'b1 : cmp41657_mux_q = in_cmp41657_0;
            default : cmp41657_mux_q = 1'b0;
        endcase
    end

    // out_cmp41657(GPOUT,57)
    assign out_cmp41657 = cmp41657_mux_q;

    // fpga_indvars_iv728_pop1364_mux(MUX,6)
    assign fpga_indvars_iv728_pop1364_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv728_pop1364_mux_s or in_fpga_indvars_iv728_pop1364_1 or in_fpga_indvars_iv728_pop1364_0)
    begin
        unique case (fpga_indvars_iv728_pop1364_mux_s)
            1'b0 : fpga_indvars_iv728_pop1364_mux_q = in_fpga_indvars_iv728_pop1364_1;
            1'b1 : fpga_indvars_iv728_pop1364_mux_q = in_fpga_indvars_iv728_pop1364_0;
            default : fpga_indvars_iv728_pop1364_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv728_pop1364(GPOUT,58)
    assign out_fpga_indvars_iv728_pop1364 = fpga_indvars_iv728_pop1364_mux_q;

    // fpga_indvars_iv745_mux(MUX,7)
    assign fpga_indvars_iv745_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv745_mux_s or in_fpga_indvars_iv745_1 or in_fpga_indvars_iv745_0)
    begin
        unique case (fpga_indvars_iv745_mux_s)
            1'b0 : fpga_indvars_iv745_mux_q = in_fpga_indvars_iv745_1;
            1'b1 : fpga_indvars_iv745_mux_q = in_fpga_indvars_iv745_0;
            default : fpga_indvars_iv745_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv745(GPOUT,59)
    assign out_fpga_indvars_iv745 = fpga_indvars_iv745_mux_q;

    // fpga_indvars_iv926_pop1263_mux(MUX,8)
    assign fpga_indvars_iv926_pop1263_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv926_pop1263_mux_s or in_fpga_indvars_iv926_pop1263_1 or in_fpga_indvars_iv926_pop1263_0)
    begin
        unique case (fpga_indvars_iv926_pop1263_mux_s)
            1'b0 : fpga_indvars_iv926_pop1263_mux_q = in_fpga_indvars_iv926_pop1263_1;
            1'b1 : fpga_indvars_iv926_pop1263_mux_q = in_fpga_indvars_iv926_pop1263_0;
            default : fpga_indvars_iv926_pop1263_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv926_pop1263(GPOUT,60)
    assign out_fpga_indvars_iv926_pop1263 = fpga_indvars_iv926_pop1263_mux_q;

    // fpga_indvars_iv942_mux(MUX,9)
    assign fpga_indvars_iv942_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv942_mux_s or in_fpga_indvars_iv942_1 or in_fpga_indvars_iv942_0)
    begin
        unique case (fpga_indvars_iv942_mux_s)
            1'b0 : fpga_indvars_iv942_mux_q = in_fpga_indvars_iv942_1;
            1'b1 : fpga_indvars_iv942_mux_q = in_fpga_indvars_iv942_0;
            default : fpga_indvars_iv942_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv942(GPOUT,61)
    assign out_fpga_indvars_iv942 = fpga_indvars_iv942_mux_q;

    // i_017_pop960_mux(MUX,10)
    assign i_017_pop960_mux_s = in_valid_in_0;
    always @(i_017_pop960_mux_s or in_i_017_pop960_1 or in_i_017_pop960_0)
    begin
        unique case (i_017_pop960_mux_s)
            1'b0 : i_017_pop960_mux_q = in_i_017_pop960_1;
            1'b1 : i_017_pop960_mux_q = in_i_017_pop960_0;
            default : i_017_pop960_mux_q = 32'b0;
        endcase
    end

    // out_i_017_pop960(GPOUT,62)
    assign out_i_017_pop960 = i_017_pop960_mux_q;

    // j_01830_pop1465_mux(MUX,48)
    assign j_01830_pop1465_mux_s = in_valid_in_0;
    always @(j_01830_pop1465_mux_s or in_j_01830_pop1465_1 or in_j_01830_pop1465_0)
    begin
        unique case (j_01830_pop1465_mux_s)
            1'b0 : j_01830_pop1465_mux_q = in_j_01830_pop1465_1;
            1'b1 : j_01830_pop1465_mux_q = in_j_01830_pop1465_0;
            default : j_01830_pop1465_mux_q = 32'b0;
        endcase
    end

    // out_j_01830_pop1465(GPOUT,63)
    assign out_j_01830_pop1465 = j_01830_pop1465_mux_q;

    // j_01848_mux(MUX,49)
    assign j_01848_mux_s = in_valid_in_0;
    always @(j_01848_mux_s or in_j_01848_1 or in_j_01848_0)
    begin
        unique case (j_01848_mux_s)
            1'b0 : j_01848_mux_q = in_j_01848_1;
            1'b1 : j_01848_mux_q = in_j_01848_0;
            default : j_01848_mux_q = 32'b0;
        endcase
    end

    // out_j_01848(GPOUT,64)
    assign out_j_01848 = j_01848_mux_q;

    // memdep_phi4_pop723_pop1162_mux(MUX,50)
    assign memdep_phi4_pop723_pop1162_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop723_pop1162_mux_s or in_memdep_phi4_pop723_pop1162_1 or in_memdep_phi4_pop723_pop1162_0)
    begin
        unique case (memdep_phi4_pop723_pop1162_mux_s)
            1'b0 : memdep_phi4_pop723_pop1162_mux_q = in_memdep_phi4_pop723_pop1162_1;
            1'b1 : memdep_phi4_pop723_pop1162_mux_q = in_memdep_phi4_pop723_pop1162_0;
            default : memdep_phi4_pop723_pop1162_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop723_pop1162(GPOUT,65)
    assign out_memdep_phi4_pop723_pop1162 = memdep_phi4_pop723_pop1162_mux_q;

    // memdep_phi4_pop72551_mux(MUX,51)
    assign memdep_phi4_pop72551_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop72551_mux_s or in_memdep_phi4_pop72551_1 or in_memdep_phi4_pop72551_0)
    begin
        unique case (memdep_phi4_pop72551_mux_s)
            1'b0 : memdep_phi4_pop72551_mux_q = in_memdep_phi4_pop72551_1;
            1'b1 : memdep_phi4_pop72551_mux_q = in_memdep_phi4_pop72551_0;
            default : memdep_phi4_pop72551_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop72551(GPOUT,66)
    assign out_memdep_phi4_pop72551 = memdep_phi4_pop72551_mux_q;

    // memdep_phi_pop1061_mux(MUX,52)
    assign memdep_phi_pop1061_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1061_mux_s or in_memdep_phi_pop1061_1 or in_memdep_phi_pop1061_0)
    begin
        unique case (memdep_phi_pop1061_mux_s)
            1'b0 : memdep_phi_pop1061_mux_q = in_memdep_phi_pop1061_1;
            1'b1 : memdep_phi_pop1061_mux_q = in_memdep_phi_pop1061_0;
            default : memdep_phi_pop1061_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1061(GPOUT,67)
    assign out_memdep_phi_pop1061 = memdep_phi_pop1061_mux_q;

    // notcmp1459_mux(MUX,53)
    assign notcmp1459_mux_s = in_valid_in_0;
    always @(notcmp1459_mux_s or in_notcmp1459_1 or in_notcmp1459_0)
    begin
        unique case (notcmp1459_mux_s)
            1'b0 : notcmp1459_mux_q = in_notcmp1459_1;
            1'b1 : notcmp1459_mux_q = in_notcmp1459_0;
            default : notcmp1459_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1459(GPOUT,68)
    assign out_notcmp1459 = notcmp1459_mux_q;

    // valid_or(LOGICAL,78)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,74)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,69)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,75)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,70)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_gaussian4_mux(MUX,76)
    assign unnamed_gaussian4_mux_s = in_valid_in_0;
    always @(unnamed_gaussian4_mux_s or in_unnamed_gaussian4_1 or in_unnamed_gaussian4_0)
    begin
        unique case (unnamed_gaussian4_mux_s)
            1'b0 : unnamed_gaussian4_mux_q = in_unnamed_gaussian4_1;
            1'b1 : unnamed_gaussian4_mux_q = in_unnamed_gaussian4_0;
            default : unnamed_gaussian4_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_gaussian4(GPOUT,71)
    assign out_unnamed_gaussian4 = unnamed_gaussian4_mux_q;

    // unnamed_gaussian5_mux(MUX,77)
    assign unnamed_gaussian5_mux_s = in_valid_in_0;
    always @(unnamed_gaussian5_mux_s or in_unnamed_gaussian5_1 or in_unnamed_gaussian5_0)
    begin
        unique case (unnamed_gaussian5_mux_s)
            1'b0 : unnamed_gaussian5_mux_q = in_unnamed_gaussian5_1;
            1'b1 : unnamed_gaussian5_mux_q = in_unnamed_gaussian5_0;
            default : unnamed_gaussian5_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_gaussian5(GPOUT,72)
    assign out_unnamed_gaussian5 = unnamed_gaussian5_mux_q;

    // out_valid_out(GPOUT,73)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,79)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
