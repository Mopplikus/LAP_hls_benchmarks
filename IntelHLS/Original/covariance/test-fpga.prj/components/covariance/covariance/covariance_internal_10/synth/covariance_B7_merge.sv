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

// SystemVerilog created from covariance_B7_merge
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B7_merge (
    input wire [0:0] in_exitcond1072_pop39134_0,
    input wire [0:0] in_exitcond1072_pop39134_1,
    input wire [63:0] in_idxprom7123_0,
    input wire [63:0] in_idxprom7123_1,
    input wire [31:0] in_lim_ext53_pop35128_0,
    input wire [31:0] in_lim_ext53_pop35128_1,
    input wire [31:0] in_lim_ext91_0,
    input wire [31:0] in_lim_ext91_1,
    input wire [0:0] in_memdep_phi1_pop1659_pop36125_0,
    input wire [0:0] in_memdep_phi1_pop1659_pop36125_1,
    input wire [0:0] in_memdep_phi1_pop1696_0,
    input wire [0:0] in_memdep_phi1_pop1696_1,
    input wire [0:0] in_memdep_phi2_pop17101_0,
    input wire [0:0] in_memdep_phi2_pop17101_1,
    input wire [0:0] in_memdep_phi2_pop1762_pop37130_0,
    input wire [0:0] in_memdep_phi2_pop1762_pop37130_1,
    input wire [0:0] in_memdep_phi4_pop18106_0,
    input wire [0:0] in_memdep_phi4_pop18106_1,
    input wire [0:0] in_memdep_phi4_pop1865_pop38132_0,
    input wire [0:0] in_memdep_phi4_pop1865_pop38132_1,
    input wire [31:0] in_mul122_0,
    input wire [31:0] in_mul122_1,
    input wire [0:0] in_notcmp4374_pop40136_0,
    input wire [0:0] in_notcmp4374_pop40136_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1072_pop39134,
    output wire [63:0] out_idxprom7123,
    output wire [31:0] out_lim_ext53_pop35128,
    output wire [31:0] out_lim_ext91,
    output wire [0:0] out_memdep_phi1_pop1659_pop36125,
    output wire [0:0] out_memdep_phi1_pop1696,
    output wire [0:0] out_memdep_phi2_pop17101,
    output wire [0:0] out_memdep_phi2_pop1762_pop37130,
    output wire [0:0] out_memdep_phi4_pop18106,
    output wire [0:0] out_memdep_phi4_pop1865_pop38132,
    output wire [31:0] out_mul122,
    output wire [0:0] out_notcmp4374_pop40136,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1072_pop39134_mux_s;
    reg [0:0] exitcond1072_pop39134_mux_q;
    wire [0:0] idxprom7123_mux_s;
    reg [63:0] idxprom7123_mux_q;
    wire [0:0] lim_ext53_pop35128_mux_s;
    reg [31:0] lim_ext53_pop35128_mux_q;
    wire [0:0] lim_ext91_mux_s;
    reg [31:0] lim_ext91_mux_q;
    wire [0:0] memdep_phi1_pop1659_pop36125_mux_s;
    reg [0:0] memdep_phi1_pop1659_pop36125_mux_q;
    wire [0:0] memdep_phi1_pop1696_mux_s;
    reg [0:0] memdep_phi1_pop1696_mux_q;
    wire [0:0] memdep_phi2_pop17101_mux_s;
    reg [0:0] memdep_phi2_pop17101_mux_q;
    wire [0:0] memdep_phi2_pop1762_pop37130_mux_s;
    reg [0:0] memdep_phi2_pop1762_pop37130_mux_q;
    wire [0:0] memdep_phi4_pop18106_mux_s;
    reg [0:0] memdep_phi4_pop18106_mux_q;
    wire [0:0] memdep_phi4_pop1865_pop38132_mux_s;
    reg [0:0] memdep_phi4_pop1865_pop38132_mux_q;
    wire [0:0] mul122_mux_s;
    reg [31:0] mul122_mux_q;
    wire [0:0] notcmp4374_pop40136_mux_s;
    reg [0:0] notcmp4374_pop40136_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1072_pop39134_mux(MUX,2)
    assign exitcond1072_pop39134_mux_s = in_valid_in_0;
    always @(exitcond1072_pop39134_mux_s or in_exitcond1072_pop39134_1 or in_exitcond1072_pop39134_0)
    begin
        unique case (exitcond1072_pop39134_mux_s)
            1'b0 : exitcond1072_pop39134_mux_q = in_exitcond1072_pop39134_1;
            1'b1 : exitcond1072_pop39134_mux_q = in_exitcond1072_pop39134_0;
            default : exitcond1072_pop39134_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1072_pop39134(GPOUT,41)
    assign out_exitcond1072_pop39134 = exitcond1072_pop39134_mux_q;

    // idxprom7123_mux(MUX,3)
    assign idxprom7123_mux_s = in_valid_in_0;
    always @(idxprom7123_mux_s or in_idxprom7123_1 or in_idxprom7123_0)
    begin
        unique case (idxprom7123_mux_s)
            1'b0 : idxprom7123_mux_q = in_idxprom7123_1;
            1'b1 : idxprom7123_mux_q = in_idxprom7123_0;
            default : idxprom7123_mux_q = 64'b0;
        endcase
    end

    // out_idxprom7123(GPOUT,42)
    assign out_idxprom7123 = idxprom7123_mux_q;

    // lim_ext53_pop35128_mux(MUX,31)
    assign lim_ext53_pop35128_mux_s = in_valid_in_0;
    always @(lim_ext53_pop35128_mux_s or in_lim_ext53_pop35128_1 or in_lim_ext53_pop35128_0)
    begin
        unique case (lim_ext53_pop35128_mux_s)
            1'b0 : lim_ext53_pop35128_mux_q = in_lim_ext53_pop35128_1;
            1'b1 : lim_ext53_pop35128_mux_q = in_lim_ext53_pop35128_0;
            default : lim_ext53_pop35128_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext53_pop35128(GPOUT,43)
    assign out_lim_ext53_pop35128 = lim_ext53_pop35128_mux_q;

    // lim_ext91_mux(MUX,32)
    assign lim_ext91_mux_s = in_valid_in_0;
    always @(lim_ext91_mux_s or in_lim_ext91_1 or in_lim_ext91_0)
    begin
        unique case (lim_ext91_mux_s)
            1'b0 : lim_ext91_mux_q = in_lim_ext91_1;
            1'b1 : lim_ext91_mux_q = in_lim_ext91_0;
            default : lim_ext91_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext91(GPOUT,44)
    assign out_lim_ext91 = lim_ext91_mux_q;

    // memdep_phi1_pop1659_pop36125_mux(MUX,33)
    assign memdep_phi1_pop1659_pop36125_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1659_pop36125_mux_s or in_memdep_phi1_pop1659_pop36125_1 or in_memdep_phi1_pop1659_pop36125_0)
    begin
        unique case (memdep_phi1_pop1659_pop36125_mux_s)
            1'b0 : memdep_phi1_pop1659_pop36125_mux_q = in_memdep_phi1_pop1659_pop36125_1;
            1'b1 : memdep_phi1_pop1659_pop36125_mux_q = in_memdep_phi1_pop1659_pop36125_0;
            default : memdep_phi1_pop1659_pop36125_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1659_pop36125(GPOUT,45)
    assign out_memdep_phi1_pop1659_pop36125 = memdep_phi1_pop1659_pop36125_mux_q;

    // memdep_phi1_pop1696_mux(MUX,34)
    assign memdep_phi1_pop1696_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1696_mux_s or in_memdep_phi1_pop1696_1 or in_memdep_phi1_pop1696_0)
    begin
        unique case (memdep_phi1_pop1696_mux_s)
            1'b0 : memdep_phi1_pop1696_mux_q = in_memdep_phi1_pop1696_1;
            1'b1 : memdep_phi1_pop1696_mux_q = in_memdep_phi1_pop1696_0;
            default : memdep_phi1_pop1696_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1696(GPOUT,46)
    assign out_memdep_phi1_pop1696 = memdep_phi1_pop1696_mux_q;

    // memdep_phi2_pop17101_mux(MUX,35)
    assign memdep_phi2_pop17101_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop17101_mux_s or in_memdep_phi2_pop17101_1 or in_memdep_phi2_pop17101_0)
    begin
        unique case (memdep_phi2_pop17101_mux_s)
            1'b0 : memdep_phi2_pop17101_mux_q = in_memdep_phi2_pop17101_1;
            1'b1 : memdep_phi2_pop17101_mux_q = in_memdep_phi2_pop17101_0;
            default : memdep_phi2_pop17101_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop17101(GPOUT,47)
    assign out_memdep_phi2_pop17101 = memdep_phi2_pop17101_mux_q;

    // memdep_phi2_pop1762_pop37130_mux(MUX,36)
    assign memdep_phi2_pop1762_pop37130_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1762_pop37130_mux_s or in_memdep_phi2_pop1762_pop37130_1 or in_memdep_phi2_pop1762_pop37130_0)
    begin
        unique case (memdep_phi2_pop1762_pop37130_mux_s)
            1'b0 : memdep_phi2_pop1762_pop37130_mux_q = in_memdep_phi2_pop1762_pop37130_1;
            1'b1 : memdep_phi2_pop1762_pop37130_mux_q = in_memdep_phi2_pop1762_pop37130_0;
            default : memdep_phi2_pop1762_pop37130_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1762_pop37130(GPOUT,48)
    assign out_memdep_phi2_pop1762_pop37130 = memdep_phi2_pop1762_pop37130_mux_q;

    // memdep_phi4_pop18106_mux(MUX,37)
    assign memdep_phi4_pop18106_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop18106_mux_s or in_memdep_phi4_pop18106_1 or in_memdep_phi4_pop18106_0)
    begin
        unique case (memdep_phi4_pop18106_mux_s)
            1'b0 : memdep_phi4_pop18106_mux_q = in_memdep_phi4_pop18106_1;
            1'b1 : memdep_phi4_pop18106_mux_q = in_memdep_phi4_pop18106_0;
            default : memdep_phi4_pop18106_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop18106(GPOUT,49)
    assign out_memdep_phi4_pop18106 = memdep_phi4_pop18106_mux_q;

    // memdep_phi4_pop1865_pop38132_mux(MUX,38)
    assign memdep_phi4_pop1865_pop38132_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1865_pop38132_mux_s or in_memdep_phi4_pop1865_pop38132_1 or in_memdep_phi4_pop1865_pop38132_0)
    begin
        unique case (memdep_phi4_pop1865_pop38132_mux_s)
            1'b0 : memdep_phi4_pop1865_pop38132_mux_q = in_memdep_phi4_pop1865_pop38132_1;
            1'b1 : memdep_phi4_pop1865_pop38132_mux_q = in_memdep_phi4_pop1865_pop38132_0;
            default : memdep_phi4_pop1865_pop38132_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1865_pop38132(GPOUT,50)
    assign out_memdep_phi4_pop1865_pop38132 = memdep_phi4_pop1865_pop38132_mux_q;

    // mul122_mux(MUX,39)
    assign mul122_mux_s = in_valid_in_0;
    always @(mul122_mux_s or in_mul122_1 or in_mul122_0)
    begin
        unique case (mul122_mux_s)
            1'b0 : mul122_mux_q = in_mul122_1;
            1'b1 : mul122_mux_q = in_mul122_0;
            default : mul122_mux_q = 32'b0;
        endcase
    end

    // out_mul122(GPOUT,51)
    assign out_mul122 = mul122_mux_q;

    // notcmp4374_pop40136_mux(MUX,40)
    assign notcmp4374_pop40136_mux_s = in_valid_in_0;
    always @(notcmp4374_pop40136_mux_s or in_notcmp4374_pop40136_1 or in_notcmp4374_pop40136_0)
    begin
        unique case (notcmp4374_pop40136_mux_s)
            1'b0 : notcmp4374_pop40136_mux_q = in_notcmp4374_pop40136_1;
            1'b1 : notcmp4374_pop40136_mux_q = in_notcmp4374_pop40136_0;
            default : notcmp4374_pop40136_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4374_pop40136(GPOUT,52)
    assign out_notcmp4374_pop40136 = notcmp4374_pop40136_mux_q;

    // valid_or(LOGICAL,58)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,56)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,53)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,57)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,54)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,55)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,59)
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
