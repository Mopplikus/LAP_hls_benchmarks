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

// SystemVerilog created from covariance_B12_branch
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B12_branch (
    input wire [0:0] in_c0_exe10434,
    input wire [0:0] in_c0_exe11435,
    input wire [0:0] in_c0_exe12436,
    input wire [63:0] in_c0_exe2426,
    input wire [63:0] in_c0_exe3427,
    input wire [0:0] in_c0_exe4428,
    input wire [31:0] in_c0_exe6430,
    input wire [0:0] in_c0_exe7431,
    input wire [31:0] in_c0_exe8432,
    input wire [31:0] in_c0_exe9433,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10434,
    output wire [0:0] out_c0_exe11435,
    output wire [0:0] out_c0_exe12436,
    output wire [63:0] out_c0_exe2426,
    output wire [63:0] out_c0_exe3427,
    output wire [0:0] out_c0_exe4428,
    output wire [31:0] out_c0_exe6430,
    output wire [31:0] out_c0_exe8432,
    output wire [31:0] out_c0_exe9433,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10434_reg_q;
    reg [0:0] c0_exe11435_reg_q;
    reg [0:0] c0_exe12436_reg_q;
    reg [63:0] c0_exe2426_reg_q;
    reg [63:0] c0_exe3427_reg_q;
    reg [0:0] c0_exe4428_reg_q;
    reg [31:0] c0_exe6430_reg_q;
    wire [0:0] c0_exe7431_cmp_q;
    reg [31:0] c0_exe8432_reg_q;
    reg [31:0] c0_exe9433_reg_q;
    wire [0:0] covariance_B12_branch_enable_q;
    wire [0:0] covariance_B12_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,28)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe7431_cmp(LOGICAL,9)
    assign c0_exe7431_cmp_q = ~ (in_c0_exe7431);

    // valid_out_1_and(LOGICAL,48)
    assign valid_out_1_and_q = in_valid_in & c0_exe7431_cmp_q;

    // valid_1_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,30)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,32)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,27)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,47)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe7431;

    // valid_0_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,29)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,31)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // covariance_B12_branch_enable(LOGICAL,12)
    assign covariance_B12_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10434_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10434_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe10434_reg_q <= in_c0_exe10434;
        end
    end

    // out_c0_exe10434(GPOUT,33)
    assign out_c0_exe10434 = c0_exe10434_reg_q;

    // c0_exe11435_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11435_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe11435_reg_q <= in_c0_exe11435;
        end
    end

    // out_c0_exe11435(GPOUT,34)
    assign out_c0_exe11435 = c0_exe11435_reg_q;

    // c0_exe12436_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12436_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe12436_reg_q <= in_c0_exe12436;
        end
    end

    // out_c0_exe12436(GPOUT,35)
    assign out_c0_exe12436 = c0_exe12436_reg_q;

    // c0_exe2426_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2426_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe2426_reg_q <= in_c0_exe2426;
        end
    end

    // out_c0_exe2426(GPOUT,36)
    assign out_c0_exe2426 = c0_exe2426_reg_q;

    // c0_exe3427_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3427_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe3427_reg_q <= in_c0_exe3427;
        end
    end

    // out_c0_exe3427(GPOUT,37)
    assign out_c0_exe3427 = c0_exe3427_reg_q;

    // c0_exe4428_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4428_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe4428_reg_q <= in_c0_exe4428;
        end
    end

    // out_c0_exe4428(GPOUT,38)
    assign out_c0_exe4428 = c0_exe4428_reg_q;

    // c0_exe6430_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6430_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe6430_reg_q <= in_c0_exe6430;
        end
    end

    // out_c0_exe6430(GPOUT,39)
    assign out_c0_exe6430 = c0_exe6430_reg_q;

    // c0_exe8432_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8432_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe8432_reg_q <= in_c0_exe8432;
        end
    end

    // out_c0_exe8432(GPOUT,40)
    assign out_c0_exe8432 = c0_exe8432_reg_q;

    // c0_exe9433_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9433_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe9433_reg_q <= in_c0_exe9433;
        end
    end

    // out_c0_exe9433(GPOUT,41)
    assign out_c0_exe9433 = c0_exe9433_reg_q;

    // covariance_B12_branch_enable_not(LOGICAL,13)
    assign covariance_B12_branch_enable_not_q = ~ (covariance_B12_branch_enable_q);

    // out_stall_out(GPOUT,42)
    assign out_stall_out = covariance_B12_branch_enable_not_q;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,44)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
