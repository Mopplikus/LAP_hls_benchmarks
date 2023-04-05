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

// SystemVerilog created from bb_bicg_B4
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B4 (
    input wire [63:0] in_c0_exe31081_0,
    input wire [0:0] in_c0_exe72_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_memdep_1_bicg_avm_readdata,
    input wire [0:0] in_memdep_1_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_1_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_1_bicg_avm_writeack,
    input wire [31:0] in_memdep_2_bicg_avm_readdata,
    input wire [0:0] in_memdep_2_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_2_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_2_bicg_avm_writeack,
    input wire [31:0] in_memdep_3_bicg_avm_readdata,
    input wire [0:0] in_memdep_3_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_3_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_3_bicg_avm_writeack,
    input wire [31:0] in_memdep_bicg_avm_readdata,
    input wire [0:0] in_memdep_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_bicg_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_bicg10_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_writeack,
    input wire [63:0] in_unnamed_bicg11_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_writeack,
    input wire [63:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [63:0] in_unnamed_bicg9_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_memdep_1_bicg_avm_address,
    output wire [0:0] out_memdep_1_bicg_avm_burstcount,
    output wire [3:0] out_memdep_1_bicg_avm_byteenable,
    output wire [0:0] out_memdep_1_bicg_avm_enable,
    output wire [0:0] out_memdep_1_bicg_avm_read,
    output wire [0:0] out_memdep_1_bicg_avm_write,
    output wire [31:0] out_memdep_1_bicg_avm_writedata,
    output wire [31:0] out_memdep_2_bicg_avm_address,
    output wire [0:0] out_memdep_2_bicg_avm_burstcount,
    output wire [3:0] out_memdep_2_bicg_avm_byteenable,
    output wire [0:0] out_memdep_2_bicg_avm_enable,
    output wire [0:0] out_memdep_2_bicg_avm_read,
    output wire [0:0] out_memdep_2_bicg_avm_write,
    output wire [31:0] out_memdep_2_bicg_avm_writedata,
    output wire [31:0] out_memdep_3_bicg_avm_address,
    output wire [0:0] out_memdep_3_bicg_avm_burstcount,
    output wire [3:0] out_memdep_3_bicg_avm_byteenable,
    output wire [0:0] out_memdep_3_bicg_avm_enable,
    output wire [0:0] out_memdep_3_bicg_avm_read,
    output wire [0:0] out_memdep_3_bicg_avm_write,
    output wire [31:0] out_memdep_3_bicg_avm_writedata,
    output wire [31:0] out_memdep_bicg_avm_address,
    output wire [0:0] out_memdep_bicg_avm_burstcount,
    output wire [3:0] out_memdep_bicg_avm_byteenable,
    output wire [0:0] out_memdep_bicg_avm_enable,
    output wire [0:0] out_memdep_bicg_avm_read,
    output wire [0:0] out_memdep_bicg_avm_write,
    output wire [31:0] out_memdep_bicg_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [63:0] out_unnamed_bicg10_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg10_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg10_bicg_avm_writedata,
    output wire [63:0] out_unnamed_bicg11_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg11_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg11_bicg_avm_writedata,
    output wire [63:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [63:0] out_unnamed_bicg9_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg9_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg9_bicg_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B4_stall_region_out_c0_exe72;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_write;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_writedata;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_write;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_writedata;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_write;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_writedata;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_stall_region_out_memdep_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_bicg_avm_write;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_bicg_avm_writedata;
    wire [0:0] bb_bicg_B4_stall_region_out_stall_out;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_write;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_writedata;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_write;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_writedata;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_write;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_writedata;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_write;
    wire [63:0] bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_writedata;
    wire [0:0] bb_bicg_B4_stall_region_out_valid_out;
    wire [0:0] bicg_B4_branch_out_stall_out;
    wire [0:0] bicg_B4_branch_out_valid_out_0;
    wire [0:0] bicg_B4_branch_out_valid_out_1;
    wire [63:0] bicg_B4_merge_out_c0_exe31081;
    wire [0:0] bicg_B4_merge_out_c0_exe72;
    wire [0:0] bicg_B4_merge_out_stall_out_0;
    wire [0:0] bicg_B4_merge_out_valid_out;


    // bicg_B4_branch(BLACKBOX,3)
    bicg_B4_branch thebicg_B4_branch (
        .in_c0_exe72(bb_bicg_B4_stall_region_out_c0_exe72),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_bicg_B4_stall_region_out_valid_out),
        .out_stall_out(bicg_B4_branch_out_stall_out),
        .out_valid_out_0(bicg_B4_branch_out_valid_out_0),
        .out_valid_out_1(bicg_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B4_merge(BLACKBOX,4)
    bicg_B4_merge thebicg_B4_merge (
        .in_c0_exe31081_0(in_c0_exe31081_0),
        .in_c0_exe72_0(in_c0_exe72_0),
        .in_stall_in(bb_bicg_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe31081(bicg_B4_merge_out_c0_exe31081),
        .out_c0_exe72(bicg_B4_merge_out_c0_exe72),
        .out_stall_out_0(bicg_B4_merge_out_stall_out_0),
        .out_valid_out(bicg_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B4_stall_region(BLACKBOX,2)
    bicg_bb_B4_stall_region thebb_bicg_B4_stall_region (
        .in_c0_exe31081(bicg_B4_merge_out_c0_exe31081),
        .in_c0_exe72(bicg_B4_merge_out_c0_exe72),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .in_memdep_2_bicg_avm_readdata(in_memdep_2_bicg_avm_readdata),
        .in_memdep_2_bicg_avm_readdatavalid(in_memdep_2_bicg_avm_readdatavalid),
        .in_memdep_2_bicg_avm_waitrequest(in_memdep_2_bicg_avm_waitrequest),
        .in_memdep_2_bicg_avm_writeack(in_memdep_2_bicg_avm_writeack),
        .in_memdep_3_bicg_avm_readdata(in_memdep_3_bicg_avm_readdata),
        .in_memdep_3_bicg_avm_readdatavalid(in_memdep_3_bicg_avm_readdatavalid),
        .in_memdep_3_bicg_avm_waitrequest(in_memdep_3_bicg_avm_waitrequest),
        .in_memdep_3_bicg_avm_writeack(in_memdep_3_bicg_avm_writeack),
        .in_memdep_bicg_avm_readdata(in_memdep_bicg_avm_readdata),
        .in_memdep_bicg_avm_readdatavalid(in_memdep_bicg_avm_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(in_memdep_bicg_avm_waitrequest),
        .in_memdep_bicg_avm_writeack(in_memdep_bicg_avm_writeack),
        .in_stall_in(bicg_B4_branch_out_stall_out),
        .in_unnamed_bicg10_bicg_avm_readdata(in_unnamed_bicg10_bicg_avm_readdata),
        .in_unnamed_bicg10_bicg_avm_readdatavalid(in_unnamed_bicg10_bicg_avm_readdatavalid),
        .in_unnamed_bicg10_bicg_avm_waitrequest(in_unnamed_bicg10_bicg_avm_waitrequest),
        .in_unnamed_bicg10_bicg_avm_writeack(in_unnamed_bicg10_bicg_avm_writeack),
        .in_unnamed_bicg11_bicg_avm_readdata(in_unnamed_bicg11_bicg_avm_readdata),
        .in_unnamed_bicg11_bicg_avm_readdatavalid(in_unnamed_bicg11_bicg_avm_readdatavalid),
        .in_unnamed_bicg11_bicg_avm_waitrequest(in_unnamed_bicg11_bicg_avm_waitrequest),
        .in_unnamed_bicg11_bicg_avm_writeack(in_unnamed_bicg11_bicg_avm_writeack),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .in_unnamed_bicg9_bicg_avm_readdata(in_unnamed_bicg9_bicg_avm_readdata),
        .in_unnamed_bicg9_bicg_avm_readdatavalid(in_unnamed_bicg9_bicg_avm_readdatavalid),
        .in_unnamed_bicg9_bicg_avm_waitrequest(in_unnamed_bicg9_bicg_avm_waitrequest),
        .in_unnamed_bicg9_bicg_avm_writeack(in_unnamed_bicg9_bicg_avm_writeack),
        .in_valid_in(bicg_B4_merge_out_valid_out),
        .out_c0_exe72(bb_bicg_B4_stall_region_out_c0_exe72),
        .out_memdep_1_bicg_avm_address(bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_writedata),
        .out_memdep_2_bicg_avm_address(bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_address),
        .out_memdep_2_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_burstcount),
        .out_memdep_2_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_byteenable),
        .out_memdep_2_bicg_avm_enable(bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_enable),
        .out_memdep_2_bicg_avm_read(bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_read),
        .out_memdep_2_bicg_avm_write(bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_write),
        .out_memdep_2_bicg_avm_writedata(bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_writedata),
        .out_memdep_3_bicg_avm_address(bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_address),
        .out_memdep_3_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_burstcount),
        .out_memdep_3_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_byteenable),
        .out_memdep_3_bicg_avm_enable(bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_enable),
        .out_memdep_3_bicg_avm_read(bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_read),
        .out_memdep_3_bicg_avm_write(bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_write),
        .out_memdep_3_bicg_avm_writedata(bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_writedata),
        .out_memdep_bicg_avm_address(bb_bicg_B4_stall_region_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(bb_bicg_B4_stall_region_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(bb_bicg_B4_stall_region_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(bb_bicg_B4_stall_region_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(bb_bicg_B4_stall_region_out_memdep_bicg_avm_writedata),
        .out_stall_out(bb_bicg_B4_stall_region_out_stall_out),
        .out_unnamed_bicg10_bicg_avm_address(bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_address),
        .out_unnamed_bicg10_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_burstcount),
        .out_unnamed_bicg10_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_byteenable),
        .out_unnamed_bicg10_bicg_avm_enable(bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_enable),
        .out_unnamed_bicg10_bicg_avm_read(bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_read),
        .out_unnamed_bicg10_bicg_avm_write(bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_write),
        .out_unnamed_bicg10_bicg_avm_writedata(bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_writedata),
        .out_unnamed_bicg11_bicg_avm_address(bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_address),
        .out_unnamed_bicg11_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_burstcount),
        .out_unnamed_bicg11_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_byteenable),
        .out_unnamed_bicg11_bicg_avm_enable(bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_enable),
        .out_unnamed_bicg11_bicg_avm_read(bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_read),
        .out_unnamed_bicg11_bicg_avm_write(bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_write),
        .out_unnamed_bicg11_bicg_avm_writedata(bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_writedata),
        .out_unnamed_bicg8_bicg_avm_address(bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_writedata),
        .out_unnamed_bicg9_bicg_avm_address(bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_address),
        .out_unnamed_bicg9_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_burstcount),
        .out_unnamed_bicg9_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_byteenable),
        .out_unnamed_bicg9_bicg_avm_enable(bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_enable),
        .out_unnamed_bicg9_bicg_avm_read(bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_read),
        .out_unnamed_bicg9_bicg_avm_write(bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_write),
        .out_unnamed_bicg9_bicg_avm_writedata(bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_writedata),
        .out_valid_out(bb_bicg_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_memdep_1_bicg_avm_address(GPOUT,47)
    assign out_memdep_1_bicg_avm_address = bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_address;

    // out_memdep_1_bicg_avm_burstcount(GPOUT,48)
    assign out_memdep_1_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_burstcount;

    // out_memdep_1_bicg_avm_byteenable(GPOUT,49)
    assign out_memdep_1_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_byteenable;

    // out_memdep_1_bicg_avm_enable(GPOUT,50)
    assign out_memdep_1_bicg_avm_enable = bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_enable;

    // out_memdep_1_bicg_avm_read(GPOUT,51)
    assign out_memdep_1_bicg_avm_read = bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_read;

    // out_memdep_1_bicg_avm_write(GPOUT,52)
    assign out_memdep_1_bicg_avm_write = bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_write;

    // out_memdep_1_bicg_avm_writedata(GPOUT,53)
    assign out_memdep_1_bicg_avm_writedata = bb_bicg_B4_stall_region_out_memdep_1_bicg_avm_writedata;

    // out_memdep_2_bicg_avm_address(GPOUT,54)
    assign out_memdep_2_bicg_avm_address = bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_address;

    // out_memdep_2_bicg_avm_burstcount(GPOUT,55)
    assign out_memdep_2_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_burstcount;

    // out_memdep_2_bicg_avm_byteenable(GPOUT,56)
    assign out_memdep_2_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_byteenable;

    // out_memdep_2_bicg_avm_enable(GPOUT,57)
    assign out_memdep_2_bicg_avm_enable = bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_enable;

    // out_memdep_2_bicg_avm_read(GPOUT,58)
    assign out_memdep_2_bicg_avm_read = bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_read;

    // out_memdep_2_bicg_avm_write(GPOUT,59)
    assign out_memdep_2_bicg_avm_write = bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_write;

    // out_memdep_2_bicg_avm_writedata(GPOUT,60)
    assign out_memdep_2_bicg_avm_writedata = bb_bicg_B4_stall_region_out_memdep_2_bicg_avm_writedata;

    // out_memdep_3_bicg_avm_address(GPOUT,61)
    assign out_memdep_3_bicg_avm_address = bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_address;

    // out_memdep_3_bicg_avm_burstcount(GPOUT,62)
    assign out_memdep_3_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_burstcount;

    // out_memdep_3_bicg_avm_byteenable(GPOUT,63)
    assign out_memdep_3_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_byteenable;

    // out_memdep_3_bicg_avm_enable(GPOUT,64)
    assign out_memdep_3_bicg_avm_enable = bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_enable;

    // out_memdep_3_bicg_avm_read(GPOUT,65)
    assign out_memdep_3_bicg_avm_read = bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_read;

    // out_memdep_3_bicg_avm_write(GPOUT,66)
    assign out_memdep_3_bicg_avm_write = bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_write;

    // out_memdep_3_bicg_avm_writedata(GPOUT,67)
    assign out_memdep_3_bicg_avm_writedata = bb_bicg_B4_stall_region_out_memdep_3_bicg_avm_writedata;

    // out_memdep_bicg_avm_address(GPOUT,68)
    assign out_memdep_bicg_avm_address = bb_bicg_B4_stall_region_out_memdep_bicg_avm_address;

    // out_memdep_bicg_avm_burstcount(GPOUT,69)
    assign out_memdep_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_memdep_bicg_avm_burstcount;

    // out_memdep_bicg_avm_byteenable(GPOUT,70)
    assign out_memdep_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_memdep_bicg_avm_byteenable;

    // out_memdep_bicg_avm_enable(GPOUT,71)
    assign out_memdep_bicg_avm_enable = bb_bicg_B4_stall_region_out_memdep_bicg_avm_enable;

    // out_memdep_bicg_avm_read(GPOUT,72)
    assign out_memdep_bicg_avm_read = bb_bicg_B4_stall_region_out_memdep_bicg_avm_read;

    // out_memdep_bicg_avm_write(GPOUT,73)
    assign out_memdep_bicg_avm_write = bb_bicg_B4_stall_region_out_memdep_bicg_avm_write;

    // out_memdep_bicg_avm_writedata(GPOUT,74)
    assign out_memdep_bicg_avm_writedata = bb_bicg_B4_stall_region_out_memdep_bicg_avm_writedata;

    // out_stall_in_0(GPOUT,75)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,76)
    assign out_stall_out_0 = bicg_B4_merge_out_stall_out_0;

    // out_unnamed_bicg10_bicg_avm_address(GPOUT,77)
    assign out_unnamed_bicg10_bicg_avm_address = bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_address;

    // out_unnamed_bicg10_bicg_avm_burstcount(GPOUT,78)
    assign out_unnamed_bicg10_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_burstcount;

    // out_unnamed_bicg10_bicg_avm_byteenable(GPOUT,79)
    assign out_unnamed_bicg10_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_byteenable;

    // out_unnamed_bicg10_bicg_avm_enable(GPOUT,80)
    assign out_unnamed_bicg10_bicg_avm_enable = bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_enable;

    // out_unnamed_bicg10_bicg_avm_read(GPOUT,81)
    assign out_unnamed_bicg10_bicg_avm_read = bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_read;

    // out_unnamed_bicg10_bicg_avm_write(GPOUT,82)
    assign out_unnamed_bicg10_bicg_avm_write = bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_write;

    // out_unnamed_bicg10_bicg_avm_writedata(GPOUT,83)
    assign out_unnamed_bicg10_bicg_avm_writedata = bb_bicg_B4_stall_region_out_unnamed_bicg10_bicg_avm_writedata;

    // out_unnamed_bicg11_bicg_avm_address(GPOUT,84)
    assign out_unnamed_bicg11_bicg_avm_address = bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_address;

    // out_unnamed_bicg11_bicg_avm_burstcount(GPOUT,85)
    assign out_unnamed_bicg11_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_burstcount;

    // out_unnamed_bicg11_bicg_avm_byteenable(GPOUT,86)
    assign out_unnamed_bicg11_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_byteenable;

    // out_unnamed_bicg11_bicg_avm_enable(GPOUT,87)
    assign out_unnamed_bicg11_bicg_avm_enable = bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_enable;

    // out_unnamed_bicg11_bicg_avm_read(GPOUT,88)
    assign out_unnamed_bicg11_bicg_avm_read = bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_read;

    // out_unnamed_bicg11_bicg_avm_write(GPOUT,89)
    assign out_unnamed_bicg11_bicg_avm_write = bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_write;

    // out_unnamed_bicg11_bicg_avm_writedata(GPOUT,90)
    assign out_unnamed_bicg11_bicg_avm_writedata = bb_bicg_B4_stall_region_out_unnamed_bicg11_bicg_avm_writedata;

    // out_unnamed_bicg8_bicg_avm_address(GPOUT,91)
    assign out_unnamed_bicg8_bicg_avm_address = bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_address;

    // out_unnamed_bicg8_bicg_avm_burstcount(GPOUT,92)
    assign out_unnamed_bicg8_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_burstcount;

    // out_unnamed_bicg8_bicg_avm_byteenable(GPOUT,93)
    assign out_unnamed_bicg8_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_byteenable;

    // out_unnamed_bicg8_bicg_avm_enable(GPOUT,94)
    assign out_unnamed_bicg8_bicg_avm_enable = bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_enable;

    // out_unnamed_bicg8_bicg_avm_read(GPOUT,95)
    assign out_unnamed_bicg8_bicg_avm_read = bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_read;

    // out_unnamed_bicg8_bicg_avm_write(GPOUT,96)
    assign out_unnamed_bicg8_bicg_avm_write = bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_write;

    // out_unnamed_bicg8_bicg_avm_writedata(GPOUT,97)
    assign out_unnamed_bicg8_bicg_avm_writedata = bb_bicg_B4_stall_region_out_unnamed_bicg8_bicg_avm_writedata;

    // out_unnamed_bicg9_bicg_avm_address(GPOUT,98)
    assign out_unnamed_bicg9_bicg_avm_address = bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_address;

    // out_unnamed_bicg9_bicg_avm_burstcount(GPOUT,99)
    assign out_unnamed_bicg9_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_burstcount;

    // out_unnamed_bicg9_bicg_avm_byteenable(GPOUT,100)
    assign out_unnamed_bicg9_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_byteenable;

    // out_unnamed_bicg9_bicg_avm_enable(GPOUT,101)
    assign out_unnamed_bicg9_bicg_avm_enable = bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_enable;

    // out_unnamed_bicg9_bicg_avm_read(GPOUT,102)
    assign out_unnamed_bicg9_bicg_avm_read = bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_read;

    // out_unnamed_bicg9_bicg_avm_write(GPOUT,103)
    assign out_unnamed_bicg9_bicg_avm_write = bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_write;

    // out_unnamed_bicg9_bicg_avm_writedata(GPOUT,104)
    assign out_unnamed_bicg9_bicg_avm_writedata = bb_bicg_B4_stall_region_out_unnamed_bicg9_bicg_avm_writedata;

    // out_valid_out_0(GPOUT,105)
    assign out_valid_out_0 = bicg_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,106)
    assign out_valid_out_1 = bicg_B4_branch_out_valid_out_1;

endmodule
