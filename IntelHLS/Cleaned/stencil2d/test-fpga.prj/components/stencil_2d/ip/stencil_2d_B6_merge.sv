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

// SystemVerilog created from stencil_2d_B6_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B6_merge (
    input wire [31:0] in_c_043_pop16100_0,
    input wire [31:0] in_c_043_pop16100_1,
    input wire [0:0] in_exitcond1145_pop20112_0,
    input wire [0:0] in_exitcond1145_pop20112_1,
    input wire [0:0] in_exitcond1183_0,
    input wire [0:0] in_exitcond1183_1,
    input wire [0:0] in_exitcond894_0,
    input wire [0:0] in_exitcond894_1,
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [0:0] in_memdep_phi1_pop1451_pop22118_0,
    input wire [0:0] in_memdep_phi1_pop1451_pop22118_1,
    input wire [0:0] in_memdep_phi1_pop1493_0,
    input wire [0:0] in_memdep_phi1_pop1493_1,
    input wire [0:0] in_memdep_phi_pop17103_0,
    input wire [0:0] in_memdep_phi_pop17103_1,
    input wire [31:0] in_mul2442_pop19109_0,
    input wire [31:0] in_mul2442_pop19109_1,
    input wire [31:0] in_mul2478_0,
    input wire [31:0] in_mul2478_1,
    input wire [0:0] in_notcmp2297_0,
    input wire [0:0] in_notcmp2297_1,
    input wire [0:0] in_notcmp2748_pop21115_0,
    input wire [0:0] in_notcmp2748_pop21115_1,
    input wire [0:0] in_notcmp2788_0,
    input wire [0:0] in_notcmp2788_1,
    input wire [31:0] in_r_044_pop1339_pop18106_0,
    input wire [31:0] in_r_044_pop1339_pop18106_1,
    input wire [31:0] in_r_044_pop1373_0,
    input wire [31:0] in_r_044_pop1373_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_043_pop16100,
    output wire [0:0] out_exitcond1145_pop20112,
    output wire [0:0] out_exitcond1183,
    output wire [0:0] out_exitcond894,
    output wire [0:0] out_forked35,
    output wire [0:0] out_memdep_phi1_pop1451_pop22118,
    output wire [0:0] out_memdep_phi1_pop1493,
    output wire [0:0] out_memdep_phi_pop17103,
    output wire [31:0] out_mul2442_pop19109,
    output wire [31:0] out_mul2478,
    output wire [0:0] out_notcmp2297,
    output wire [0:0] out_notcmp2748_pop21115,
    output wire [0:0] out_notcmp2788,
    output wire [31:0] out_r_044_pop1339_pop18106,
    output wire [31:0] out_r_044_pop1373,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_043_pop16100_mux_s;
    reg [31:0] c_043_pop16100_mux_q;
    wire [0:0] exitcond1145_pop20112_mux_s;
    reg [0:0] exitcond1145_pop20112_mux_q;
    wire [0:0] exitcond1183_mux_s;
    reg [0:0] exitcond1183_mux_q;
    wire [0:0] exitcond894_mux_s;
    reg [0:0] exitcond894_mux_q;
    wire [0:0] forked35_mux_s;
    reg [0:0] forked35_mux_q;
    wire [0:0] memdep_phi1_pop1451_pop22118_mux_s;
    reg [0:0] memdep_phi1_pop1451_pop22118_mux_q;
    wire [0:0] memdep_phi1_pop1493_mux_s;
    reg [0:0] memdep_phi1_pop1493_mux_q;
    wire [0:0] memdep_phi_pop17103_mux_s;
    reg [0:0] memdep_phi_pop17103_mux_q;
    wire [0:0] mul2442_pop19109_mux_s;
    reg [31:0] mul2442_pop19109_mux_q;
    wire [0:0] mul2478_mux_s;
    reg [31:0] mul2478_mux_q;
    wire [0:0] notcmp2297_mux_s;
    reg [0:0] notcmp2297_mux_q;
    wire [0:0] notcmp2748_pop21115_mux_s;
    reg [0:0] notcmp2748_pop21115_mux_q;
    wire [0:0] notcmp2788_mux_s;
    reg [0:0] notcmp2788_mux_q;
    wire [0:0] r_044_pop1339_pop18106_mux_s;
    reg [31:0] r_044_pop1339_pop18106_mux_q;
    wire [0:0] r_044_pop1373_mux_s;
    reg [31:0] r_044_pop1373_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_043_pop16100_mux(MUX,2)
    assign c_043_pop16100_mux_s = in_valid_in_0;
    always @(c_043_pop16100_mux_s or in_c_043_pop16100_1 or in_c_043_pop16100_0)
    begin
        unique case (c_043_pop16100_mux_s)
            1'b0 : c_043_pop16100_mux_q = in_c_043_pop16100_1;
            1'b1 : c_043_pop16100_mux_q = in_c_043_pop16100_0;
            default : c_043_pop16100_mux_q = 32'b0;
        endcase
    end

    // out_c_043_pop16100(GPOUT,48)
    assign out_c_043_pop16100 = c_043_pop16100_mux_q;

    // exitcond1145_pop20112_mux(MUX,3)
    assign exitcond1145_pop20112_mux_s = in_valid_in_0;
    always @(exitcond1145_pop20112_mux_s or in_exitcond1145_pop20112_1 or in_exitcond1145_pop20112_0)
    begin
        unique case (exitcond1145_pop20112_mux_s)
            1'b0 : exitcond1145_pop20112_mux_q = in_exitcond1145_pop20112_1;
            1'b1 : exitcond1145_pop20112_mux_q = in_exitcond1145_pop20112_0;
            default : exitcond1145_pop20112_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1145_pop20112(GPOUT,49)
    assign out_exitcond1145_pop20112 = exitcond1145_pop20112_mux_q;

    // exitcond1183_mux(MUX,4)
    assign exitcond1183_mux_s = in_valid_in_0;
    always @(exitcond1183_mux_s or in_exitcond1183_1 or in_exitcond1183_0)
    begin
        unique case (exitcond1183_mux_s)
            1'b0 : exitcond1183_mux_q = in_exitcond1183_1;
            1'b1 : exitcond1183_mux_q = in_exitcond1183_0;
            default : exitcond1183_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1183(GPOUT,50)
    assign out_exitcond1183 = exitcond1183_mux_q;

    // exitcond894_mux(MUX,5)
    assign exitcond894_mux_s = in_valid_in_0;
    always @(exitcond894_mux_s or in_exitcond894_1 or in_exitcond894_0)
    begin
        unique case (exitcond894_mux_s)
            1'b0 : exitcond894_mux_q = in_exitcond894_1;
            1'b1 : exitcond894_mux_q = in_exitcond894_0;
            default : exitcond894_mux_q = 1'b0;
        endcase
    end

    // out_exitcond894(GPOUT,51)
    assign out_exitcond894 = exitcond894_mux_q;

    // forked35_mux(MUX,6)
    assign forked35_mux_s = in_valid_in_0;
    always @(forked35_mux_s or in_forked35_1 or in_forked35_0)
    begin
        unique case (forked35_mux_s)
            1'b0 : forked35_mux_q = in_forked35_1;
            1'b1 : forked35_mux_q = in_forked35_0;
            default : forked35_mux_q = 1'b0;
        endcase
    end

    // out_forked35(GPOUT,52)
    assign out_forked35 = forked35_mux_q;

    // memdep_phi1_pop1451_pop22118_mux(MUX,40)
    assign memdep_phi1_pop1451_pop22118_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1451_pop22118_mux_s or in_memdep_phi1_pop1451_pop22118_1 or in_memdep_phi1_pop1451_pop22118_0)
    begin
        unique case (memdep_phi1_pop1451_pop22118_mux_s)
            1'b0 : memdep_phi1_pop1451_pop22118_mux_q = in_memdep_phi1_pop1451_pop22118_1;
            1'b1 : memdep_phi1_pop1451_pop22118_mux_q = in_memdep_phi1_pop1451_pop22118_0;
            default : memdep_phi1_pop1451_pop22118_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1451_pop22118(GPOUT,53)
    assign out_memdep_phi1_pop1451_pop22118 = memdep_phi1_pop1451_pop22118_mux_q;

    // memdep_phi1_pop1493_mux(MUX,41)
    assign memdep_phi1_pop1493_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1493_mux_s or in_memdep_phi1_pop1493_1 or in_memdep_phi1_pop1493_0)
    begin
        unique case (memdep_phi1_pop1493_mux_s)
            1'b0 : memdep_phi1_pop1493_mux_q = in_memdep_phi1_pop1493_1;
            1'b1 : memdep_phi1_pop1493_mux_q = in_memdep_phi1_pop1493_0;
            default : memdep_phi1_pop1493_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1493(GPOUT,54)
    assign out_memdep_phi1_pop1493 = memdep_phi1_pop1493_mux_q;

    // memdep_phi_pop17103_mux(MUX,42)
    assign memdep_phi_pop17103_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17103_mux_s or in_memdep_phi_pop17103_1 or in_memdep_phi_pop17103_0)
    begin
        unique case (memdep_phi_pop17103_mux_s)
            1'b0 : memdep_phi_pop17103_mux_q = in_memdep_phi_pop17103_1;
            1'b1 : memdep_phi_pop17103_mux_q = in_memdep_phi_pop17103_0;
            default : memdep_phi_pop17103_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17103(GPOUT,55)
    assign out_memdep_phi_pop17103 = memdep_phi_pop17103_mux_q;

    // mul2442_pop19109_mux(MUX,43)
    assign mul2442_pop19109_mux_s = in_valid_in_0;
    always @(mul2442_pop19109_mux_s or in_mul2442_pop19109_1 or in_mul2442_pop19109_0)
    begin
        unique case (mul2442_pop19109_mux_s)
            1'b0 : mul2442_pop19109_mux_q = in_mul2442_pop19109_1;
            1'b1 : mul2442_pop19109_mux_q = in_mul2442_pop19109_0;
            default : mul2442_pop19109_mux_q = 32'b0;
        endcase
    end

    // out_mul2442_pop19109(GPOUT,56)
    assign out_mul2442_pop19109 = mul2442_pop19109_mux_q;

    // mul2478_mux(MUX,44)
    assign mul2478_mux_s = in_valid_in_0;
    always @(mul2478_mux_s or in_mul2478_1 or in_mul2478_0)
    begin
        unique case (mul2478_mux_s)
            1'b0 : mul2478_mux_q = in_mul2478_1;
            1'b1 : mul2478_mux_q = in_mul2478_0;
            default : mul2478_mux_q = 32'b0;
        endcase
    end

    // out_mul2478(GPOUT,57)
    assign out_mul2478 = mul2478_mux_q;

    // notcmp2297_mux(MUX,45)
    assign notcmp2297_mux_s = in_valid_in_0;
    always @(notcmp2297_mux_s or in_notcmp2297_1 or in_notcmp2297_0)
    begin
        unique case (notcmp2297_mux_s)
            1'b0 : notcmp2297_mux_q = in_notcmp2297_1;
            1'b1 : notcmp2297_mux_q = in_notcmp2297_0;
            default : notcmp2297_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2297(GPOUT,58)
    assign out_notcmp2297 = notcmp2297_mux_q;

    // notcmp2748_pop21115_mux(MUX,46)
    assign notcmp2748_pop21115_mux_s = in_valid_in_0;
    always @(notcmp2748_pop21115_mux_s or in_notcmp2748_pop21115_1 or in_notcmp2748_pop21115_0)
    begin
        unique case (notcmp2748_pop21115_mux_s)
            1'b0 : notcmp2748_pop21115_mux_q = in_notcmp2748_pop21115_1;
            1'b1 : notcmp2748_pop21115_mux_q = in_notcmp2748_pop21115_0;
            default : notcmp2748_pop21115_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2748_pop21115(GPOUT,59)
    assign out_notcmp2748_pop21115 = notcmp2748_pop21115_mux_q;

    // notcmp2788_mux(MUX,47)
    assign notcmp2788_mux_s = in_valid_in_0;
    always @(notcmp2788_mux_s or in_notcmp2788_1 or in_notcmp2788_0)
    begin
        unique case (notcmp2788_mux_s)
            1'b0 : notcmp2788_mux_q = in_notcmp2788_1;
            1'b1 : notcmp2788_mux_q = in_notcmp2788_0;
            default : notcmp2788_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2788(GPOUT,60)
    assign out_notcmp2788 = notcmp2788_mux_q;

    // r_044_pop1339_pop18106_mux(MUX,66)
    assign r_044_pop1339_pop18106_mux_s = in_valid_in_0;
    always @(r_044_pop1339_pop18106_mux_s or in_r_044_pop1339_pop18106_1 or in_r_044_pop1339_pop18106_0)
    begin
        unique case (r_044_pop1339_pop18106_mux_s)
            1'b0 : r_044_pop1339_pop18106_mux_q = in_r_044_pop1339_pop18106_1;
            1'b1 : r_044_pop1339_pop18106_mux_q = in_r_044_pop1339_pop18106_0;
            default : r_044_pop1339_pop18106_mux_q = 32'b0;
        endcase
    end

    // out_r_044_pop1339_pop18106(GPOUT,61)
    assign out_r_044_pop1339_pop18106 = r_044_pop1339_pop18106_mux_q;

    // r_044_pop1373_mux(MUX,67)
    assign r_044_pop1373_mux_s = in_valid_in_0;
    always @(r_044_pop1373_mux_s or in_r_044_pop1373_1 or in_r_044_pop1373_0)
    begin
        unique case (r_044_pop1373_mux_s)
            1'b0 : r_044_pop1373_mux_q = in_r_044_pop1373_1;
            1'b1 : r_044_pop1373_mux_q = in_r_044_pop1373_0;
            default : r_044_pop1373_mux_q = 32'b0;
        endcase
    end

    // out_r_044_pop1373(GPOUT,62)
    assign out_r_044_pop1373 = r_044_pop1373_mux_q;

    // valid_or(LOGICAL,70)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,68)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,63)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,69)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,64)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,65)
    assign out_valid_out = valid_or_q;

endmodule
