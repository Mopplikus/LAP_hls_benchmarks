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

// SystemVerilog created from kernel_3mm_B4_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B4_branch (
    input wire [0:0] in_c0_exe10395,
    input wire [31:0] in_c0_exe11396,
    input wire [0:0] in_c0_exe12397,
    input wire [63:0] in_c0_exe13398,
    input wire [0:0] in_c0_exe14399,
    input wire [0:0] in_c0_exe15400,
    input wire [0:0] in_c0_exe16401,
    input wire [0:0] in_c0_exe17402,
    input wire [0:0] in_c0_exe18403,
    input wire [0:0] in_c0_exe19404,
    input wire [31:0] in_c0_exe20405,
    input wire [0:0] in_c0_exe21406,
    input wire [0:0] in_c0_exe22407,
    input wire [0:0] in_c0_exe23408,
    input wire [63:0] in_c0_exe2387,
    input wire [0:0] in_c0_exe24409,
    input wire [0:0] in_c0_exe25410,
    input wire [0:0] in_c0_exe26,
    input wire [63:0] in_c0_exe3388,
    input wire [31:0] in_c0_exe4389,
    input wire [0:0] in_c0_exe5390,
    input wire [0:0] in_c0_exe6391,
    input wire [0:0] in_c0_exe7392,
    input wire [0:0] in_c0_exe8393,
    input wire [0:0] in_c0_exe9394,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10395,
    output wire [31:0] out_c0_exe11396,
    output wire [0:0] out_c0_exe12397,
    output wire [63:0] out_c0_exe13398,
    output wire [0:0] out_c0_exe14399,
    output wire [0:0] out_c0_exe15400,
    output wire [0:0] out_c0_exe16401,
    output wire [0:0] out_c0_exe17402,
    output wire [0:0] out_c0_exe18403,
    output wire [0:0] out_c0_exe19404,
    output wire [31:0] out_c0_exe20405,
    output wire [0:0] out_c0_exe21406,
    output wire [0:0] out_c0_exe22407,
    output wire [0:0] out_c0_exe23408,
    output wire [63:0] out_c0_exe2387,
    output wire [0:0] out_c0_exe24409,
    output wire [0:0] out_c0_exe25410,
    output wire [0:0] out_c0_exe26,
    output wire [63:0] out_c0_exe3388,
    output wire [31:0] out_c0_exe4389,
    output wire [0:0] out_c0_exe6391,
    output wire [0:0] out_c0_exe7392,
    output wire [0:0] out_c0_exe8393,
    output wire [0:0] out_c0_exe9394,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10395_reg_q;
    reg [31:0] c0_exe11396_reg_q;
    reg [0:0] c0_exe12397_reg_q;
    reg [63:0] c0_exe13398_reg_q;
    reg [0:0] c0_exe14399_reg_q;
    reg [0:0] c0_exe15400_reg_q;
    reg [0:0] c0_exe16401_reg_q;
    reg [0:0] c0_exe17402_reg_q;
    reg [0:0] c0_exe18403_reg_q;
    reg [0:0] c0_exe19404_reg_q;
    reg [31:0] c0_exe20405_reg_q;
    reg [0:0] c0_exe21406_reg_q;
    reg [0:0] c0_exe22407_reg_q;
    reg [0:0] c0_exe23408_reg_q;
    reg [63:0] c0_exe2387_reg_q;
    reg [0:0] c0_exe24409_reg_q;
    reg [0:0] c0_exe25410_reg_q;
    reg [0:0] c0_exe26_reg_q;
    reg [63:0] c0_exe3388_reg_q;
    reg [31:0] c0_exe4389_reg_q;
    wire [0:0] c0_exe5390_cmp_q;
    reg [0:0] c0_exe6391_reg_q;
    reg [0:0] c0_exe7392_reg_q;
    reg [0:0] c0_exe8393_reg_q;
    reg [0:0] c0_exe9394_reg_q;
    wire [0:0] kernel_3mm_B4_branch_enable_q;
    wire [0:0] kernel_3mm_B4_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,58)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe5390_cmp(LOGICAL,22)
    assign c0_exe5390_cmp_q = ~ (in_c0_exe5390);

    // valid_out_1_and(LOGICAL,93)
    assign valid_out_1_and_q = in_valid_in & c0_exe5390_cmp_q;

    // valid_1_reg(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,60)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,62)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,57)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,92)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe5390;

    // valid_0_reg(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,59)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,61)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // kernel_3mm_B4_branch_enable(LOGICAL,55)
    assign kernel_3mm_B4_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10395_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10395_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe10395_reg_q <= in_c0_exe10395;
        end
    end

    // out_c0_exe10395(GPOUT,63)
    assign out_c0_exe10395 = c0_exe10395_reg_q;

    // c0_exe11396_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11396_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe11396_reg_q <= in_c0_exe11396;
        end
    end

    // out_c0_exe11396(GPOUT,64)
    assign out_c0_exe11396 = c0_exe11396_reg_q;

    // c0_exe12397_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12397_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe12397_reg_q <= in_c0_exe12397;
        end
    end

    // out_c0_exe12397(GPOUT,65)
    assign out_c0_exe12397 = c0_exe12397_reg_q;

    // c0_exe13398_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13398_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe13398_reg_q <= in_c0_exe13398;
        end
    end

    // out_c0_exe13398(GPOUT,66)
    assign out_c0_exe13398 = c0_exe13398_reg_q;

    // c0_exe14399_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14399_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe14399_reg_q <= in_c0_exe14399;
        end
    end

    // out_c0_exe14399(GPOUT,67)
    assign out_c0_exe14399 = c0_exe14399_reg_q;

    // c0_exe15400_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15400_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe15400_reg_q <= in_c0_exe15400;
        end
    end

    // out_c0_exe15400(GPOUT,68)
    assign out_c0_exe15400 = c0_exe15400_reg_q;

    // c0_exe16401_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16401_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe16401_reg_q <= in_c0_exe16401;
        end
    end

    // out_c0_exe16401(GPOUT,69)
    assign out_c0_exe16401 = c0_exe16401_reg_q;

    // c0_exe17402_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17402_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe17402_reg_q <= in_c0_exe17402;
        end
    end

    // out_c0_exe17402(GPOUT,70)
    assign out_c0_exe17402 = c0_exe17402_reg_q;

    // c0_exe18403_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe18403_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe18403_reg_q <= in_c0_exe18403;
        end
    end

    // out_c0_exe18403(GPOUT,71)
    assign out_c0_exe18403 = c0_exe18403_reg_q;

    // c0_exe19404_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19404_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe19404_reg_q <= in_c0_exe19404;
        end
    end

    // out_c0_exe19404(GPOUT,72)
    assign out_c0_exe19404 = c0_exe19404_reg_q;

    // c0_exe20405_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe20405_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe20405_reg_q <= in_c0_exe20405;
        end
    end

    // out_c0_exe20405(GPOUT,73)
    assign out_c0_exe20405 = c0_exe20405_reg_q;

    // c0_exe21406_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe21406_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe21406_reg_q <= in_c0_exe21406;
        end
    end

    // out_c0_exe21406(GPOUT,74)
    assign out_c0_exe21406 = c0_exe21406_reg_q;

    // c0_exe22407_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe22407_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe22407_reg_q <= in_c0_exe22407;
        end
    end

    // out_c0_exe22407(GPOUT,75)
    assign out_c0_exe22407 = c0_exe22407_reg_q;

    // c0_exe23408_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe23408_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe23408_reg_q <= in_c0_exe23408;
        end
    end

    // out_c0_exe23408(GPOUT,76)
    assign out_c0_exe23408 = c0_exe23408_reg_q;

    // c0_exe2387_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2387_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe2387_reg_q <= in_c0_exe2387;
        end
    end

    // out_c0_exe2387(GPOUT,77)
    assign out_c0_exe2387 = c0_exe2387_reg_q;

    // c0_exe24409_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe24409_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe24409_reg_q <= in_c0_exe24409;
        end
    end

    // out_c0_exe24409(GPOUT,78)
    assign out_c0_exe24409 = c0_exe24409_reg_q;

    // c0_exe25410_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe25410_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe25410_reg_q <= in_c0_exe25410;
        end
    end

    // out_c0_exe25410(GPOUT,79)
    assign out_c0_exe25410 = c0_exe25410_reg_q;

    // c0_exe26_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe26_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe26_reg_q <= in_c0_exe26;
        end
    end

    // out_c0_exe26(GPOUT,80)
    assign out_c0_exe26 = c0_exe26_reg_q;

    // c0_exe3388_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3388_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe3388_reg_q <= in_c0_exe3388;
        end
    end

    // out_c0_exe3388(GPOUT,81)
    assign out_c0_exe3388 = c0_exe3388_reg_q;

    // c0_exe4389_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4389_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe4389_reg_q <= in_c0_exe4389;
        end
    end

    // out_c0_exe4389(GPOUT,82)
    assign out_c0_exe4389 = c0_exe4389_reg_q;

    // c0_exe6391_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6391_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe6391_reg_q <= in_c0_exe6391;
        end
    end

    // out_c0_exe6391(GPOUT,83)
    assign out_c0_exe6391 = c0_exe6391_reg_q;

    // c0_exe7392_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7392_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe7392_reg_q <= in_c0_exe7392;
        end
    end

    // out_c0_exe7392(GPOUT,84)
    assign out_c0_exe7392 = c0_exe7392_reg_q;

    // c0_exe8393_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8393_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe8393_reg_q <= in_c0_exe8393;
        end
    end

    // out_c0_exe8393(GPOUT,85)
    assign out_c0_exe8393 = c0_exe8393_reg_q;

    // c0_exe9394_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9394_reg_q <= $unsigned(1'b0);
        end
        else if (kernel_3mm_B4_branch_enable_q == 1'b1)
        begin
            c0_exe9394_reg_q <= in_c0_exe9394;
        end
    end

    // out_c0_exe9394(GPOUT,86)
    assign out_c0_exe9394 = c0_exe9394_reg_q;

    // kernel_3mm_B4_branch_enable_not(LOGICAL,56)
    assign kernel_3mm_B4_branch_enable_not_q = ~ (kernel_3mm_B4_branch_enable_q);

    // out_stall_out(GPOUT,87)
    assign out_stall_out = kernel_3mm_B4_branch_enable_not_q;

    // out_valid_out_0(GPOUT,88)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,89)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
