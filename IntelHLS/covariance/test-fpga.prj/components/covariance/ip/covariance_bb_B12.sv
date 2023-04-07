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

// SystemVerilog created from bb_covariance_B12
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B12 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked23184_0,
    input wire [0:0] in_forked23184_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [32:0] in_fpga_indvars_iv14_pop28171_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28171_1,
    input wire [31:0] in_i24_034_pop29104_pop62190_0,
    input wire [31:0] in_i24_034_pop29104_pop62190_1,
    input wire [31:0] in_i24_034_pop29177_0,
    input wire [31:0] in_i24_034_pop29177_1,
    input wire [31:0] in_j28_033_pop58186_0,
    input wire [31:0] in_j28_033_pop58186_1,
    input wire [31:0] in_lim_ext77_pop49163_0,
    input wire [31:0] in_lim_ext77_pop49163_1,
    input wire [31:0] in_lim_ext78_pop30180_0,
    input wire [31:0] in_lim_ext78_pop30180_1,
    input wire [31:0] in_lim_ext79_pop59187_0,
    input wire [31:0] in_lim_ext79_pop59187_1,
    input wire [0:0] in_notcmp22185_0,
    input wire [0:0] in_notcmp22185_1,
    input wire [0:0] in_notcmp27102_pop61189_0,
    input wire [0:0] in_notcmp27102_pop61189_1,
    input wire [0:0] in_notcmp27174_0,
    input wire [0:0] in_notcmp27174_1,
    input wire [31:0] in_reorder_limiter_enter132_0,
    input wire [31:0] in_reorder_limiter_enter132_1,
    input wire [31:0] in_reorder_limiter_enter91_pop31183_0,
    input wire [31:0] in_reorder_limiter_enter91_pop31183_1,
    input wire [31:0] in_reorder_limiter_enter92_pop60188_0,
    input wire [31:0] in_reorder_limiter_enter92_pop60188_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance5_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10434,
    output wire [0:0] out_c0_exe11435,
    output wire [0:0] out_c0_exe12436,
    output wire [63:0] out_c0_exe2426,
    output wire [63:0] out_c0_exe3427,
    output wire [0:0] out_c0_exe4428,
    output wire [31:0] out_c0_exe6430,
    output wire [31:0] out_c0_exe8432,
    output wire [31:0] out_c0_exe9433,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance5_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance5_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance5_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe10434;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe11435;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe12436;
    wire [63:0] bb_covariance_B12_stall_region_out_c0_exe2426;
    wire [63:0] bb_covariance_B12_stall_region_out_c0_exe3427;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe4428;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe6430;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe7431;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe8432;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe9433;
    wire [0:0] bb_covariance_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B12_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_address;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_read;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_write;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_writedata;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_writedata;
    wire [0:0] bb_covariance_B12_stall_region_out_valid_out;
    wire [0:0] covariance_B12_branch_out_c0_exe10434;
    wire [0:0] covariance_B12_branch_out_c0_exe11435;
    wire [0:0] covariance_B12_branch_out_c0_exe12436;
    wire [63:0] covariance_B12_branch_out_c0_exe2426;
    wire [63:0] covariance_B12_branch_out_c0_exe3427;
    wire [0:0] covariance_B12_branch_out_c0_exe4428;
    wire [31:0] covariance_B12_branch_out_c0_exe6430;
    wire [31:0] covariance_B12_branch_out_c0_exe8432;
    wire [31:0] covariance_B12_branch_out_c0_exe9433;
    wire [0:0] covariance_B12_branch_out_stall_out;
    wire [0:0] covariance_B12_branch_out_valid_out_0;
    wire [0:0] covariance_B12_branch_out_valid_out_1;
    wire [0:0] covariance_B12_merge_out_forked;
    wire [0:0] covariance_B12_merge_out_forked23184;
    wire [32:0] covariance_B12_merge_out_fpga_indvars_iv14_pop28171;
    wire [31:0] covariance_B12_merge_out_i24_034_pop29104_pop62190;
    wire [31:0] covariance_B12_merge_out_i24_034_pop29177;
    wire [31:0] covariance_B12_merge_out_j28_033_pop58186;
    wire [31:0] covariance_B12_merge_out_lim_ext77_pop49163;
    wire [31:0] covariance_B12_merge_out_lim_ext78_pop30180;
    wire [31:0] covariance_B12_merge_out_lim_ext79_pop59187;
    wire [0:0] covariance_B12_merge_out_notcmp22185;
    wire [0:0] covariance_B12_merge_out_notcmp27102_pop61189;
    wire [0:0] covariance_B12_merge_out_notcmp27174;
    wire [31:0] covariance_B12_merge_out_reorder_limiter_enter132;
    wire [31:0] covariance_B12_merge_out_reorder_limiter_enter91_pop31183;
    wire [31:0] covariance_B12_merge_out_reorder_limiter_enter92_pop60188;
    wire [0:0] covariance_B12_merge_out_stall_out_0;
    wire [0:0] covariance_B12_merge_out_stall_out_1;
    wire [0:0] covariance_B12_merge_out_valid_out;


    // covariance_B12_merge(BLACKBOX,4)
    covariance_B12_merge thecovariance_B12_merge (
        .in_forked23184_0(in_forked23184_0),
        .in_forked23184_1(in_forked23184_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_fpga_indvars_iv14_pop28171_0(in_fpga_indvars_iv14_pop28171_0),
        .in_fpga_indvars_iv14_pop28171_1(in_fpga_indvars_iv14_pop28171_1),
        .in_i24_034_pop29104_pop62190_0(in_i24_034_pop29104_pop62190_0),
        .in_i24_034_pop29104_pop62190_1(in_i24_034_pop29104_pop62190_1),
        .in_i24_034_pop29177_0(in_i24_034_pop29177_0),
        .in_i24_034_pop29177_1(in_i24_034_pop29177_1),
        .in_j28_033_pop58186_0(in_j28_033_pop58186_0),
        .in_j28_033_pop58186_1(in_j28_033_pop58186_1),
        .in_lim_ext77_pop49163_0(in_lim_ext77_pop49163_0),
        .in_lim_ext77_pop49163_1(in_lim_ext77_pop49163_1),
        .in_lim_ext78_pop30180_0(in_lim_ext78_pop30180_0),
        .in_lim_ext78_pop30180_1(in_lim_ext78_pop30180_1),
        .in_lim_ext79_pop59187_0(in_lim_ext79_pop59187_0),
        .in_lim_ext79_pop59187_1(in_lim_ext79_pop59187_1),
        .in_notcmp22185_0(in_notcmp22185_0),
        .in_notcmp22185_1(in_notcmp22185_1),
        .in_notcmp27102_pop61189_0(in_notcmp27102_pop61189_0),
        .in_notcmp27102_pop61189_1(in_notcmp27102_pop61189_1),
        .in_notcmp27174_0(in_notcmp27174_0),
        .in_notcmp27174_1(in_notcmp27174_1),
        .in_reorder_limiter_enter132_0(in_reorder_limiter_enter132_0),
        .in_reorder_limiter_enter132_1(in_reorder_limiter_enter132_1),
        .in_reorder_limiter_enter91_pop31183_0(in_reorder_limiter_enter91_pop31183_0),
        .in_reorder_limiter_enter91_pop31183_1(in_reorder_limiter_enter91_pop31183_1),
        .in_reorder_limiter_enter92_pop60188_0(in_reorder_limiter_enter92_pop60188_0),
        .in_reorder_limiter_enter92_pop60188_1(in_reorder_limiter_enter92_pop60188_1),
        .in_stall_in(bb_covariance_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(covariance_B12_merge_out_forked),
        .out_forked23184(covariance_B12_merge_out_forked23184),
        .out_fpga_indvars_iv14_pop28171(covariance_B12_merge_out_fpga_indvars_iv14_pop28171),
        .out_i24_034_pop29104_pop62190(covariance_B12_merge_out_i24_034_pop29104_pop62190),
        .out_i24_034_pop29177(covariance_B12_merge_out_i24_034_pop29177),
        .out_j28_033_pop58186(covariance_B12_merge_out_j28_033_pop58186),
        .out_lim_ext77_pop49163(covariance_B12_merge_out_lim_ext77_pop49163),
        .out_lim_ext78_pop30180(covariance_B12_merge_out_lim_ext78_pop30180),
        .out_lim_ext79_pop59187(covariance_B12_merge_out_lim_ext79_pop59187),
        .out_notcmp22185(covariance_B12_merge_out_notcmp22185),
        .out_notcmp27102_pop61189(covariance_B12_merge_out_notcmp27102_pop61189),
        .out_notcmp27174(covariance_B12_merge_out_notcmp27174),
        .out_reorder_limiter_enter132(covariance_B12_merge_out_reorder_limiter_enter132),
        .out_reorder_limiter_enter91_pop31183(covariance_B12_merge_out_reorder_limiter_enter91_pop31183),
        .out_reorder_limiter_enter92_pop60188(covariance_B12_merge_out_reorder_limiter_enter92_pop60188),
        .out_stall_out_0(covariance_B12_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B12_merge_out_stall_out_1),
        .out_valid_out(covariance_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_stall_region(BLACKBOX,2)
    covariance_bb_B12_stall_region thebb_covariance_B12_stall_region (
        .in_flush(in_flush),
        .in_forked(covariance_B12_merge_out_forked),
        .in_forked23184(covariance_B12_merge_out_forked23184),
        .in_fpga_indvars_iv14_pop28171(covariance_B12_merge_out_fpga_indvars_iv14_pop28171),
        .in_i24_034_pop29104_pop62190(covariance_B12_merge_out_i24_034_pop29104_pop62190),
        .in_i24_034_pop29177(covariance_B12_merge_out_i24_034_pop29177),
        .in_j28_033_pop58186(covariance_B12_merge_out_j28_033_pop58186),
        .in_lim_ext77_pop49163(covariance_B12_merge_out_lim_ext77_pop49163),
        .in_lim_ext78_pop30180(covariance_B12_merge_out_lim_ext78_pop30180),
        .in_lim_ext79_pop59187(covariance_B12_merge_out_lim_ext79_pop59187),
        .in_notcmp22185(covariance_B12_merge_out_notcmp22185),
        .in_notcmp27102_pop61189(covariance_B12_merge_out_notcmp27102_pop61189),
        .in_notcmp27174(covariance_B12_merge_out_notcmp27174),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter132(covariance_B12_merge_out_reorder_limiter_enter132),
        .in_reorder_limiter_enter91_pop31183(covariance_B12_merge_out_reorder_limiter_enter91_pop31183),
        .in_reorder_limiter_enter92_pop60188(covariance_B12_merge_out_reorder_limiter_enter92_pop60188),
        .in_stall_in(covariance_B12_branch_out_stall_out),
        .in_unnamed_covariance5_covariance_avm_readdata(in_unnamed_covariance5_covariance_avm_readdata),
        .in_unnamed_covariance5_covariance_avm_readdatavalid(in_unnamed_covariance5_covariance_avm_readdatavalid),
        .in_unnamed_covariance5_covariance_avm_waitrequest(in_unnamed_covariance5_covariance_avm_waitrequest),
        .in_unnamed_covariance5_covariance_avm_writeack(in_unnamed_covariance5_covariance_avm_writeack),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .in_valid_in(covariance_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out(bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out(bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out),
        .out_c0_exe10434(bb_covariance_B12_stall_region_out_c0_exe10434),
        .out_c0_exe11435(bb_covariance_B12_stall_region_out_c0_exe11435),
        .out_c0_exe12436(bb_covariance_B12_stall_region_out_c0_exe12436),
        .out_c0_exe2426(bb_covariance_B12_stall_region_out_c0_exe2426),
        .out_c0_exe3427(bb_covariance_B12_stall_region_out_c0_exe3427),
        .out_c0_exe4428(bb_covariance_B12_stall_region_out_c0_exe4428),
        .out_c0_exe6430(bb_covariance_B12_stall_region_out_c0_exe6430),
        .out_c0_exe7431(bb_covariance_B12_stall_region_out_c0_exe7431),
        .out_c0_exe8432(bb_covariance_B12_stall_region_out_c0_exe8432),
        .out_c0_exe9433(bb_covariance_B12_stall_region_out_c0_exe9433),
        .out_pipeline_valid_out(bb_covariance_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B12_stall_region_out_stall_out),
        .out_unnamed_covariance5_covariance_avm_address(bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_address),
        .out_unnamed_covariance5_covariance_avm_burstcount(bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_burstcount),
        .out_unnamed_covariance5_covariance_avm_byteenable(bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_byteenable),
        .out_unnamed_covariance5_covariance_avm_enable(bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_enable),
        .out_unnamed_covariance5_covariance_avm_read(bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_read),
        .out_unnamed_covariance5_covariance_avm_write(bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_write),
        .out_unnamed_covariance5_covariance_avm_writedata(bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_writedata),
        .out_unnamed_covariance6_covariance_avm_address(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B12_branch(BLACKBOX,3)
    covariance_B12_branch thecovariance_B12_branch (
        .in_c0_exe10434(bb_covariance_B12_stall_region_out_c0_exe10434),
        .in_c0_exe11435(bb_covariance_B12_stall_region_out_c0_exe11435),
        .in_c0_exe12436(bb_covariance_B12_stall_region_out_c0_exe12436),
        .in_c0_exe2426(bb_covariance_B12_stall_region_out_c0_exe2426),
        .in_c0_exe3427(bb_covariance_B12_stall_region_out_c0_exe3427),
        .in_c0_exe4428(bb_covariance_B12_stall_region_out_c0_exe4428),
        .in_c0_exe6430(bb_covariance_B12_stall_region_out_c0_exe6430),
        .in_c0_exe7431(bb_covariance_B12_stall_region_out_c0_exe7431),
        .in_c0_exe8432(bb_covariance_B12_stall_region_out_c0_exe8432),
        .in_c0_exe9433(bb_covariance_B12_stall_region_out_c0_exe9433),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B12_stall_region_out_valid_out),
        .out_c0_exe10434(covariance_B12_branch_out_c0_exe10434),
        .out_c0_exe11435(covariance_B12_branch_out_c0_exe11435),
        .out_c0_exe12436(covariance_B12_branch_out_c0_exe12436),
        .out_c0_exe2426(covariance_B12_branch_out_c0_exe2426),
        .out_c0_exe3427(covariance_B12_branch_out_c0_exe3427),
        .out_c0_exe4428(covariance_B12_branch_out_c0_exe4428),
        .out_c0_exe6430(covariance_B12_branch_out_c0_exe6430),
        .out_c0_exe8432(covariance_B12_branch_out_c0_exe8432),
        .out_c0_exe9433(covariance_B12_branch_out_c0_exe9433),
        .out_stall_out(covariance_B12_branch_out_stall_out),
        .out_valid_out_0(covariance_B12_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10434(GPOUT,48)
    assign out_c0_exe10434 = covariance_B12_branch_out_c0_exe10434;

    // out_c0_exe11435(GPOUT,49)
    assign out_c0_exe11435 = covariance_B12_branch_out_c0_exe11435;

    // out_c0_exe12436(GPOUT,50)
    assign out_c0_exe12436 = covariance_B12_branch_out_c0_exe12436;

    // out_c0_exe2426(GPOUT,51)
    assign out_c0_exe2426 = covariance_B12_branch_out_c0_exe2426;

    // out_c0_exe3427(GPOUT,52)
    assign out_c0_exe3427 = covariance_B12_branch_out_c0_exe3427;

    // out_c0_exe4428(GPOUT,53)
    assign out_c0_exe4428 = covariance_B12_branch_out_c0_exe4428;

    // out_c0_exe6430(GPOUT,54)
    assign out_c0_exe6430 = covariance_B12_branch_out_c0_exe6430;

    // out_c0_exe8432(GPOUT,55)
    assign out_c0_exe8432 = covariance_B12_branch_out_c0_exe8432;

    // out_c0_exe9433(GPOUT,56)
    assign out_c0_exe9433 = covariance_B12_branch_out_c0_exe9433;

    // out_exiting_stall_out(GPOUT,57)
    assign out_exiting_stall_out = bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,58)
    assign out_exiting_valid_out = bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out;

    // out_stall_in_0(GPOUT,59)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,60)
    assign out_stall_out_0 = covariance_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,61)
    assign out_stall_out_1 = covariance_B12_merge_out_stall_out_1;

    // out_unnamed_covariance5_covariance_avm_address(GPOUT,62)
    assign out_unnamed_covariance5_covariance_avm_address = bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_address;

    // out_unnamed_covariance5_covariance_avm_burstcount(GPOUT,63)
    assign out_unnamed_covariance5_covariance_avm_burstcount = bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_burstcount;

    // out_unnamed_covariance5_covariance_avm_byteenable(GPOUT,64)
    assign out_unnamed_covariance5_covariance_avm_byteenable = bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_byteenable;

    // out_unnamed_covariance5_covariance_avm_enable(GPOUT,65)
    assign out_unnamed_covariance5_covariance_avm_enable = bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_enable;

    // out_unnamed_covariance5_covariance_avm_read(GPOUT,66)
    assign out_unnamed_covariance5_covariance_avm_read = bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_read;

    // out_unnamed_covariance5_covariance_avm_write(GPOUT,67)
    assign out_unnamed_covariance5_covariance_avm_write = bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_write;

    // out_unnamed_covariance5_covariance_avm_writedata(GPOUT,68)
    assign out_unnamed_covariance5_covariance_avm_writedata = bb_covariance_B12_stall_region_out_unnamed_covariance5_covariance_avm_writedata;

    // out_unnamed_covariance6_covariance_avm_address(GPOUT,69)
    assign out_unnamed_covariance6_covariance_avm_address = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_address;

    // out_unnamed_covariance6_covariance_avm_burstcount(GPOUT,70)
    assign out_unnamed_covariance6_covariance_avm_burstcount = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_burstcount;

    // out_unnamed_covariance6_covariance_avm_byteenable(GPOUT,71)
    assign out_unnamed_covariance6_covariance_avm_byteenable = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_byteenable;

    // out_unnamed_covariance6_covariance_avm_enable(GPOUT,72)
    assign out_unnamed_covariance6_covariance_avm_enable = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_enable;

    // out_unnamed_covariance6_covariance_avm_read(GPOUT,73)
    assign out_unnamed_covariance6_covariance_avm_read = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_read;

    // out_unnamed_covariance6_covariance_avm_write(GPOUT,74)
    assign out_unnamed_covariance6_covariance_avm_write = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_write;

    // out_unnamed_covariance6_covariance_avm_writedata(GPOUT,75)
    assign out_unnamed_covariance6_covariance_avm_writedata = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,76)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,77)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,78)
    assign out_valid_out_0 = covariance_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,79)
    assign out_valid_out_1 = covariance_B12_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,81)
    assign out_pipeline_valid_out = bb_covariance_B12_stall_region_out_pipeline_valid_out;

endmodule
