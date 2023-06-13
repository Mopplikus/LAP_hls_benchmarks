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

// SystemVerilog created from bb_kernel_3mm_B4
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:42 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B4 (
    input wire [0:0] in_exitcond13185_0,
    input wire [0:0] in_exitcond13185_1,
    input wire [0:0] in_exitcond16131_pop35188_0,
    input wire [0:0] in_exitcond16131_pop35188_1,
    input wire [0:0] in_exitcond16175_0,
    input wire [0:0] in_exitcond16175_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked96_0,
    input wire [0:0] in_forked96_1,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_j_0155_pop32182_0,
    input wire [31:0] in_j_0155_pop32182_1,
    input wire [63:0] in_mPtr_bitcast_index168184_0,
    input wire [63:0] in_mPtr_bitcast_index168184_1,
    input wire [0:0] in_memdep_phi1_pop24135_pop37190_0,
    input wire [0:0] in_memdep_phi1_pop24135_pop37190_1,
    input wire [0:0] in_memdep_phi1_pop24181_0,
    input wire [0:0] in_memdep_phi1_pop24181_1,
    input wire [0:0] in_memdep_phi_pop33187_0,
    input wire [0:0] in_memdep_phi_pop33187_1,
    input wire [31:0] in_mul_add36129_pop34183_0,
    input wire [31:0] in_mul_add36129_pop34183_1,
    input wire [31:0] in_mul_add36172_0,
    input wire [31:0] in_mul_add36172_1,
    input wire [0:0] in_notcmp111186_0,
    input wire [0:0] in_notcmp111186_1,
    input wire [0:0] in_notcmp116133_pop36189_0,
    input wire [0:0] in_notcmp116133_pop36189_1,
    input wire [0:0] in_notcmp116178_0,
    input wire [0:0] in_notcmp116178_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm13_0,
    input wire [31:0] in_unnamed_kernel_3mm13_1,
    input wire [31:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10310,
    output wire [0:0] out_c0_exe11311,
    output wire [0:0] out_c0_exe7307,
    output wire [0:0] out_c0_exe8308,
    output wire [63:0] out_c0_exe9309,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe10310;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe11311;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe6306;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe7307;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe8308;
    wire [63:0] bb_kernel_3mm_B4_stall_region_out_c0_exe9309;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_c1_exe1;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe10310;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe11311;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe7307;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe8308;
    wire [63:0] kernel_3mm_B4_branch_out_c0_exe9309;
    wire [31:0] kernel_3mm_B4_branch_out_c1_exe1;
    wire [0:0] kernel_3mm_B4_branch_out_stall_out;
    wire [0:0] kernel_3mm_B4_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B4_branch_out_valid_out_1;
    wire [0:0] kernel_3mm_B4_merge_out_exitcond13185;
    wire [0:0] kernel_3mm_B4_merge_out_exitcond16131_pop35188;
    wire [0:0] kernel_3mm_B4_merge_out_exitcond16175;
    wire [0:0] kernel_3mm_B4_merge_out_forked96;
    wire [31:0] kernel_3mm_B4_merge_out_j_0155_pop32182;
    wire [63:0] kernel_3mm_B4_merge_out_mPtr_bitcast_index168184;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi1_pop24135_pop37190;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi1_pop24181;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi_pop33187;
    wire [31:0] kernel_3mm_B4_merge_out_mul_add36129_pop34183;
    wire [31:0] kernel_3mm_B4_merge_out_mul_add36172;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp111186;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp116133_pop36189;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp116178;
    wire [0:0] kernel_3mm_B4_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B4_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B4_merge_out_unnamed_kernel_3mm13;
    wire [0:0] kernel_3mm_B4_merge_out_valid_out;


    // kernel_3mm_B4_merge(BLACKBOX,49)
    kernel_3mm_B4_merge thekernel_3mm_B4_merge (
        .in_exitcond13185_0(in_exitcond13185_0),
        .in_exitcond13185_1(in_exitcond13185_1),
        .in_exitcond16131_pop35188_0(in_exitcond16131_pop35188_0),
        .in_exitcond16131_pop35188_1(in_exitcond16131_pop35188_1),
        .in_exitcond16175_0(in_exitcond16175_0),
        .in_exitcond16175_1(in_exitcond16175_1),
        .in_forked96_0(in_forked96_0),
        .in_forked96_1(in_forked96_1),
        .in_j_0155_pop32182_0(in_j_0155_pop32182_0),
        .in_j_0155_pop32182_1(in_j_0155_pop32182_1),
        .in_mPtr_bitcast_index168184_0(in_mPtr_bitcast_index168184_0),
        .in_mPtr_bitcast_index168184_1(in_mPtr_bitcast_index168184_1),
        .in_memdep_phi1_pop24135_pop37190_0(in_memdep_phi1_pop24135_pop37190_0),
        .in_memdep_phi1_pop24135_pop37190_1(in_memdep_phi1_pop24135_pop37190_1),
        .in_memdep_phi1_pop24181_0(in_memdep_phi1_pop24181_0),
        .in_memdep_phi1_pop24181_1(in_memdep_phi1_pop24181_1),
        .in_memdep_phi_pop33187_0(in_memdep_phi_pop33187_0),
        .in_memdep_phi_pop33187_1(in_memdep_phi_pop33187_1),
        .in_mul_add36129_pop34183_0(in_mul_add36129_pop34183_0),
        .in_mul_add36129_pop34183_1(in_mul_add36129_pop34183_1),
        .in_mul_add36172_0(in_mul_add36172_0),
        .in_mul_add36172_1(in_mul_add36172_1),
        .in_notcmp111186_0(in_notcmp111186_0),
        .in_notcmp111186_1(in_notcmp111186_1),
        .in_notcmp116133_pop36189_0(in_notcmp116133_pop36189_0),
        .in_notcmp116133_pop36189_1(in_notcmp116133_pop36189_1),
        .in_notcmp116178_0(in_notcmp116178_0),
        .in_notcmp116178_1(in_notcmp116178_1),
        .in_stall_in(bb_kernel_3mm_B4_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm13_0(in_unnamed_kernel_3mm13_0),
        .in_unnamed_kernel_3mm13_1(in_unnamed_kernel_3mm13_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond13185(kernel_3mm_B4_merge_out_exitcond13185),
        .out_exitcond16131_pop35188(kernel_3mm_B4_merge_out_exitcond16131_pop35188),
        .out_exitcond16175(kernel_3mm_B4_merge_out_exitcond16175),
        .out_forked96(kernel_3mm_B4_merge_out_forked96),
        .out_j_0155_pop32182(kernel_3mm_B4_merge_out_j_0155_pop32182),
        .out_mPtr_bitcast_index168184(kernel_3mm_B4_merge_out_mPtr_bitcast_index168184),
        .out_memdep_phi1_pop24135_pop37190(kernel_3mm_B4_merge_out_memdep_phi1_pop24135_pop37190),
        .out_memdep_phi1_pop24181(kernel_3mm_B4_merge_out_memdep_phi1_pop24181),
        .out_memdep_phi_pop33187(kernel_3mm_B4_merge_out_memdep_phi_pop33187),
        .out_mul_add36129_pop34183(kernel_3mm_B4_merge_out_mul_add36129_pop34183),
        .out_mul_add36172(kernel_3mm_B4_merge_out_mul_add36172),
        .out_notcmp111186(kernel_3mm_B4_merge_out_notcmp111186),
        .out_notcmp116133_pop36189(kernel_3mm_B4_merge_out_notcmp116133_pop36189),
        .out_notcmp116178(kernel_3mm_B4_merge_out_notcmp116178),
        .out_stall_out_0(kernel_3mm_B4_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B4_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm13(kernel_3mm_B4_merge_out_unnamed_kernel_3mm13),
        .out_valid_out(kernel_3mm_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B4_stall_region thebb_kernel_3mm_B4_stall_region (
        .in_exitcond13185(kernel_3mm_B4_merge_out_exitcond13185),
        .in_exitcond16131_pop35188(kernel_3mm_B4_merge_out_exitcond16131_pop35188),
        .in_exitcond16175(kernel_3mm_B4_merge_out_exitcond16175),
        .in_flush(in_flush),
        .in_forked96(kernel_3mm_B4_merge_out_forked96),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_j_0155_pop32182(kernel_3mm_B4_merge_out_j_0155_pop32182),
        .in_mPtr_bitcast_index168184(kernel_3mm_B4_merge_out_mPtr_bitcast_index168184),
        .in_memdep_phi1_pop24135_pop37190(kernel_3mm_B4_merge_out_memdep_phi1_pop24135_pop37190),
        .in_memdep_phi1_pop24181(kernel_3mm_B4_merge_out_memdep_phi1_pop24181),
        .in_memdep_phi_pop33187(kernel_3mm_B4_merge_out_memdep_phi_pop33187),
        .in_mul_add36129_pop34183(kernel_3mm_B4_merge_out_mul_add36129_pop34183),
        .in_mul_add36172(kernel_3mm_B4_merge_out_mul_add36172),
        .in_notcmp111186(kernel_3mm_B4_merge_out_notcmp111186),
        .in_notcmp116133_pop36189(kernel_3mm_B4_merge_out_notcmp116133_pop36189),
        .in_notcmp116178(kernel_3mm_B4_merge_out_notcmp116178),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B4_branch_out_stall_out),
        .in_unnamed_kernel_3mm13(kernel_3mm_B4_merge_out_unnamed_kernel_3mm13),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_valid_out),
        .out_c0_exe10310(bb_kernel_3mm_B4_stall_region_out_c0_exe10310),
        .out_c0_exe11311(bb_kernel_3mm_B4_stall_region_out_c0_exe11311),
        .out_c0_exe6306(bb_kernel_3mm_B4_stall_region_out_c0_exe6306),
        .out_c0_exe7307(bb_kernel_3mm_B4_stall_region_out_c0_exe7307),
        .out_c0_exe8308(bb_kernel_3mm_B4_stall_region_out_c0_exe8308),
        .out_c0_exe9309(bb_kernel_3mm_B4_stall_region_out_c0_exe9309),
        .out_c1_exe1(bb_kernel_3mm_B4_stall_region_out_c1_exe1),
        .out_pipeline_valid_out(bb_kernel_3mm_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B4_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_address(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_read(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_write(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_address(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_read(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_write(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B4_branch(BLACKBOX,48)
    kernel_3mm_B4_branch thekernel_3mm_B4_branch (
        .in_c0_exe10310(bb_kernel_3mm_B4_stall_region_out_c0_exe10310),
        .in_c0_exe11311(bb_kernel_3mm_B4_stall_region_out_c0_exe11311),
        .in_c0_exe6306(bb_kernel_3mm_B4_stall_region_out_c0_exe6306),
        .in_c0_exe7307(bb_kernel_3mm_B4_stall_region_out_c0_exe7307),
        .in_c0_exe8308(bb_kernel_3mm_B4_stall_region_out_c0_exe8308),
        .in_c0_exe9309(bb_kernel_3mm_B4_stall_region_out_c0_exe9309),
        .in_c1_exe1(bb_kernel_3mm_B4_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B4_stall_region_out_valid_out),
        .out_c0_exe10310(kernel_3mm_B4_branch_out_c0_exe10310),
        .out_c0_exe11311(kernel_3mm_B4_branch_out_c0_exe11311),
        .out_c0_exe7307(kernel_3mm_B4_branch_out_c0_exe7307),
        .out_c0_exe8308(kernel_3mm_B4_branch_out_c0_exe8308),
        .out_c0_exe9309(kernel_3mm_B4_branch_out_c0_exe9309),
        .out_c1_exe1(kernel_3mm_B4_branch_out_c1_exe1),
        .out_stall_out(kernel_3mm_B4_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B4_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10310(GPOUT,50)
    assign out_c0_exe10310 = kernel_3mm_B4_branch_out_c0_exe10310;

    // out_c0_exe11311(GPOUT,51)
    assign out_c0_exe11311 = kernel_3mm_B4_branch_out_c0_exe11311;

    // out_c0_exe7307(GPOUT,52)
    assign out_c0_exe7307 = kernel_3mm_B4_branch_out_c0_exe7307;

    // out_c0_exe8308(GPOUT,53)
    assign out_c0_exe8308 = kernel_3mm_B4_branch_out_c0_exe8308;

    // out_c0_exe9309(GPOUT,54)
    assign out_c0_exe9309 = kernel_3mm_B4_branch_out_c0_exe9309;

    // out_c1_exe1(GPOUT,55)
    assign out_c1_exe1 = kernel_3mm_B4_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,56)
    assign out_exiting_stall_out = bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,57)
    assign out_exiting_valid_out = bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,58)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = kernel_3mm_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = kernel_3mm_B4_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_address(GPOUT,61)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_address = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(GPOUT,62)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(GPOUT,63)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(GPOUT,64)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_enable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_read(GPOUT,65)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_read = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_write(GPOUT,66)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_write = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(GPOUT,67)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_address(GPOUT,68)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_address = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(GPOUT,69)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(GPOUT,70)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(GPOUT,71)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_enable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_read(GPOUT,72)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_read = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_write(GPOUT,73)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_write = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(GPOUT,74)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,75)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,76)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = kernel_3mm_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,78)
    assign out_valid_out_1 = kernel_3mm_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,80)
    assign out_pipeline_valid_out = bb_kernel_3mm_B4_stall_region_out_pipeline_valid_out;

endmodule
