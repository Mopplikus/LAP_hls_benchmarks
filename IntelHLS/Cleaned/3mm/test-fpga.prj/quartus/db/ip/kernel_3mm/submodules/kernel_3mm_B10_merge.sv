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

// SystemVerilog created from kernel_3mm_B10_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B10_merge (
    input wire [0:0] in_exitcond22215_0,
    input wire [0:0] in_exitcond22215_1,
    input wire [0:0] in_exitcond25140_pop42218_0,
    input wire [0:0] in_exitcond25140_pop42218_1,
    input wire [0:0] in_exitcond25205_0,
    input wire [0:0] in_exitcond25205_1,
    input wire [0:0] in_forked70_0,
    input wire [0:0] in_forked70_1,
    input wire [31:0] in_j_1151_pop39212_0,
    input wire [31:0] in_j_1151_pop39212_1,
    input wire [63:0] in_mPtr_bitcast_index174214_0,
    input wire [63:0] in_mPtr_bitcast_index174214_1,
    input wire [0:0] in_memdep_phi4_pop40217_0,
    input wire [0:0] in_memdep_phi4_pop40217_1,
    input wire [0:0] in_memdep_phi5_pop27144_pop44220_0,
    input wire [0:0] in_memdep_phi5_pop27144_pop44220_1,
    input wire [0:0] in_memdep_phi5_pop27211_0,
    input wire [0:0] in_memdep_phi5_pop27211_1,
    input wire [31:0] in_mul31_add40138_pop41213_0,
    input wire [31:0] in_mul31_add40138_pop41213_1,
    input wire [31:0] in_mul31_add40202_0,
    input wire [31:0] in_mul31_add40202_1,
    input wire [0:0] in_notcmp85216_0,
    input wire [0:0] in_notcmp85216_1,
    input wire [0:0] in_notcmp90142_pop43219_0,
    input wire [0:0] in_notcmp90142_pop43219_1,
    input wire [0:0] in_notcmp90208_0,
    input wire [0:0] in_notcmp90208_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm23_0,
    input wire [31:0] in_unnamed_kernel_3mm23_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond22215,
    output wire [0:0] out_exitcond25140_pop42218,
    output wire [0:0] out_exitcond25205,
    output wire [0:0] out_forked70,
    output wire [31:0] out_j_1151_pop39212,
    output wire [63:0] out_mPtr_bitcast_index174214,
    output wire [0:0] out_memdep_phi4_pop40217,
    output wire [0:0] out_memdep_phi5_pop27144_pop44220,
    output wire [0:0] out_memdep_phi5_pop27211,
    output wire [31:0] out_mul31_add40138_pop41213,
    output wire [31:0] out_mul31_add40202,
    output wire [0:0] out_notcmp85216,
    output wire [0:0] out_notcmp90142_pop43219,
    output wire [0:0] out_notcmp90208,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm23,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond22215_mux_s;
    reg [0:0] exitcond22215_mux_q;
    wire [0:0] exitcond25140_pop42218_mux_s;
    reg [0:0] exitcond25140_pop42218_mux_q;
    wire [0:0] exitcond25205_mux_s;
    reg [0:0] exitcond25205_mux_q;
    wire [0:0] forked70_mux_s;
    reg [0:0] forked70_mux_q;
    wire [0:0] j_1151_pop39212_mux_s;
    reg [31:0] j_1151_pop39212_mux_q;
    wire [0:0] mPtr_bitcast_index174214_mux_s;
    reg [63:0] mPtr_bitcast_index174214_mux_q;
    wire [0:0] memdep_phi4_pop40217_mux_s;
    reg [0:0] memdep_phi4_pop40217_mux_q;
    wire [0:0] memdep_phi5_pop27144_pop44220_mux_s;
    reg [0:0] memdep_phi5_pop27144_pop44220_mux_q;
    wire [0:0] memdep_phi5_pop27211_mux_s;
    reg [0:0] memdep_phi5_pop27211_mux_q;
    wire [0:0] mul31_add40138_pop41213_mux_s;
    reg [31:0] mul31_add40138_pop41213_mux_q;
    wire [0:0] mul31_add40202_mux_s;
    reg [31:0] mul31_add40202_mux_q;
    wire [0:0] notcmp85216_mux_s;
    reg [0:0] notcmp85216_mux_q;
    wire [0:0] notcmp90142_pop43219_mux_s;
    reg [0:0] notcmp90142_pop43219_mux_q;
    wire [0:0] notcmp90208_mux_s;
    reg [0:0] notcmp90208_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm23_mux_s;
    reg [31:0] unnamed_kernel_3mm23_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond22215_mux(MUX,2)
    assign exitcond22215_mux_s = in_valid_in_0;
    always @(exitcond22215_mux_s or in_exitcond22215_1 or in_exitcond22215_0)
    begin
        unique case (exitcond22215_mux_s)
            1'b0 : exitcond22215_mux_q = in_exitcond22215_1;
            1'b1 : exitcond22215_mux_q = in_exitcond22215_0;
            default : exitcond22215_mux_q = 1'b0;
        endcase
    end

    // out_exitcond22215(GPOUT,49)
    assign out_exitcond22215 = exitcond22215_mux_q;

    // exitcond25140_pop42218_mux(MUX,3)
    assign exitcond25140_pop42218_mux_s = in_valid_in_0;
    always @(exitcond25140_pop42218_mux_s or in_exitcond25140_pop42218_1 or in_exitcond25140_pop42218_0)
    begin
        unique case (exitcond25140_pop42218_mux_s)
            1'b0 : exitcond25140_pop42218_mux_q = in_exitcond25140_pop42218_1;
            1'b1 : exitcond25140_pop42218_mux_q = in_exitcond25140_pop42218_0;
            default : exitcond25140_pop42218_mux_q = 1'b0;
        endcase
    end

    // out_exitcond25140_pop42218(GPOUT,50)
    assign out_exitcond25140_pop42218 = exitcond25140_pop42218_mux_q;

    // exitcond25205_mux(MUX,4)
    assign exitcond25205_mux_s = in_valid_in_0;
    always @(exitcond25205_mux_s or in_exitcond25205_1 or in_exitcond25205_0)
    begin
        unique case (exitcond25205_mux_s)
            1'b0 : exitcond25205_mux_q = in_exitcond25205_1;
            1'b1 : exitcond25205_mux_q = in_exitcond25205_0;
            default : exitcond25205_mux_q = 1'b0;
        endcase
    end

    // out_exitcond25205(GPOUT,51)
    assign out_exitcond25205 = exitcond25205_mux_q;

    // forked70_mux(MUX,5)
    assign forked70_mux_s = in_valid_in_0;
    always @(forked70_mux_s or in_forked70_1 or in_forked70_0)
    begin
        unique case (forked70_mux_s)
            1'b0 : forked70_mux_q = in_forked70_1;
            1'b1 : forked70_mux_q = in_forked70_0;
            default : forked70_mux_q = 1'b0;
        endcase
    end

    // out_forked70(GPOUT,52)
    assign out_forked70 = forked70_mux_q;

    // j_1151_pop39212_mux(MUX,39)
    assign j_1151_pop39212_mux_s = in_valid_in_0;
    always @(j_1151_pop39212_mux_s or in_j_1151_pop39212_1 or in_j_1151_pop39212_0)
    begin
        unique case (j_1151_pop39212_mux_s)
            1'b0 : j_1151_pop39212_mux_q = in_j_1151_pop39212_1;
            1'b1 : j_1151_pop39212_mux_q = in_j_1151_pop39212_0;
            default : j_1151_pop39212_mux_q = 32'b0;
        endcase
    end

    // out_j_1151_pop39212(GPOUT,53)
    assign out_j_1151_pop39212 = j_1151_pop39212_mux_q;

    // mPtr_bitcast_index174214_mux(MUX,40)
    assign mPtr_bitcast_index174214_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index174214_mux_s or in_mPtr_bitcast_index174214_1 or in_mPtr_bitcast_index174214_0)
    begin
        unique case (mPtr_bitcast_index174214_mux_s)
            1'b0 : mPtr_bitcast_index174214_mux_q = in_mPtr_bitcast_index174214_1;
            1'b1 : mPtr_bitcast_index174214_mux_q = in_mPtr_bitcast_index174214_0;
            default : mPtr_bitcast_index174214_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index174214(GPOUT,54)
    assign out_mPtr_bitcast_index174214 = mPtr_bitcast_index174214_mux_q;

    // memdep_phi4_pop40217_mux(MUX,41)
    assign memdep_phi4_pop40217_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop40217_mux_s or in_memdep_phi4_pop40217_1 or in_memdep_phi4_pop40217_0)
    begin
        unique case (memdep_phi4_pop40217_mux_s)
            1'b0 : memdep_phi4_pop40217_mux_q = in_memdep_phi4_pop40217_1;
            1'b1 : memdep_phi4_pop40217_mux_q = in_memdep_phi4_pop40217_0;
            default : memdep_phi4_pop40217_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop40217(GPOUT,55)
    assign out_memdep_phi4_pop40217 = memdep_phi4_pop40217_mux_q;

    // memdep_phi5_pop27144_pop44220_mux(MUX,42)
    assign memdep_phi5_pop27144_pop44220_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop27144_pop44220_mux_s or in_memdep_phi5_pop27144_pop44220_1 or in_memdep_phi5_pop27144_pop44220_0)
    begin
        unique case (memdep_phi5_pop27144_pop44220_mux_s)
            1'b0 : memdep_phi5_pop27144_pop44220_mux_q = in_memdep_phi5_pop27144_pop44220_1;
            1'b1 : memdep_phi5_pop27144_pop44220_mux_q = in_memdep_phi5_pop27144_pop44220_0;
            default : memdep_phi5_pop27144_pop44220_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop27144_pop44220(GPOUT,56)
    assign out_memdep_phi5_pop27144_pop44220 = memdep_phi5_pop27144_pop44220_mux_q;

    // memdep_phi5_pop27211_mux(MUX,43)
    assign memdep_phi5_pop27211_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop27211_mux_s or in_memdep_phi5_pop27211_1 or in_memdep_phi5_pop27211_0)
    begin
        unique case (memdep_phi5_pop27211_mux_s)
            1'b0 : memdep_phi5_pop27211_mux_q = in_memdep_phi5_pop27211_1;
            1'b1 : memdep_phi5_pop27211_mux_q = in_memdep_phi5_pop27211_0;
            default : memdep_phi5_pop27211_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop27211(GPOUT,57)
    assign out_memdep_phi5_pop27211 = memdep_phi5_pop27211_mux_q;

    // mul31_add40138_pop41213_mux(MUX,44)
    assign mul31_add40138_pop41213_mux_s = in_valid_in_0;
    always @(mul31_add40138_pop41213_mux_s or in_mul31_add40138_pop41213_1 or in_mul31_add40138_pop41213_0)
    begin
        unique case (mul31_add40138_pop41213_mux_s)
            1'b0 : mul31_add40138_pop41213_mux_q = in_mul31_add40138_pop41213_1;
            1'b1 : mul31_add40138_pop41213_mux_q = in_mul31_add40138_pop41213_0;
            default : mul31_add40138_pop41213_mux_q = 32'b0;
        endcase
    end

    // out_mul31_add40138_pop41213(GPOUT,58)
    assign out_mul31_add40138_pop41213 = mul31_add40138_pop41213_mux_q;

    // mul31_add40202_mux(MUX,45)
    assign mul31_add40202_mux_s = in_valid_in_0;
    always @(mul31_add40202_mux_s or in_mul31_add40202_1 or in_mul31_add40202_0)
    begin
        unique case (mul31_add40202_mux_s)
            1'b0 : mul31_add40202_mux_q = in_mul31_add40202_1;
            1'b1 : mul31_add40202_mux_q = in_mul31_add40202_0;
            default : mul31_add40202_mux_q = 32'b0;
        endcase
    end

    // out_mul31_add40202(GPOUT,59)
    assign out_mul31_add40202 = mul31_add40202_mux_q;

    // notcmp85216_mux(MUX,46)
    assign notcmp85216_mux_s = in_valid_in_0;
    always @(notcmp85216_mux_s or in_notcmp85216_1 or in_notcmp85216_0)
    begin
        unique case (notcmp85216_mux_s)
            1'b0 : notcmp85216_mux_q = in_notcmp85216_1;
            1'b1 : notcmp85216_mux_q = in_notcmp85216_0;
            default : notcmp85216_mux_q = 1'b0;
        endcase
    end

    // out_notcmp85216(GPOUT,60)
    assign out_notcmp85216 = notcmp85216_mux_q;

    // notcmp90142_pop43219_mux(MUX,47)
    assign notcmp90142_pop43219_mux_s = in_valid_in_0;
    always @(notcmp90142_pop43219_mux_s or in_notcmp90142_pop43219_1 or in_notcmp90142_pop43219_0)
    begin
        unique case (notcmp90142_pop43219_mux_s)
            1'b0 : notcmp90142_pop43219_mux_q = in_notcmp90142_pop43219_1;
            1'b1 : notcmp90142_pop43219_mux_q = in_notcmp90142_pop43219_0;
            default : notcmp90142_pop43219_mux_q = 1'b0;
        endcase
    end

    // out_notcmp90142_pop43219(GPOUT,61)
    assign out_notcmp90142_pop43219 = notcmp90142_pop43219_mux_q;

    // notcmp90208_mux(MUX,48)
    assign notcmp90208_mux_s = in_valid_in_0;
    always @(notcmp90208_mux_s or in_notcmp90208_1 or in_notcmp90208_0)
    begin
        unique case (notcmp90208_mux_s)
            1'b0 : notcmp90208_mux_q = in_notcmp90208_1;
            1'b1 : notcmp90208_mux_q = in_notcmp90208_0;
            default : notcmp90208_mux_q = 1'b0;
        endcase
    end

    // out_notcmp90208(GPOUT,62)
    assign out_notcmp90208 = notcmp90208_mux_q;

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

    // unnamed_kernel_3mm23_mux(MUX,69)
    assign unnamed_kernel_3mm23_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm23_mux_s or in_unnamed_kernel_3mm23_1 or in_unnamed_kernel_3mm23_0)
    begin
        unique case (unnamed_kernel_3mm23_mux_s)
            1'b0 : unnamed_kernel_3mm23_mux_q = in_unnamed_kernel_3mm23_1;
            1'b1 : unnamed_kernel_3mm23_mux_q = in_unnamed_kernel_3mm23_0;
            default : unnamed_kernel_3mm23_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm23(GPOUT,65)
    assign out_unnamed_kernel_3mm23 = unnamed_kernel_3mm23_mux_q;

    // out_valid_out(GPOUT,66)
    assign out_valid_out = valid_or_q;

endmodule
