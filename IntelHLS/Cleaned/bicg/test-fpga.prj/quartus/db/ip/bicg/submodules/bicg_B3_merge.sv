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

// SystemVerilog created from bicg_B3_merge
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 12:13:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_B3_merge (
    input wire [0:0] in_exitcond1442_0,
    input wire [0:0] in_exitcond1442_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_mPtr_bitcast_index8038_0,
    input wire [63:0] in_mPtr_bitcast_index8038_1,
    input wire [63:0] in_mPtr_bitcast_index8441_0,
    input wire [63:0] in_mPtr_bitcast_index8441_1,
    input wire [0:0] in_memdep_phi5_pop1144_0,
    input wire [0:0] in_memdep_phi5_pop1144_1,
    input wire [0:0] in_memdep_phi7_pop1245_0,
    input wire [0:0] in_memdep_phi7_pop1245_1,
    input wire [0:0] in_memdep_phi_pop1039_0,
    input wire [0:0] in_memdep_phi_pop1039_1,
    input wire [31:0] in_mul40_0,
    input wire [31:0] in_mul40_1,
    input wire [0:0] in_notcmp2043_0,
    input wire [0:0] in_notcmp2043_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_bicg10_0,
    input wire [31:0] in_unnamed_bicg10_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1442,
    output wire [0:0] out_forked,
    output wire [63:0] out_mPtr_bitcast_index8038,
    output wire [63:0] out_mPtr_bitcast_index8441,
    output wire [0:0] out_memdep_phi5_pop1144,
    output wire [0:0] out_memdep_phi7_pop1245,
    output wire [0:0] out_memdep_phi_pop1039,
    output wire [31:0] out_mul40,
    output wire [0:0] out_notcmp2043,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_bicg10,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1442_mux_s;
    reg [0:0] exitcond1442_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] mPtr_bitcast_index8038_mux_s;
    reg [63:0] mPtr_bitcast_index8038_mux_q;
    wire [0:0] mPtr_bitcast_index8441_mux_s;
    reg [63:0] mPtr_bitcast_index8441_mux_q;
    wire [0:0] memdep_phi5_pop1144_mux_s;
    reg [0:0] memdep_phi5_pop1144_mux_q;
    wire [0:0] memdep_phi7_pop1245_mux_s;
    reg [0:0] memdep_phi7_pop1245_mux_q;
    wire [0:0] memdep_phi_pop1039_mux_s;
    reg [0:0] memdep_phi_pop1039_mux_q;
    wire [0:0] mul40_mux_s;
    reg [31:0] mul40_mux_q;
    wire [0:0] notcmp2043_mux_s;
    reg [0:0] notcmp2043_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_bicg10_mux_s;
    reg [31:0] unnamed_bicg10_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1442_mux(MUX,2)
    assign exitcond1442_mux_s = in_valid_in_0;
    always @(exitcond1442_mux_s or in_exitcond1442_1 or in_exitcond1442_0)
    begin
        unique case (exitcond1442_mux_s)
            1'b0 : exitcond1442_mux_q = in_exitcond1442_1;
            1'b1 : exitcond1442_mux_q = in_exitcond1442_0;
            default : exitcond1442_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1442(GPOUT,34)
    assign out_exitcond1442 = exitcond1442_mux_q;

    // forked_mux(MUX,3)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,35)
    assign out_forked = forked_mux_q;

    // mPtr_bitcast_index8038_mux(MUX,27)
    assign mPtr_bitcast_index8038_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index8038_mux_s or in_mPtr_bitcast_index8038_1 or in_mPtr_bitcast_index8038_0)
    begin
        unique case (mPtr_bitcast_index8038_mux_s)
            1'b0 : mPtr_bitcast_index8038_mux_q = in_mPtr_bitcast_index8038_1;
            1'b1 : mPtr_bitcast_index8038_mux_q = in_mPtr_bitcast_index8038_0;
            default : mPtr_bitcast_index8038_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index8038(GPOUT,36)
    assign out_mPtr_bitcast_index8038 = mPtr_bitcast_index8038_mux_q;

    // mPtr_bitcast_index8441_mux(MUX,28)
    assign mPtr_bitcast_index8441_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index8441_mux_s or in_mPtr_bitcast_index8441_1 or in_mPtr_bitcast_index8441_0)
    begin
        unique case (mPtr_bitcast_index8441_mux_s)
            1'b0 : mPtr_bitcast_index8441_mux_q = in_mPtr_bitcast_index8441_1;
            1'b1 : mPtr_bitcast_index8441_mux_q = in_mPtr_bitcast_index8441_0;
            default : mPtr_bitcast_index8441_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index8441(GPOUT,37)
    assign out_mPtr_bitcast_index8441 = mPtr_bitcast_index8441_mux_q;

    // memdep_phi5_pop1144_mux(MUX,29)
    assign memdep_phi5_pop1144_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop1144_mux_s or in_memdep_phi5_pop1144_1 or in_memdep_phi5_pop1144_0)
    begin
        unique case (memdep_phi5_pop1144_mux_s)
            1'b0 : memdep_phi5_pop1144_mux_q = in_memdep_phi5_pop1144_1;
            1'b1 : memdep_phi5_pop1144_mux_q = in_memdep_phi5_pop1144_0;
            default : memdep_phi5_pop1144_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop1144(GPOUT,38)
    assign out_memdep_phi5_pop1144 = memdep_phi5_pop1144_mux_q;

    // memdep_phi7_pop1245_mux(MUX,30)
    assign memdep_phi7_pop1245_mux_s = in_valid_in_0;
    always @(memdep_phi7_pop1245_mux_s or in_memdep_phi7_pop1245_1 or in_memdep_phi7_pop1245_0)
    begin
        unique case (memdep_phi7_pop1245_mux_s)
            1'b0 : memdep_phi7_pop1245_mux_q = in_memdep_phi7_pop1245_1;
            1'b1 : memdep_phi7_pop1245_mux_q = in_memdep_phi7_pop1245_0;
            default : memdep_phi7_pop1245_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi7_pop1245(GPOUT,39)
    assign out_memdep_phi7_pop1245 = memdep_phi7_pop1245_mux_q;

    // memdep_phi_pop1039_mux(MUX,31)
    assign memdep_phi_pop1039_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1039_mux_s or in_memdep_phi_pop1039_1 or in_memdep_phi_pop1039_0)
    begin
        unique case (memdep_phi_pop1039_mux_s)
            1'b0 : memdep_phi_pop1039_mux_q = in_memdep_phi_pop1039_1;
            1'b1 : memdep_phi_pop1039_mux_q = in_memdep_phi_pop1039_0;
            default : memdep_phi_pop1039_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1039(GPOUT,40)
    assign out_memdep_phi_pop1039 = memdep_phi_pop1039_mux_q;

    // mul40_mux(MUX,32)
    assign mul40_mux_s = in_valid_in_0;
    always @(mul40_mux_s or in_mul40_1 or in_mul40_0)
    begin
        unique case (mul40_mux_s)
            1'b0 : mul40_mux_q = in_mul40_1;
            1'b1 : mul40_mux_q = in_mul40_0;
            default : mul40_mux_q = 32'b0;
        endcase
    end

    // out_mul40(GPOUT,41)
    assign out_mul40 = mul40_mux_q;

    // notcmp2043_mux(MUX,33)
    assign notcmp2043_mux_s = in_valid_in_0;
    always @(notcmp2043_mux_s or in_notcmp2043_1 or in_notcmp2043_0)
    begin
        unique case (notcmp2043_mux_s)
            1'b0 : notcmp2043_mux_q = in_notcmp2043_1;
            1'b1 : notcmp2043_mux_q = in_notcmp2043_0;
            default : notcmp2043_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2043(GPOUT,42)
    assign out_notcmp2043 = notcmp2043_mux_q;

    // valid_or(LOGICAL,50)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,47)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,48)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_bicg10_mux(MUX,49)
    assign unnamed_bicg10_mux_s = in_valid_in_0;
    always @(unnamed_bicg10_mux_s or in_unnamed_bicg10_1 or in_unnamed_bicg10_0)
    begin
        unique case (unnamed_bicg10_mux_s)
            1'b0 : unnamed_bicg10_mux_q = in_unnamed_bicg10_1;
            1'b1 : unnamed_bicg10_mux_q = in_unnamed_bicg10_0;
            default : unnamed_bicg10_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_bicg10(GPOUT,45)
    assign out_unnamed_bicg10 = unnamed_bicg10_mux_q;

    // out_valid_out(GPOUT,46)
    assign out_valid_out = valid_or_q;

endmodule
