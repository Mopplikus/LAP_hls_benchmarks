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

// SystemVerilog created from covariance_B13_branch
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B13_branch (
    input wire [31:0] in_c0_exe10415,
    input wire [0:0] in_c0_exe11416,
    input wire [0:0] in_c0_exe12417,
    input wire [0:0] in_c0_exe13418,
    input wire [0:0] in_c0_exe14419,
    input wire [0:0] in_c0_exe15420,
    input wire [31:0] in_c0_exe5410,
    input wire [0:0] in_c0_exe7412,
    input wire [31:0] in_c0_exe8413,
    input wire [31:0] in_c0_exe9414,
    input wire [31:0] in_c1_exe1438,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10415,
    output wire [0:0] out_c0_exe11416,
    output wire [0:0] out_c0_exe12417,
    output wire [0:0] out_c0_exe13418,
    output wire [0:0] out_c0_exe14419,
    output wire [0:0] out_c0_exe15420,
    output wire [31:0] out_c0_exe5410,
    output wire [31:0] out_c0_exe8413,
    output wire [31:0] out_c0_exe9414,
    output wire [31:0] out_c1_exe1438,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] c0_exe10415_reg_q;
    reg [0:0] c0_exe11416_reg_q;
    reg [0:0] c0_exe12417_reg_q;
    reg [0:0] c0_exe13418_reg_q;
    reg [0:0] c0_exe14419_reg_q;
    reg [0:0] c0_exe15420_reg_q;
    reg [31:0] c0_exe5410_reg_q;
    wire [0:0] c0_exe7412_cmp_q;
    reg [31:0] c0_exe8413_reg_q;
    reg [31:0] c0_exe9414_reg_q;
    reg [31:0] c1_exe1438_reg_q;
    wire [0:0] covariance_B13_branch_enable_q;
    wire [0:0] covariance_B13_branch_enable_not_q;
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

    // c0_exe7412_cmp(LOGICAL,9)
    assign c0_exe7412_cmp_q = ~ (in_c0_exe7412);

    // valid_out_1_and(LOGICAL,51)
    assign valid_out_1_and_q = in_valid_in & c0_exe7412_cmp_q;

    // valid_1_reg(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
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
    assign valid_out_0_and_q = in_valid_in & in_c0_exe7412;

    // valid_0_reg(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,31)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,33)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // covariance_B13_branch_enable(LOGICAL,13)
    assign covariance_B13_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10415_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10415_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe10415_reg_q <= in_c0_exe10415;
        end
    end

    // out_c0_exe10415(GPOUT,35)
    assign out_c0_exe10415 = c0_exe10415_reg_q;

    // c0_exe11416_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11416_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe11416_reg_q <= in_c0_exe11416;
        end
    end

    // out_c0_exe11416(GPOUT,36)
    assign out_c0_exe11416 = c0_exe11416_reg_q;

    // c0_exe12417_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12417_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe12417_reg_q <= in_c0_exe12417;
        end
    end

    // out_c0_exe12417(GPOUT,37)
    assign out_c0_exe12417 = c0_exe12417_reg_q;

    // c0_exe13418_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13418_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe13418_reg_q <= in_c0_exe13418;
        end
    end

    // out_c0_exe13418(GPOUT,38)
    assign out_c0_exe13418 = c0_exe13418_reg_q;

    // c0_exe14419_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14419_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe14419_reg_q <= in_c0_exe14419;
        end
    end

    // out_c0_exe14419(GPOUT,39)
    assign out_c0_exe14419 = c0_exe14419_reg_q;

    // c0_exe15420_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15420_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe15420_reg_q <= in_c0_exe15420;
        end
    end

    // out_c0_exe15420(GPOUT,40)
    assign out_c0_exe15420 = c0_exe15420_reg_q;

    // c0_exe5410_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5410_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe5410_reg_q <= in_c0_exe5410;
        end
    end

    // out_c0_exe5410(GPOUT,41)
    assign out_c0_exe5410 = c0_exe5410_reg_q;

    // c0_exe8413_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8413_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe8413_reg_q <= in_c0_exe8413;
        end
    end

    // out_c0_exe8413(GPOUT,42)
    assign out_c0_exe8413 = c0_exe8413_reg_q;

    // c0_exe9414_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9414_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c0_exe9414_reg_q <= in_c0_exe9414;
        end
    end

    // out_c0_exe9414(GPOUT,43)
    assign out_c0_exe9414 = c0_exe9414_reg_q;

    // c1_exe1438_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1438_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B13_branch_enable_q == 1'b1)
        begin
            c1_exe1438_reg_q <= in_c1_exe1438;
        end
    end

    // out_c1_exe1438(GPOUT,44)
    assign out_c1_exe1438 = c1_exe1438_reg_q;

    // covariance_B13_branch_enable_not(LOGICAL,14)
    assign covariance_B13_branch_enable_not_q = ~ (covariance_B13_branch_enable_q);

    // out_stall_out(GPOUT,45)
    assign out_stall_out = covariance_B13_branch_enable_not_q;

    // out_valid_out_0(GPOUT,46)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,47)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
