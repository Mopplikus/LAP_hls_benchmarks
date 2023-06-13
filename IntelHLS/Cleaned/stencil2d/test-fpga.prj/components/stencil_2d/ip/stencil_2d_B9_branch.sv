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

// SystemVerilog created from stencil_2d_B9_branch
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B9_branch (
    input wire [0:0] in_c0_exe10282,
    input wire [0:0] in_c0_exe11283,
    input wire [0:0] in_c0_exe12284,
    input wire [0:0] in_c0_exe13285,
    input wire [31:0] in_c0_exe14286,
    input wire [0:0] in_c0_exe15287,
    input wire [0:0] in_c0_exe8280,
    input wire [31:0] in_c0_exe9281,
    input wire [31:0] in_c1_exe1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10282,
    output wire [0:0] out_c0_exe11283,
    output wire [0:0] out_c0_exe12284,
    output wire [0:0] out_c0_exe13285,
    output wire [31:0] out_c0_exe14286,
    output wire [0:0] out_c0_exe15287,
    output wire [31:0] out_c0_exe9281,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10282_reg_q;
    reg [0:0] c0_exe11283_reg_q;
    reg [0:0] c0_exe12284_reg_q;
    reg [0:0] c0_exe13285_reg_q;
    reg [31:0] c0_exe14286_reg_q;
    reg [0:0] c0_exe15287_reg_q;
    wire [0:0] c0_exe8280_cmp_q;
    reg [31:0] c0_exe9281_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] stencil_2d_B9_branch_enable_q;
    wire [0:0] stencil_2d_B9_branch_enable_not_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,24)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe8280_cmp(LOGICAL,8)
    assign c0_exe8280_cmp_q = ~ (in_c0_exe8280);

    // valid_out_1_and(LOGICAL,45)
    assign valid_out_1_and_q = in_valid_in & c0_exe8280_cmp_q;

    // valid_1_reg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,26)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,28)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,23)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,44)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe8280;

    // valid_0_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,25)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,27)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // stencil_2d_B9_branch_enable(LOGICAL,40)
    assign stencil_2d_B9_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10282_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10282_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c0_exe10282_reg_q <= in_c0_exe10282;
        end
    end

    // out_c0_exe10282(GPOUT,29)
    assign out_c0_exe10282 = c0_exe10282_reg_q;

    // c0_exe11283_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11283_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c0_exe11283_reg_q <= in_c0_exe11283;
        end
    end

    // out_c0_exe11283(GPOUT,30)
    assign out_c0_exe11283 = c0_exe11283_reg_q;

    // c0_exe12284_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12284_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c0_exe12284_reg_q <= in_c0_exe12284;
        end
    end

    // out_c0_exe12284(GPOUT,31)
    assign out_c0_exe12284 = c0_exe12284_reg_q;

    // c0_exe13285_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13285_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c0_exe13285_reg_q <= in_c0_exe13285;
        end
    end

    // out_c0_exe13285(GPOUT,32)
    assign out_c0_exe13285 = c0_exe13285_reg_q;

    // c0_exe14286_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14286_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c0_exe14286_reg_q <= in_c0_exe14286;
        end
    end

    // out_c0_exe14286(GPOUT,33)
    assign out_c0_exe14286 = c0_exe14286_reg_q;

    // c0_exe15287_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15287_reg_q <= $unsigned(1'b0);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c0_exe15287_reg_q <= in_c0_exe15287;
        end
    end

    // out_c0_exe15287(GPOUT,34)
    assign out_c0_exe15287 = c0_exe15287_reg_q;

    // c0_exe9281_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9281_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c0_exe9281_reg_q <= in_c0_exe9281;
        end
    end

    // out_c0_exe9281(GPOUT,35)
    assign out_c0_exe9281 = c0_exe9281_reg_q;

    // c1_exe1_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stencil_2d_B9_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= in_c1_exe1;
        end
    end

    // out_c1_exe1(GPOUT,36)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // stencil_2d_B9_branch_enable_not(LOGICAL,41)
    assign stencil_2d_B9_branch_enable_not_q = ~ (stencil_2d_B9_branch_enable_q);

    // out_stall_out(GPOUT,37)
    assign out_stall_out = stencil_2d_B9_branch_enable_not_q;

    // out_valid_out_0(GPOUT,38)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,39)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
