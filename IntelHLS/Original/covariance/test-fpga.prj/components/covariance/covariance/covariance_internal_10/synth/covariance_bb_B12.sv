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
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B12 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked23164_0,
    input wire [0:0] in_forked23164_1,
    input wire [32:0] in_fpga_indvars_iv14_pop28151_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28151_1,
    input wire [31:0] in_i24_034_pop29157_0,
    input wire [31:0] in_i24_034_pop29157_1,
    input wire [31:0] in_i24_034_pop2983_pop58170_0,
    input wire [31:0] in_i24_034_pop2983_pop58170_1,
    input wire [31:0] in_j28_033_pop54166_0,
    input wire [31:0] in_j28_033_pop54166_1,
    input wire [31:0] in_lim_ext54_pop45143_0,
    input wire [31:0] in_lim_ext54_pop45143_1,
    input wire [31:0] in_lim_ext55_pop30160_0,
    input wire [31:0] in_lim_ext55_pop30160_1,
    input wire [31:0] in_lim_ext56_pop55167_0,
    input wire [31:0] in_lim_ext56_pop55167_1,
    input wire [0:0] in_notcmp22165_0,
    input wire [0:0] in_notcmp22165_1,
    input wire [0:0] in_notcmp27154_0,
    input wire [0:0] in_notcmp27154_1,
    input wire [0:0] in_notcmp2781_pop57169_0,
    input wire [0:0] in_notcmp2781_pop57169_1,
    input wire [31:0] in_reorder_limiter_enter112_0,
    input wire [31:0] in_reorder_limiter_enter112_1,
    input wire [31:0] in_reorder_limiter_enter68_pop31163_0,
    input wire [31:0] in_reorder_limiter_enter68_pop31163_1,
    input wire [31:0] in_reorder_limiter_enter69_pop56168_0,
    input wire [31:0] in_reorder_limiter_enter69_pop56168_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance7_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10422,
    output wire [0:0] out_c0_exe11423,
    output wire [0:0] out_c0_exe12424,
    output wire [63:0] out_c0_exe1413,
    output wire [63:0] out_c0_exe2414,
    output wire [0:0] out_c0_exe4416,
    output wire [31:0] out_c0_exe5417,
    output wire [31:0] out_c0_exe8420,
    output wire [31:0] out_c0_exe9421,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance7_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_writedata,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe10422;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe11423;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe12424;
    wire [63:0] bb_covariance_B12_stall_region_out_c0_exe1413;
    wire [63:0] bb_covariance_B12_stall_region_out_c0_exe2414;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe4416;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe5417;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe7419;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe8420;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe9421;
    wire [0:0] bb_covariance_B12_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B12_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_writedata;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_address;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_read;
    wire [0:0] bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_write;
    wire [31:0] bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_writedata;
    wire [0:0] bb_covariance_B12_stall_region_out_valid_out;
    wire [0:0] covariance_B12_branch_out_c0_exe10422;
    wire [0:0] covariance_B12_branch_out_c0_exe11423;
    wire [0:0] covariance_B12_branch_out_c0_exe12424;
    wire [63:0] covariance_B12_branch_out_c0_exe1413;
    wire [63:0] covariance_B12_branch_out_c0_exe2414;
    wire [0:0] covariance_B12_branch_out_c0_exe4416;
    wire [31:0] covariance_B12_branch_out_c0_exe5417;
    wire [31:0] covariance_B12_branch_out_c0_exe8420;
    wire [31:0] covariance_B12_branch_out_c0_exe9421;
    wire [0:0] covariance_B12_branch_out_stall_out;
    wire [0:0] covariance_B12_branch_out_valid_out_0;
    wire [0:0] covariance_B12_branch_out_valid_out_1;
    wire [0:0] covariance_B12_merge_out_forked23164;
    wire [32:0] covariance_B12_merge_out_fpga_indvars_iv14_pop28151;
    wire [31:0] covariance_B12_merge_out_i24_034_pop29157;
    wire [31:0] covariance_B12_merge_out_i24_034_pop2983_pop58170;
    wire [31:0] covariance_B12_merge_out_j28_033_pop54166;
    wire [31:0] covariance_B12_merge_out_lim_ext54_pop45143;
    wire [31:0] covariance_B12_merge_out_lim_ext55_pop30160;
    wire [31:0] covariance_B12_merge_out_lim_ext56_pop55167;
    wire [0:0] covariance_B12_merge_out_notcmp22165;
    wire [0:0] covariance_B12_merge_out_notcmp27154;
    wire [0:0] covariance_B12_merge_out_notcmp2781_pop57169;
    wire [31:0] covariance_B12_merge_out_reorder_limiter_enter112;
    wire [31:0] covariance_B12_merge_out_reorder_limiter_enter68_pop31163;
    wire [31:0] covariance_B12_merge_out_reorder_limiter_enter69_pop56168;
    wire [0:0] covariance_B12_merge_out_stall_out_0;
    wire [0:0] covariance_B12_merge_out_stall_out_1;
    wire [0:0] covariance_B12_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B12_merge(BLACKBOX,4)
    covariance_B12_merge thecovariance_B12_merge (
        .in_forked23164_0(in_forked23164_0),
        .in_forked23164_1(in_forked23164_1),
        .in_fpga_indvars_iv14_pop28151_0(in_fpga_indvars_iv14_pop28151_0),
        .in_fpga_indvars_iv14_pop28151_1(in_fpga_indvars_iv14_pop28151_1),
        .in_i24_034_pop29157_0(in_i24_034_pop29157_0),
        .in_i24_034_pop29157_1(in_i24_034_pop29157_1),
        .in_i24_034_pop2983_pop58170_0(in_i24_034_pop2983_pop58170_0),
        .in_i24_034_pop2983_pop58170_1(in_i24_034_pop2983_pop58170_1),
        .in_j28_033_pop54166_0(in_j28_033_pop54166_0),
        .in_j28_033_pop54166_1(in_j28_033_pop54166_1),
        .in_lim_ext54_pop45143_0(in_lim_ext54_pop45143_0),
        .in_lim_ext54_pop45143_1(in_lim_ext54_pop45143_1),
        .in_lim_ext55_pop30160_0(in_lim_ext55_pop30160_0),
        .in_lim_ext55_pop30160_1(in_lim_ext55_pop30160_1),
        .in_lim_ext56_pop55167_0(in_lim_ext56_pop55167_0),
        .in_lim_ext56_pop55167_1(in_lim_ext56_pop55167_1),
        .in_notcmp22165_0(in_notcmp22165_0),
        .in_notcmp22165_1(in_notcmp22165_1),
        .in_notcmp27154_0(in_notcmp27154_0),
        .in_notcmp27154_1(in_notcmp27154_1),
        .in_notcmp2781_pop57169_0(in_notcmp2781_pop57169_0),
        .in_notcmp2781_pop57169_1(in_notcmp2781_pop57169_1),
        .in_reorder_limiter_enter112_0(in_reorder_limiter_enter112_0),
        .in_reorder_limiter_enter112_1(in_reorder_limiter_enter112_1),
        .in_reorder_limiter_enter68_pop31163_0(in_reorder_limiter_enter68_pop31163_0),
        .in_reorder_limiter_enter68_pop31163_1(in_reorder_limiter_enter68_pop31163_1),
        .in_reorder_limiter_enter69_pop56168_0(in_reorder_limiter_enter69_pop56168_0),
        .in_reorder_limiter_enter69_pop56168_1(in_reorder_limiter_enter69_pop56168_1),
        .in_stall_in(bb_covariance_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked23164(covariance_B12_merge_out_forked23164),
        .out_fpga_indvars_iv14_pop28151(covariance_B12_merge_out_fpga_indvars_iv14_pop28151),
        .out_i24_034_pop29157(covariance_B12_merge_out_i24_034_pop29157),
        .out_i24_034_pop2983_pop58170(covariance_B12_merge_out_i24_034_pop2983_pop58170),
        .out_j28_033_pop54166(covariance_B12_merge_out_j28_033_pop54166),
        .out_lim_ext54_pop45143(covariance_B12_merge_out_lim_ext54_pop45143),
        .out_lim_ext55_pop30160(covariance_B12_merge_out_lim_ext55_pop30160),
        .out_lim_ext56_pop55167(covariance_B12_merge_out_lim_ext56_pop55167),
        .out_notcmp22165(covariance_B12_merge_out_notcmp22165),
        .out_notcmp27154(covariance_B12_merge_out_notcmp27154),
        .out_notcmp2781_pop57169(covariance_B12_merge_out_notcmp2781_pop57169),
        .out_reorder_limiter_enter112(covariance_B12_merge_out_reorder_limiter_enter112),
        .out_reorder_limiter_enter68_pop31163(covariance_B12_merge_out_reorder_limiter_enter68_pop31163),
        .out_reorder_limiter_enter69_pop56168(covariance_B12_merge_out_reorder_limiter_enter69_pop56168),
        .out_stall_out_0(covariance_B12_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B12_merge_out_stall_out_1),
        .out_valid_out(covariance_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_stall_region(BLACKBOX,2)
    covariance_bb_B12_stall_region thebb_covariance_B12_stall_region (
        .in_flush(in_flush),
        .in_forked23164(covariance_B12_merge_out_forked23164),
        .in_fpga_indvars_iv14_pop28151(covariance_B12_merge_out_fpga_indvars_iv14_pop28151),
        .in_i24_034_pop29157(covariance_B12_merge_out_i24_034_pop29157),
        .in_i24_034_pop2983_pop58170(covariance_B12_merge_out_i24_034_pop2983_pop58170),
        .in_j28_033_pop54166(covariance_B12_merge_out_j28_033_pop54166),
        .in_lim_ext54_pop45143(covariance_B12_merge_out_lim_ext54_pop45143),
        .in_lim_ext55_pop30160(covariance_B12_merge_out_lim_ext55_pop30160),
        .in_lim_ext56_pop55167(covariance_B12_merge_out_lim_ext56_pop55167),
        .in_notcmp22165(covariance_B12_merge_out_notcmp22165),
        .in_notcmp27154(covariance_B12_merge_out_notcmp27154),
        .in_notcmp2781_pop57169(covariance_B12_merge_out_notcmp2781_pop57169),
        .in_reorder_limiter_enter112(covariance_B12_merge_out_reorder_limiter_enter112),
        .in_reorder_limiter_enter68_pop31163(covariance_B12_merge_out_reorder_limiter_enter68_pop31163),
        .in_reorder_limiter_enter69_pop56168(covariance_B12_merge_out_reorder_limiter_enter69_pop56168),
        .in_stall_in(covariance_B12_branch_out_stall_out),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .in_unnamed_covariance7_covariance_avm_readdata(in_unnamed_covariance7_covariance_avm_readdata),
        .in_unnamed_covariance7_covariance_avm_readdatavalid(in_unnamed_covariance7_covariance_avm_readdatavalid),
        .in_unnamed_covariance7_covariance_avm_waitrequest(in_unnamed_covariance7_covariance_avm_waitrequest),
        .in_unnamed_covariance7_covariance_avm_writeack(in_unnamed_covariance7_covariance_avm_writeack),
        .in_valid_in(covariance_B12_merge_out_valid_out),
        .out_c0_exe10422(bb_covariance_B12_stall_region_out_c0_exe10422),
        .out_c0_exe11423(bb_covariance_B12_stall_region_out_c0_exe11423),
        .out_c0_exe12424(bb_covariance_B12_stall_region_out_c0_exe12424),
        .out_c0_exe1413(bb_covariance_B12_stall_region_out_c0_exe1413),
        .out_c0_exe2414(bb_covariance_B12_stall_region_out_c0_exe2414),
        .out_c0_exe4416(bb_covariance_B12_stall_region_out_c0_exe4416),
        .out_c0_exe5417(bb_covariance_B12_stall_region_out_c0_exe5417),
        .out_c0_exe7419(bb_covariance_B12_stall_region_out_c0_exe7419),
        .out_c0_exe8420(bb_covariance_B12_stall_region_out_c0_exe8420),
        .out_c0_exe9421(bb_covariance_B12_stall_region_out_c0_exe9421),
        .out_profile_loop_o_valid(bb_covariance_B12_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_covariance_B12_stall_region_out_stall_out),
        .out_unnamed_covariance6_covariance_avm_address(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_writedata),
        .out_unnamed_covariance7_covariance_avm_address(bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_address),
        .out_unnamed_covariance7_covariance_avm_burstcount(bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_burstcount),
        .out_unnamed_covariance7_covariance_avm_byteenable(bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_byteenable),
        .out_unnamed_covariance7_covariance_avm_enable(bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_enable),
        .out_unnamed_covariance7_covariance_avm_read(bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_read),
        .out_unnamed_covariance7_covariance_avm_write(bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_write),
        .out_unnamed_covariance7_covariance_avm_writedata(bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B12_branch(BLACKBOX,3)
    covariance_B12_branch thecovariance_B12_branch (
        .in_c0_exe10422(bb_covariance_B12_stall_region_out_c0_exe10422),
        .in_c0_exe11423(bb_covariance_B12_stall_region_out_c0_exe11423),
        .in_c0_exe12424(bb_covariance_B12_stall_region_out_c0_exe12424),
        .in_c0_exe1413(bb_covariance_B12_stall_region_out_c0_exe1413),
        .in_c0_exe2414(bb_covariance_B12_stall_region_out_c0_exe2414),
        .in_c0_exe4416(bb_covariance_B12_stall_region_out_c0_exe4416),
        .in_c0_exe5417(bb_covariance_B12_stall_region_out_c0_exe5417),
        .in_c0_exe7419(bb_covariance_B12_stall_region_out_c0_exe7419),
        .in_c0_exe8420(bb_covariance_B12_stall_region_out_c0_exe8420),
        .in_c0_exe9421(bb_covariance_B12_stall_region_out_c0_exe9421),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B12_stall_region_out_valid_out),
        .out_c0_exe10422(covariance_B12_branch_out_c0_exe10422),
        .out_c0_exe11423(covariance_B12_branch_out_c0_exe11423),
        .out_c0_exe12424(covariance_B12_branch_out_c0_exe12424),
        .out_c0_exe1413(covariance_B12_branch_out_c0_exe1413),
        .out_c0_exe2414(covariance_B12_branch_out_c0_exe2414),
        .out_c0_exe4416(covariance_B12_branch_out_c0_exe4416),
        .out_c0_exe5417(covariance_B12_branch_out_c0_exe5417),
        .out_c0_exe8420(covariance_B12_branch_out_c0_exe8420),
        .out_c0_exe9421(covariance_B12_branch_out_c0_exe9421),
        .out_stall_out(covariance_B12_branch_out_stall_out),
        .out_valid_out_0(covariance_B12_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10422(GPOUT,46)
    assign out_c0_exe10422 = covariance_B12_branch_out_c0_exe10422;

    // out_c0_exe11423(GPOUT,47)
    assign out_c0_exe11423 = covariance_B12_branch_out_c0_exe11423;

    // out_c0_exe12424(GPOUT,48)
    assign out_c0_exe12424 = covariance_B12_branch_out_c0_exe12424;

    // out_c0_exe1413(GPOUT,49)
    assign out_c0_exe1413 = covariance_B12_branch_out_c0_exe1413;

    // out_c0_exe2414(GPOUT,50)
    assign out_c0_exe2414 = covariance_B12_branch_out_c0_exe2414;

    // out_c0_exe4416(GPOUT,51)
    assign out_c0_exe4416 = covariance_B12_branch_out_c0_exe4416;

    // out_c0_exe5417(GPOUT,52)
    assign out_c0_exe5417 = covariance_B12_branch_out_c0_exe5417;

    // out_c0_exe8420(GPOUT,53)
    assign out_c0_exe8420 = covariance_B12_branch_out_c0_exe8420;

    // out_c0_exe9421(GPOUT,54)
    assign out_c0_exe9421 = covariance_B12_branch_out_c0_exe9421;

    // out_profile_loop_o_valid(GPOUT,55)
    assign out_profile_loop_o_valid = bb_covariance_B12_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,56)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = covariance_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = covariance_B12_merge_out_stall_out_1;

    // out_unnamed_covariance6_covariance_avm_address(GPOUT,59)
    assign out_unnamed_covariance6_covariance_avm_address = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_address;

    // out_unnamed_covariance6_covariance_avm_burstcount(GPOUT,60)
    assign out_unnamed_covariance6_covariance_avm_burstcount = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_burstcount;

    // out_unnamed_covariance6_covariance_avm_byteenable(GPOUT,61)
    assign out_unnamed_covariance6_covariance_avm_byteenable = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_byteenable;

    // out_unnamed_covariance6_covariance_avm_enable(GPOUT,62)
    assign out_unnamed_covariance6_covariance_avm_enable = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_enable;

    // out_unnamed_covariance6_covariance_avm_read(GPOUT,63)
    assign out_unnamed_covariance6_covariance_avm_read = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_read;

    // out_unnamed_covariance6_covariance_avm_write(GPOUT,64)
    assign out_unnamed_covariance6_covariance_avm_write = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_write;

    // out_unnamed_covariance6_covariance_avm_writedata(GPOUT,65)
    assign out_unnamed_covariance6_covariance_avm_writedata = bb_covariance_B12_stall_region_out_unnamed_covariance6_covariance_avm_writedata;

    // out_unnamed_covariance7_covariance_avm_address(GPOUT,66)
    assign out_unnamed_covariance7_covariance_avm_address = bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_address;

    // out_unnamed_covariance7_covariance_avm_burstcount(GPOUT,67)
    assign out_unnamed_covariance7_covariance_avm_burstcount = bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_burstcount;

    // out_unnamed_covariance7_covariance_avm_byteenable(GPOUT,68)
    assign out_unnamed_covariance7_covariance_avm_byteenable = bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_byteenable;

    // out_unnamed_covariance7_covariance_avm_enable(GPOUT,69)
    assign out_unnamed_covariance7_covariance_avm_enable = bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_enable;

    // out_unnamed_covariance7_covariance_avm_read(GPOUT,70)
    assign out_unnamed_covariance7_covariance_avm_read = bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_read;

    // out_unnamed_covariance7_covariance_avm_write(GPOUT,71)
    assign out_unnamed_covariance7_covariance_avm_write = bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_write;

    // out_unnamed_covariance7_covariance_avm_writedata(GPOUT,72)
    assign out_unnamed_covariance7_covariance_avm_writedata = bb_covariance_B12_stall_region_out_unnamed_covariance7_covariance_avm_writedata;

    // out_valid_in_1(GPOUT,73)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,74)
    assign out_valid_out_0 = covariance_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,75)
    assign out_valid_out_1 = covariance_B12_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,76)
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
