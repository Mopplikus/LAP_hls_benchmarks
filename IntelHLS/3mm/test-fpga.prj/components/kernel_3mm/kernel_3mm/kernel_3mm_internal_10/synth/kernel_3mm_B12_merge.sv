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

// SystemVerilog created from kernel_3mm_B12_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B12_merge (
    input wire [63:0] in_arrayidx817268_0,
    input wire [63:0] in_arrayidx817268_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_252_pop30117_pop45265_0,
    input wire [31:0] in_i_252_pop30117_pop45265_1,
    input wire [31:0] in_i_252_pop30261_0,
    input wire [31:0] in_i_252_pop30261_1,
    input wire [63:0] in_idxprom78266_0,
    input wire [63:0] in_idxprom78266_1,
    input wire [63:0] in_idxprom80267_0,
    input wire [63:0] in_idxprom80267_1,
    input wire [0:0] in_memdep_phi7_pop21104_pop31264_0,
    input wire [0:0] in_memdep_phi7_pop21104_pop31264_1,
    input wire [0:0] in_memdep_phi7_pop21105_pop43269_0,
    input wire [0:0] in_memdep_phi7_pop21105_pop43269_1,
    input wire [0:0] in_memdep_phi7_pop21254_0,
    input wire [0:0] in_memdep_phi7_pop21254_1,
    input wire [0:0] in_notcmp26270_0,
    input wire [0:0] in_notcmp26270_1,
    input wire [0:0] in_notcmp31115_pop44271_0,
    input wire [0:0] in_notcmp31115_pop44271_1,
    input wire [0:0] in_notcmp31258_0,
    input wire [0:0] in_notcmp31258_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm11_0,
    input wire [31:0] in_unnamed_kernel_3mm11_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx817268,
    output wire [0:0] out_forked,
    output wire [31:0] out_i_252_pop30117_pop45265,
    output wire [31:0] out_i_252_pop30261,
    output wire [63:0] out_idxprom78266,
    output wire [63:0] out_idxprom80267,
    output wire [0:0] out_memdep_phi7_pop21104_pop31264,
    output wire [0:0] out_memdep_phi7_pop21105_pop43269,
    output wire [0:0] out_memdep_phi7_pop21254,
    output wire [0:0] out_notcmp26270,
    output wire [0:0] out_notcmp31115_pop44271,
    output wire [0:0] out_notcmp31258,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm11,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx817268_mux_s;
    reg [63:0] arrayidx817268_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] i_252_pop30117_pop45265_mux_s;
    reg [31:0] i_252_pop30117_pop45265_mux_q;
    wire [0:0] i_252_pop30261_mux_s;
    reg [31:0] i_252_pop30261_mux_q;
    wire [0:0] idxprom78266_mux_s;
    reg [63:0] idxprom78266_mux_q;
    wire [0:0] idxprom80267_mux_s;
    reg [63:0] idxprom80267_mux_q;
    wire [0:0] memdep_phi7_pop21104_pop31264_mux_s;
    reg [0:0] memdep_phi7_pop21104_pop31264_mux_q;
    wire [0:0] memdep_phi7_pop21105_pop43269_mux_s;
    reg [0:0] memdep_phi7_pop21105_pop43269_mux_q;
    wire [0:0] memdep_phi7_pop21254_mux_s;
    reg [0:0] memdep_phi7_pop21254_mux_q;
    wire [0:0] notcmp26270_mux_s;
    reg [0:0] notcmp26270_mux_q;
    wire [0:0] notcmp31115_pop44271_mux_s;
    reg [0:0] notcmp31115_pop44271_mux_q;
    wire [0:0] notcmp31258_mux_s;
    reg [0:0] notcmp31258_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm11_mux_s;
    reg [31:0] unnamed_kernel_3mm11_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx817268_mux(MUX,2)
    assign arrayidx817268_mux_s = in_valid_in_0;
    always @(arrayidx817268_mux_s or in_arrayidx817268_1 or in_arrayidx817268_0)
    begin
        unique case (arrayidx817268_mux_s)
            1'b0 : arrayidx817268_mux_q = in_arrayidx817268_1;
            1'b1 : arrayidx817268_mux_q = in_arrayidx817268_0;
            default : arrayidx817268_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx817268(GPOUT,43)
    assign out_arrayidx817268 = arrayidx817268_mux_q;

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

    // out_forked(GPOUT,44)
    assign out_forked = forked_mux_q;

    // i_252_pop30117_pop45265_mux(MUX,4)
    assign i_252_pop30117_pop45265_mux_s = in_valid_in_0;
    always @(i_252_pop30117_pop45265_mux_s or in_i_252_pop30117_pop45265_1 or in_i_252_pop30117_pop45265_0)
    begin
        unique case (i_252_pop30117_pop45265_mux_s)
            1'b0 : i_252_pop30117_pop45265_mux_q = in_i_252_pop30117_pop45265_1;
            1'b1 : i_252_pop30117_pop45265_mux_q = in_i_252_pop30117_pop45265_0;
            default : i_252_pop30117_pop45265_mux_q = 32'b0;
        endcase
    end

    // out_i_252_pop30117_pop45265(GPOUT,45)
    assign out_i_252_pop30117_pop45265 = i_252_pop30117_pop45265_mux_q;

    // i_252_pop30261_mux(MUX,5)
    assign i_252_pop30261_mux_s = in_valid_in_0;
    always @(i_252_pop30261_mux_s or in_i_252_pop30261_1 or in_i_252_pop30261_0)
    begin
        unique case (i_252_pop30261_mux_s)
            1'b0 : i_252_pop30261_mux_q = in_i_252_pop30261_1;
            1'b1 : i_252_pop30261_mux_q = in_i_252_pop30261_0;
            default : i_252_pop30261_mux_q = 32'b0;
        endcase
    end

    // out_i_252_pop30261(GPOUT,46)
    assign out_i_252_pop30261 = i_252_pop30261_mux_q;

    // idxprom78266_mux(MUX,6)
    assign idxprom78266_mux_s = in_valid_in_0;
    always @(idxprom78266_mux_s or in_idxprom78266_1 or in_idxprom78266_0)
    begin
        unique case (idxprom78266_mux_s)
            1'b0 : idxprom78266_mux_q = in_idxprom78266_1;
            1'b1 : idxprom78266_mux_q = in_idxprom78266_0;
            default : idxprom78266_mux_q = 64'b0;
        endcase
    end

    // out_idxprom78266(GPOUT,47)
    assign out_idxprom78266 = idxprom78266_mux_q;

    // idxprom80267_mux(MUX,7)
    assign idxprom80267_mux_s = in_valid_in_0;
    always @(idxprom80267_mux_s or in_idxprom80267_1 or in_idxprom80267_0)
    begin
        unique case (idxprom80267_mux_s)
            1'b0 : idxprom80267_mux_q = in_idxprom80267_1;
            1'b1 : idxprom80267_mux_q = in_idxprom80267_0;
            default : idxprom80267_mux_q = 64'b0;
        endcase
    end

    // out_idxprom80267(GPOUT,48)
    assign out_idxprom80267 = idxprom80267_mux_q;

    // memdep_phi7_pop21104_pop31264_mux(MUX,37)
    assign memdep_phi7_pop21104_pop31264_mux_s = in_valid_in_0;
    always @(memdep_phi7_pop21104_pop31264_mux_s or in_memdep_phi7_pop21104_pop31264_1 or in_memdep_phi7_pop21104_pop31264_0)
    begin
        unique case (memdep_phi7_pop21104_pop31264_mux_s)
            1'b0 : memdep_phi7_pop21104_pop31264_mux_q = in_memdep_phi7_pop21104_pop31264_1;
            1'b1 : memdep_phi7_pop21104_pop31264_mux_q = in_memdep_phi7_pop21104_pop31264_0;
            default : memdep_phi7_pop21104_pop31264_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi7_pop21104_pop31264(GPOUT,49)
    assign out_memdep_phi7_pop21104_pop31264 = memdep_phi7_pop21104_pop31264_mux_q;

    // memdep_phi7_pop21105_pop43269_mux(MUX,38)
    assign memdep_phi7_pop21105_pop43269_mux_s = in_valid_in_0;
    always @(memdep_phi7_pop21105_pop43269_mux_s or in_memdep_phi7_pop21105_pop43269_1 or in_memdep_phi7_pop21105_pop43269_0)
    begin
        unique case (memdep_phi7_pop21105_pop43269_mux_s)
            1'b0 : memdep_phi7_pop21105_pop43269_mux_q = in_memdep_phi7_pop21105_pop43269_1;
            1'b1 : memdep_phi7_pop21105_pop43269_mux_q = in_memdep_phi7_pop21105_pop43269_0;
            default : memdep_phi7_pop21105_pop43269_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi7_pop21105_pop43269(GPOUT,50)
    assign out_memdep_phi7_pop21105_pop43269 = memdep_phi7_pop21105_pop43269_mux_q;

    // memdep_phi7_pop21254_mux(MUX,39)
    assign memdep_phi7_pop21254_mux_s = in_valid_in_0;
    always @(memdep_phi7_pop21254_mux_s or in_memdep_phi7_pop21254_1 or in_memdep_phi7_pop21254_0)
    begin
        unique case (memdep_phi7_pop21254_mux_s)
            1'b0 : memdep_phi7_pop21254_mux_q = in_memdep_phi7_pop21254_1;
            1'b1 : memdep_phi7_pop21254_mux_q = in_memdep_phi7_pop21254_0;
            default : memdep_phi7_pop21254_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi7_pop21254(GPOUT,51)
    assign out_memdep_phi7_pop21254 = memdep_phi7_pop21254_mux_q;

    // notcmp26270_mux(MUX,40)
    assign notcmp26270_mux_s = in_valid_in_0;
    always @(notcmp26270_mux_s or in_notcmp26270_1 or in_notcmp26270_0)
    begin
        unique case (notcmp26270_mux_s)
            1'b0 : notcmp26270_mux_q = in_notcmp26270_1;
            1'b1 : notcmp26270_mux_q = in_notcmp26270_0;
            default : notcmp26270_mux_q = 1'b0;
        endcase
    end

    // out_notcmp26270(GPOUT,52)
    assign out_notcmp26270 = notcmp26270_mux_q;

    // notcmp31115_pop44271_mux(MUX,41)
    assign notcmp31115_pop44271_mux_s = in_valid_in_0;
    always @(notcmp31115_pop44271_mux_s or in_notcmp31115_pop44271_1 or in_notcmp31115_pop44271_0)
    begin
        unique case (notcmp31115_pop44271_mux_s)
            1'b0 : notcmp31115_pop44271_mux_q = in_notcmp31115_pop44271_1;
            1'b1 : notcmp31115_pop44271_mux_q = in_notcmp31115_pop44271_0;
            default : notcmp31115_pop44271_mux_q = 1'b0;
        endcase
    end

    // out_notcmp31115_pop44271(GPOUT,53)
    assign out_notcmp31115_pop44271 = notcmp31115_pop44271_mux_q;

    // notcmp31258_mux(MUX,42)
    assign notcmp31258_mux_s = in_valid_in_0;
    always @(notcmp31258_mux_s or in_notcmp31258_1 or in_notcmp31258_0)
    begin
        unique case (notcmp31258_mux_s)
            1'b0 : notcmp31258_mux_q = in_notcmp31258_1;
            1'b1 : notcmp31258_mux_q = in_notcmp31258_0;
            default : notcmp31258_mux_q = 1'b0;
        endcase
    end

    // out_notcmp31258(GPOUT,54)
    assign out_notcmp31258 = notcmp31258_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,59)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,55)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,60)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,56)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kernel_3mm11_mux(MUX,61)
    assign unnamed_kernel_3mm11_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm11_mux_s or in_unnamed_kernel_3mm11_1 or in_unnamed_kernel_3mm11_0)
    begin
        unique case (unnamed_kernel_3mm11_mux_s)
            1'b0 : unnamed_kernel_3mm11_mux_q = in_unnamed_kernel_3mm11_1;
            1'b1 : unnamed_kernel_3mm11_mux_q = in_unnamed_kernel_3mm11_0;
            default : unnamed_kernel_3mm11_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm11(GPOUT,57)
    assign out_unnamed_kernel_3mm11 = unnamed_kernel_3mm11_mux_q;

    // out_valid_out(GPOUT,58)
    assign out_valid_out = valid_or_q;

endmodule
