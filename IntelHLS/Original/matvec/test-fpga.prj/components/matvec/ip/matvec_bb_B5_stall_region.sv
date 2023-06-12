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

// SystemVerilog created from bb_matvec_B5_stall_region
// Created for function/kernel matvec
// SystemVerilog created on Thu Apr 27 14:29:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_bb_B5_stall_region (
    input wire [0:0] in_iowr_bl_return_matvec_i_fifoready,
    output wire [0:0] out_iowr_bl_return_matvec_o_fifodata,
    output wire [0:0] out_iowr_bl_return_matvec_o_fifovalid,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_iowr_bl_return_matvec_o_fifodata;
    wire [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_iowr_bl_return_matvec_o_fifovalid;
    wire [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty;
    wire [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty;
    wire [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_stall;
    wire [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid;
    wire [0:0] SE_out_i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_temp_back_stall;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_V4;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V3;
    wire [0:0] merged_in_SE_stall_entry_V5;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg0_q;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg1_q;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty_reg1_q;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty_reg0_q;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty_reg1_q;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty_reg0_q;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid_reg1_q;
    reg [0:0] i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty_reg0(REG,30)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty_reg0_q <= $unsigned(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty);
        end
    end

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty_reg1(REG,29)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty_reg1_q <= $unsigned(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty_reg0_q);
        end
    end

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty_reg0(REG,32)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty_reg0_q <= $unsigned(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty);
        end
    end

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty_reg1(REG,31)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty_reg1_q <= $unsigned(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty_reg0_q);
        end
    end

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid_reg0(REG,34)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid_reg0_q <= $unsigned(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid);
        end
    end

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid_reg1(REG,33)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid_reg1_q <= $unsigned(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid_reg0_q);
        end
    end

    // SE_out_i_iowr_bl_return_matvec_unnamed_matvec7_matvec0(STALLENABLE,19)
    assign SE_out_i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_backStall = $unsigned(1'b0);

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg0(REG,27)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg0_q <= $unsigned(SE_out_i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_backStall);
        end
    end

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg1(REG,28)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg1_q <= $unsigned(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // stall_entry_frontAlmostEmpty_reg0(REG,42)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,41)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,40)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,39)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,38)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,37)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,26)
    // Desync
    assign merged_in_SE_stall_entry_temp_back_stall = in_stall_in | i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_stall;
    assign merged_in_SE_stall_entry_backStall = merged_in_SE_stall_entry_temp_back_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V4 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V1 = merged_in_SE_stall_entry_V0;
    assign merged_in_SE_stall_entry_V3 = merged_in_SE_stall_entry_V2;
    assign merged_in_SE_stall_entry_V5 = merged_in_SE_stall_entry_V4;

    // i_iowr_bl_return_matvec_unnamed_matvec7_matvec0(BLACKBOX,7)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_matvec_o_fifodata@20000000
    // out out_iowr_bl_return_matvec_o_fifovalid@20000000
    // out out_o_ack@24
    // out out_o_almost_empty@24
    // out out_o_empty@24
    // out out_o_stall@20000000
    // out out_o_valid@24
    matvec_i_iowr_bl_return_unnamed_matvec7_matvec0 thei_iowr_bl_return_matvec_unnamed_matvec7_matvec0 (
        .in_almost_empty_in(merged_in_SE_stall_entry_V5),
        .in_empty_in(merged_in_SE_stall_entry_V3),
        .in_i_data(GND_q),
        .in_i_stall(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V1),
        .in_iowr_bl_return_matvec_i_fifoready(in_iowr_bl_return_matvec_i_fifoready),
        .out_iowr_bl_return_matvec_o_fifodata(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_iowr_bl_return_matvec_o_fifodata),
        .out_iowr_bl_return_matvec_o_fifovalid(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_iowr_bl_return_matvec_o_fifovalid),
        .out_o_ack(),
        .out_o_almost_empty(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_almost_empty),
        .out_o_empty(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_empty),
        .out_o_stall(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_stall),
        .out_o_valid(i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_matvec_o_fifodata = i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_iowr_bl_return_matvec_o_fifodata;
    assign out_iowr_bl_return_matvec_o_fifovalid = i_iowr_bl_return_matvec_unnamed_matvec7_matvec0_out_iowr_bl_return_matvec_o_fifovalid;

    // stall_entry_frontStall_reg0(REG,35)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,36)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,13)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_sync_out_x(GPOUT,15)@0
    assign out_almost_empty_out = merged_in_SE_stall_entry_V4;
    assign out_empty_out = merged_in_SE_stall_entry_V2;
    assign out_valid_out = merged_in_SE_stall_entry_V0;

    // rst_sync(RESETSYNC,43)
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
