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

// SystemVerilog created from bb_kernel_3mm_B10
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B10 (
    input wire [0:0] in_exitcond22215_0,
    input wire [0:0] in_exitcond22215_1,
    input wire [0:0] in_exitcond25140_pop42218_0,
    input wire [0:0] in_exitcond25140_pop42218_1,
    input wire [0:0] in_exitcond25205_0,
    input wire [0:0] in_exitcond25205_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked70_0,
    input wire [0:0] in_forked70_1,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [31:0] in_j_1151_pop39212_0,
    input wire [31:0] in_j_1151_pop39212_1,
    input wire [63:0] in_mPtr_bitcast_index174214_0,
    input wire [63:0] in_mPtr_bitcast_index174214_1,
    input wire [0:0] in_memdep_phi4_pop40217_0,
    input wire [0:0] in_memdep_phi4_pop40217_1,
    input wire [0:0] in_memdep_phi5_pop27144_pop44220_0,
    input wire [0:0] in_memdep_phi5_pop27144_pop44220_1,
    input wire [0:0] in_memdep_phi5_pop27211_0,
    input wire [0:0] in_memdep_phi5_pop27211_1,
    input wire [31:0] in_mul31_add40138_pop41213_0,
    input wire [31:0] in_mul31_add40138_pop41213_1,
    input wire [31:0] in_mul31_add40202_0,
    input wire [31:0] in_mul31_add40202_1,
    input wire [0:0] in_notcmp85216_0,
    input wire [0:0] in_notcmp85216_1,
    input wire [0:0] in_notcmp90142_pop43219_0,
    input wire [0:0] in_notcmp90142_pop43219_1,
    input wire [0:0] in_notcmp90208_0,
    input wire [0:0] in_notcmp90208_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm23_0,
    input wire [31:0] in_unnamed_kernel_3mm23_1,
    input wire [31:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10422,
    output wire [0:0] out_c0_exe11423,
    output wire [0:0] out_c0_exe7419,
    output wire [0:0] out_c0_exe8420,
    output wire [63:0] out_c0_exe9421,
    output wire [31:0] out_c1_exe1443,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe10422;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe11423;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe6418;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe7419;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe8420;
    wire [63:0] bb_kernel_3mm_B10_stall_region_out_c0_exe9421;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_c1_exe1443;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B10_branch_out_c0_exe10422;
    wire [0:0] kernel_3mm_B10_branch_out_c0_exe11423;
    wire [0:0] kernel_3mm_B10_branch_out_c0_exe7419;
    wire [0:0] kernel_3mm_B10_branch_out_c0_exe8420;
    wire [63:0] kernel_3mm_B10_branch_out_c0_exe9421;
    wire [31:0] kernel_3mm_B10_branch_out_c1_exe1443;
    wire [0:0] kernel_3mm_B10_branch_out_stall_out;
    wire [0:0] kernel_3mm_B10_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B10_branch_out_valid_out_1;
    wire [0:0] kernel_3mm_B10_merge_out_exitcond22215;
    wire [0:0] kernel_3mm_B10_merge_out_exitcond25140_pop42218;
    wire [0:0] kernel_3mm_B10_merge_out_exitcond25205;
    wire [0:0] kernel_3mm_B10_merge_out_forked70;
    wire [31:0] kernel_3mm_B10_merge_out_j_1151_pop39212;
    wire [63:0] kernel_3mm_B10_merge_out_mPtr_bitcast_index174214;
    wire [0:0] kernel_3mm_B10_merge_out_memdep_phi4_pop40217;
    wire [0:0] kernel_3mm_B10_merge_out_memdep_phi5_pop27144_pop44220;
    wire [0:0] kernel_3mm_B10_merge_out_memdep_phi5_pop27211;
    wire [31:0] kernel_3mm_B10_merge_out_mul31_add40138_pop41213;
    wire [31:0] kernel_3mm_B10_merge_out_mul31_add40202;
    wire [0:0] kernel_3mm_B10_merge_out_notcmp85216;
    wire [0:0] kernel_3mm_B10_merge_out_notcmp90142_pop43219;
    wire [0:0] kernel_3mm_B10_merge_out_notcmp90208;
    wire [0:0] kernel_3mm_B10_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B10_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B10_merge_out_unnamed_kernel_3mm23;
    wire [0:0] kernel_3mm_B10_merge_out_valid_out;


    // kernel_3mm_B10_merge(BLACKBOX,49)
    kernel_3mm_B10_merge thekernel_3mm_B10_merge (
        .in_exitcond22215_0(in_exitcond22215_0),
        .in_exitcond22215_1(in_exitcond22215_1),
        .in_exitcond25140_pop42218_0(in_exitcond25140_pop42218_0),
        .in_exitcond25140_pop42218_1(in_exitcond25140_pop42218_1),
        .in_exitcond25205_0(in_exitcond25205_0),
        .in_exitcond25205_1(in_exitcond25205_1),
        .in_forked70_0(in_forked70_0),
        .in_forked70_1(in_forked70_1),
        .in_j_1151_pop39212_0(in_j_1151_pop39212_0),
        .in_j_1151_pop39212_1(in_j_1151_pop39212_1),
        .in_mPtr_bitcast_index174214_0(in_mPtr_bitcast_index174214_0),
        .in_mPtr_bitcast_index174214_1(in_mPtr_bitcast_index174214_1),
        .in_memdep_phi4_pop40217_0(in_memdep_phi4_pop40217_0),
        .in_memdep_phi4_pop40217_1(in_memdep_phi4_pop40217_1),
        .in_memdep_phi5_pop27144_pop44220_0(in_memdep_phi5_pop27144_pop44220_0),
        .in_memdep_phi5_pop27144_pop44220_1(in_memdep_phi5_pop27144_pop44220_1),
        .in_memdep_phi5_pop27211_0(in_memdep_phi5_pop27211_0),
        .in_memdep_phi5_pop27211_1(in_memdep_phi5_pop27211_1),
        .in_mul31_add40138_pop41213_0(in_mul31_add40138_pop41213_0),
        .in_mul31_add40138_pop41213_1(in_mul31_add40138_pop41213_1),
        .in_mul31_add40202_0(in_mul31_add40202_0),
        .in_mul31_add40202_1(in_mul31_add40202_1),
        .in_notcmp85216_0(in_notcmp85216_0),
        .in_notcmp85216_1(in_notcmp85216_1),
        .in_notcmp90142_pop43219_0(in_notcmp90142_pop43219_0),
        .in_notcmp90142_pop43219_1(in_notcmp90142_pop43219_1),
        .in_notcmp90208_0(in_notcmp90208_0),
        .in_notcmp90208_1(in_notcmp90208_1),
        .in_stall_in(bb_kernel_3mm_B10_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm23_0(in_unnamed_kernel_3mm23_0),
        .in_unnamed_kernel_3mm23_1(in_unnamed_kernel_3mm23_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond22215(kernel_3mm_B10_merge_out_exitcond22215),
        .out_exitcond25140_pop42218(kernel_3mm_B10_merge_out_exitcond25140_pop42218),
        .out_exitcond25205(kernel_3mm_B10_merge_out_exitcond25205),
        .out_forked70(kernel_3mm_B10_merge_out_forked70),
        .out_j_1151_pop39212(kernel_3mm_B10_merge_out_j_1151_pop39212),
        .out_mPtr_bitcast_index174214(kernel_3mm_B10_merge_out_mPtr_bitcast_index174214),
        .out_memdep_phi4_pop40217(kernel_3mm_B10_merge_out_memdep_phi4_pop40217),
        .out_memdep_phi5_pop27144_pop44220(kernel_3mm_B10_merge_out_memdep_phi5_pop27144_pop44220),
        .out_memdep_phi5_pop27211(kernel_3mm_B10_merge_out_memdep_phi5_pop27211),
        .out_mul31_add40138_pop41213(kernel_3mm_B10_merge_out_mul31_add40138_pop41213),
        .out_mul31_add40202(kernel_3mm_B10_merge_out_mul31_add40202),
        .out_notcmp85216(kernel_3mm_B10_merge_out_notcmp85216),
        .out_notcmp90142_pop43219(kernel_3mm_B10_merge_out_notcmp90142_pop43219),
        .out_notcmp90208(kernel_3mm_B10_merge_out_notcmp90208),
        .out_stall_out_0(kernel_3mm_B10_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B10_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm23(kernel_3mm_B10_merge_out_unnamed_kernel_3mm23),
        .out_valid_out(kernel_3mm_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B10_stall_region thebb_kernel_3mm_B10_stall_region (
        .in_exitcond22215(kernel_3mm_B10_merge_out_exitcond22215),
        .in_exitcond25140_pop42218(kernel_3mm_B10_merge_out_exitcond25140_pop42218),
        .in_exitcond25205(kernel_3mm_B10_merge_out_exitcond25205),
        .in_flush(in_flush),
        .in_forked70(kernel_3mm_B10_merge_out_forked70),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_j_1151_pop39212(kernel_3mm_B10_merge_out_j_1151_pop39212),
        .in_mPtr_bitcast_index174214(kernel_3mm_B10_merge_out_mPtr_bitcast_index174214),
        .in_memdep_phi4_pop40217(kernel_3mm_B10_merge_out_memdep_phi4_pop40217),
        .in_memdep_phi5_pop27144_pop44220(kernel_3mm_B10_merge_out_memdep_phi5_pop27144_pop44220),
        .in_memdep_phi5_pop27211(kernel_3mm_B10_merge_out_memdep_phi5_pop27211),
        .in_mul31_add40138_pop41213(kernel_3mm_B10_merge_out_mul31_add40138_pop41213),
        .in_mul31_add40202(kernel_3mm_B10_merge_out_mul31_add40202),
        .in_notcmp85216(kernel_3mm_B10_merge_out_notcmp85216),
        .in_notcmp90142_pop43219(kernel_3mm_B10_merge_out_notcmp90142_pop43219),
        .in_notcmp90208(kernel_3mm_B10_merge_out_notcmp90208),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B10_branch_out_stall_out),
        .in_unnamed_kernel_3mm23(kernel_3mm_B10_merge_out_unnamed_kernel_3mm23),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm26_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm26_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm26_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm26_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_valid_out),
        .out_c0_exe10422(bb_kernel_3mm_B10_stall_region_out_c0_exe10422),
        .out_c0_exe11423(bb_kernel_3mm_B10_stall_region_out_c0_exe11423),
        .out_c0_exe6418(bb_kernel_3mm_B10_stall_region_out_c0_exe6418),
        .out_c0_exe7419(bb_kernel_3mm_B10_stall_region_out_c0_exe7419),
        .out_c0_exe8420(bb_kernel_3mm_B10_stall_region_out_c0_exe8420),
        .out_c0_exe9421(bb_kernel_3mm_B10_stall_region_out_c0_exe9421),
        .out_c1_exe1443(bb_kernel_3mm_B10_stall_region_out_c1_exe1443),
        .out_pipeline_valid_out(bb_kernel_3mm_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B10_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_address(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_enable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_read(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_write(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_address(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_read(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_write(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B10_branch(BLACKBOX,48)
    kernel_3mm_B10_branch thekernel_3mm_B10_branch (
        .in_c0_exe10422(bb_kernel_3mm_B10_stall_region_out_c0_exe10422),
        .in_c0_exe11423(bb_kernel_3mm_B10_stall_region_out_c0_exe11423),
        .in_c0_exe6418(bb_kernel_3mm_B10_stall_region_out_c0_exe6418),
        .in_c0_exe7419(bb_kernel_3mm_B10_stall_region_out_c0_exe7419),
        .in_c0_exe8420(bb_kernel_3mm_B10_stall_region_out_c0_exe8420),
        .in_c0_exe9421(bb_kernel_3mm_B10_stall_region_out_c0_exe9421),
        .in_c1_exe1443(bb_kernel_3mm_B10_stall_region_out_c1_exe1443),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B10_stall_region_out_valid_out),
        .out_c0_exe10422(kernel_3mm_B10_branch_out_c0_exe10422),
        .out_c0_exe11423(kernel_3mm_B10_branch_out_c0_exe11423),
        .out_c0_exe7419(kernel_3mm_B10_branch_out_c0_exe7419),
        .out_c0_exe8420(kernel_3mm_B10_branch_out_c0_exe8420),
        .out_c0_exe9421(kernel_3mm_B10_branch_out_c0_exe9421),
        .out_c1_exe1443(kernel_3mm_B10_branch_out_c1_exe1443),
        .out_stall_out(kernel_3mm_B10_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B10_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10422(GPOUT,50)
    assign out_c0_exe10422 = kernel_3mm_B10_branch_out_c0_exe10422;

    // out_c0_exe11423(GPOUT,51)
    assign out_c0_exe11423 = kernel_3mm_B10_branch_out_c0_exe11423;

    // out_c0_exe7419(GPOUT,52)
    assign out_c0_exe7419 = kernel_3mm_B10_branch_out_c0_exe7419;

    // out_c0_exe8420(GPOUT,53)
    assign out_c0_exe8420 = kernel_3mm_B10_branch_out_c0_exe8420;

    // out_c0_exe9421(GPOUT,54)
    assign out_c0_exe9421 = kernel_3mm_B10_branch_out_c0_exe9421;

    // out_c1_exe1443(GPOUT,55)
    assign out_c1_exe1443 = kernel_3mm_B10_branch_out_c1_exe1443;

    // out_exiting_stall_out(GPOUT,56)
    assign out_exiting_stall_out = bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,57)
    assign out_exiting_valid_out = bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,58)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = kernel_3mm_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = kernel_3mm_B10_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_address(GPOUT,61)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_address = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount(GPOUT,62)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable(GPOUT,63)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_enable(GPOUT,64)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_enable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_read(GPOUT,65)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_read = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_write(GPOUT,66)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_write = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata(GPOUT,67)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_address(GPOUT,68)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_address = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(GPOUT,69)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(GPOUT,70)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(GPOUT,71)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_enable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_read(GPOUT,72)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_read = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_write(GPOUT,73)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_write = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(GPOUT,74)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,75)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,76)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = kernel_3mm_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,78)
    assign out_valid_out_1 = kernel_3mm_B10_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,80)
    assign out_pipeline_valid_out = bb_kernel_3mm_B10_stall_region_out_pipeline_valid_out;

endmodule
