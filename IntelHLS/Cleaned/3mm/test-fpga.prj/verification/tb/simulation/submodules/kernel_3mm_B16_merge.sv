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

// SystemVerilog created from kernel_3mm_B16_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B16_merge (
    input wire [0:0] in_exitcond31245_0,
    input wire [0:0] in_exitcond31245_1,
    input wire [0:0] in_exitcond34149_pop49248_0,
    input wire [0:0] in_exitcond34149_pop49248_1,
    input wire [0:0] in_exitcond34235_0,
    input wire [0:0] in_exitcond34235_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_j_2147_pop46242_0,
    input wire [31:0] in_j_2147_pop46242_1,
    input wire [63:0] in_mPtr_bitcast_index178244_0,
    input wire [63:0] in_mPtr_bitcast_index178244_1,
    input wire [0:0] in_memdep_phi8_pop47247_0,
    input wire [0:0] in_memdep_phi8_pop47247_1,
    input wire [0:0] in_memdep_phi9_pop30153_pop51250_0,
    input wire [0:0] in_memdep_phi9_pop30153_pop51250_1,
    input wire [0:0] in_memdep_phi9_pop30241_0,
    input wire [0:0] in_memdep_phi9_pop30241_1,
    input wire [31:0] in_mul64_add44147_pop48243_0,
    input wire [31:0] in_mul64_add44147_pop48243_1,
    input wire [31:0] in_mul64_add44232_0,
    input wire [31:0] in_mul64_add44232_1,
    input wire [0:0] in_notcmp59246_0,
    input wire [0:0] in_notcmp59246_1,
    input wire [0:0] in_notcmp64151_pop50249_0,
    input wire [0:0] in_notcmp64151_pop50249_1,
    input wire [0:0] in_notcmp64238_0,
    input wire [0:0] in_notcmp64238_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm31_0,
    input wire [31:0] in_unnamed_kernel_3mm31_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond31245,
    output wire [0:0] out_exitcond34149_pop49248,
    output wire [0:0] out_exitcond34235,
    output wire [0:0] out_forked,
    output wire [31:0] out_j_2147_pop46242,
    output wire [63:0] out_mPtr_bitcast_index178244,
    output wire [0:0] out_memdep_phi8_pop47247,
    output wire [0:0] out_memdep_phi9_pop30153_pop51250,
    output wire [0:0] out_memdep_phi9_pop30241,
    output wire [31:0] out_mul64_add44147_pop48243,
    output wire [31:0] out_mul64_add44232,
    output wire [0:0] out_notcmp59246,
    output wire [0:0] out_notcmp64151_pop50249,
    output wire [0:0] out_notcmp64238,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm31,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond31245_mux_s;
    reg [0:0] exitcond31245_mux_q;
    wire [0:0] exitcond34149_pop49248_mux_s;
    reg [0:0] exitcond34149_pop49248_mux_q;
    wire [0:0] exitcond34235_mux_s;
    reg [0:0] exitcond34235_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] j_2147_pop46242_mux_s;
    reg [31:0] j_2147_pop46242_mux_q;
    wire [0:0] mPtr_bitcast_index178244_mux_s;
    reg [63:0] mPtr_bitcast_index178244_mux_q;
    wire [0:0] memdep_phi8_pop47247_mux_s;
    reg [0:0] memdep_phi8_pop47247_mux_q;
    wire [0:0] memdep_phi9_pop30153_pop51250_mux_s;
    reg [0:0] memdep_phi9_pop30153_pop51250_mux_q;
    wire [0:0] memdep_phi9_pop30241_mux_s;
    reg [0:0] memdep_phi9_pop30241_mux_q;
    wire [0:0] mul64_add44147_pop48243_mux_s;
    reg [31:0] mul64_add44147_pop48243_mux_q;
    wire [0:0] mul64_add44232_mux_s;
    reg [31:0] mul64_add44232_mux_q;
    wire [0:0] notcmp59246_mux_s;
    reg [0:0] notcmp59246_mux_q;
    wire [0:0] notcmp64151_pop50249_mux_s;
    reg [0:0] notcmp64151_pop50249_mux_q;
    wire [0:0] notcmp64238_mux_s;
    reg [0:0] notcmp64238_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm31_mux_s;
    reg [31:0] unnamed_kernel_3mm31_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond31245_mux(MUX,2)
    assign exitcond31245_mux_s = in_valid_in_0;
    always @(exitcond31245_mux_s or in_exitcond31245_1 or in_exitcond31245_0)
    begin
        unique case (exitcond31245_mux_s)
            1'b0 : exitcond31245_mux_q = in_exitcond31245_1;
            1'b1 : exitcond31245_mux_q = in_exitcond31245_0;
            default : exitcond31245_mux_q = 1'b0;
        endcase
    end

    // out_exitcond31245(GPOUT,49)
    assign out_exitcond31245 = exitcond31245_mux_q;

    // exitcond34149_pop49248_mux(MUX,3)
    assign exitcond34149_pop49248_mux_s = in_valid_in_0;
    always @(exitcond34149_pop49248_mux_s or in_exitcond34149_pop49248_1 or in_exitcond34149_pop49248_0)
    begin
        unique case (exitcond34149_pop49248_mux_s)
            1'b0 : exitcond34149_pop49248_mux_q = in_exitcond34149_pop49248_1;
            1'b1 : exitcond34149_pop49248_mux_q = in_exitcond34149_pop49248_0;
            default : exitcond34149_pop49248_mux_q = 1'b0;
        endcase
    end

    // out_exitcond34149_pop49248(GPOUT,50)
    assign out_exitcond34149_pop49248 = exitcond34149_pop49248_mux_q;

    // exitcond34235_mux(MUX,4)
    assign exitcond34235_mux_s = in_valid_in_0;
    always @(exitcond34235_mux_s or in_exitcond34235_1 or in_exitcond34235_0)
    begin
        unique case (exitcond34235_mux_s)
            1'b0 : exitcond34235_mux_q = in_exitcond34235_1;
            1'b1 : exitcond34235_mux_q = in_exitcond34235_0;
            default : exitcond34235_mux_q = 1'b0;
        endcase
    end

    // out_exitcond34235(GPOUT,51)
    assign out_exitcond34235 = exitcond34235_mux_q;

    // forked_mux(MUX,5)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,52)
    assign out_forked = forked_mux_q;

    // j_2147_pop46242_mux(MUX,39)
    assign j_2147_pop46242_mux_s = in_valid_in_0;
    always @(j_2147_pop46242_mux_s or in_j_2147_pop46242_1 or in_j_2147_pop46242_0)
    begin
        unique case (j_2147_pop46242_mux_s)
            1'b0 : j_2147_pop46242_mux_q = in_j_2147_pop46242_1;
            1'b1 : j_2147_pop46242_mux_q = in_j_2147_pop46242_0;
            default : j_2147_pop46242_mux_q = 32'b0;
        endcase
    end

    // out_j_2147_pop46242(GPOUT,53)
    assign out_j_2147_pop46242 = j_2147_pop46242_mux_q;

    // mPtr_bitcast_index178244_mux(MUX,40)
    assign mPtr_bitcast_index178244_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index178244_mux_s or in_mPtr_bitcast_index178244_1 or in_mPtr_bitcast_index178244_0)
    begin
        unique case (mPtr_bitcast_index178244_mux_s)
            1'b0 : mPtr_bitcast_index178244_mux_q = in_mPtr_bitcast_index178244_1;
            1'b1 : mPtr_bitcast_index178244_mux_q = in_mPtr_bitcast_index178244_0;
            default : mPtr_bitcast_index178244_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index178244(GPOUT,54)
    assign out_mPtr_bitcast_index178244 = mPtr_bitcast_index178244_mux_q;

    // memdep_phi8_pop47247_mux(MUX,41)
    assign memdep_phi8_pop47247_mux_s = in_valid_in_0;
    always @(memdep_phi8_pop47247_mux_s or in_memdep_phi8_pop47247_1 or in_memdep_phi8_pop47247_0)
    begin
        unique case (memdep_phi8_pop47247_mux_s)
            1'b0 : memdep_phi8_pop47247_mux_q = in_memdep_phi8_pop47247_1;
            1'b1 : memdep_phi8_pop47247_mux_q = in_memdep_phi8_pop47247_0;
            default : memdep_phi8_pop47247_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi8_pop47247(GPOUT,55)
    assign out_memdep_phi8_pop47247 = memdep_phi8_pop47247_mux_q;

    // memdep_phi9_pop30153_pop51250_mux(MUX,42)
    assign memdep_phi9_pop30153_pop51250_mux_s = in_valid_in_0;
    always @(memdep_phi9_pop30153_pop51250_mux_s or in_memdep_phi9_pop30153_pop51250_1 or in_memdep_phi9_pop30153_pop51250_0)
    begin
        unique case (memdep_phi9_pop30153_pop51250_mux_s)
            1'b0 : memdep_phi9_pop30153_pop51250_mux_q = in_memdep_phi9_pop30153_pop51250_1;
            1'b1 : memdep_phi9_pop30153_pop51250_mux_q = in_memdep_phi9_pop30153_pop51250_0;
            default : memdep_phi9_pop30153_pop51250_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi9_pop30153_pop51250(GPOUT,56)
    assign out_memdep_phi9_pop30153_pop51250 = memdep_phi9_pop30153_pop51250_mux_q;

    // memdep_phi9_pop30241_mux(MUX,43)
    assign memdep_phi9_pop30241_mux_s = in_valid_in_0;
    always @(memdep_phi9_pop30241_mux_s or in_memdep_phi9_pop30241_1 or in_memdep_phi9_pop30241_0)
    begin
        unique case (memdep_phi9_pop30241_mux_s)
            1'b0 : memdep_phi9_pop30241_mux_q = in_memdep_phi9_pop30241_1;
            1'b1 : memdep_phi9_pop30241_mux_q = in_memdep_phi9_pop30241_0;
            default : memdep_phi9_pop30241_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi9_pop30241(GPOUT,57)
    assign out_memdep_phi9_pop30241 = memdep_phi9_pop30241_mux_q;

    // mul64_add44147_pop48243_mux(MUX,44)
    assign mul64_add44147_pop48243_mux_s = in_valid_in_0;
    always @(mul64_add44147_pop48243_mux_s or in_mul64_add44147_pop48243_1 or in_mul64_add44147_pop48243_0)
    begin
        unique case (mul64_add44147_pop48243_mux_s)
            1'b0 : mul64_add44147_pop48243_mux_q = in_mul64_add44147_pop48243_1;
            1'b1 : mul64_add44147_pop48243_mux_q = in_mul64_add44147_pop48243_0;
            default : mul64_add44147_pop48243_mux_q = 32'b0;
        endcase
    end

    // out_mul64_add44147_pop48243(GPOUT,58)
    assign out_mul64_add44147_pop48243 = mul64_add44147_pop48243_mux_q;

    // mul64_add44232_mux(MUX,45)
    assign mul64_add44232_mux_s = in_valid_in_0;
    always @(mul64_add44232_mux_s or in_mul64_add44232_1 or in_mul64_add44232_0)
    begin
        unique case (mul64_add44232_mux_s)
            1'b0 : mul64_add44232_mux_q = in_mul64_add44232_1;
            1'b1 : mul64_add44232_mux_q = in_mul64_add44232_0;
            default : mul64_add44232_mux_q = 32'b0;
        endcase
    end

    // out_mul64_add44232(GPOUT,59)
    assign out_mul64_add44232 = mul64_add44232_mux_q;

    // notcmp59246_mux(MUX,46)
    assign notcmp59246_mux_s = in_valid_in_0;
    always @(notcmp59246_mux_s or in_notcmp59246_1 or in_notcmp59246_0)
    begin
        unique case (notcmp59246_mux_s)
            1'b0 : notcmp59246_mux_q = in_notcmp59246_1;
            1'b1 : notcmp59246_mux_q = in_notcmp59246_0;
            default : notcmp59246_mux_q = 1'b0;
        endcase
    end

    // out_notcmp59246(GPOUT,60)
    assign out_notcmp59246 = notcmp59246_mux_q;

    // notcmp64151_pop50249_mux(MUX,47)
    assign notcmp64151_pop50249_mux_s = in_valid_in_0;
    always @(notcmp64151_pop50249_mux_s or in_notcmp64151_pop50249_1 or in_notcmp64151_pop50249_0)
    begin
        unique case (notcmp64151_pop50249_mux_s)
            1'b0 : notcmp64151_pop50249_mux_q = in_notcmp64151_pop50249_1;
            1'b1 : notcmp64151_pop50249_mux_q = in_notcmp64151_pop50249_0;
            default : notcmp64151_pop50249_mux_q = 1'b0;
        endcase
    end

    // out_notcmp64151_pop50249(GPOUT,61)
    assign out_notcmp64151_pop50249 = notcmp64151_pop50249_mux_q;

    // notcmp64238_mux(MUX,48)
    assign notcmp64238_mux_s = in_valid_in_0;
    always @(notcmp64238_mux_s or in_notcmp64238_1 or in_notcmp64238_0)
    begin
        unique case (notcmp64238_mux_s)
            1'b0 : notcmp64238_mux_q = in_notcmp64238_1;
            1'b1 : notcmp64238_mux_q = in_notcmp64238_0;
            default : notcmp64238_mux_q = 1'b0;
        endcase
    end

    // out_notcmp64238(GPOUT,62)
    assign out_notcmp64238 = notcmp64238_mux_q;

    // valid_or(LOGICAL,70)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,67)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,63)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,68)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,64)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kernel_3mm31_mux(MUX,69)
    assign unnamed_kernel_3mm31_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm31_mux_s or in_unnamed_kernel_3mm31_1 or in_unnamed_kernel_3mm31_0)
    begin
        unique case (unnamed_kernel_3mm31_mux_s)
            1'b0 : unnamed_kernel_3mm31_mux_q = in_unnamed_kernel_3mm31_1;
            1'b1 : unnamed_kernel_3mm31_mux_q = in_unnamed_kernel_3mm31_0;
            default : unnamed_kernel_3mm31_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm31(GPOUT,65)
    assign out_unnamed_kernel_3mm31 = unnamed_kernel_3mm31_mux_q;

    // out_valid_out(GPOUT,66)
    assign out_valid_out = valid_or_q;

endmodule
