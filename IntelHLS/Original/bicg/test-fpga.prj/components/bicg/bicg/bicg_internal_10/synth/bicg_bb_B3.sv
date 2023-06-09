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

// SystemVerilog created from bb_bicg_B3
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr 26 14:15:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B3 (
    input wire [0:0] in_feedback_almost_empty_in_11,
    input wire [0:0] in_feedback_data_in_11,
    input wire [0:0] in_feedback_empty_in_11,
    output wire [0:0] out_feedback_stall_out_11,
    input wire [0:0] in_flush,
    input wire [0:0] in_memdep_phi3_pop829_0,
    input wire [0:0] in_memdep_phi_pop726_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_bicg2_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe10,
    output wire [63:0] out_c0_exe153,
    output wire [63:0] out_c0_exe254,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi2_pop11,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_bicg2_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg2_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg2_bicg_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B3_stall_region_out_almost_empty_out;
    wire [0:0] bb_bicg_B3_stall_region_out_c0_exe10;
    wire [63:0] bb_bicg_B3_stall_region_out_c0_exe153;
    wire [63:0] bb_bicg_B3_stall_region_out_c0_exe254;
    wire [0:0] bb_bicg_B3_stall_region_out_c0_exe3;
    wire [31:0] bb_bicg_B3_stall_region_out_c0_exe4;
    wire [0:0] bb_bicg_B3_stall_region_out_c0_exe5;
    wire [0:0] bb_bicg_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_bicg_B3_stall_region_out_c0_exe7;
    wire [0:0] bb_bicg_B3_stall_region_out_c0_exe9;
    wire [0:0] bb_bicg_B3_stall_region_out_empty_out;
    wire [0:0] bb_bicg_B3_stall_region_out_feedback_stall_out_11;
    wire [0:0] bb_bicg_B3_stall_region_out_memdep_phi2_pop11;
    wire [0:0] bb_bicg_B3_stall_region_out_stall_out;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_address;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_read;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_write;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_writedata;
    wire [0:0] bb_bicg_B3_stall_region_out_valid_out;
    wire [0:0] bicg_B3_branch_out_c0_exe10;
    wire [63:0] bicg_B3_branch_out_c0_exe153;
    wire [63:0] bicg_B3_branch_out_c0_exe254;
    wire [0:0] bicg_B3_branch_out_c0_exe3;
    wire [31:0] bicg_B3_branch_out_c0_exe4;
    wire [0:0] bicg_B3_branch_out_c0_exe5;
    wire [0:0] bicg_B3_branch_out_c0_exe6;
    wire [0:0] bicg_B3_branch_out_c0_exe7;
    wire [0:0] bicg_B3_branch_out_c0_exe9;
    wire [0:0] bicg_B3_branch_out_memdep_phi2_pop11;
    wire [0:0] bicg_B3_branch_out_stall_out;
    wire [0:0] bicg_B3_branch_out_valid_out_0;
    wire [0:0] bicg_B3_merge_out_almost_empty_out;
    wire [0:0] bicg_B3_merge_out_empty_out;
    wire [0:0] bicg_B3_merge_out_memdep_phi3_pop829;
    wire [0:0] bicg_B3_merge_out_memdep_phi_pop726;
    wire [0:0] bicg_B3_merge_out_stall_out_0;
    wire [0:0] bicg_B3_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // bicg_B3_branch(BLACKBOX,3)
    bicg_B3_branch thebicg_B3_branch (
        .in_almost_empty_in(bb_bicg_B3_stall_region_out_almost_empty_out),
        .in_c0_exe10(bb_bicg_B3_stall_region_out_c0_exe10),
        .in_c0_exe153(bb_bicg_B3_stall_region_out_c0_exe153),
        .in_c0_exe254(bb_bicg_B3_stall_region_out_c0_exe254),
        .in_c0_exe3(bb_bicg_B3_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_bicg_B3_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_bicg_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_bicg_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_bicg_B3_stall_region_out_c0_exe7),
        .in_c0_exe9(bb_bicg_B3_stall_region_out_c0_exe9),
        .in_empty_in(bb_bicg_B3_stall_region_out_empty_out),
        .in_memdep_phi2_pop11(bb_bicg_B3_stall_region_out_memdep_phi2_pop11),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_bicg_B3_stall_region_out_valid_out),
        .out_c0_exe10(bicg_B3_branch_out_c0_exe10),
        .out_c0_exe153(bicg_B3_branch_out_c0_exe153),
        .out_c0_exe254(bicg_B3_branch_out_c0_exe254),
        .out_c0_exe3(bicg_B3_branch_out_c0_exe3),
        .out_c0_exe4(bicg_B3_branch_out_c0_exe4),
        .out_c0_exe5(bicg_B3_branch_out_c0_exe5),
        .out_c0_exe6(bicg_B3_branch_out_c0_exe6),
        .out_c0_exe7(bicg_B3_branch_out_c0_exe7),
        .out_c0_exe9(bicg_B3_branch_out_c0_exe9),
        .out_memdep_phi2_pop11(bicg_B3_branch_out_memdep_phi2_pop11),
        .out_stall_out(bicg_B3_branch_out_stall_out),
        .out_valid_out_0(bicg_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B3_merge(BLACKBOX,4)
    bicg_B3_merge thebicg_B3_merge (
        .in_memdep_phi3_pop829_0(in_memdep_phi3_pop829_0),
        .in_memdep_phi_pop726_0(in_memdep_phi_pop726_0),
        .in_stall_in(bb_bicg_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(bicg_B3_merge_out_almost_empty_out),
        .out_empty_out(bicg_B3_merge_out_empty_out),
        .out_memdep_phi3_pop829(bicg_B3_merge_out_memdep_phi3_pop829),
        .out_memdep_phi_pop726(bicg_B3_merge_out_memdep_phi_pop726),
        .out_stall_out_0(bicg_B3_merge_out_stall_out_0),
        .out_valid_out(bicg_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B3_stall_region(BLACKBOX,2)
    bicg_bb_B3_stall_region thebb_bicg_B3_stall_region (
        .in_almost_empty_in(bicg_B3_merge_out_almost_empty_out),
        .in_empty_in(bicg_B3_merge_out_empty_out),
        .in_feedback_almost_empty_in_11(in_feedback_almost_empty_in_11),
        .in_feedback_data_in_11(in_feedback_data_in_11),
        .in_feedback_empty_in_11(in_feedback_empty_in_11),
        .in_flush(in_flush),
        .in_memdep_phi3_pop829(bicg_B3_merge_out_memdep_phi3_pop829),
        .in_memdep_phi_pop726(bicg_B3_merge_out_memdep_phi_pop726),
        .in_stall_in(bicg_B3_branch_out_stall_out),
        .in_unnamed_bicg2_bicg_avm_readdata(in_unnamed_bicg2_bicg_avm_readdata),
        .in_unnamed_bicg2_bicg_avm_readdatavalid(in_unnamed_bicg2_bicg_avm_readdatavalid),
        .in_unnamed_bicg2_bicg_avm_waitrequest(in_unnamed_bicg2_bicg_avm_waitrequest),
        .in_unnamed_bicg2_bicg_avm_writeack(in_unnamed_bicg2_bicg_avm_writeack),
        .in_valid_in(bicg_B3_merge_out_valid_out),
        .out_almost_empty_out(bb_bicg_B3_stall_region_out_almost_empty_out),
        .out_c0_exe10(bb_bicg_B3_stall_region_out_c0_exe10),
        .out_c0_exe153(bb_bicg_B3_stall_region_out_c0_exe153),
        .out_c0_exe254(bb_bicg_B3_stall_region_out_c0_exe254),
        .out_c0_exe3(bb_bicg_B3_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_bicg_B3_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_bicg_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_bicg_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_bicg_B3_stall_region_out_c0_exe7),
        .out_c0_exe9(bb_bicg_B3_stall_region_out_c0_exe9),
        .out_empty_out(bb_bicg_B3_stall_region_out_empty_out),
        .out_feedback_stall_out_11(bb_bicg_B3_stall_region_out_feedback_stall_out_11),
        .out_memdep_phi2_pop11(bb_bicg_B3_stall_region_out_memdep_phi2_pop11),
        .out_stall_out(bb_bicg_B3_stall_region_out_stall_out),
        .out_unnamed_bicg2_bicg_avm_address(bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_address),
        .out_unnamed_bicg2_bicg_avm_burstcount(bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_burstcount),
        .out_unnamed_bicg2_bicg_avm_byteenable(bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_byteenable),
        .out_unnamed_bicg2_bicg_avm_enable(bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_enable),
        .out_unnamed_bicg2_bicg_avm_read(bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_read),
        .out_unnamed_bicg2_bicg_avm_write(bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_write),
        .out_unnamed_bicg2_bicg_avm_writedata(bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_writedata),
        .out_valid_out(bb_bicg_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_11_sync(GPOUT,8)
    assign out_feedback_stall_out_11 = bb_bicg_B3_stall_region_out_feedback_stall_out_11;

    // out_c0_exe10(GPOUT,18)
    assign out_c0_exe10 = bicg_B3_branch_out_c0_exe10;

    // out_c0_exe153(GPOUT,19)
    assign out_c0_exe153 = bicg_B3_branch_out_c0_exe153;

    // out_c0_exe254(GPOUT,20)
    assign out_c0_exe254 = bicg_B3_branch_out_c0_exe254;

    // out_c0_exe3(GPOUT,21)
    assign out_c0_exe3 = bicg_B3_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,22)
    assign out_c0_exe4 = bicg_B3_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,23)
    assign out_c0_exe5 = bicg_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,24)
    assign out_c0_exe6 = bicg_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,25)
    assign out_c0_exe7 = bicg_B3_branch_out_c0_exe7;

    // out_c0_exe9(GPOUT,26)
    assign out_c0_exe9 = bicg_B3_branch_out_c0_exe9;

    // out_memdep_phi2_pop11(GPOUT,27)
    assign out_memdep_phi2_pop11 = bicg_B3_branch_out_memdep_phi2_pop11;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = bicg_B3_merge_out_stall_out_0;

    // out_unnamed_bicg2_bicg_avm_address(GPOUT,29)
    assign out_unnamed_bicg2_bicg_avm_address = bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_address;

    // out_unnamed_bicg2_bicg_avm_burstcount(GPOUT,30)
    assign out_unnamed_bicg2_bicg_avm_burstcount = bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_burstcount;

    // out_unnamed_bicg2_bicg_avm_byteenable(GPOUT,31)
    assign out_unnamed_bicg2_bicg_avm_byteenable = bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_byteenable;

    // out_unnamed_bicg2_bicg_avm_enable(GPOUT,32)
    assign out_unnamed_bicg2_bicg_avm_enable = bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_enable;

    // out_unnamed_bicg2_bicg_avm_read(GPOUT,33)
    assign out_unnamed_bicg2_bicg_avm_read = bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_read;

    // out_unnamed_bicg2_bicg_avm_write(GPOUT,34)
    assign out_unnamed_bicg2_bicg_avm_write = bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_write;

    // out_unnamed_bicg2_bicg_avm_writedata(GPOUT,35)
    assign out_unnamed_bicg2_bicg_avm_writedata = bb_bicg_B3_stall_region_out_unnamed_bicg2_bicg_avm_writedata;

    // out_valid_in_0(GPOUT,36)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = bicg_B3_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,38)
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
