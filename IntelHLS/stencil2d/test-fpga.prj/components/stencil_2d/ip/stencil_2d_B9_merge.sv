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
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B9_merge (
    input wire [31:0] in_c_025_pop1547_pop2589_0,
    input wire [31:0] in_c_025_pop1547_pop2589_1,
    input wire [31:0] in_c_025_pop1576_0,
    input wire [31:0] in_c_025_pop1576_1,
    input wire [31:0] in_dot_prod_add90_0,
    input wire [31:0] in_dot_prod_add90_1,
    input wire [0:0] in_exitcond391_0,
    input wire [0:0] in_exitcond391_1,
    input wire [0:0] in_forked3286_0,
    input wire [0:0] in_forked3286_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_mul16_add1187_0,
    input wire [31:0] in_mul16_add1187_1,
    input wire [31:0] in_mul2839_pop1782_0,
    input wire [31:0] in_mul2839_pop1782_1,
    input wire [31:0] in_mul2840_pop2293_0,
    input wire [31:0] in_mul2840_pop2293_1,
    input wire [31:0] in_mul2864_0,
    input wire [31:0] in_mul2864_1,
    input wire [0:0] in_notcmp1492_0,
    input wire [0:0] in_notcmp1492_1,
    input wire [0:0] in_notcmp1945_pop2495_0,
    input wire [0:0] in_notcmp1945_pop2495_1,
    input wire [0:0] in_notcmp1973_0,
    input wire [0:0] in_notcmp1973_1,
    input wire [0:0] in_notcmp2442_pop1885_0,
    input wire [0:0] in_notcmp2442_pop1885_1,
    input wire [0:0] in_notcmp2443_pop2394_0,
    input wire [0:0] in_notcmp2443_pop2394_1,
    input wire [0:0] in_notcmp2469_0,
    input wire [0:0] in_notcmp2469_1,
    input wire [31:0] in_r_026_pop1336_pop1679_0,
    input wire [31:0] in_r_026_pop1336_pop1679_1,
    input wire [31:0] in_r_026_pop1337_pop2188_0,
    input wire [31:0] in_r_026_pop1337_pop2188_1,
    input wire [31:0] in_r_026_pop1359_0,
    input wire [31:0] in_r_026_pop1359_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_025_pop1547_pop2589,
    output wire [31:0] out_c_025_pop1576,
    output wire [31:0] out_dot_prod_add90,
    output wire [0:0] out_exitcond391,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked3286,
    output wire [31:0] out_mul16_add1187,
    output wire [31:0] out_mul2839_pop1782,
    output wire [31:0] out_mul2840_pop2293,
    output wire [31:0] out_mul2864,
    output wire [0:0] out_notcmp1492,
    output wire [0:0] out_notcmp1945_pop2495,
    output wire [0:0] out_notcmp1973,
    output wire [0:0] out_notcmp2442_pop1885,
    output wire [0:0] out_notcmp2443_pop2394,
    output wire [0:0] out_notcmp2469,
    output wire [31:0] out_r_026_pop1336_pop1679,
    output wire [31:0] out_r_026_pop1337_pop2188,
    output wire [31:0] out_r_026_pop1359,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_025_pop1547_pop2589_mux_s;
    reg [31:0] c_025_pop1547_pop2589_mux_q;
    wire [0:0] c_025_pop1576_mux_s;
    reg [31:0] c_025_pop1576_mux_q;
    wire [0:0] dot_prod_add90_mux_s;
    reg [31:0] dot_prod_add90_mux_q;
    wire [0:0] exitcond391_mux_s;
    reg [0:0] exitcond391_mux_q;
    wire [0:0] forked3286_mux_s;
    reg [0:0] forked3286_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] mul16_add1187_mux_s;
    reg [31:0] mul16_add1187_mux_q;
    wire [0:0] mul2839_pop1782_mux_s;
    reg [31:0] mul2839_pop1782_mux_q;
    wire [0:0] mul2840_pop2293_mux_s;
    reg [31:0] mul2840_pop2293_mux_q;
    wire [0:0] mul2864_mux_s;
    reg [31:0] mul2864_mux_q;
    wire [0:0] notcmp1492_mux_s;
    reg [0:0] notcmp1492_mux_q;
    wire [0:0] notcmp1945_pop2495_mux_s;
    reg [0:0] notcmp1945_pop2495_mux_q;
    wire [0:0] notcmp1973_mux_s;
    reg [0:0] notcmp1973_mux_q;
    wire [0:0] notcmp2442_pop1885_mux_s;
    reg [0:0] notcmp2442_pop1885_mux_q;
    wire [0:0] notcmp2443_pop2394_mux_s;
    reg [0:0] notcmp2443_pop2394_mux_q;
    wire [0:0] notcmp2469_mux_s;
    reg [0:0] notcmp2469_mux_q;
    wire [0:0] r_026_pop1336_pop1679_mux_s;
    reg [31:0] r_026_pop1336_pop1679_mux_q;
    wire [0:0] r_026_pop1337_pop2188_mux_s;
    reg [31:0] r_026_pop1337_pop2188_mux_q;
    wire [0:0] r_026_pop1359_mux_s;
    reg [31:0] r_026_pop1359_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_025_pop1547_pop2589_mux(MUX,2)
    assign c_025_pop1547_pop2589_mux_s = in_valid_in_0;
    always @(c_025_pop1547_pop2589_mux_s or in_c_025_pop1547_pop2589_1 or in_c_025_pop1547_pop2589_0)
    begin
        unique case (c_025_pop1547_pop2589_mux_s)
            1'b0 : c_025_pop1547_pop2589_mux_q = in_c_025_pop1547_pop2589_1;
            1'b1 : c_025_pop1547_pop2589_mux_q = in_c_025_pop1547_pop2589_0;
            default : c_025_pop1547_pop2589_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop1547_pop2589(GPOUT,59)
    assign out_c_025_pop1547_pop2589 = c_025_pop1547_pop2589_mux_q;

    // c_025_pop1576_mux(MUX,3)
    assign c_025_pop1576_mux_s = in_valid_in_0;
    always @(c_025_pop1576_mux_s or in_c_025_pop1576_1 or in_c_025_pop1576_0)
    begin
        unique case (c_025_pop1576_mux_s)
            1'b0 : c_025_pop1576_mux_q = in_c_025_pop1576_1;
            1'b1 : c_025_pop1576_mux_q = in_c_025_pop1576_0;
            default : c_025_pop1576_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop1576(GPOUT,60)
    assign out_c_025_pop1576 = c_025_pop1576_mux_q;

    // dot_prod_add90_mux(MUX,4)
    assign dot_prod_add90_mux_s = in_valid_in_0;
    always @(dot_prod_add90_mux_s or in_dot_prod_add90_1 or in_dot_prod_add90_0)
    begin
        unique case (dot_prod_add90_mux_s)
            1'b0 : dot_prod_add90_mux_q = in_dot_prod_add90_1;
            1'b1 : dot_prod_add90_mux_q = in_dot_prod_add90_0;
            default : dot_prod_add90_mux_q = 32'b0;
        endcase
    end

    // out_dot_prod_add90(GPOUT,61)
    assign out_dot_prod_add90 = dot_prod_add90_mux_q;

    // exitcond391_mux(MUX,5)
    assign exitcond391_mux_s = in_valid_in_0;
    always @(exitcond391_mux_s or in_exitcond391_1 or in_exitcond391_0)
    begin
        unique case (exitcond391_mux_s)
            1'b0 : exitcond391_mux_q = in_exitcond391_1;
            1'b1 : exitcond391_mux_q = in_exitcond391_0;
            default : exitcond391_mux_q = 1'b0;
        endcase
    end

    // out_exitcond391(GPOUT,62)
    assign out_exitcond391 = exitcond391_mux_q;

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

    // forked3286_mux(MUX,6)
    assign forked3286_mux_s = in_valid_in_0;
    always @(forked3286_mux_s or in_forked3286_1 or in_forked3286_0)
    begin
        unique case (forked3286_mux_s)
            1'b0 : forked3286_mux_q = in_forked3286_1;
            1'b1 : forked3286_mux_q = in_forked3286_0;
            default : forked3286_mux_q = 1'b0;
        endcase
    end

    // out_forked3286(GPOUT,64)
    assign out_forked3286 = forked3286_mux_q;

    // mul16_add1187_mux(MUX,49)
    assign mul16_add1187_mux_s = in_valid_in_0;
    always @(mul16_add1187_mux_s or in_mul16_add1187_1 or in_mul16_add1187_0)
    begin
        unique case (mul16_add1187_mux_s)
            1'b0 : mul16_add1187_mux_q = in_mul16_add1187_1;
            1'b1 : mul16_add1187_mux_q = in_mul16_add1187_0;
            default : mul16_add1187_mux_q = 32'b0;
        endcase
    end

    // out_mul16_add1187(GPOUT,65)
    assign out_mul16_add1187 = mul16_add1187_mux_q;

    // mul2839_pop1782_mux(MUX,50)
    assign mul2839_pop1782_mux_s = in_valid_in_0;
    always @(mul2839_pop1782_mux_s or in_mul2839_pop1782_1 or in_mul2839_pop1782_0)
    begin
        unique case (mul2839_pop1782_mux_s)
            1'b0 : mul2839_pop1782_mux_q = in_mul2839_pop1782_1;
            1'b1 : mul2839_pop1782_mux_q = in_mul2839_pop1782_0;
            default : mul2839_pop1782_mux_q = 32'b0;
        endcase
    end

    // out_mul2839_pop1782(GPOUT,66)
    assign out_mul2839_pop1782 = mul2839_pop1782_mux_q;

    // mul2840_pop2293_mux(MUX,51)
    assign mul2840_pop2293_mux_s = in_valid_in_0;
    always @(mul2840_pop2293_mux_s or in_mul2840_pop2293_1 or in_mul2840_pop2293_0)
    begin
        unique case (mul2840_pop2293_mux_s)
            1'b0 : mul2840_pop2293_mux_q = in_mul2840_pop2293_1;
            1'b1 : mul2840_pop2293_mux_q = in_mul2840_pop2293_0;
            default : mul2840_pop2293_mux_q = 32'b0;
        endcase
    end

    // out_mul2840_pop2293(GPOUT,67)
    assign out_mul2840_pop2293 = mul2840_pop2293_mux_q;

    // mul2864_mux(MUX,52)
    assign mul2864_mux_s = in_valid_in_0;
    always @(mul2864_mux_s or in_mul2864_1 or in_mul2864_0)
    begin
        unique case (mul2864_mux_s)
            1'b0 : mul2864_mux_q = in_mul2864_1;
            1'b1 : mul2864_mux_q = in_mul2864_0;
            default : mul2864_mux_q = 32'b0;
        endcase
    end

    // out_mul2864(GPOUT,68)
    assign out_mul2864 = mul2864_mux_q;

    // notcmp1492_mux(MUX,53)
    assign notcmp1492_mux_s = in_valid_in_0;
    always @(notcmp1492_mux_s or in_notcmp1492_1 or in_notcmp1492_0)
    begin
        unique case (notcmp1492_mux_s)
            1'b0 : notcmp1492_mux_q = in_notcmp1492_1;
            1'b1 : notcmp1492_mux_q = in_notcmp1492_0;
            default : notcmp1492_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1492(GPOUT,69)
    assign out_notcmp1492 = notcmp1492_mux_q;

    // notcmp1945_pop2495_mux(MUX,54)
    assign notcmp1945_pop2495_mux_s = in_valid_in_0;
    always @(notcmp1945_pop2495_mux_s or in_notcmp1945_pop2495_1 or in_notcmp1945_pop2495_0)
    begin
        unique case (notcmp1945_pop2495_mux_s)
            1'b0 : notcmp1945_pop2495_mux_q = in_notcmp1945_pop2495_1;
            1'b1 : notcmp1945_pop2495_mux_q = in_notcmp1945_pop2495_0;
            default : notcmp1945_pop2495_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1945_pop2495(GPOUT,70)
    assign out_notcmp1945_pop2495 = notcmp1945_pop2495_mux_q;

    // notcmp1973_mux(MUX,55)
    assign notcmp1973_mux_s = in_valid_in_0;
    always @(notcmp1973_mux_s or in_notcmp1973_1 or in_notcmp1973_0)
    begin
        unique case (notcmp1973_mux_s)
            1'b0 : notcmp1973_mux_q = in_notcmp1973_1;
            1'b1 : notcmp1973_mux_q = in_notcmp1973_0;
            default : notcmp1973_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1973(GPOUT,71)
    assign out_notcmp1973 = notcmp1973_mux_q;

    // notcmp2442_pop1885_mux(MUX,56)
    assign notcmp2442_pop1885_mux_s = in_valid_in_0;
    always @(notcmp2442_pop1885_mux_s or in_notcmp2442_pop1885_1 or in_notcmp2442_pop1885_0)
    begin
        unique case (notcmp2442_pop1885_mux_s)
            1'b0 : notcmp2442_pop1885_mux_q = in_notcmp2442_pop1885_1;
            1'b1 : notcmp2442_pop1885_mux_q = in_notcmp2442_pop1885_0;
            default : notcmp2442_pop1885_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2442_pop1885(GPOUT,72)
    assign out_notcmp2442_pop1885 = notcmp2442_pop1885_mux_q;

    // notcmp2443_pop2394_mux(MUX,57)
    assign notcmp2443_pop2394_mux_s = in_valid_in_0;
    always @(notcmp2443_pop2394_mux_s or in_notcmp2443_pop2394_1 or in_notcmp2443_pop2394_0)
    begin
        unique case (notcmp2443_pop2394_mux_s)
            1'b0 : notcmp2443_pop2394_mux_q = in_notcmp2443_pop2394_1;
            1'b1 : notcmp2443_pop2394_mux_q = in_notcmp2443_pop2394_0;
            default : notcmp2443_pop2394_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2443_pop2394(GPOUT,73)
    assign out_notcmp2443_pop2394 = notcmp2443_pop2394_mux_q;

    // notcmp2469_mux(MUX,58)
    assign notcmp2469_mux_s = in_valid_in_0;
    always @(notcmp2469_mux_s or in_notcmp2469_1 or in_notcmp2469_0)
    begin
        unique case (notcmp2469_mux_s)
            1'b0 : notcmp2469_mux_q = in_notcmp2469_1;
            1'b1 : notcmp2469_mux_q = in_notcmp2469_0;
            default : notcmp2469_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2469(GPOUT,74)
    assign out_notcmp2469 = notcmp2469_mux_q;

    // r_026_pop1336_pop1679_mux(MUX,81)
    assign r_026_pop1336_pop1679_mux_s = in_valid_in_0;
    always @(r_026_pop1336_pop1679_mux_s or in_r_026_pop1336_pop1679_1 or in_r_026_pop1336_pop1679_0)
    begin
        unique case (r_026_pop1336_pop1679_mux_s)
            1'b0 : r_026_pop1336_pop1679_mux_q = in_r_026_pop1336_pop1679_1;
            1'b1 : r_026_pop1336_pop1679_mux_q = in_r_026_pop1336_pop1679_0;
            default : r_026_pop1336_pop1679_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1336_pop1679(GPOUT,75)
    assign out_r_026_pop1336_pop1679 = r_026_pop1336_pop1679_mux_q;

    // r_026_pop1337_pop2188_mux(MUX,82)
    assign r_026_pop1337_pop2188_mux_s = in_valid_in_0;
    always @(r_026_pop1337_pop2188_mux_s or in_r_026_pop1337_pop2188_1 or in_r_026_pop1337_pop2188_0)
    begin
        unique case (r_026_pop1337_pop2188_mux_s)
            1'b0 : r_026_pop1337_pop2188_mux_q = in_r_026_pop1337_pop2188_1;
            1'b1 : r_026_pop1337_pop2188_mux_q = in_r_026_pop1337_pop2188_0;
            default : r_026_pop1337_pop2188_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1337_pop2188(GPOUT,76)
    assign out_r_026_pop1337_pop2188 = r_026_pop1337_pop2188_mux_q;

    // r_026_pop1359_mux(MUX,83)
    assign r_026_pop1359_mux_s = in_valid_in_0;
    always @(r_026_pop1359_mux_s or in_r_026_pop1359_1 or in_r_026_pop1359_0)
    begin
        unique case (r_026_pop1359_mux_s)
            1'b0 : r_026_pop1359_mux_q = in_r_026_pop1359_1;
            1'b1 : r_026_pop1359_mux_q = in_r_026_pop1359_0;
            default : r_026_pop1359_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1359(GPOUT,77)
    assign out_r_026_pop1359 = r_026_pop1359_mux_q;

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

endmodule
