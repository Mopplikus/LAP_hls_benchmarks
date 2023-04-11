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

// SystemVerilog created from bb_kernel_3mm_B12
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B12 (
    input wire [63:0] in_arrayidx817268_0,
    input wire [63:0] in_arrayidx817268_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_252_pop30117_pop45265_0,
    input wire [31:0] in_i_252_pop30117_pop45265_1,
    input wire [31:0] in_i_252_pop30261_0,
    input wire [31:0] in_i_252_pop30261_1,
    input wire [63:0] in_idxprom78266_0,
    input wire [63:0] in_idxprom78266_1,
    input wire [63:0] in_idxprom80267_0,
    input wire [63:0] in_idxprom80267_1,
    input wire [0:0] in_memdep_phi7_pop21104_pop31264_0,
    input wire [0:0] in_memdep_phi7_pop21104_pop31264_1,
    input wire [0:0] in_memdep_phi7_pop21105_pop43269_0,
    input wire [0:0] in_memdep_phi7_pop21105_pop43269_1,
    input wire [0:0] in_memdep_phi7_pop21254_0,
    input wire [0:0] in_memdep_phi7_pop21254_1,
    input wire [0:0] in_notcmp26270_0,
    input wire [0:0] in_notcmp26270_1,
    input wire [0:0] in_notcmp31115_pop44271_0,
    input wire [0:0] in_notcmp31115_pop44271_1,
    input wire [0:0] in_notcmp31258_0,
    input wire [0:0] in_notcmp31258_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm11_0,
    input wire [31:0] in_unnamed_kernel_3mm11_1,
    input wire [31:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2612,
    output wire [31:0] out_c0_exe4614,
    output wire [0:0] out_c0_exe6616,
    output wire [63:0] out_c0_exe7617,
    output wire [0:0] out_c0_exe8618,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe2612;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_c0_exe4614;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe5615;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe6616;
    wire [63:0] bb_kernel_3mm_B12_stall_region_out_c0_exe7617;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe8618;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B12_branch_out_c0_exe2612;
    wire [31:0] kernel_3mm_B12_branch_out_c0_exe4614;
    wire [0:0] kernel_3mm_B12_branch_out_c0_exe6616;
    wire [63:0] kernel_3mm_B12_branch_out_c0_exe7617;
    wire [0:0] kernel_3mm_B12_branch_out_c0_exe8618;
    wire [0:0] kernel_3mm_B12_branch_out_stall_out;
    wire [0:0] kernel_3mm_B12_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B12_branch_out_valid_out_1;
    wire [63:0] kernel_3mm_B12_merge_out_arrayidx817268;
    wire [0:0] kernel_3mm_B12_merge_out_forked;
    wire [31:0] kernel_3mm_B12_merge_out_i_252_pop30117_pop45265;
    wire [31:0] kernel_3mm_B12_merge_out_i_252_pop30261;
    wire [63:0] kernel_3mm_B12_merge_out_idxprom78266;
    wire [63:0] kernel_3mm_B12_merge_out_idxprom80267;
    wire [0:0] kernel_3mm_B12_merge_out_memdep_phi7_pop21104_pop31264;
    wire [0:0] kernel_3mm_B12_merge_out_memdep_phi7_pop21105_pop43269;
    wire [0:0] kernel_3mm_B12_merge_out_memdep_phi7_pop21254;
    wire [0:0] kernel_3mm_B12_merge_out_notcmp26270;
    wire [0:0] kernel_3mm_B12_merge_out_notcmp31115_pop44271;
    wire [0:0] kernel_3mm_B12_merge_out_notcmp31258;
    wire [0:0] kernel_3mm_B12_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B12_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B12_merge_out_unnamed_kernel_3mm11;
    wire [0:0] kernel_3mm_B12_merge_out_valid_out;


    // kernel_3mm_B12_merge(BLACKBOX,43)
    kernel_3mm_B12_merge thekernel_3mm_B12_merge (
        .in_arrayidx817268_0(in_arrayidx817268_0),
        .in_arrayidx817268_1(in_arrayidx817268_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i_252_pop30117_pop45265_0(in_i_252_pop30117_pop45265_0),
        .in_i_252_pop30117_pop45265_1(in_i_252_pop30117_pop45265_1),
        .in_i_252_pop30261_0(in_i_252_pop30261_0),
        .in_i_252_pop30261_1(in_i_252_pop30261_1),
        .in_idxprom78266_0(in_idxprom78266_0),
        .in_idxprom78266_1(in_idxprom78266_1),
        .in_idxprom80267_0(in_idxprom80267_0),
        .in_idxprom80267_1(in_idxprom80267_1),
        .in_memdep_phi7_pop21104_pop31264_0(in_memdep_phi7_pop21104_pop31264_0),
        .in_memdep_phi7_pop21104_pop31264_1(in_memdep_phi7_pop21104_pop31264_1),
        .in_memdep_phi7_pop21105_pop43269_0(in_memdep_phi7_pop21105_pop43269_0),
        .in_memdep_phi7_pop21105_pop43269_1(in_memdep_phi7_pop21105_pop43269_1),
        .in_memdep_phi7_pop21254_0(in_memdep_phi7_pop21254_0),
        .in_memdep_phi7_pop21254_1(in_memdep_phi7_pop21254_1),
        .in_notcmp26270_0(in_notcmp26270_0),
        .in_notcmp26270_1(in_notcmp26270_1),
        .in_notcmp31115_pop44271_0(in_notcmp31115_pop44271_0),
        .in_notcmp31115_pop44271_1(in_notcmp31115_pop44271_1),
        .in_notcmp31258_0(in_notcmp31258_0),
        .in_notcmp31258_1(in_notcmp31258_1),
        .in_stall_in(bb_kernel_3mm_B12_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm11_0(in_unnamed_kernel_3mm11_0),
        .in_unnamed_kernel_3mm11_1(in_unnamed_kernel_3mm11_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx817268(kernel_3mm_B12_merge_out_arrayidx817268),
        .out_forked(kernel_3mm_B12_merge_out_forked),
        .out_i_252_pop30117_pop45265(kernel_3mm_B12_merge_out_i_252_pop30117_pop45265),
        .out_i_252_pop30261(kernel_3mm_B12_merge_out_i_252_pop30261),
        .out_idxprom78266(kernel_3mm_B12_merge_out_idxprom78266),
        .out_idxprom80267(kernel_3mm_B12_merge_out_idxprom80267),
        .out_memdep_phi7_pop21104_pop31264(kernel_3mm_B12_merge_out_memdep_phi7_pop21104_pop31264),
        .out_memdep_phi7_pop21105_pop43269(kernel_3mm_B12_merge_out_memdep_phi7_pop21105_pop43269),
        .out_memdep_phi7_pop21254(kernel_3mm_B12_merge_out_memdep_phi7_pop21254),
        .out_notcmp26270(kernel_3mm_B12_merge_out_notcmp26270),
        .out_notcmp31115_pop44271(kernel_3mm_B12_merge_out_notcmp31115_pop44271),
        .out_notcmp31258(kernel_3mm_B12_merge_out_notcmp31258),
        .out_stall_out_0(kernel_3mm_B12_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B12_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm11(kernel_3mm_B12_merge_out_unnamed_kernel_3mm11),
        .out_valid_out(kernel_3mm_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B12_stall_region thebb_kernel_3mm_B12_stall_region (
        .in_arrayidx817268(kernel_3mm_B12_merge_out_arrayidx817268),
        .in_flush(in_flush),
        .in_forked(kernel_3mm_B12_merge_out_forked),
        .in_i_252_pop30117_pop45265(kernel_3mm_B12_merge_out_i_252_pop30117_pop45265),
        .in_i_252_pop30261(kernel_3mm_B12_merge_out_i_252_pop30261),
        .in_idxprom78266(kernel_3mm_B12_merge_out_idxprom78266),
        .in_idxprom80267(kernel_3mm_B12_merge_out_idxprom80267),
        .in_memdep_phi7_pop21104_pop31264(kernel_3mm_B12_merge_out_memdep_phi7_pop21104_pop31264),
        .in_memdep_phi7_pop21105_pop43269(kernel_3mm_B12_merge_out_memdep_phi7_pop21105_pop43269),
        .in_memdep_phi7_pop21254(kernel_3mm_B12_merge_out_memdep_phi7_pop21254),
        .in_notcmp26270(kernel_3mm_B12_merge_out_notcmp26270),
        .in_notcmp31115_pop44271(kernel_3mm_B12_merge_out_notcmp31115_pop44271),
        .in_notcmp31258(kernel_3mm_B12_merge_out_notcmp31258),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B12_branch_out_stall_out),
        .in_unnamed_kernel_3mm11(kernel_3mm_B12_merge_out_unnamed_kernel_3mm11),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out),
        .out_c0_exe2612(bb_kernel_3mm_B12_stall_region_out_c0_exe2612),
        .out_c0_exe4614(bb_kernel_3mm_B12_stall_region_out_c0_exe4614),
        .out_c0_exe5615(bb_kernel_3mm_B12_stall_region_out_c0_exe5615),
        .out_c0_exe6616(bb_kernel_3mm_B12_stall_region_out_c0_exe6616),
        .out_c0_exe7617(bb_kernel_3mm_B12_stall_region_out_c0_exe7617),
        .out_c0_exe8618(bb_kernel_3mm_B12_stall_region_out_c0_exe8618),
        .out_pipeline_valid_out(bb_kernel_3mm_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B12_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B12_branch(BLACKBOX,42)
    kernel_3mm_B12_branch thekernel_3mm_B12_branch (
        .in_c0_exe2612(bb_kernel_3mm_B12_stall_region_out_c0_exe2612),
        .in_c0_exe4614(bb_kernel_3mm_B12_stall_region_out_c0_exe4614),
        .in_c0_exe5615(bb_kernel_3mm_B12_stall_region_out_c0_exe5615),
        .in_c0_exe6616(bb_kernel_3mm_B12_stall_region_out_c0_exe6616),
        .in_c0_exe7617(bb_kernel_3mm_B12_stall_region_out_c0_exe7617),
        .in_c0_exe8618(bb_kernel_3mm_B12_stall_region_out_c0_exe8618),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B12_stall_region_out_valid_out),
        .out_c0_exe2612(kernel_3mm_B12_branch_out_c0_exe2612),
        .out_c0_exe4614(kernel_3mm_B12_branch_out_c0_exe4614),
        .out_c0_exe6616(kernel_3mm_B12_branch_out_c0_exe6616),
        .out_c0_exe7617(kernel_3mm_B12_branch_out_c0_exe7617),
        .out_c0_exe8618(kernel_3mm_B12_branch_out_c0_exe8618),
        .out_stall_out(kernel_3mm_B12_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B12_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2612(GPOUT,44)
    assign out_c0_exe2612 = kernel_3mm_B12_branch_out_c0_exe2612;

    // out_c0_exe4614(GPOUT,45)
    assign out_c0_exe4614 = kernel_3mm_B12_branch_out_c0_exe4614;

    // out_c0_exe6616(GPOUT,46)
    assign out_c0_exe6616 = kernel_3mm_B12_branch_out_c0_exe6616;

    // out_c0_exe7617(GPOUT,47)
    assign out_c0_exe7617 = kernel_3mm_B12_branch_out_c0_exe7617;

    // out_c0_exe8618(GPOUT,48)
    assign out_c0_exe8618 = kernel_3mm_B12_branch_out_c0_exe8618;

    // out_exiting_stall_out(GPOUT,49)
    assign out_exiting_stall_out = bb_kernel_3mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,50)
    assign out_exiting_valid_out = bb_kernel_3mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,51)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = kernel_3mm_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,53)
    assign out_stall_out_1 = kernel_3mm_B12_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_address(GPOUT,54)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(GPOUT,55)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(GPOUT,56)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(GPOUT,57)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_read(GPOUT,58)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_write(GPOUT,59)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(GPOUT,60)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_address(GPOUT,61)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(GPOUT,62)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(GPOUT,63)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(GPOUT,64)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_read(GPOUT,65)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_write(GPOUT,66)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(GPOUT,67)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,68)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,69)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,70)
    assign out_valid_out_0 = kernel_3mm_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,71)
    assign out_valid_out_1 = kernel_3mm_B12_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,73)
    assign out_pipeline_valid_out = bb_kernel_3mm_B12_stall_region_out_pipeline_valid_out;

endmodule
