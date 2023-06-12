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

// SystemVerilog created from covariance_B5_branch
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B5_branch (
    input wire [0:0] in_c0_exe10235,
    input wire [31:0] in_c0_exe11236,
    input wire [0:0] in_c0_exe12237,
    input wire [63:0] in_c0_exe1226,
    input wire [0:0] in_c0_exe13,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe2227,
    input wire [31:0] in_c0_exe3228,
    input wire [0:0] in_c0_exe5230,
    input wire [31:0] in_c0_exe6231,
    input wire [0:0] in_c0_exe7232,
    input wire [0:0] in_c0_exe8233,
    input wire [0:0] in_c0_exe9234,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10235,
    output wire [31:0] out_c0_exe11236,
    output wire [0:0] out_c0_exe12237,
    output wire [63:0] out_c0_exe1226,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe2227,
    output wire [31:0] out_c0_exe3228,
    output wire [31:0] out_c0_exe6231,
    output wire [0:0] out_c0_exe7232,
    output wire [0:0] out_c0_exe8233,
    output wire [0:0] out_c0_exe9234,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10235_reg_q;
    reg [31:0] c0_exe11236_reg_q;
    reg [0:0] c0_exe12237_reg_q;
    reg [63:0] c0_exe1226_reg_q;
    reg [0:0] c0_exe13_reg_q;
    reg [0:0] c0_exe14_reg_q;
    reg [0:0] c0_exe2227_reg_q;
    reg [31:0] c0_exe3228_reg_q;
    wire [0:0] c0_exe5230_cmp_q;
    reg [31:0] c0_exe6231_reg_q;
    reg [0:0] c0_exe7232_reg_q;
    reg [0:0] c0_exe8233_reg_q;
    reg [0:0] c0_exe9234_reg_q;
    wire [0:0] covariance_B5_branch_enable_q;
    wire [0:0] covariance_B5_branch_enable_not_q;
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
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,34)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe5230_cmp(LOGICAL,10)
    assign c0_exe5230_cmp_q = ~ (in_c0_exe5230);

    // valid_out_1_and(LOGICAL,57)
    assign valid_out_1_and_q = in_valid_in & c0_exe5230_cmp_q;

    // valid_1_reg(REG,55)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,36)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,38)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,33)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,56)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe5230;

    // valid_0_reg(REG,54)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,35)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,37)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // covariance_B5_branch_enable(LOGICAL,15)
    assign covariance_B5_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10235_reg(REG,2)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe10235_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe10235_reg_q <= in_c0_exe10235;
        end
    end

    // out_c0_exe10235(GPOUT,39)
    assign out_c0_exe10235 = c0_exe10235_reg_q;

    // c0_exe11236_reg(REG,3)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe11236_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe11236_reg_q <= in_c0_exe11236;
        end
    end

    // out_c0_exe11236(GPOUT,40)
    assign out_c0_exe11236 = c0_exe11236_reg_q;

    // c0_exe12237_reg(REG,4)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe12237_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe12237_reg_q <= in_c0_exe12237;
        end
    end

    // out_c0_exe12237(GPOUT,41)
    assign out_c0_exe12237 = c0_exe12237_reg_q;

    // c0_exe1226_reg(REG,5)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe1226_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe1226_reg_q <= in_c0_exe1226;
        end
    end

    // out_c0_exe1226(GPOUT,42)
    assign out_c0_exe1226 = c0_exe1226_reg_q;

    // c0_exe13_reg(REG,6)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe13_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe13_reg_q <= in_c0_exe13;
        end
    end

    // out_c0_exe13(GPOUT,43)
    assign out_c0_exe13 = c0_exe13_reg_q;

    // c0_exe14_reg(REG,7)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe14_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe14_reg_q <= in_c0_exe14;
        end
    end

    // out_c0_exe14(GPOUT,44)
    assign out_c0_exe14 = c0_exe14_reg_q;

    // c0_exe2227_reg(REG,8)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe2227_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe2227_reg_q <= in_c0_exe2227;
        end
    end

    // out_c0_exe2227(GPOUT,45)
    assign out_c0_exe2227 = c0_exe2227_reg_q;

    // c0_exe3228_reg(REG,9)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe3228_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe3228_reg_q <= in_c0_exe3228;
        end
    end

    // out_c0_exe3228(GPOUT,46)
    assign out_c0_exe3228 = c0_exe3228_reg_q;

    // c0_exe6231_reg(REG,11)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe6231_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe6231_reg_q <= in_c0_exe6231;
        end
    end

    // out_c0_exe6231(GPOUT,47)
    assign out_c0_exe6231 = c0_exe6231_reg_q;

    // c0_exe7232_reg(REG,12)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe7232_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe7232_reg_q <= in_c0_exe7232;
        end
    end

    // out_c0_exe7232(GPOUT,48)
    assign out_c0_exe7232 = c0_exe7232_reg_q;

    // c0_exe8233_reg(REG,13)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe8233_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe8233_reg_q <= in_c0_exe8233;
        end
    end

    // out_c0_exe8233(GPOUT,49)
    assign out_c0_exe8233 = c0_exe8233_reg_q;

    // c0_exe9234_reg(REG,14)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe9234_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B5_branch_enable_q == 1'b1)
        begin
            c0_exe9234_reg_q <= in_c0_exe9234;
        end
    end

    // out_c0_exe9234(GPOUT,50)
    assign out_c0_exe9234 = c0_exe9234_reg_q;

    // covariance_B5_branch_enable_not(LOGICAL,16)
    assign covariance_B5_branch_enable_not_q = ~ (covariance_B5_branch_enable_q);

    // out_stall_out(GPOUT,51)
    assign out_stall_out = covariance_B5_branch_enable_not_q;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,53)
    assign out_valid_out_1 = valid_1_reg_q;

    // rst_sync(RESETSYNC,58)
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
