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

// SystemVerilog created from stencil_2d_B8_branch
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B8_branch (
    input wire [0:0] in_c0_exe102846,
    input wire [0:0] in_c0_exe112859,
    input wire [0:0] in_c0_exe1228611,
    input wire [0:0] in_c0_exe1328713,
    input wire [31:0] in_c0_exe1428815,
    input wire [0:0] in_c0_exe1528916,
    input wire [31:0] in_c0_exe92833,
    input wire [31:0] in_c1_exe118,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe102846,
    output wire [0:0] out_c0_exe112859,
    output wire [0:0] out_c0_exe1228611,
    output wire [0:0] out_c0_exe1328713,
    output wire [31:0] out_c0_exe1428815,
    output wire [31:0] out_c0_exe92833,
    output wire [31:0] out_c1_exe118,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe102846_reg_q;
    reg [0:0] c0_exe112859_reg_q;
    reg [0:0] c0_exe1228611_reg_q;
    reg [0:0] c0_exe1328713_reg_q;
    reg [31:0] c0_exe1428815_reg_q;
    wire [0:0] c0_exe1528916_cmp_q;
    reg [31:0] c0_exe92833_reg_q;
    reg [31:0] c1_exe118_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] stencil_2d_B8_branch_enable_q;
    wire [0:0] stencil_2d_B8_branch_enable_not_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,22)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe1528916_cmp(LOGICAL,7)
    assign c0_exe1528916_cmp_q = ~ (in_c0_exe1528916);

    // valid_out_1_and(LOGICAL,42)
    assign valid_out_1_and_q = in_valid_in & c0_exe1528916_cmp_q;

    // valid_1_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,24)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,26)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,21)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,41)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe1528916;

    // valid_0_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,23)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,25)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // stencil_2d_B8_branch_enable(LOGICAL,37)
    assign stencil_2d_B8_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe102846_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe102846_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            c0_exe102846_reg_q <= in_c0_exe102846;
        end
    end

    // out_c0_exe102846(GPOUT,27)
    assign out_c0_exe102846 = c0_exe102846_reg_q;

    // c0_exe112859_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe112859_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            c0_exe112859_reg_q <= in_c0_exe112859;
        end
    end

    // out_c0_exe112859(GPOUT,28)
    assign out_c0_exe112859 = c0_exe112859_reg_q;

    // c0_exe1228611_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1228611_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            c0_exe1228611_reg_q <= in_c0_exe1228611;
        end
    end

    // out_c0_exe1228611(GPOUT,29)
    assign out_c0_exe1228611 = c0_exe1228611_reg_q;

    // c0_exe1328713_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1328713_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            c0_exe1328713_reg_q <= in_c0_exe1328713;
        end
    end

    // out_c0_exe1328713(GPOUT,30)
    assign out_c0_exe1328713 = c0_exe1328713_reg_q;

    // c0_exe1428815_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1428815_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            c0_exe1428815_reg_q <= in_c0_exe1428815;
        end
    end

    // out_c0_exe1428815(GPOUT,31)
    assign out_c0_exe1428815 = c0_exe1428815_reg_q;

    // c0_exe92833_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe92833_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            c0_exe92833_reg_q <= in_c0_exe92833;
        end
    end

    // out_c0_exe92833(GPOUT,32)
    assign out_c0_exe92833 = c0_exe92833_reg_q;

    // c1_exe118_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe118_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stencil_2d_B8_branch_enable_q == 1'b1)
        begin
            c1_exe118_reg_q <= in_c1_exe118;
        end
    end

    // out_c1_exe118(GPOUT,33)
    assign out_c1_exe118 = c1_exe118_reg_q;

    // stencil_2d_B8_branch_enable_not(LOGICAL,38)
    assign stencil_2d_B8_branch_enable_not_q = ~ (stencil_2d_B8_branch_enable_q);

    // out_stall_out(GPOUT,34)
    assign out_stall_out = stencil_2d_B8_branch_enable_not_q;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,36)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
