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

// SystemVerilog created from bb_kernel_3mm_B16
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B16 (
    input wire [0:0] in_exitcond31245_0,
    input wire [0:0] in_exitcond31245_1,
    input wire [0:0] in_exitcond34149_pop49248_0,
    input wire [0:0] in_exitcond34149_pop49248_1,
    input wire [0:0] in_exitcond34235_0,
    input wire [0:0] in_exitcond34235_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_j_2147_pop46242_0,
    input wire [31:0] in_j_2147_pop46242_1,
    input wire [63:0] in_mPtr_bitcast_index178244_0,
    input wire [63:0] in_mPtr_bitcast_index178244_1,
    input wire [0:0] in_memdep_phi8_pop47247_0,
    input wire [0:0] in_memdep_phi8_pop47247_1,
    input wire [0:0] in_memdep_phi9_pop30153_pop51250_0,
    input wire [0:0] in_memdep_phi9_pop30153_pop51250_1,
    input wire [0:0] in_memdep_phi9_pop30241_0,
    input wire [0:0] in_memdep_phi9_pop30241_1,
    input wire [31:0] in_mul64_add44147_pop48243_0,
    input wire [31:0] in_mul64_add44147_pop48243_1,
    input wire [31:0] in_mul64_add44232_0,
    input wire [31:0] in_mul64_add44232_1,
    input wire [0:0] in_notcmp59246_0,
    input wire [0:0] in_notcmp59246_1,
    input wire [0:0] in_notcmp64151_pop50249_0,
    input wire [0:0] in_notcmp64151_pop50249_1,
    input wire [0:0] in_notcmp64238_0,
    input wire [0:0] in_notcmp64238_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm31_0,
    input wire [31:0] in_unnamed_kernel_3mm31_1,
    input wire [31:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10552,
    output wire [0:0] out_c0_exe11553,
    output wire [0:0] out_c0_exe7549,
    output wire [0:0] out_c0_exe8550,
    output wire [63:0] out_c0_exe9551,
    output wire [31:0] out_c1_exe1573,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe10552;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe11553;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe6548;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe7549;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe8550;
    wire [63:0] bb_kernel_3mm_B16_stall_region_out_c0_exe9551;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_c1_exe1573;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B16_branch_out_c0_exe10552;
    wire [0:0] kernel_3mm_B16_branch_out_c0_exe11553;
    wire [0:0] kernel_3mm_B16_branch_out_c0_exe7549;
    wire [0:0] kernel_3mm_B16_branch_out_c0_exe8550;
    wire [63:0] kernel_3mm_B16_branch_out_c0_exe9551;
    wire [31:0] kernel_3mm_B16_branch_out_c1_exe1573;
    wire [0:0] kernel_3mm_B16_branch_out_stall_out;
    wire [0:0] kernel_3mm_B16_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B16_branch_out_valid_out_1;
    wire [0:0] kernel_3mm_B16_merge_out_exitcond31245;
    wire [0:0] kernel_3mm_B16_merge_out_exitcond34149_pop49248;
    wire [0:0] kernel_3mm_B16_merge_out_exitcond34235;
    wire [0:0] kernel_3mm_B16_merge_out_forked;
    wire [31:0] kernel_3mm_B16_merge_out_j_2147_pop46242;
    wire [63:0] kernel_3mm_B16_merge_out_mPtr_bitcast_index178244;
    wire [0:0] kernel_3mm_B16_merge_out_memdep_phi8_pop47247;
    wire [0:0] kernel_3mm_B16_merge_out_memdep_phi9_pop30153_pop51250;
    wire [0:0] kernel_3mm_B16_merge_out_memdep_phi9_pop30241;
    wire [31:0] kernel_3mm_B16_merge_out_mul64_add44147_pop48243;
    wire [31:0] kernel_3mm_B16_merge_out_mul64_add44232;
    wire [0:0] kernel_3mm_B16_merge_out_notcmp59246;
    wire [0:0] kernel_3mm_B16_merge_out_notcmp64151_pop50249;
    wire [0:0] kernel_3mm_B16_merge_out_notcmp64238;
    wire [0:0] kernel_3mm_B16_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B16_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B16_merge_out_unnamed_kernel_3mm31;
    wire [0:0] kernel_3mm_B16_merge_out_valid_out;


    // kernel_3mm_B16_merge(BLACKBOX,49)
    kernel_3mm_B16_merge thekernel_3mm_B16_merge (
        .in_exitcond31245_0(in_exitcond31245_0),
        .in_exitcond31245_1(in_exitcond31245_1),
        .in_exitcond34149_pop49248_0(in_exitcond34149_pop49248_0),
        .in_exitcond34149_pop49248_1(in_exitcond34149_pop49248_1),
        .in_exitcond34235_0(in_exitcond34235_0),
        .in_exitcond34235_1(in_exitcond34235_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_j_2147_pop46242_0(in_j_2147_pop46242_0),
        .in_j_2147_pop46242_1(in_j_2147_pop46242_1),
        .in_mPtr_bitcast_index178244_0(in_mPtr_bitcast_index178244_0),
        .in_mPtr_bitcast_index178244_1(in_mPtr_bitcast_index178244_1),
        .in_memdep_phi8_pop47247_0(in_memdep_phi8_pop47247_0),
        .in_memdep_phi8_pop47247_1(in_memdep_phi8_pop47247_1),
        .in_memdep_phi9_pop30153_pop51250_0(in_memdep_phi9_pop30153_pop51250_0),
        .in_memdep_phi9_pop30153_pop51250_1(in_memdep_phi9_pop30153_pop51250_1),
        .in_memdep_phi9_pop30241_0(in_memdep_phi9_pop30241_0),
        .in_memdep_phi9_pop30241_1(in_memdep_phi9_pop30241_1),
        .in_mul64_add44147_pop48243_0(in_mul64_add44147_pop48243_0),
        .in_mul64_add44147_pop48243_1(in_mul64_add44147_pop48243_1),
        .in_mul64_add44232_0(in_mul64_add44232_0),
        .in_mul64_add44232_1(in_mul64_add44232_1),
        .in_notcmp59246_0(in_notcmp59246_0),
        .in_notcmp59246_1(in_notcmp59246_1),
        .in_notcmp64151_pop50249_0(in_notcmp64151_pop50249_0),
        .in_notcmp64151_pop50249_1(in_notcmp64151_pop50249_1),
        .in_notcmp64238_0(in_notcmp64238_0),
        .in_notcmp64238_1(in_notcmp64238_1),
        .in_stall_in(bb_kernel_3mm_B16_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm31_0(in_unnamed_kernel_3mm31_0),
        .in_unnamed_kernel_3mm31_1(in_unnamed_kernel_3mm31_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond31245(kernel_3mm_B16_merge_out_exitcond31245),
        .out_exitcond34149_pop49248(kernel_3mm_B16_merge_out_exitcond34149_pop49248),
        .out_exitcond34235(kernel_3mm_B16_merge_out_exitcond34235),
        .out_forked(kernel_3mm_B16_merge_out_forked),
        .out_j_2147_pop46242(kernel_3mm_B16_merge_out_j_2147_pop46242),
        .out_mPtr_bitcast_index178244(kernel_3mm_B16_merge_out_mPtr_bitcast_index178244),
        .out_memdep_phi8_pop47247(kernel_3mm_B16_merge_out_memdep_phi8_pop47247),
        .out_memdep_phi9_pop30153_pop51250(kernel_3mm_B16_merge_out_memdep_phi9_pop30153_pop51250),
        .out_memdep_phi9_pop30241(kernel_3mm_B16_merge_out_memdep_phi9_pop30241),
        .out_mul64_add44147_pop48243(kernel_3mm_B16_merge_out_mul64_add44147_pop48243),
        .out_mul64_add44232(kernel_3mm_B16_merge_out_mul64_add44232),
        .out_notcmp59246(kernel_3mm_B16_merge_out_notcmp59246),
        .out_notcmp64151_pop50249(kernel_3mm_B16_merge_out_notcmp64151_pop50249),
        .out_notcmp64238(kernel_3mm_B16_merge_out_notcmp64238),
        .out_stall_out_0(kernel_3mm_B16_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B16_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm31(kernel_3mm_B16_merge_out_unnamed_kernel_3mm31),
        .out_valid_out(kernel_3mm_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B16_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B16_stall_region thebb_kernel_3mm_B16_stall_region (
        .in_exitcond31245(kernel_3mm_B16_merge_out_exitcond31245),
        .in_exitcond34149_pop49248(kernel_3mm_B16_merge_out_exitcond34149_pop49248),
        .in_exitcond34235(kernel_3mm_B16_merge_out_exitcond34235),
        .in_flush(in_flush),
        .in_forked(kernel_3mm_B16_merge_out_forked),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_j_2147_pop46242(kernel_3mm_B16_merge_out_j_2147_pop46242),
        .in_mPtr_bitcast_index178244(kernel_3mm_B16_merge_out_mPtr_bitcast_index178244),
        .in_memdep_phi8_pop47247(kernel_3mm_B16_merge_out_memdep_phi8_pop47247),
        .in_memdep_phi9_pop30153_pop51250(kernel_3mm_B16_merge_out_memdep_phi9_pop30153_pop51250),
        .in_memdep_phi9_pop30241(kernel_3mm_B16_merge_out_memdep_phi9_pop30241),
        .in_mul64_add44147_pop48243(kernel_3mm_B16_merge_out_mul64_add44147_pop48243),
        .in_mul64_add44232(kernel_3mm_B16_merge_out_mul64_add44232),
        .in_notcmp59246(kernel_3mm_B16_merge_out_notcmp59246),
        .in_notcmp64151_pop50249(kernel_3mm_B16_merge_out_notcmp64151_pop50249),
        .in_notcmp64238(kernel_3mm_B16_merge_out_notcmp64238),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B16_branch_out_stall_out),
        .in_unnamed_kernel_3mm31(kernel_3mm_B16_merge_out_unnamed_kernel_3mm31),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm34_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm34_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm34_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm34_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm35_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm35_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm35_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm35_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B16_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out),
        .out_c0_exe10552(bb_kernel_3mm_B16_stall_region_out_c0_exe10552),
        .out_c0_exe11553(bb_kernel_3mm_B16_stall_region_out_c0_exe11553),
        .out_c0_exe6548(bb_kernel_3mm_B16_stall_region_out_c0_exe6548),
        .out_c0_exe7549(bb_kernel_3mm_B16_stall_region_out_c0_exe7549),
        .out_c0_exe8550(bb_kernel_3mm_B16_stall_region_out_c0_exe8550),
        .out_c0_exe9551(bb_kernel_3mm_B16_stall_region_out_c0_exe9551),
        .out_c1_exe1573(bb_kernel_3mm_B16_stall_region_out_c1_exe1573),
        .out_pipeline_valid_out(bb_kernel_3mm_B16_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B16_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_address(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_enable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_read(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_write(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_address(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_enable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_read(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_write(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B16_branch(BLACKBOX,48)
    kernel_3mm_B16_branch thekernel_3mm_B16_branch (
        .in_c0_exe10552(bb_kernel_3mm_B16_stall_region_out_c0_exe10552),
        .in_c0_exe11553(bb_kernel_3mm_B16_stall_region_out_c0_exe11553),
        .in_c0_exe6548(bb_kernel_3mm_B16_stall_region_out_c0_exe6548),
        .in_c0_exe7549(bb_kernel_3mm_B16_stall_region_out_c0_exe7549),
        .in_c0_exe8550(bb_kernel_3mm_B16_stall_region_out_c0_exe8550),
        .in_c0_exe9551(bb_kernel_3mm_B16_stall_region_out_c0_exe9551),
        .in_c1_exe1573(bb_kernel_3mm_B16_stall_region_out_c1_exe1573),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B16_stall_region_out_valid_out),
        .out_c0_exe10552(kernel_3mm_B16_branch_out_c0_exe10552),
        .out_c0_exe11553(kernel_3mm_B16_branch_out_c0_exe11553),
        .out_c0_exe7549(kernel_3mm_B16_branch_out_c0_exe7549),
        .out_c0_exe8550(kernel_3mm_B16_branch_out_c0_exe8550),
        .out_c0_exe9551(kernel_3mm_B16_branch_out_c0_exe9551),
        .out_c1_exe1573(kernel_3mm_B16_branch_out_c1_exe1573),
        .out_stall_out(kernel_3mm_B16_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B16_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B16_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10552(GPOUT,50)
    assign out_c0_exe10552 = kernel_3mm_B16_branch_out_c0_exe10552;

    // out_c0_exe11553(GPOUT,51)
    assign out_c0_exe11553 = kernel_3mm_B16_branch_out_c0_exe11553;

    // out_c0_exe7549(GPOUT,52)
    assign out_c0_exe7549 = kernel_3mm_B16_branch_out_c0_exe7549;

    // out_c0_exe8550(GPOUT,53)
    assign out_c0_exe8550 = kernel_3mm_B16_branch_out_c0_exe8550;

    // out_c0_exe9551(GPOUT,54)
    assign out_c0_exe9551 = kernel_3mm_B16_branch_out_c0_exe9551;

    // out_c1_exe1573(GPOUT,55)
    assign out_c1_exe1573 = kernel_3mm_B16_branch_out_c1_exe1573;

    // out_exiting_stall_out(GPOUT,56)
    assign out_exiting_stall_out = bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,57)
    assign out_exiting_valid_out = bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,58)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = kernel_3mm_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = kernel_3mm_B16_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_address(GPOUT,61)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_address = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount(GPOUT,62)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable(GPOUT,63)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_enable(GPOUT,64)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_enable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_read(GPOUT,65)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_read = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_write(GPOUT,66)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_write = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata(GPOUT,67)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_address(GPOUT,68)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_address = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount(GPOUT,69)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable(GPOUT,70)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_enable(GPOUT,71)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_enable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_read(GPOUT,72)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_read = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_write(GPOUT,73)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_write = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata(GPOUT,74)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,75)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,76)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = kernel_3mm_B16_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,78)
    assign out_valid_out_1 = kernel_3mm_B16_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,80)
    assign out_pipeline_valid_out = bb_kernel_3mm_B16_stall_region_out_pipeline_valid_out;

endmodule
