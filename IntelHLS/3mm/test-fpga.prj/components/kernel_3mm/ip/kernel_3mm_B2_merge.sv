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

// SystemVerilog created from kernel_3mm_B2_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B2_merge (
    input wire [0:0] in_forked81132_0,
    input wire [0:0] in_forked81132_1,
    input wire [0:0] in_forked82_0,
    input wire [0:0] in_forked82_1,
    input wire [0:0] in_memdep_phi2_pop18146_0,
    input wire [0:0] in_memdep_phi2_pop18146_1,
    input wire [0:0] in_memdep_phi3_pop19153_0,
    input wire [0:0] in_memdep_phi3_pop19153_1,
    input wire [0:0] in_memdep_phi5_pop20160_0,
    input wire [0:0] in_memdep_phi5_pop20160_1,
    input wire [0:0] in_memdep_phi_pop17139_0,
    input wire [0:0] in_memdep_phi_pop17139_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked81132,
    output wire [0:0] out_forked82,
    output wire [0:0] out_memdep_phi2_pop18146,
    output wire [0:0] out_memdep_phi3_pop19153,
    output wire [0:0] out_memdep_phi5_pop20160,
    output wire [0:0] out_memdep_phi_pop17139,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked81132_mux_s;
    reg [0:0] forked81132_mux_q;
    wire [0:0] forked82_mux_s;
    reg [0:0] forked82_mux_q;
    wire [0:0] memdep_phi2_pop18146_mux_s;
    reg [0:0] memdep_phi2_pop18146_mux_q;
    wire [0:0] memdep_phi3_pop19153_mux_s;
    reg [0:0] memdep_phi3_pop19153_mux_q;
    wire [0:0] memdep_phi5_pop20160_mux_s;
    reg [0:0] memdep_phi5_pop20160_mux_q;
    wire [0:0] memdep_phi_pop17139_mux_s;
    reg [0:0] memdep_phi_pop17139_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked81132_mux(MUX,2)
    assign forked81132_mux_s = in_valid_in_0;
    always @(forked81132_mux_s or in_forked81132_1 or in_forked81132_0)
    begin
        unique case (forked81132_mux_s)
            1'b0 : forked81132_mux_q = in_forked81132_1;
            1'b1 : forked81132_mux_q = in_forked81132_0;
            default : forked81132_mux_q = 1'b0;
        endcase
    end

    // out_forked81132(GPOUT,23)
    assign out_forked81132 = forked81132_mux_q;

    // forked82_mux(MUX,3)
    assign forked82_mux_s = in_valid_in_0;
    always @(forked82_mux_s or in_forked82_1 or in_forked82_0)
    begin
        unique case (forked82_mux_s)
            1'b0 : forked82_mux_q = in_forked82_1;
            1'b1 : forked82_mux_q = in_forked82_0;
            default : forked82_mux_q = 1'b0;
        endcase
    end

    // out_forked82(GPOUT,24)
    assign out_forked82 = forked82_mux_q;

    // memdep_phi2_pop18146_mux(MUX,19)
    assign memdep_phi2_pop18146_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop18146_mux_s or in_memdep_phi2_pop18146_1 or in_memdep_phi2_pop18146_0)
    begin
        unique case (memdep_phi2_pop18146_mux_s)
            1'b0 : memdep_phi2_pop18146_mux_q = in_memdep_phi2_pop18146_1;
            1'b1 : memdep_phi2_pop18146_mux_q = in_memdep_phi2_pop18146_0;
            default : memdep_phi2_pop18146_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop18146(GPOUT,25)
    assign out_memdep_phi2_pop18146 = memdep_phi2_pop18146_mux_q;

    // memdep_phi3_pop19153_mux(MUX,20)
    assign memdep_phi3_pop19153_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop19153_mux_s or in_memdep_phi3_pop19153_1 or in_memdep_phi3_pop19153_0)
    begin
        unique case (memdep_phi3_pop19153_mux_s)
            1'b0 : memdep_phi3_pop19153_mux_q = in_memdep_phi3_pop19153_1;
            1'b1 : memdep_phi3_pop19153_mux_q = in_memdep_phi3_pop19153_0;
            default : memdep_phi3_pop19153_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop19153(GPOUT,26)
    assign out_memdep_phi3_pop19153 = memdep_phi3_pop19153_mux_q;

    // memdep_phi5_pop20160_mux(MUX,21)
    assign memdep_phi5_pop20160_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop20160_mux_s or in_memdep_phi5_pop20160_1 or in_memdep_phi5_pop20160_0)
    begin
        unique case (memdep_phi5_pop20160_mux_s)
            1'b0 : memdep_phi5_pop20160_mux_q = in_memdep_phi5_pop20160_1;
            1'b1 : memdep_phi5_pop20160_mux_q = in_memdep_phi5_pop20160_0;
            default : memdep_phi5_pop20160_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop20160(GPOUT,27)
    assign out_memdep_phi5_pop20160 = memdep_phi5_pop20160_mux_q;

    // memdep_phi_pop17139_mux(MUX,22)
    assign memdep_phi_pop17139_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17139_mux_s or in_memdep_phi_pop17139_1 or in_memdep_phi_pop17139_0)
    begin
        unique case (memdep_phi_pop17139_mux_s)
            1'b0 : memdep_phi_pop17139_mux_q = in_memdep_phi_pop17139_1;
            1'b1 : memdep_phi_pop17139_mux_q = in_memdep_phi_pop17139_0;
            default : memdep_phi_pop17139_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17139(GPOUT,28)
    assign out_memdep_phi_pop17139 = memdep_phi_pop17139_mux_q;

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
