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

// SystemVerilog created from bb_stencil_2d_B7
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B7 (
    output wire [0:0] out_feedback_out_17,
    input wire [0:0] in_feedback_stall_in_17,
    output wire [0:0] out_feedback_valid_out_17,
    input wire [0:0] in_c0_exe102845_0,
    input wire [0:0] in_c0_exe112858_0,
    input wire [0:0] in_c0_exe1228610_0,
    input wire [0:0] in_c0_exe1328712_0,
    input wire [31:0] in_c0_exe1428814_0,
    input wire [31:0] in_c0_exe92832_0,
    input wire [31:0] in_c1_exe117_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_memdep_stencil_2d_avm_readdata,
    input wire [0:0] in_memdep_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_memdep_stencil_2d_avm_waitrequest,
    input wire [0:0] in_memdep_stencil_2d_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe102845,
    output wire [0:0] out_c0_exe112858,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_stencil_2d_avm_address,
    output wire [0:0] out_memdep_stencil_2d_avm_burstcount,
    output wire [7:0] out_memdep_stencil_2d_avm_byteenable,
    output wire [0:0] out_memdep_stencil_2d_avm_enable,
    output wire [0:0] out_memdep_stencil_2d_avm_read,
    output wire [0:0] out_memdep_stencil_2d_avm_write,
    output wire [63:0] out_memdep_stencil_2d_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B7_stall_region_out_c0_exe102845;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_c0_exe112858;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_c0_exe1328712;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_feedback_out_17;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_feedback_valid_out_17;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_memdep;
    wire [63:0] bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_burstcount;
    wire [7:0] bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_write;
    wire [63:0] bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B7_branch_out_c0_exe102845;
    wire [0:0] stencil_2d_B7_branch_out_c0_exe112858;
    wire [0:0] stencil_2d_B7_branch_out_memdep;
    wire [0:0] stencil_2d_B7_branch_out_stall_out;
    wire [0:0] stencil_2d_B7_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B7_branch_out_valid_out_1;
    wire [0:0] stencil_2d_B7_merge_out_c0_exe102845;
    wire [0:0] stencil_2d_B7_merge_out_c0_exe112858;
    wire [0:0] stencil_2d_B7_merge_out_c0_exe1228610;
    wire [0:0] stencil_2d_B7_merge_out_c0_exe1328712;
    wire [31:0] stencil_2d_B7_merge_out_c0_exe1428814;
    wire [31:0] stencil_2d_B7_merge_out_c0_exe92832;
    wire [31:0] stencil_2d_B7_merge_out_c1_exe117;
    wire [0:0] stencil_2d_B7_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B7_merge_out_valid_out;


    // stencil_2d_B7_branch(BLACKBOX,37)
    stencil_2d_B7_branch thestencil_2d_B7_branch (
        .in_c0_exe102845(bb_stencil_2d_B7_stall_region_out_c0_exe102845),
        .in_c0_exe112858(bb_stencil_2d_B7_stall_region_out_c0_exe112858),
        .in_c0_exe1328712(bb_stencil_2d_B7_stall_region_out_c0_exe1328712),
        .in_memdep(bb_stencil_2d_B7_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B7_stall_region_out_valid_out),
        .out_c0_exe102845(stencil_2d_B7_branch_out_c0_exe102845),
        .out_c0_exe112858(stencil_2d_B7_branch_out_c0_exe112858),
        .out_memdep(stencil_2d_B7_branch_out_memdep),
        .out_stall_out(stencil_2d_B7_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B7_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B7_merge(BLACKBOX,38)
    stencil_2d_B7_merge thestencil_2d_B7_merge (
        .in_c0_exe102845_0(in_c0_exe102845_0),
        .in_c0_exe112858_0(in_c0_exe112858_0),
        .in_c0_exe1228610_0(in_c0_exe1228610_0),
        .in_c0_exe1328712_0(in_c0_exe1328712_0),
        .in_c0_exe1428814_0(in_c0_exe1428814_0),
        .in_c0_exe92832_0(in_c0_exe92832_0),
        .in_c1_exe117_0(in_c1_exe117_0),
        .in_stall_in(bb_stencil_2d_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe102845(stencil_2d_B7_merge_out_c0_exe102845),
        .out_c0_exe112858(stencil_2d_B7_merge_out_c0_exe112858),
        .out_c0_exe1228610(stencil_2d_B7_merge_out_c0_exe1228610),
        .out_c0_exe1328712(stencil_2d_B7_merge_out_c0_exe1328712),
        .out_c0_exe1428814(stencil_2d_B7_merge_out_c0_exe1428814),
        .out_c0_exe92832(stencil_2d_B7_merge_out_c0_exe92832),
        .out_c1_exe117(stencil_2d_B7_merge_out_c1_exe117),
        .out_stall_out_0(stencil_2d_B7_merge_out_stall_out_0),
        .out_valid_out(stencil_2d_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7_stall_region(BLACKBOX,2)
    stencil_2d_bb_B7_stall_region thebb_stencil_2d_B7_stall_region (
        .in_c0_exe102845(stencil_2d_B7_merge_out_c0_exe102845),
        .in_c0_exe112858(stencil_2d_B7_merge_out_c0_exe112858),
        .in_c0_exe1228610(stencil_2d_B7_merge_out_c0_exe1228610),
        .in_c0_exe1328712(stencil_2d_B7_merge_out_c0_exe1328712),
        .in_c0_exe1428814(stencil_2d_B7_merge_out_c0_exe1428814),
        .in_c0_exe92832(stencil_2d_B7_merge_out_c0_exe92832),
        .in_c1_exe117(stencil_2d_B7_merge_out_c1_exe117),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_memdep_stencil_2d_avm_readdata(in_memdep_stencil_2d_avm_readdata),
        .in_memdep_stencil_2d_avm_readdatavalid(in_memdep_stencil_2d_avm_readdatavalid),
        .in_memdep_stencil_2d_avm_waitrequest(in_memdep_stencil_2d_avm_waitrequest),
        .in_memdep_stencil_2d_avm_writeack(in_memdep_stencil_2d_avm_writeack),
        .in_stall_in(stencil_2d_B7_branch_out_stall_out),
        .in_valid_in(stencil_2d_B7_merge_out_valid_out),
        .out_c0_exe102845(bb_stencil_2d_B7_stall_region_out_c0_exe102845),
        .out_c0_exe112858(bb_stencil_2d_B7_stall_region_out_c0_exe112858),
        .out_c0_exe1328712(bb_stencil_2d_B7_stall_region_out_c0_exe1328712),
        .out_feedback_out_17(bb_stencil_2d_B7_stall_region_out_feedback_out_17),
        .out_feedback_valid_out_17(bb_stencil_2d_B7_stall_region_out_feedback_valid_out_17),
        .out_lsu_memdep_o_active(bb_stencil_2d_B7_stall_region_out_lsu_memdep_o_active),
        .out_memdep(bb_stencil_2d_B7_stall_region_out_memdep),
        .out_memdep_stencil_2d_avm_address(bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_address),
        .out_memdep_stencil_2d_avm_burstcount(bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_burstcount),
        .out_memdep_stencil_2d_avm_byteenable(bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_byteenable),
        .out_memdep_stencil_2d_avm_enable(bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_enable),
        .out_memdep_stencil_2d_avm_read(bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_read),
        .out_memdep_stencil_2d_avm_write(bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_write),
        .out_memdep_stencil_2d_avm_writedata(bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_writedata),
        .out_stall_out(bb_stencil_2d_B7_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_17_sync(GPOUT,3)
    assign out_feedback_out_17 = bb_stencil_2d_B7_stall_region_out_feedback_out_17;

    // feedback_valid_out_17_sync(GPOUT,5)
    assign out_feedback_valid_out_17 = bb_stencil_2d_B7_stall_region_out_feedback_valid_out_17;

    // out_c0_exe102845(GPOUT,22)
    assign out_c0_exe102845 = stencil_2d_B7_branch_out_c0_exe102845;

    // out_c0_exe112858(GPOUT,23)
    assign out_c0_exe112858 = stencil_2d_B7_branch_out_c0_exe112858;

    // out_lsu_memdep_o_active(GPOUT,24)
    assign out_lsu_memdep_o_active = bb_stencil_2d_B7_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,25)
    assign out_memdep = stencil_2d_B7_branch_out_memdep;

    // out_memdep_stencil_2d_avm_address(GPOUT,26)
    assign out_memdep_stencil_2d_avm_address = bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_address;

    // out_memdep_stencil_2d_avm_burstcount(GPOUT,27)
    assign out_memdep_stencil_2d_avm_burstcount = bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_burstcount;

    // out_memdep_stencil_2d_avm_byteenable(GPOUT,28)
    assign out_memdep_stencil_2d_avm_byteenable = bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_byteenable;

    // out_memdep_stencil_2d_avm_enable(GPOUT,29)
    assign out_memdep_stencil_2d_avm_enable = bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_enable;

    // out_memdep_stencil_2d_avm_read(GPOUT,30)
    assign out_memdep_stencil_2d_avm_read = bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_read;

    // out_memdep_stencil_2d_avm_write(GPOUT,31)
    assign out_memdep_stencil_2d_avm_write = bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_write;

    // out_memdep_stencil_2d_avm_writedata(GPOUT,32)
    assign out_memdep_stencil_2d_avm_writedata = bb_stencil_2d_B7_stall_region_out_memdep_stencil_2d_avm_writedata;

    // out_stall_in_0(GPOUT,33)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = stencil_2d_B7_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = stencil_2d_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,36)
    assign out_valid_out_1 = stencil_2d_B7_branch_out_valid_out_1;

endmodule
