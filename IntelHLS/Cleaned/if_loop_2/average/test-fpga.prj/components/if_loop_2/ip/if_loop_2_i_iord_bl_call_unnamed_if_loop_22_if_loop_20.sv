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

// SystemVerilog created from i_iord_bl_call_if_loop_2_unnamed_if_loop_22_if_loop_20
// Created for function/kernel if_loop_2
// SystemVerilog created on Tue Jun 13 02:46:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_2_i_iord_bl_call_unnamed_if_loop_22_if_loop_20 (
    output wire [63:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_iord_bl_call_if_loop_2_o_fifoready,
    input wire [127:0] in_iord_bl_call_if_loop_2_i_fifodata,
    input wire [0:0] in_iord_bl_call_if_loop_2_i_fifovalid,
    output wire [0:0] out_iord_bl_call_if_loop_2_o_fifoalmost_full,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_dependence,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c32_0_q;
    wire [127:0] iord_i_fifodata;
    wire [0:0] iord_i_fifoempty;
    wire iord_i_fifoempty_bitsignaltemp;
    wire [0:0] iord_i_fifoendofpacket;
    wire iord_i_fifoendofpacket_bitsignaltemp;
    wire [31:0] iord_i_fifosize;
    wire [0:0] iord_i_fifostartofpacket;
    wire iord_i_fifostartofpacket_bitsignaltemp;
    wire [0:0] iord_i_fifovalid;
    wire iord_i_fifovalid_bitsignaltemp;
    wire [0:0] iord_i_predicate;
    wire iord_i_predicate_bitsignaltemp;
    wire [0:0] iord_i_stall;
    wire iord_i_stall_bitsignaltemp;
    wire [0:0] iord_i_valid;
    wire iord_i_valid_bitsignaltemp;
    wire [127:0] iord_o_data;
    wire [0:0] iord_o_fifoalmost_full;
    wire iord_o_fifoalmost_full_bitsignaltemp;
    wire [0:0] iord_o_fifoready;
    wire iord_o_fifoready_bitsignaltemp;
    wire [0:0] iord_o_stall;
    wire iord_o_stall_bitsignaltemp;
    wire [0:0] iord_o_valid;
    wire iord_o_valid_bitsignaltemp;
    wire [31:0] iord_profile_total_fifo_size_incr;
    wire [63:0] ip_dsdk_adapt_bitselect2_b;
    wire [31:0] ip_dsdk_adapt_bitselect4_b;


    // c32_0(CONSTANT,5)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iord(EXTIFACE,7)
    assign iord_i_fifodata = in_iord_bl_call_if_loop_2_i_fifodata;
    assign iord_i_fifoempty = GND_q;
    assign iord_i_fifoendofpacket = GND_q;
    assign iord_i_fifosize = c32_0_q;
    assign iord_i_fifostartofpacket = GND_q;
    assign iord_i_fifovalid = in_iord_bl_call_if_loop_2_i_fifovalid;
    assign iord_i_predicate = GND_q;
    assign iord_i_stall = in_i_stall;
    assign iord_i_valid = in_i_valid;
    assign iord_i_fifoempty_bitsignaltemp = iord_i_fifoempty[0];
    assign iord_i_fifoendofpacket_bitsignaltemp = iord_i_fifoendofpacket[0];
    assign iord_i_fifostartofpacket_bitsignaltemp = iord_i_fifostartofpacket[0];
    assign iord_i_fifovalid_bitsignaltemp = iord_i_fifovalid[0];
    assign iord_i_predicate_bitsignaltemp = iord_i_predicate[0];
    assign iord_i_stall_bitsignaltemp = iord_i_stall[0];
    assign iord_i_valid_bitsignaltemp = iord_i_valid[0];
    assign iord_o_fifoalmost_full[0] = iord_o_fifoalmost_full_bitsignaltemp;
    assign iord_o_fifoready[0] = iord_o_fifoready_bitsignaltemp;
    assign iord_o_stall[0] = iord_o_stall_bitsignaltemp;
    assign iord_o_valid[0] = iord_o_valid_bitsignaltemp;
    hld_iord #(
        .ADD_CAPACITY_UPSTREAM(0),
        .ALMOST_FULL_CUTOFF_SIDEPATH(0),
        .CAPACITY_FROM_CHANNEL(0),
        .DISCONNECT_UPSTREAM(0),
        .INTER_KERNEL_PIPELINING(0),
        .STAGING_CAPACITY(1),
        .USE_STALL_LATENCY_SIDEPATH(0),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .CUTPATHS(0),
        .DATA_WIDTH(128),
        .EMPTY_WIDTH(0),
        .NON_BLOCKING(0),
        .NO_PREDICATION(1),
        .SYNCHRONIZE_RESET(0)
    ) theiord (
        .i_fifodata(in_iord_bl_call_if_loop_2_i_fifodata),
        .i_fifoempty(iord_i_fifoempty_bitsignaltemp),
        .i_fifoendofpacket(iord_i_fifoendofpacket_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_fifostartofpacket(iord_i_fifostartofpacket_bitsignaltemp),
        .i_fifovalid(iord_i_fifovalid_bitsignaltemp),
        .i_predicate(iord_i_predicate_bitsignaltemp),
        .i_stall(iord_i_stall_bitsignaltemp),
        .i_valid(iord_i_valid_bitsignaltemp),
        .o_data(iord_o_data),
        .o_fifoalmost_full(iord_o_fifoalmost_full_bitsignaltemp),
        .o_fifoready(iord_o_fifoready_bitsignaltemp),
        .o_stall(iord_o_stall_bitsignaltemp),
        .o_valid(iord_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect4(BITSELECT,9)
    assign ip_dsdk_adapt_bitselect4_b = iord_o_data[95:64];

    // ip_dsdk_adapt_bitselect2(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect2_b = iord_o_data[63:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@2
    assign out_o_data_0_tpl = ip_dsdk_adapt_bitselect2_b;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect4_b;
    assign out_o_valid = iord_o_valid;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_iord_bl_call_if_loop_2_o_fifoready = iord_o_fifoready;

    // regfree_osync(GPOUT,14)
    assign out_iord_bl_call_if_loop_2_o_fifoalmost_full = iord_o_fifoalmost_full;

    // sync_out(GPOUT,16)@20000000
    assign out_o_stall = iord_o_stall;

endmodule
