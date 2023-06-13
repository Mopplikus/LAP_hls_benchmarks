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

// SystemVerilog created from kernel_2mm_B15_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B15_merge (
    input wire [0:0] in_exitcond24162_0,
    input wire [0:0] in_exitcond24162_1,
    input wire [0:0] in_forked114_0,
    input wire [0:0] in_forked114_1,
    input wire [31:0] in_i48_078_pop25156_0,
    input wire [31:0] in_i48_078_pop25156_1,
    input wire [0:0] in_memdep_phi3_pop26168_0,
    input wire [0:0] in_memdep_phi3_pop26168_1,
    input wire [31:0] in_mul59_add30159_0,
    input wire [31:0] in_mul59_add30159_1,
    input wire [0:0] in_notcmp46165_0,
    input wire [0:0] in_notcmp46165_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond24162,
    output wire [0:0] out_forked114,
    output wire [31:0] out_i48_078_pop25156,
    output wire [0:0] out_memdep_phi3_pop26168,
    output wire [31:0] out_mul59_add30159,
    output wire [0:0] out_notcmp46165,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond24162_mux_s;
    reg [0:0] exitcond24162_mux_q;
    wire [0:0] forked114_mux_s;
    reg [0:0] forked114_mux_q;
    wire [0:0] i48_078_pop25156_mux_s;
    reg [31:0] i48_078_pop25156_mux_q;
    wire [0:0] memdep_phi3_pop26168_mux_s;
    reg [0:0] memdep_phi3_pop26168_mux_q;
    wire [0:0] mul59_add30159_mux_s;
    reg [31:0] mul59_add30159_mux_q;
    wire [0:0] notcmp46165_mux_s;
    reg [0:0] notcmp46165_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond24162_mux(MUX,2)
    assign exitcond24162_mux_s = in_valid_in_0;
    always @(exitcond24162_mux_s or in_exitcond24162_1 or in_exitcond24162_0)
    begin
        unique case (exitcond24162_mux_s)
            1'b0 : exitcond24162_mux_q = in_exitcond24162_1;
            1'b1 : exitcond24162_mux_q = in_exitcond24162_0;
            default : exitcond24162_mux_q = 1'b0;
        endcase
    end

    // out_exitcond24162(GPOUT,23)
    assign out_exitcond24162 = exitcond24162_mux_q;

    // forked114_mux(MUX,3)
    assign forked114_mux_s = in_valid_in_0;
    always @(forked114_mux_s or in_forked114_1 or in_forked114_0)
    begin
        unique case (forked114_mux_s)
            1'b0 : forked114_mux_q = in_forked114_1;
            1'b1 : forked114_mux_q = in_forked114_0;
            default : forked114_mux_q = 1'b0;
        endcase
    end

    // out_forked114(GPOUT,24)
    assign out_forked114 = forked114_mux_q;

    // i48_078_pop25156_mux(MUX,4)
    assign i48_078_pop25156_mux_s = in_valid_in_0;
    always @(i48_078_pop25156_mux_s or in_i48_078_pop25156_1 or in_i48_078_pop25156_0)
    begin
        unique case (i48_078_pop25156_mux_s)
            1'b0 : i48_078_pop25156_mux_q = in_i48_078_pop25156_1;
            1'b1 : i48_078_pop25156_mux_q = in_i48_078_pop25156_0;
            default : i48_078_pop25156_mux_q = 32'b0;
        endcase
    end

    // out_i48_078_pop25156(GPOUT,25)
    assign out_i48_078_pop25156 = i48_078_pop25156_mux_q;

    // memdep_phi3_pop26168_mux(MUX,20)
    assign memdep_phi3_pop26168_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop26168_mux_s or in_memdep_phi3_pop26168_1 or in_memdep_phi3_pop26168_0)
    begin
        unique case (memdep_phi3_pop26168_mux_s)
            1'b0 : memdep_phi3_pop26168_mux_q = in_memdep_phi3_pop26168_1;
            1'b1 : memdep_phi3_pop26168_mux_q = in_memdep_phi3_pop26168_0;
            default : memdep_phi3_pop26168_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop26168(GPOUT,26)
    assign out_memdep_phi3_pop26168 = memdep_phi3_pop26168_mux_q;

    // mul59_add30159_mux(MUX,21)
    assign mul59_add30159_mux_s = in_valid_in_0;
    always @(mul59_add30159_mux_s or in_mul59_add30159_1 or in_mul59_add30159_0)
    begin
        unique case (mul59_add30159_mux_s)
            1'b0 : mul59_add30159_mux_q = in_mul59_add30159_1;
            1'b1 : mul59_add30159_mux_q = in_mul59_add30159_0;
            default : mul59_add30159_mux_q = 32'b0;
        endcase
    end

    // out_mul59_add30159(GPOUT,27)
    assign out_mul59_add30159 = mul59_add30159_mux_q;

    // notcmp46165_mux(MUX,22)
    assign notcmp46165_mux_s = in_valid_in_0;
    always @(notcmp46165_mux_s or in_notcmp46165_1 or in_notcmp46165_0)
    begin
        unique case (notcmp46165_mux_s)
            1'b0 : notcmp46165_mux_q = in_notcmp46165_1;
            1'b1 : notcmp46165_mux_q = in_notcmp46165_0;
            default : notcmp46165_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46165(GPOUT,28)
    assign out_notcmp46165 = notcmp46165_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,32)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,33)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,31)
    assign out_valid_out = valid_or_q;

endmodule
