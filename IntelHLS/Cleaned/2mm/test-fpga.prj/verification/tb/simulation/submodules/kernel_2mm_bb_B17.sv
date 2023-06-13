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

// SystemVerilog created from bb_kernel_2mm_B17
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B17 (
    input wire [0:0] in_exitcond21175_0,
    input wire [0:0] in_exitcond21175_1,
    input wire [0:0] in_exitcond24119_pop43179_0,
    input wire [0:0] in_exitcond24119_pop43179_1,
    input wire [0:0] in_exitcond24164_0,
    input wire [0:0] in_exitcond24164_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i48_078_pop25115_pop41178_0,
    input wire [31:0] in_i48_078_pop25115_pop41178_1,
    input wire [31:0] in_i48_078_pop25158_0,
    input wire [31:0] in_i48_078_pop25158_1,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_j53_077_pop39171_0,
    input wire [31:0] in_j53_077_pop39171_1,
    input wire [63:0] in_mPtr_bitcast_index92173_0,
    input wire [63:0] in_mPtr_bitcast_index92173_1,
    input wire [0:0] in_memdep_phi3_pop26123_pop45181_0,
    input wire [0:0] in_memdep_phi3_pop26123_pop45181_1,
    input wire [0:0] in_memdep_phi3_pop26170_0,
    input wire [0:0] in_memdep_phi3_pop26170_1,
    input wire [0:0] in_memdep_phi_pop40177_0,
    input wire [0:0] in_memdep_phi_pop40177_1,
    input wire [31:0] in_mul59_add30117_pop42172_0,
    input wire [31:0] in_mul59_add30117_pop42172_1,
    input wire [31:0] in_mul59_add30161_0,
    input wire [31:0] in_mul59_add30161_1,
    input wire [31:0] in_mul62174_0,
    input wire [31:0] in_mul62174_1,
    input wire [0:0] in_notcmp41176_0,
    input wire [0:0] in_notcmp41176_1,
    input wire [0:0] in_notcmp46121_pop44180_0,
    input wire [0:0] in_notcmp46121_pop44180_1,
    input wire [0:0] in_notcmp46167_0,
    input wire [0:0] in_notcmp46167_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10371,
    output wire [0:0] out_c0_exe11372,
    output wire [0:0] out_c0_exe7368,
    output wire [0:0] out_c0_exe8369,
    output wire [63:0] out_c0_exe9370,
    output wire [31:0] out_c1_exe1390,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B17_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_c0_exe10371;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_c0_exe11372;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_c0_exe6367;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_c0_exe7368;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_c0_exe8369;
    wire [63:0] bb_kernel_2mm_B17_stall_region_out_c0_exe9370;
    wire [31:0] bb_kernel_2mm_B17_stall_region_out_c1_exe1390;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B17_stall_region_out_valid_out;
    wire [0:0] kernel_2mm_B17_branch_out_c0_exe10371;
    wire [0:0] kernel_2mm_B17_branch_out_c0_exe11372;
    wire [0:0] kernel_2mm_B17_branch_out_c0_exe7368;
    wire [0:0] kernel_2mm_B17_branch_out_c0_exe8369;
    wire [63:0] kernel_2mm_B17_branch_out_c0_exe9370;
    wire [31:0] kernel_2mm_B17_branch_out_c1_exe1390;
    wire [0:0] kernel_2mm_B17_branch_out_stall_out;
    wire [0:0] kernel_2mm_B17_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B17_branch_out_valid_out_1;
    wire [0:0] kernel_2mm_B17_merge_out_exitcond21175;
    wire [0:0] kernel_2mm_B17_merge_out_exitcond24119_pop43179;
    wire [0:0] kernel_2mm_B17_merge_out_exitcond24164;
    wire [0:0] kernel_2mm_B17_merge_out_forked;
    wire [31:0] kernel_2mm_B17_merge_out_i48_078_pop25115_pop41178;
    wire [31:0] kernel_2mm_B17_merge_out_i48_078_pop25158;
    wire [31:0] kernel_2mm_B17_merge_out_j53_077_pop39171;
    wire [63:0] kernel_2mm_B17_merge_out_mPtr_bitcast_index92173;
    wire [0:0] kernel_2mm_B17_merge_out_memdep_phi3_pop26123_pop45181;
    wire [0:0] kernel_2mm_B17_merge_out_memdep_phi3_pop26170;
    wire [0:0] kernel_2mm_B17_merge_out_memdep_phi_pop40177;
    wire [31:0] kernel_2mm_B17_merge_out_mul59_add30117_pop42172;
    wire [31:0] kernel_2mm_B17_merge_out_mul59_add30161;
    wire [31:0] kernel_2mm_B17_merge_out_mul62174;
    wire [0:0] kernel_2mm_B17_merge_out_notcmp41176;
    wire [0:0] kernel_2mm_B17_merge_out_notcmp46121_pop44180;
    wire [0:0] kernel_2mm_B17_merge_out_notcmp46167;
    wire [0:0] kernel_2mm_B17_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B17_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B17_merge_out_valid_out;


    // kernel_2mm_B17_merge(BLACKBOX,52)
    kernel_2mm_B17_merge thekernel_2mm_B17_merge (
        .in_exitcond21175_0(in_exitcond21175_0),
        .in_exitcond21175_1(in_exitcond21175_1),
        .in_exitcond24119_pop43179_0(in_exitcond24119_pop43179_0),
        .in_exitcond24119_pop43179_1(in_exitcond24119_pop43179_1),
        .in_exitcond24164_0(in_exitcond24164_0),
        .in_exitcond24164_1(in_exitcond24164_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i48_078_pop25115_pop41178_0(in_i48_078_pop25115_pop41178_0),
        .in_i48_078_pop25115_pop41178_1(in_i48_078_pop25115_pop41178_1),
        .in_i48_078_pop25158_0(in_i48_078_pop25158_0),
        .in_i48_078_pop25158_1(in_i48_078_pop25158_1),
        .in_j53_077_pop39171_0(in_j53_077_pop39171_0),
        .in_j53_077_pop39171_1(in_j53_077_pop39171_1),
        .in_mPtr_bitcast_index92173_0(in_mPtr_bitcast_index92173_0),
        .in_mPtr_bitcast_index92173_1(in_mPtr_bitcast_index92173_1),
        .in_memdep_phi3_pop26123_pop45181_0(in_memdep_phi3_pop26123_pop45181_0),
        .in_memdep_phi3_pop26123_pop45181_1(in_memdep_phi3_pop26123_pop45181_1),
        .in_memdep_phi3_pop26170_0(in_memdep_phi3_pop26170_0),
        .in_memdep_phi3_pop26170_1(in_memdep_phi3_pop26170_1),
        .in_memdep_phi_pop40177_0(in_memdep_phi_pop40177_0),
        .in_memdep_phi_pop40177_1(in_memdep_phi_pop40177_1),
        .in_mul59_add30117_pop42172_0(in_mul59_add30117_pop42172_0),
        .in_mul59_add30117_pop42172_1(in_mul59_add30117_pop42172_1),
        .in_mul59_add30161_0(in_mul59_add30161_0),
        .in_mul59_add30161_1(in_mul59_add30161_1),
        .in_mul62174_0(in_mul62174_0),
        .in_mul62174_1(in_mul62174_1),
        .in_notcmp41176_0(in_notcmp41176_0),
        .in_notcmp41176_1(in_notcmp41176_1),
        .in_notcmp46121_pop44180_0(in_notcmp46121_pop44180_0),
        .in_notcmp46121_pop44180_1(in_notcmp46121_pop44180_1),
        .in_notcmp46167_0(in_notcmp46167_0),
        .in_notcmp46167_1(in_notcmp46167_1),
        .in_stall_in(bb_kernel_2mm_B17_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond21175(kernel_2mm_B17_merge_out_exitcond21175),
        .out_exitcond24119_pop43179(kernel_2mm_B17_merge_out_exitcond24119_pop43179),
        .out_exitcond24164(kernel_2mm_B17_merge_out_exitcond24164),
        .out_forked(kernel_2mm_B17_merge_out_forked),
        .out_i48_078_pop25115_pop41178(kernel_2mm_B17_merge_out_i48_078_pop25115_pop41178),
        .out_i48_078_pop25158(kernel_2mm_B17_merge_out_i48_078_pop25158),
        .out_j53_077_pop39171(kernel_2mm_B17_merge_out_j53_077_pop39171),
        .out_mPtr_bitcast_index92173(kernel_2mm_B17_merge_out_mPtr_bitcast_index92173),
        .out_memdep_phi3_pop26123_pop45181(kernel_2mm_B17_merge_out_memdep_phi3_pop26123_pop45181),
        .out_memdep_phi3_pop26170(kernel_2mm_B17_merge_out_memdep_phi3_pop26170),
        .out_memdep_phi_pop40177(kernel_2mm_B17_merge_out_memdep_phi_pop40177),
        .out_mul59_add30117_pop42172(kernel_2mm_B17_merge_out_mul59_add30117_pop42172),
        .out_mul59_add30161(kernel_2mm_B17_merge_out_mul59_add30161),
        .out_mul62174(kernel_2mm_B17_merge_out_mul62174),
        .out_notcmp41176(kernel_2mm_B17_merge_out_notcmp41176),
        .out_notcmp46121_pop44180(kernel_2mm_B17_merge_out_notcmp46121_pop44180),
        .out_notcmp46167(kernel_2mm_B17_merge_out_notcmp46167),
        .out_stall_out_0(kernel_2mm_B17_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B17_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B17_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B17_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B17_stall_region thebb_kernel_2mm_B17_stall_region (
        .in_exitcond21175(kernel_2mm_B17_merge_out_exitcond21175),
        .in_exitcond24119_pop43179(kernel_2mm_B17_merge_out_exitcond24119_pop43179),
        .in_exitcond24164(kernel_2mm_B17_merge_out_exitcond24164),
        .in_flush(in_flush),
        .in_forked(kernel_2mm_B17_merge_out_forked),
        .in_i48_078_pop25115_pop41178(kernel_2mm_B17_merge_out_i48_078_pop25115_pop41178),
        .in_i48_078_pop25158(kernel_2mm_B17_merge_out_i48_078_pop25158),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_j53_077_pop39171(kernel_2mm_B17_merge_out_j53_077_pop39171),
        .in_mPtr_bitcast_index92173(kernel_2mm_B17_merge_out_mPtr_bitcast_index92173),
        .in_memdep_phi3_pop26123_pop45181(kernel_2mm_B17_merge_out_memdep_phi3_pop26123_pop45181),
        .in_memdep_phi3_pop26170(kernel_2mm_B17_merge_out_memdep_phi3_pop26170),
        .in_memdep_phi_pop40177(kernel_2mm_B17_merge_out_memdep_phi_pop40177),
        .in_mul59_add30117_pop42172(kernel_2mm_B17_merge_out_mul59_add30117_pop42172),
        .in_mul59_add30161(kernel_2mm_B17_merge_out_mul59_add30161),
        .in_mul62174(kernel_2mm_B17_merge_out_mul62174),
        .in_notcmp41176(kernel_2mm_B17_merge_out_notcmp41176),
        .in_notcmp46121_pop44180(kernel_2mm_B17_merge_out_notcmp46121_pop44180),
        .in_notcmp46167(kernel_2mm_B17_merge_out_notcmp46167),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B17_branch_out_stall_out),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B17_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out(bb_kernel_2mm_B17_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out(bb_kernel_2mm_B17_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out),
        .out_c0_exe10371(bb_kernel_2mm_B17_stall_region_out_c0_exe10371),
        .out_c0_exe11372(bb_kernel_2mm_B17_stall_region_out_c0_exe11372),
        .out_c0_exe6367(bb_kernel_2mm_B17_stall_region_out_c0_exe6367),
        .out_c0_exe7368(bb_kernel_2mm_B17_stall_region_out_c0_exe7368),
        .out_c0_exe8369(bb_kernel_2mm_B17_stall_region_out_c0_exe8369),
        .out_c0_exe9370(bb_kernel_2mm_B17_stall_region_out_c0_exe9370),
        .out_c1_exe1390(bb_kernel_2mm_B17_stall_region_out_c1_exe1390),
        .out_pipeline_valid_out(bb_kernel_2mm_B17_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B17_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_address(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_enable(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_read(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_write(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_address(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_enable(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_read(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_write(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata(bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B17_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B17_branch(BLACKBOX,51)
    kernel_2mm_B17_branch thekernel_2mm_B17_branch (
        .in_c0_exe10371(bb_kernel_2mm_B17_stall_region_out_c0_exe10371),
        .in_c0_exe11372(bb_kernel_2mm_B17_stall_region_out_c0_exe11372),
        .in_c0_exe6367(bb_kernel_2mm_B17_stall_region_out_c0_exe6367),
        .in_c0_exe7368(bb_kernel_2mm_B17_stall_region_out_c0_exe7368),
        .in_c0_exe8369(bb_kernel_2mm_B17_stall_region_out_c0_exe8369),
        .in_c0_exe9370(bb_kernel_2mm_B17_stall_region_out_c0_exe9370),
        .in_c1_exe1390(bb_kernel_2mm_B17_stall_region_out_c1_exe1390),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B17_stall_region_out_valid_out),
        .out_c0_exe10371(kernel_2mm_B17_branch_out_c0_exe10371),
        .out_c0_exe11372(kernel_2mm_B17_branch_out_c0_exe11372),
        .out_c0_exe7368(kernel_2mm_B17_branch_out_c0_exe7368),
        .out_c0_exe8369(kernel_2mm_B17_branch_out_c0_exe8369),
        .out_c0_exe9370(kernel_2mm_B17_branch_out_c0_exe9370),
        .out_c1_exe1390(kernel_2mm_B17_branch_out_c1_exe1390),
        .out_stall_out(kernel_2mm_B17_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B17_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B17_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10371(GPOUT,53)
    assign out_c0_exe10371 = kernel_2mm_B17_branch_out_c0_exe10371;

    // out_c0_exe11372(GPOUT,54)
    assign out_c0_exe11372 = kernel_2mm_B17_branch_out_c0_exe11372;

    // out_c0_exe7368(GPOUT,55)
    assign out_c0_exe7368 = kernel_2mm_B17_branch_out_c0_exe7368;

    // out_c0_exe8369(GPOUT,56)
    assign out_c0_exe8369 = kernel_2mm_B17_branch_out_c0_exe8369;

    // out_c0_exe9370(GPOUT,57)
    assign out_c0_exe9370 = kernel_2mm_B17_branch_out_c0_exe9370;

    // out_c1_exe1390(GPOUT,58)
    assign out_c1_exe1390 = kernel_2mm_B17_branch_out_c1_exe1390;

    // out_exiting_stall_out(GPOUT,59)
    assign out_exiting_stall_out = bb_kernel_2mm_B17_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,60)
    assign out_exiting_valid_out = bb_kernel_2mm_B17_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,61)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,62)
    assign out_stall_out_0 = kernel_2mm_B17_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,63)
    assign out_stall_out_1 = kernel_2mm_B17_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_address(GPOUT,64)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_address = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount(GPOUT,65)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable(GPOUT,66)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_enable(GPOUT,67)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_enable = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_read(GPOUT,68)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_read = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_write(GPOUT,69)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_write = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata(GPOUT,70)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_address(GPOUT,71)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_address = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount(GPOUT,72)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable(GPOUT,73)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_enable(GPOUT,74)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_enable = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_read(GPOUT,75)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_read = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_write(GPOUT,76)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_write = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata(GPOUT,77)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata = bb_kernel_2mm_B17_stall_region_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,78)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,79)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,80)
    assign out_valid_out_0 = kernel_2mm_B17_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,81)
    assign out_valid_out_1 = kernel_2mm_B17_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,83)
    assign out_pipeline_valid_out = bb_kernel_2mm_B17_stall_region_out_pipeline_valid_out;

endmodule
