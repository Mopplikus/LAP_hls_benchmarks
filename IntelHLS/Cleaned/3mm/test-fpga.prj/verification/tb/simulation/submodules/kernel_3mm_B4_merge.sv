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

// SystemVerilog created from kernel_3mm_B4_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:42 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B4_merge (
    input wire [0:0] in_exitcond13185_0,
    input wire [0:0] in_exitcond13185_1,
    input wire [0:0] in_exitcond16131_pop35188_0,
    input wire [0:0] in_exitcond16131_pop35188_1,
    input wire [0:0] in_exitcond16175_0,
    input wire [0:0] in_exitcond16175_1,
    input wire [0:0] in_forked96_0,
    input wire [0:0] in_forked96_1,
    input wire [31:0] in_j_0155_pop32182_0,
    input wire [31:0] in_j_0155_pop32182_1,
    input wire [63:0] in_mPtr_bitcast_index168184_0,
    input wire [63:0] in_mPtr_bitcast_index168184_1,
    input wire [0:0] in_memdep_phi1_pop24135_pop37190_0,
    input wire [0:0] in_memdep_phi1_pop24135_pop37190_1,
    input wire [0:0] in_memdep_phi1_pop24181_0,
    input wire [0:0] in_memdep_phi1_pop24181_1,
    input wire [0:0] in_memdep_phi_pop33187_0,
    input wire [0:0] in_memdep_phi_pop33187_1,
    input wire [31:0] in_mul_add36129_pop34183_0,
    input wire [31:0] in_mul_add36129_pop34183_1,
    input wire [31:0] in_mul_add36172_0,
    input wire [31:0] in_mul_add36172_1,
    input wire [0:0] in_notcmp111186_0,
    input wire [0:0] in_notcmp111186_1,
    input wire [0:0] in_notcmp116133_pop36189_0,
    input wire [0:0] in_notcmp116133_pop36189_1,
    input wire [0:0] in_notcmp116178_0,
    input wire [0:0] in_notcmp116178_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm13_0,
    input wire [31:0] in_unnamed_kernel_3mm13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond13185,
    output wire [0:0] out_exitcond16131_pop35188,
    output wire [0:0] out_exitcond16175,
    output wire [0:0] out_forked96,
    output wire [31:0] out_j_0155_pop32182,
    output wire [63:0] out_mPtr_bitcast_index168184,
    output wire [0:0] out_memdep_phi1_pop24135_pop37190,
    output wire [0:0] out_memdep_phi1_pop24181,
    output wire [0:0] out_memdep_phi_pop33187,
    output wire [31:0] out_mul_add36129_pop34183,
    output wire [31:0] out_mul_add36172,
    output wire [0:0] out_notcmp111186,
    output wire [0:0] out_notcmp116133_pop36189,
    output wire [0:0] out_notcmp116178,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond13185_mux_s;
    reg [0:0] exitcond13185_mux_q;
    wire [0:0] exitcond16131_pop35188_mux_s;
    reg [0:0] exitcond16131_pop35188_mux_q;
    wire [0:0] exitcond16175_mux_s;
    reg [0:0] exitcond16175_mux_q;
    wire [0:0] forked96_mux_s;
    reg [0:0] forked96_mux_q;
    wire [0:0] j_0155_pop32182_mux_s;
    reg [31:0] j_0155_pop32182_mux_q;
    wire [0:0] mPtr_bitcast_index168184_mux_s;
    reg [63:0] mPtr_bitcast_index168184_mux_q;
    wire [0:0] memdep_phi1_pop24135_pop37190_mux_s;
    reg [0:0] memdep_phi1_pop24135_pop37190_mux_q;
    wire [0:0] memdep_phi1_pop24181_mux_s;
    reg [0:0] memdep_phi1_pop24181_mux_q;
    wire [0:0] memdep_phi_pop33187_mux_s;
    reg [0:0] memdep_phi_pop33187_mux_q;
    wire [0:0] mul_add36129_pop34183_mux_s;
    reg [31:0] mul_add36129_pop34183_mux_q;
    wire [0:0] mul_add36172_mux_s;
    reg [31:0] mul_add36172_mux_q;
    wire [0:0] notcmp111186_mux_s;
    reg [0:0] notcmp111186_mux_q;
    wire [0:0] notcmp116133_pop36189_mux_s;
    reg [0:0] notcmp116133_pop36189_mux_q;
    wire [0:0] notcmp116178_mux_s;
    reg [0:0] notcmp116178_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm13_mux_s;
    reg [31:0] unnamed_kernel_3mm13_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond13185_mux(MUX,2)
    assign exitcond13185_mux_s = in_valid_in_0;
    always @(exitcond13185_mux_s or in_exitcond13185_1 or in_exitcond13185_0)
    begin
        unique case (exitcond13185_mux_s)
            1'b0 : exitcond13185_mux_q = in_exitcond13185_1;
            1'b1 : exitcond13185_mux_q = in_exitcond13185_0;
            default : exitcond13185_mux_q = 1'b0;
        endcase
    end

    // out_exitcond13185(GPOUT,49)
    assign out_exitcond13185 = exitcond13185_mux_q;

    // exitcond16131_pop35188_mux(MUX,3)
    assign exitcond16131_pop35188_mux_s = in_valid_in_0;
    always @(exitcond16131_pop35188_mux_s or in_exitcond16131_pop35188_1 or in_exitcond16131_pop35188_0)
    begin
        unique case (exitcond16131_pop35188_mux_s)
            1'b0 : exitcond16131_pop35188_mux_q = in_exitcond16131_pop35188_1;
            1'b1 : exitcond16131_pop35188_mux_q = in_exitcond16131_pop35188_0;
            default : exitcond16131_pop35188_mux_q = 1'b0;
        endcase
    end

    // out_exitcond16131_pop35188(GPOUT,50)
    assign out_exitcond16131_pop35188 = exitcond16131_pop35188_mux_q;

    // exitcond16175_mux(MUX,4)
    assign exitcond16175_mux_s = in_valid_in_0;
    always @(exitcond16175_mux_s or in_exitcond16175_1 or in_exitcond16175_0)
    begin
        unique case (exitcond16175_mux_s)
            1'b0 : exitcond16175_mux_q = in_exitcond16175_1;
            1'b1 : exitcond16175_mux_q = in_exitcond16175_0;
            default : exitcond16175_mux_q = 1'b0;
        endcase
    end

    // out_exitcond16175(GPOUT,51)
    assign out_exitcond16175 = exitcond16175_mux_q;

    // forked96_mux(MUX,5)
    assign forked96_mux_s = in_valid_in_0;
    always @(forked96_mux_s or in_forked96_1 or in_forked96_0)
    begin
        unique case (forked96_mux_s)
            1'b0 : forked96_mux_q = in_forked96_1;
            1'b1 : forked96_mux_q = in_forked96_0;
            default : forked96_mux_q = 1'b0;
        endcase
    end

    // out_forked96(GPOUT,52)
    assign out_forked96 = forked96_mux_q;

    // j_0155_pop32182_mux(MUX,39)
    assign j_0155_pop32182_mux_s = in_valid_in_0;
    always @(j_0155_pop32182_mux_s or in_j_0155_pop32182_1 or in_j_0155_pop32182_0)
    begin
        unique case (j_0155_pop32182_mux_s)
            1'b0 : j_0155_pop32182_mux_q = in_j_0155_pop32182_1;
            1'b1 : j_0155_pop32182_mux_q = in_j_0155_pop32182_0;
            default : j_0155_pop32182_mux_q = 32'b0;
        endcase
    end

    // out_j_0155_pop32182(GPOUT,53)
    assign out_j_0155_pop32182 = j_0155_pop32182_mux_q;

    // mPtr_bitcast_index168184_mux(MUX,40)
    assign mPtr_bitcast_index168184_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index168184_mux_s or in_mPtr_bitcast_index168184_1 or in_mPtr_bitcast_index168184_0)
    begin
        unique case (mPtr_bitcast_index168184_mux_s)
            1'b0 : mPtr_bitcast_index168184_mux_q = in_mPtr_bitcast_index168184_1;
            1'b1 : mPtr_bitcast_index168184_mux_q = in_mPtr_bitcast_index168184_0;
            default : mPtr_bitcast_index168184_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index168184(GPOUT,54)
    assign out_mPtr_bitcast_index168184 = mPtr_bitcast_index168184_mux_q;

    // memdep_phi1_pop24135_pop37190_mux(MUX,41)
    assign memdep_phi1_pop24135_pop37190_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop24135_pop37190_mux_s or in_memdep_phi1_pop24135_pop37190_1 or in_memdep_phi1_pop24135_pop37190_0)
    begin
        unique case (memdep_phi1_pop24135_pop37190_mux_s)
            1'b0 : memdep_phi1_pop24135_pop37190_mux_q = in_memdep_phi1_pop24135_pop37190_1;
            1'b1 : memdep_phi1_pop24135_pop37190_mux_q = in_memdep_phi1_pop24135_pop37190_0;
            default : memdep_phi1_pop24135_pop37190_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop24135_pop37190(GPOUT,55)
    assign out_memdep_phi1_pop24135_pop37190 = memdep_phi1_pop24135_pop37190_mux_q;

    // memdep_phi1_pop24181_mux(MUX,42)
    assign memdep_phi1_pop24181_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop24181_mux_s or in_memdep_phi1_pop24181_1 or in_memdep_phi1_pop24181_0)
    begin
        unique case (memdep_phi1_pop24181_mux_s)
            1'b0 : memdep_phi1_pop24181_mux_q = in_memdep_phi1_pop24181_1;
            1'b1 : memdep_phi1_pop24181_mux_q = in_memdep_phi1_pop24181_0;
            default : memdep_phi1_pop24181_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop24181(GPOUT,56)
    assign out_memdep_phi1_pop24181 = memdep_phi1_pop24181_mux_q;

    // memdep_phi_pop33187_mux(MUX,43)
    assign memdep_phi_pop33187_mux_s = in_valid_in_0;
    always @(memdep_phi_pop33187_mux_s or in_memdep_phi_pop33187_1 or in_memdep_phi_pop33187_0)
    begin
        unique case (memdep_phi_pop33187_mux_s)
            1'b0 : memdep_phi_pop33187_mux_q = in_memdep_phi_pop33187_1;
            1'b1 : memdep_phi_pop33187_mux_q = in_memdep_phi_pop33187_0;
            default : memdep_phi_pop33187_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop33187(GPOUT,57)
    assign out_memdep_phi_pop33187 = memdep_phi_pop33187_mux_q;

    // mul_add36129_pop34183_mux(MUX,44)
    assign mul_add36129_pop34183_mux_s = in_valid_in_0;
    always @(mul_add36129_pop34183_mux_s or in_mul_add36129_pop34183_1 or in_mul_add36129_pop34183_0)
    begin
        unique case (mul_add36129_pop34183_mux_s)
            1'b0 : mul_add36129_pop34183_mux_q = in_mul_add36129_pop34183_1;
            1'b1 : mul_add36129_pop34183_mux_q = in_mul_add36129_pop34183_0;
            default : mul_add36129_pop34183_mux_q = 32'b0;
        endcase
    end

    // out_mul_add36129_pop34183(GPOUT,58)
    assign out_mul_add36129_pop34183 = mul_add36129_pop34183_mux_q;

    // mul_add36172_mux(MUX,45)
    assign mul_add36172_mux_s = in_valid_in_0;
    always @(mul_add36172_mux_s or in_mul_add36172_1 or in_mul_add36172_0)
    begin
        unique case (mul_add36172_mux_s)
            1'b0 : mul_add36172_mux_q = in_mul_add36172_1;
            1'b1 : mul_add36172_mux_q = in_mul_add36172_0;
            default : mul_add36172_mux_q = 32'b0;
        endcase
    end

    // out_mul_add36172(GPOUT,59)
    assign out_mul_add36172 = mul_add36172_mux_q;

    // notcmp111186_mux(MUX,46)
    assign notcmp111186_mux_s = in_valid_in_0;
    always @(notcmp111186_mux_s or in_notcmp111186_1 or in_notcmp111186_0)
    begin
        unique case (notcmp111186_mux_s)
            1'b0 : notcmp111186_mux_q = in_notcmp111186_1;
            1'b1 : notcmp111186_mux_q = in_notcmp111186_0;
            default : notcmp111186_mux_q = 1'b0;
        endcase
    end

    // out_notcmp111186(GPOUT,60)
    assign out_notcmp111186 = notcmp111186_mux_q;

    // notcmp116133_pop36189_mux(MUX,47)
    assign notcmp116133_pop36189_mux_s = in_valid_in_0;
    always @(notcmp116133_pop36189_mux_s or in_notcmp116133_pop36189_1 or in_notcmp116133_pop36189_0)
    begin
        unique case (notcmp116133_pop36189_mux_s)
            1'b0 : notcmp116133_pop36189_mux_q = in_notcmp116133_pop36189_1;
            1'b1 : notcmp116133_pop36189_mux_q = in_notcmp116133_pop36189_0;
            default : notcmp116133_pop36189_mux_q = 1'b0;
        endcase
    end

    // out_notcmp116133_pop36189(GPOUT,61)
    assign out_notcmp116133_pop36189 = notcmp116133_pop36189_mux_q;

    // notcmp116178_mux(MUX,48)
    assign notcmp116178_mux_s = in_valid_in_0;
    always @(notcmp116178_mux_s or in_notcmp116178_1 or in_notcmp116178_0)
    begin
        unique case (notcmp116178_mux_s)
            1'b0 : notcmp116178_mux_q = in_notcmp116178_1;
            1'b1 : notcmp116178_mux_q = in_notcmp116178_0;
            default : notcmp116178_mux_q = 1'b0;
        endcase
    end

    // out_notcmp116178(GPOUT,62)
    assign out_notcmp116178 = notcmp116178_mux_q;

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

    // unnamed_kernel_3mm13_mux(MUX,69)
    assign unnamed_kernel_3mm13_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm13_mux_s or in_unnamed_kernel_3mm13_1 or in_unnamed_kernel_3mm13_0)
    begin
        unique case (unnamed_kernel_3mm13_mux_s)
            1'b0 : unnamed_kernel_3mm13_mux_q = in_unnamed_kernel_3mm13_1;
            1'b1 : unnamed_kernel_3mm13_mux_q = in_unnamed_kernel_3mm13_0;
            default : unnamed_kernel_3mm13_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm13(GPOUT,65)
    assign out_unnamed_kernel_3mm13 = unnamed_kernel_3mm13_mux_q;

    // out_valid_out(GPOUT,66)
    assign out_valid_out = valid_or_q;

endmodule
