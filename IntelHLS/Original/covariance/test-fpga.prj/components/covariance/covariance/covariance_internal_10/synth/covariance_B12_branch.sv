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
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B12_branch (
    input wire [0:0] in_c0_exe10422,
    input wire [0:0] in_c0_exe11423,
    input wire [0:0] in_c0_exe12424,
    input wire [63:0] in_c0_exe1413,
    input wire [63:0] in_c0_exe2414,
    input wire [0:0] in_c0_exe4416,
    input wire [31:0] in_c0_exe5417,
    input wire [0:0] in_c0_exe7419,
    input wire [31:0] in_c0_exe8420,
    input wire [31:0] in_c0_exe9421,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10422,
    output wire [0:0] out_c0_exe11423,
    output wire [0:0] out_c0_exe12424,
    output wire [63:0] out_c0_exe1413,
    output wire [63:0] out_c0_exe2414,
    output wire [0:0] out_c0_exe4416,
    output wire [31:0] out_c0_exe5417,
    output wire [31:0] out_c0_exe8420,
    output wire [31:0] out_c0_exe9421,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10422_reg_q;
    reg [0:0] c0_exe11423_reg_q;
    reg [0:0] c0_exe12424_reg_q;
    reg [63:0] c0_exe1413_reg_q;
    reg [63:0] c0_exe2414_reg_q;
    reg [0:0] c0_exe4416_reg_q;
    reg [31:0] c0_exe5417_reg_q;
    wire [0:0] c0_exe7419_cmp_q;
    reg [31:0] c0_exe8420_reg_q;
    reg [31:0] c0_exe9421_reg_q;
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
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,28)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe7419_cmp(LOGICAL,9)
    assign c0_exe7419_cmp_q = ~ (in_c0_exe7419);

    // valid_out_1_and(LOGICAL,48)
    assign valid_out_1_and_q = in_valid_in & c0_exe7419_cmp_q;

    // valid_1_reg(REG,46)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
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
    assign valid_out_0_and_q = in_valid_in & in_c0_exe7419;

    // valid_0_reg(REG,45)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
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

    // c0_exe10422_reg(REG,2)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe10422_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe10422_reg_q <= in_c0_exe10422;
        end
    end

    // out_c0_exe10422(GPOUT,33)
    assign out_c0_exe10422 = c0_exe10422_reg_q;

    // c0_exe11423_reg(REG,3)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe11423_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe11423_reg_q <= in_c0_exe11423;
        end
    end

    // out_c0_exe11423(GPOUT,34)
    assign out_c0_exe11423 = c0_exe11423_reg_q;

    // c0_exe12424_reg(REG,4)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe12424_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe12424_reg_q <= in_c0_exe12424;
        end
    end

    // out_c0_exe12424(GPOUT,35)
    assign out_c0_exe12424 = c0_exe12424_reg_q;

    // c0_exe1413_reg(REG,5)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe1413_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe1413_reg_q <= in_c0_exe1413;
        end
    end

    // out_c0_exe1413(GPOUT,36)
    assign out_c0_exe1413 = c0_exe1413_reg_q;

    // c0_exe2414_reg(REG,6)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe2414_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe2414_reg_q <= in_c0_exe2414;
        end
    end

    // out_c0_exe2414(GPOUT,37)
    assign out_c0_exe2414 = c0_exe2414_reg_q;

    // c0_exe4416_reg(REG,7)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe4416_reg_q <= $unsigned(1'b0);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe4416_reg_q <= in_c0_exe4416;
        end
    end

    // out_c0_exe4416(GPOUT,38)
    assign out_c0_exe4416 = c0_exe4416_reg_q;

    // c0_exe5417_reg(REG,8)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe5417_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe5417_reg_q <= in_c0_exe5417;
        end
    end

    // out_c0_exe5417(GPOUT,39)
    assign out_c0_exe5417 = c0_exe5417_reg_q;

    // c0_exe8420_reg(REG,10)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe8420_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe8420_reg_q <= in_c0_exe8420;
        end
    end

    // out_c0_exe8420(GPOUT,40)
    assign out_c0_exe8420 = c0_exe8420_reg_q;

    // c0_exe9421_reg(REG,11)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe9421_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (covariance_B12_branch_enable_q == 1'b1)
        begin
            c0_exe9421_reg_q <= in_c0_exe9421;
        end
    end

    // out_c0_exe9421(GPOUT,41)
    assign out_c0_exe9421 = c0_exe9421_reg_q;

    // covariance_B12_branch_enable_not(LOGICAL,13)
    assign covariance_B12_branch_enable_not_q = ~ (covariance_B12_branch_enable_q);

    // out_stall_out(GPOUT,42)
    assign out_stall_out = covariance_B12_branch_enable_not_q;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,44)
    assign out_valid_out_1 = valid_1_reg_q;

    // rst_sync(RESETSYNC,49)
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
