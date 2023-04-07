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

// SystemVerilog created from atax_B5_branch
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B5_branch (
    input wire [0:0] in_c0_exe10128,
    input wire [0:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [63:0] in_c0_exe2120,
    input wire [31:0] in_c0_exe3121,
    input wire [0:0] in_c0_exe4122,
    input wire [0:0] in_c0_exe5123,
    input wire [0:0] in_c0_exe6124,
    input wire [0:0] in_c0_exe7125,
    input wire [63:0] in_c0_exe8126,
    input wire [0:0] in_c0_exe9127,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10128,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe2120,
    output wire [31:0] out_c0_exe3121,
    output wire [0:0] out_c0_exe5123,
    output wire [0:0] out_c0_exe6124,
    output wire [0:0] out_c0_exe7125,
    output wire [63:0] out_c0_exe8126,
    output wire [0:0] out_c0_exe9127,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] atax_B5_branch_enable_q;
    wire [0:0] atax_B5_branch_enable_not_q;
    reg [0:0] c0_exe10128_reg_q;
    reg [0:0] c0_exe11_reg_q;
    reg [0:0] c0_exe12_reg_q;
    reg [63:0] c0_exe2120_reg_q;
    reg [31:0] c0_exe3121_reg_q;
    wire [0:0] c0_exe4122_cmp_q;
    reg [0:0] c0_exe5123_reg_q;
    reg [0:0] c0_exe6124_reg_q;
    reg [0:0] c0_exe7125_reg_q;
    reg [63:0] c0_exe8126_reg_q;
    reg [0:0] c0_exe9127_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,30)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe4122_cmp(LOGICAL,9)
    assign c0_exe4122_cmp_q = ~ (in_c0_exe4122);

    // valid_out_1_and(LOGICAL,51)
    assign valid_out_1_and_q = in_valid_in & c0_exe4122_cmp_q;

    // valid_1_reg(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,32)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,34)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,29)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,50)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe4122;

    // valid_0_reg(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,31)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,33)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // atax_B5_branch_enable(LOGICAL,2)
    assign atax_B5_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10128_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10128_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe10128_reg_q <= in_c0_exe10128;
        end
    end

    // out_c0_exe10128(GPOUT,35)
    assign out_c0_exe10128 = c0_exe10128_reg_q;

    // c0_exe11_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe11_reg_q <= in_c0_exe11;
        end
    end

    // out_c0_exe11(GPOUT,36)
    assign out_c0_exe11 = c0_exe11_reg_q;

    // c0_exe12_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe12_reg_q <= in_c0_exe12;
        end
    end

    // out_c0_exe12(GPOUT,37)
    assign out_c0_exe12 = c0_exe12_reg_q;

    // c0_exe2120_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2120_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe2120_reg_q <= in_c0_exe2120;
        end
    end

    // out_c0_exe2120(GPOUT,38)
    assign out_c0_exe2120 = c0_exe2120_reg_q;

    // c0_exe3121_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3121_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe3121_reg_q <= in_c0_exe3121;
        end
    end

    // out_c0_exe3121(GPOUT,39)
    assign out_c0_exe3121 = c0_exe3121_reg_q;

    // c0_exe5123_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5123_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe5123_reg_q <= in_c0_exe5123;
        end
    end

    // out_c0_exe5123(GPOUT,40)
    assign out_c0_exe5123 = c0_exe5123_reg_q;

    // c0_exe6124_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6124_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe6124_reg_q <= in_c0_exe6124;
        end
    end

    // out_c0_exe6124(GPOUT,41)
    assign out_c0_exe6124 = c0_exe6124_reg_q;

    // c0_exe7125_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7125_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe7125_reg_q <= in_c0_exe7125;
        end
    end

    // out_c0_exe7125(GPOUT,42)
    assign out_c0_exe7125 = c0_exe7125_reg_q;

    // c0_exe8126_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8126_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe8126_reg_q <= in_c0_exe8126;
        end
    end

    // out_c0_exe8126(GPOUT,43)
    assign out_c0_exe8126 = c0_exe8126_reg_q;

    // c0_exe9127_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9127_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            c0_exe9127_reg_q <= in_c0_exe9127;
        end
    end

    // out_c0_exe9127(GPOUT,44)
    assign out_c0_exe9127 = c0_exe9127_reg_q;

    // atax_B5_branch_enable_not(LOGICAL,3)
    assign atax_B5_branch_enable_not_q = ~ (atax_B5_branch_enable_q);

    // out_stall_out(GPOUT,45)
    assign out_stall_out = atax_B5_branch_enable_not_q;

    // out_valid_out_0(GPOUT,46)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,47)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
