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

// SystemVerilog created from stencil_2d_B9_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B9_merge (
    input wire [31:0] in_c_025_pop1546_pop2586_0,
    input wire [31:0] in_c_025_pop1546_pop2586_1,
    input wire [31:0] in_c_025_pop1573_0,
    input wire [31:0] in_c_025_pop1573_1,
    input wire [31:0] in_dot_prod_add87_0,
    input wire [31:0] in_dot_prod_add87_1,
    input wire [0:0] in_exitcond388_0,
    input wire [0:0] in_exitcond388_1,
    input wire [0:0] in_forked3183_0,
    input wire [0:0] in_forked3183_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_mul16_add1184_0,
    input wire [31:0] in_mul16_add1184_1,
    input wire [31:0] in_mul2838_pop1779_0,
    input wire [31:0] in_mul2838_pop1779_1,
    input wire [31:0] in_mul2839_pop2290_0,
    input wire [31:0] in_mul2839_pop2290_1,
    input wire [31:0] in_mul2861_0,
    input wire [31:0] in_mul2861_1,
    input wire [0:0] in_notcmp1389_0,
    input wire [0:0] in_notcmp1389_1,
    input wire [0:0] in_notcmp1844_pop2492_0,
    input wire [0:0] in_notcmp1844_pop2492_1,
    input wire [0:0] in_notcmp1870_0,
    input wire [0:0] in_notcmp1870_1,
    input wire [0:0] in_notcmp2341_pop1882_0,
    input wire [0:0] in_notcmp2341_pop1882_1,
    input wire [0:0] in_notcmp2342_pop2391_0,
    input wire [0:0] in_notcmp2342_pop2391_1,
    input wire [0:0] in_notcmp2366_0,
    input wire [0:0] in_notcmp2366_1,
    input wire [31:0] in_r_026_pop1335_pop1676_0,
    input wire [31:0] in_r_026_pop1335_pop1676_1,
    input wire [31:0] in_r_026_pop1336_pop2185_0,
    input wire [31:0] in_r_026_pop1336_pop2185_1,
    input wire [31:0] in_r_026_pop1356_0,
    input wire [31:0] in_r_026_pop1356_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_025_pop1546_pop2586,
    output wire [31:0] out_c_025_pop1573,
    output wire [31:0] out_dot_prod_add87,
    output wire [0:0] out_exitcond388,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked3183,
    output wire [31:0] out_mul16_add1184,
    output wire [31:0] out_mul2838_pop1779,
    output wire [31:0] out_mul2839_pop2290,
    output wire [31:0] out_mul2861,
    output wire [0:0] out_notcmp1389,
    output wire [0:0] out_notcmp1844_pop2492,
    output wire [0:0] out_notcmp1870,
    output wire [0:0] out_notcmp2341_pop1882,
    output wire [0:0] out_notcmp2342_pop2391,
    output wire [0:0] out_notcmp2366,
    output wire [31:0] out_r_026_pop1335_pop1676,
    output wire [31:0] out_r_026_pop1336_pop2185,
    output wire [31:0] out_r_026_pop1356,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_025_pop1546_pop2586_mux_s;
    reg [31:0] c_025_pop1546_pop2586_mux_q;
    wire [0:0] c_025_pop1573_mux_s;
    reg [31:0] c_025_pop1573_mux_q;
    wire [0:0] dot_prod_add87_mux_s;
    reg [31:0] dot_prod_add87_mux_q;
    wire [0:0] exitcond388_mux_s;
    reg [0:0] exitcond388_mux_q;
    wire [0:0] forked3183_mux_s;
    reg [0:0] forked3183_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] mul16_add1184_mux_s;
    reg [31:0] mul16_add1184_mux_q;
    wire [0:0] mul2838_pop1779_mux_s;
    reg [31:0] mul2838_pop1779_mux_q;
    wire [0:0] mul2839_pop2290_mux_s;
    reg [31:0] mul2839_pop2290_mux_q;
    wire [0:0] mul2861_mux_s;
    reg [31:0] mul2861_mux_q;
    wire [0:0] notcmp1389_mux_s;
    reg [0:0] notcmp1389_mux_q;
    wire [0:0] notcmp1844_pop2492_mux_s;
    reg [0:0] notcmp1844_pop2492_mux_q;
    wire [0:0] notcmp1870_mux_s;
    reg [0:0] notcmp1870_mux_q;
    wire [0:0] notcmp2341_pop1882_mux_s;
    reg [0:0] notcmp2341_pop1882_mux_q;
    wire [0:0] notcmp2342_pop2391_mux_s;
    reg [0:0] notcmp2342_pop2391_mux_q;
    wire [0:0] notcmp2366_mux_s;
    reg [0:0] notcmp2366_mux_q;
    wire [0:0] r_026_pop1335_pop1676_mux_s;
    reg [31:0] r_026_pop1335_pop1676_mux_q;
    wire [0:0] r_026_pop1336_pop2185_mux_s;
    reg [31:0] r_026_pop1336_pop2185_mux_q;
    wire [0:0] r_026_pop1356_mux_s;
    reg [31:0] r_026_pop1356_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_025_pop1546_pop2586_mux(MUX,2)
    assign c_025_pop1546_pop2586_mux_s = in_valid_in_0;
    always @(c_025_pop1546_pop2586_mux_s or in_c_025_pop1546_pop2586_1 or in_c_025_pop1546_pop2586_0)
    begin
        unique case (c_025_pop1546_pop2586_mux_s)
            1'b0 : c_025_pop1546_pop2586_mux_q = in_c_025_pop1546_pop2586_1;
            1'b1 : c_025_pop1546_pop2586_mux_q = in_c_025_pop1546_pop2586_0;
            default : c_025_pop1546_pop2586_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop1546_pop2586(GPOUT,59)
    assign out_c_025_pop1546_pop2586 = c_025_pop1546_pop2586_mux_q;

    // c_025_pop1573_mux(MUX,3)
    assign c_025_pop1573_mux_s = in_valid_in_0;
    always @(c_025_pop1573_mux_s or in_c_025_pop1573_1 or in_c_025_pop1573_0)
    begin
        unique case (c_025_pop1573_mux_s)
            1'b0 : c_025_pop1573_mux_q = in_c_025_pop1573_1;
            1'b1 : c_025_pop1573_mux_q = in_c_025_pop1573_0;
            default : c_025_pop1573_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop1573(GPOUT,60)
    assign out_c_025_pop1573 = c_025_pop1573_mux_q;

    // dot_prod_add87_mux(MUX,4)
    assign dot_prod_add87_mux_s = in_valid_in_0;
    always @(dot_prod_add87_mux_s or in_dot_prod_add87_1 or in_dot_prod_add87_0)
    begin
        unique case (dot_prod_add87_mux_s)
            1'b0 : dot_prod_add87_mux_q = in_dot_prod_add87_1;
            1'b1 : dot_prod_add87_mux_q = in_dot_prod_add87_0;
            default : dot_prod_add87_mux_q = 32'b0;
        endcase
    end

    // out_dot_prod_add87(GPOUT,61)
    assign out_dot_prod_add87 = dot_prod_add87_mux_q;

    // exitcond388_mux(MUX,5)
    assign exitcond388_mux_s = in_valid_in_0;
    always @(exitcond388_mux_s or in_exitcond388_1 or in_exitcond388_0)
    begin
        unique case (exitcond388_mux_s)
            1'b0 : exitcond388_mux_q = in_exitcond388_1;
            1'b1 : exitcond388_mux_q = in_exitcond388_0;
            default : exitcond388_mux_q = 1'b0;
        endcase
    end

    // out_exitcond388(GPOUT,62)
    assign out_exitcond388 = exitcond388_mux_q;

    // forked_mux(MUX,7)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,63)
    assign out_forked = forked_mux_q;

    // forked3183_mux(MUX,6)
    assign forked3183_mux_s = in_valid_in_0;
    always @(forked3183_mux_s or in_forked3183_1 or in_forked3183_0)
    begin
        unique case (forked3183_mux_s)
            1'b0 : forked3183_mux_q = in_forked3183_1;
            1'b1 : forked3183_mux_q = in_forked3183_0;
            default : forked3183_mux_q = 1'b0;
        endcase
    end

    // out_forked3183(GPOUT,64)
    assign out_forked3183 = forked3183_mux_q;

    // mul16_add1184_mux(MUX,49)
    assign mul16_add1184_mux_s = in_valid_in_0;
    always @(mul16_add1184_mux_s or in_mul16_add1184_1 or in_mul16_add1184_0)
    begin
        unique case (mul16_add1184_mux_s)
            1'b0 : mul16_add1184_mux_q = in_mul16_add1184_1;
            1'b1 : mul16_add1184_mux_q = in_mul16_add1184_0;
            default : mul16_add1184_mux_q = 32'b0;
        endcase
    end

    // out_mul16_add1184(GPOUT,65)
    assign out_mul16_add1184 = mul16_add1184_mux_q;

    // mul2838_pop1779_mux(MUX,50)
    assign mul2838_pop1779_mux_s = in_valid_in_0;
    always @(mul2838_pop1779_mux_s or in_mul2838_pop1779_1 or in_mul2838_pop1779_0)
    begin
        unique case (mul2838_pop1779_mux_s)
            1'b0 : mul2838_pop1779_mux_q = in_mul2838_pop1779_1;
            1'b1 : mul2838_pop1779_mux_q = in_mul2838_pop1779_0;
            default : mul2838_pop1779_mux_q = 32'b0;
        endcase
    end

    // out_mul2838_pop1779(GPOUT,66)
    assign out_mul2838_pop1779 = mul2838_pop1779_mux_q;

    // mul2839_pop2290_mux(MUX,51)
    assign mul2839_pop2290_mux_s = in_valid_in_0;
    always @(mul2839_pop2290_mux_s or in_mul2839_pop2290_1 or in_mul2839_pop2290_0)
    begin
        unique case (mul2839_pop2290_mux_s)
            1'b0 : mul2839_pop2290_mux_q = in_mul2839_pop2290_1;
            1'b1 : mul2839_pop2290_mux_q = in_mul2839_pop2290_0;
            default : mul2839_pop2290_mux_q = 32'b0;
        endcase
    end

    // out_mul2839_pop2290(GPOUT,67)
    assign out_mul2839_pop2290 = mul2839_pop2290_mux_q;

    // mul2861_mux(MUX,52)
    assign mul2861_mux_s = in_valid_in_0;
    always @(mul2861_mux_s or in_mul2861_1 or in_mul2861_0)
    begin
        unique case (mul2861_mux_s)
            1'b0 : mul2861_mux_q = in_mul2861_1;
            1'b1 : mul2861_mux_q = in_mul2861_0;
            default : mul2861_mux_q = 32'b0;
        endcase
    end

    // out_mul2861(GPOUT,68)
    assign out_mul2861 = mul2861_mux_q;

    // notcmp1389_mux(MUX,53)
    assign notcmp1389_mux_s = in_valid_in_0;
    always @(notcmp1389_mux_s or in_notcmp1389_1 or in_notcmp1389_0)
    begin
        unique case (notcmp1389_mux_s)
            1'b0 : notcmp1389_mux_q = in_notcmp1389_1;
            1'b1 : notcmp1389_mux_q = in_notcmp1389_0;
            default : notcmp1389_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1389(GPOUT,69)
    assign out_notcmp1389 = notcmp1389_mux_q;

    // notcmp1844_pop2492_mux(MUX,54)
    assign notcmp1844_pop2492_mux_s = in_valid_in_0;
    always @(notcmp1844_pop2492_mux_s or in_notcmp1844_pop2492_1 or in_notcmp1844_pop2492_0)
    begin
        unique case (notcmp1844_pop2492_mux_s)
            1'b0 : notcmp1844_pop2492_mux_q = in_notcmp1844_pop2492_1;
            1'b1 : notcmp1844_pop2492_mux_q = in_notcmp1844_pop2492_0;
            default : notcmp1844_pop2492_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1844_pop2492(GPOUT,70)
    assign out_notcmp1844_pop2492 = notcmp1844_pop2492_mux_q;

    // notcmp1870_mux(MUX,55)
    assign notcmp1870_mux_s = in_valid_in_0;
    always @(notcmp1870_mux_s or in_notcmp1870_1 or in_notcmp1870_0)
    begin
        unique case (notcmp1870_mux_s)
            1'b0 : notcmp1870_mux_q = in_notcmp1870_1;
            1'b1 : notcmp1870_mux_q = in_notcmp1870_0;
            default : notcmp1870_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1870(GPOUT,71)
    assign out_notcmp1870 = notcmp1870_mux_q;

    // notcmp2341_pop1882_mux(MUX,56)
    assign notcmp2341_pop1882_mux_s = in_valid_in_0;
    always @(notcmp2341_pop1882_mux_s or in_notcmp2341_pop1882_1 or in_notcmp2341_pop1882_0)
    begin
        unique case (notcmp2341_pop1882_mux_s)
            1'b0 : notcmp2341_pop1882_mux_q = in_notcmp2341_pop1882_1;
            1'b1 : notcmp2341_pop1882_mux_q = in_notcmp2341_pop1882_0;
            default : notcmp2341_pop1882_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2341_pop1882(GPOUT,72)
    assign out_notcmp2341_pop1882 = notcmp2341_pop1882_mux_q;

    // notcmp2342_pop2391_mux(MUX,57)
    assign notcmp2342_pop2391_mux_s = in_valid_in_0;
    always @(notcmp2342_pop2391_mux_s or in_notcmp2342_pop2391_1 or in_notcmp2342_pop2391_0)
    begin
        unique case (notcmp2342_pop2391_mux_s)
            1'b0 : notcmp2342_pop2391_mux_q = in_notcmp2342_pop2391_1;
            1'b1 : notcmp2342_pop2391_mux_q = in_notcmp2342_pop2391_0;
            default : notcmp2342_pop2391_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2342_pop2391(GPOUT,73)
    assign out_notcmp2342_pop2391 = notcmp2342_pop2391_mux_q;

    // notcmp2366_mux(MUX,58)
    assign notcmp2366_mux_s = in_valid_in_0;
    always @(notcmp2366_mux_s or in_notcmp2366_1 or in_notcmp2366_0)
    begin
        unique case (notcmp2366_mux_s)
            1'b0 : notcmp2366_mux_q = in_notcmp2366_1;
            1'b1 : notcmp2366_mux_q = in_notcmp2366_0;
            default : notcmp2366_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2366(GPOUT,74)
    assign out_notcmp2366 = notcmp2366_mux_q;

    // r_026_pop1335_pop1676_mux(MUX,81)
    assign r_026_pop1335_pop1676_mux_s = in_valid_in_0;
    always @(r_026_pop1335_pop1676_mux_s or in_r_026_pop1335_pop1676_1 or in_r_026_pop1335_pop1676_0)
    begin
        unique case (r_026_pop1335_pop1676_mux_s)
            1'b0 : r_026_pop1335_pop1676_mux_q = in_r_026_pop1335_pop1676_1;
            1'b1 : r_026_pop1335_pop1676_mux_q = in_r_026_pop1335_pop1676_0;
            default : r_026_pop1335_pop1676_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1335_pop1676(GPOUT,75)
    assign out_r_026_pop1335_pop1676 = r_026_pop1335_pop1676_mux_q;

    // r_026_pop1336_pop2185_mux(MUX,82)
    assign r_026_pop1336_pop2185_mux_s = in_valid_in_0;
    always @(r_026_pop1336_pop2185_mux_s or in_r_026_pop1336_pop2185_1 or in_r_026_pop1336_pop2185_0)
    begin
        unique case (r_026_pop1336_pop2185_mux_s)
            1'b0 : r_026_pop1336_pop2185_mux_q = in_r_026_pop1336_pop2185_1;
            1'b1 : r_026_pop1336_pop2185_mux_q = in_r_026_pop1336_pop2185_0;
            default : r_026_pop1336_pop2185_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1336_pop2185(GPOUT,76)
    assign out_r_026_pop1336_pop2185 = r_026_pop1336_pop2185_mux_q;

    // r_026_pop1356_mux(MUX,83)
    assign r_026_pop1356_mux_s = in_valid_in_0;
    always @(r_026_pop1356_mux_s or in_r_026_pop1356_1 or in_r_026_pop1356_0)
    begin
        unique case (r_026_pop1356_mux_s)
            1'b0 : r_026_pop1356_mux_q = in_r_026_pop1356_1;
            1'b1 : r_026_pop1356_mux_q = in_r_026_pop1356_0;
            default : r_026_pop1356_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1356(GPOUT,77)
    assign out_r_026_pop1356 = r_026_pop1356_mux_q;

    // valid_or(LOGICAL,86)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,84)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,85)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,79)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,80)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,87)
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
