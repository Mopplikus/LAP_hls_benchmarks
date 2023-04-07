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

// SystemVerilog created from bb_gaussian_B7
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B7 (
    input wire [31:0] in_add36_pop1569_0,
    input wire [31:0] in_add36_pop1569_1,
    input wire [31:0] in_add57_0,
    input wire [31:0] in_add57_1,
    input wire [0:0] in_cmp41638_pop1661_0,
    input wire [0:0] in_cmp41638_pop1661_1,
    input wire [0:0] in_cmp41660_0,
    input wire [0:0] in_cmp41660_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_fpga_indvars_iv732_pop1367_0,
    input wire [31:0] in_fpga_indvars_iv732_pop1367_1,
    input wire [31:0] in_fpga_indvars_iv748_0,
    input wire [31:0] in_fpga_indvars_iv748_1,
    input wire [31:0] in_fpga_indvars_iv930_pop1266_0,
    input wire [31:0] in_fpga_indvars_iv930_pop1266_1,
    input wire [31:0] in_fpga_indvars_iv945_0,
    input wire [31:0] in_fpga_indvars_iv945_1,
    input wire [31:0] in_i_017_pop963_0,
    input wire [31:0] in_i_017_pop963_1,
    input wire [31:0] in_j_01834_pop1468_0,
    input wire [31:0] in_j_01834_pop1468_1,
    input wire [31:0] in_j_01851_0,
    input wire [31:0] in_j_01851_1,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_phi4_pop727_pop1165_0,
    input wire [0:0] in_memdep_phi4_pop727_pop1165_1,
    input wire [0:0] in_memdep_phi4_pop72954_0,
    input wire [0:0] in_memdep_phi4_pop72954_1,
    input wire [0:0] in_memdep_phi_pop1064_0,
    input wire [0:0] in_memdep_phi_pop1064_1,
    input wire [0:0] in_notcmp1762_0,
    input wire [0:0] in_notcmp1762_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [32:0] in_unnamed_gaussian5_0,
    input wire [32:0] in_unnamed_gaussian5_1,
    input wire [0:0] in_unnamed_gaussian6_0,
    input wire [0:0] in_unnamed_gaussian6_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10137,
    output wire [0:0] out_c0_exe2129,
    output wire [0:0] out_c0_exe3130,
    output wire [0:0] out_c0_exe4131,
    output wire [31:0] out_c0_exe6133,
    output wire [31:0] out_c0_exe7134,
    output wire [31:0] out_c0_exe8135,
    output wire [0:0] out_c0_exe9136,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe10137;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe2129;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe3130;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe4131;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe5132;
    wire [31:0] bb_gaussian_B7_stall_region_out_c0_exe6133;
    wire [31:0] bb_gaussian_B7_stall_region_out_c0_exe7134;
    wire [31:0] bb_gaussian_B7_stall_region_out_c0_exe8135;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe9136;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_valid_out;
    wire [0:0] gaussian_B7_branch_out_c0_exe10137;
    wire [0:0] gaussian_B7_branch_out_c0_exe2129;
    wire [0:0] gaussian_B7_branch_out_c0_exe3130;
    wire [0:0] gaussian_B7_branch_out_c0_exe4131;
    wire [31:0] gaussian_B7_branch_out_c0_exe6133;
    wire [31:0] gaussian_B7_branch_out_c0_exe7134;
    wire [31:0] gaussian_B7_branch_out_c0_exe8135;
    wire [0:0] gaussian_B7_branch_out_c0_exe9136;
    wire [0:0] gaussian_B7_branch_out_stall_out;
    wire [0:0] gaussian_B7_branch_out_valid_out_0;
    wire [0:0] gaussian_B7_branch_out_valid_out_1;
    wire [31:0] gaussian_B7_merge_out_add36_pop1569;
    wire [31:0] gaussian_B7_merge_out_add57;
    wire [0:0] gaussian_B7_merge_out_cmp41638_pop1661;
    wire [0:0] gaussian_B7_merge_out_cmp41660;
    wire [0:0] gaussian_B7_merge_out_forked;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv732_pop1367;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv748;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv930_pop1266;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv945;
    wire [31:0] gaussian_B7_merge_out_i_017_pop963;
    wire [31:0] gaussian_B7_merge_out_j_01834_pop1468;
    wire [31:0] gaussian_B7_merge_out_j_01851;
    wire [0:0] gaussian_B7_merge_out_memdep_phi4_pop727_pop1165;
    wire [0:0] gaussian_B7_merge_out_memdep_phi4_pop72954;
    wire [0:0] gaussian_B7_merge_out_memdep_phi_pop1064;
    wire [0:0] gaussian_B7_merge_out_notcmp1762;
    wire [0:0] gaussian_B7_merge_out_stall_out_0;
    wire [0:0] gaussian_B7_merge_out_stall_out_1;
    wire [32:0] gaussian_B7_merge_out_unnamed_gaussian5;
    wire [0:0] gaussian_B7_merge_out_unnamed_gaussian6;
    wire [0:0] gaussian_B7_merge_out_valid_out;


    // gaussian_B7_merge(BLACKBOX,4)
    gaussian_B7_merge thegaussian_B7_merge (
        .in_add36_pop1569_0(in_add36_pop1569_0),
        .in_add36_pop1569_1(in_add36_pop1569_1),
        .in_add57_0(in_add57_0),
        .in_add57_1(in_add57_1),
        .in_cmp41638_pop1661_0(in_cmp41638_pop1661_0),
        .in_cmp41638_pop1661_1(in_cmp41638_pop1661_1),
        .in_cmp41660_0(in_cmp41660_0),
        .in_cmp41660_1(in_cmp41660_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_fpga_indvars_iv732_pop1367_0(in_fpga_indvars_iv732_pop1367_0),
        .in_fpga_indvars_iv732_pop1367_1(in_fpga_indvars_iv732_pop1367_1),
        .in_fpga_indvars_iv748_0(in_fpga_indvars_iv748_0),
        .in_fpga_indvars_iv748_1(in_fpga_indvars_iv748_1),
        .in_fpga_indvars_iv930_pop1266_0(in_fpga_indvars_iv930_pop1266_0),
        .in_fpga_indvars_iv930_pop1266_1(in_fpga_indvars_iv930_pop1266_1),
        .in_fpga_indvars_iv945_0(in_fpga_indvars_iv945_0),
        .in_fpga_indvars_iv945_1(in_fpga_indvars_iv945_1),
        .in_i_017_pop963_0(in_i_017_pop963_0),
        .in_i_017_pop963_1(in_i_017_pop963_1),
        .in_j_01834_pop1468_0(in_j_01834_pop1468_0),
        .in_j_01834_pop1468_1(in_j_01834_pop1468_1),
        .in_j_01851_0(in_j_01851_0),
        .in_j_01851_1(in_j_01851_1),
        .in_memdep_phi4_pop727_pop1165_0(in_memdep_phi4_pop727_pop1165_0),
        .in_memdep_phi4_pop727_pop1165_1(in_memdep_phi4_pop727_pop1165_1),
        .in_memdep_phi4_pop72954_0(in_memdep_phi4_pop72954_0),
        .in_memdep_phi4_pop72954_1(in_memdep_phi4_pop72954_1),
        .in_memdep_phi_pop1064_0(in_memdep_phi_pop1064_0),
        .in_memdep_phi_pop1064_1(in_memdep_phi_pop1064_1),
        .in_notcmp1762_0(in_notcmp1762_0),
        .in_notcmp1762_1(in_notcmp1762_1),
        .in_stall_in(bb_gaussian_B7_stall_region_out_stall_out),
        .in_unnamed_gaussian5_0(in_unnamed_gaussian5_0),
        .in_unnamed_gaussian5_1(in_unnamed_gaussian5_1),
        .in_unnamed_gaussian6_0(in_unnamed_gaussian6_0),
        .in_unnamed_gaussian6_1(in_unnamed_gaussian6_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add36_pop1569(gaussian_B7_merge_out_add36_pop1569),
        .out_add57(gaussian_B7_merge_out_add57),
        .out_cmp41638_pop1661(gaussian_B7_merge_out_cmp41638_pop1661),
        .out_cmp41660(gaussian_B7_merge_out_cmp41660),
        .out_forked(gaussian_B7_merge_out_forked),
        .out_fpga_indvars_iv732_pop1367(gaussian_B7_merge_out_fpga_indvars_iv732_pop1367),
        .out_fpga_indvars_iv748(gaussian_B7_merge_out_fpga_indvars_iv748),
        .out_fpga_indvars_iv930_pop1266(gaussian_B7_merge_out_fpga_indvars_iv930_pop1266),
        .out_fpga_indvars_iv945(gaussian_B7_merge_out_fpga_indvars_iv945),
        .out_i_017_pop963(gaussian_B7_merge_out_i_017_pop963),
        .out_j_01834_pop1468(gaussian_B7_merge_out_j_01834_pop1468),
        .out_j_01851(gaussian_B7_merge_out_j_01851),
        .out_memdep_phi4_pop727_pop1165(gaussian_B7_merge_out_memdep_phi4_pop727_pop1165),
        .out_memdep_phi4_pop72954(gaussian_B7_merge_out_memdep_phi4_pop72954),
        .out_memdep_phi_pop1064(gaussian_B7_merge_out_memdep_phi_pop1064),
        .out_notcmp1762(gaussian_B7_merge_out_notcmp1762),
        .out_stall_out_0(gaussian_B7_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B7_merge_out_stall_out_1),
        .out_unnamed_gaussian5(gaussian_B7_merge_out_unnamed_gaussian5),
        .out_unnamed_gaussian6(gaussian_B7_merge_out_unnamed_gaussian6),
        .out_valid_out(gaussian_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7_stall_region(BLACKBOX,2)
    gaussian_bb_B7_stall_region thebb_gaussian_B7_stall_region (
        .in_add36_pop1569(gaussian_B7_merge_out_add36_pop1569),
        .in_add57(gaussian_B7_merge_out_add57),
        .in_cmp41638_pop1661(gaussian_B7_merge_out_cmp41638_pop1661),
        .in_cmp41660(gaussian_B7_merge_out_cmp41660),
        .in_flush(in_flush),
        .in_forked(gaussian_B7_merge_out_forked),
        .in_fpga_indvars_iv732_pop1367(gaussian_B7_merge_out_fpga_indvars_iv732_pop1367),
        .in_fpga_indvars_iv748(gaussian_B7_merge_out_fpga_indvars_iv748),
        .in_fpga_indvars_iv930_pop1266(gaussian_B7_merge_out_fpga_indvars_iv930_pop1266),
        .in_fpga_indvars_iv945(gaussian_B7_merge_out_fpga_indvars_iv945),
        .in_i_017_pop963(gaussian_B7_merge_out_i_017_pop963),
        .in_j_01834_pop1468(gaussian_B7_merge_out_j_01834_pop1468),
        .in_j_01851(gaussian_B7_merge_out_j_01851),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_memdep_phi4_pop727_pop1165(gaussian_B7_merge_out_memdep_phi4_pop727_pop1165),
        .in_memdep_phi4_pop72954(gaussian_B7_merge_out_memdep_phi4_pop72954),
        .in_memdep_phi_pop1064(gaussian_B7_merge_out_memdep_phi_pop1064),
        .in_notcmp1762(gaussian_B7_merge_out_notcmp1762),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(gaussian_B7_branch_out_stall_out),
        .in_unnamed_gaussian5(gaussian_B7_merge_out_unnamed_gaussian5),
        .in_unnamed_gaussian6(gaussian_B7_merge_out_unnamed_gaussian6),
        .in_valid_in(gaussian_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out(bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out(bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out),
        .out_c0_exe10137(bb_gaussian_B7_stall_region_out_c0_exe10137),
        .out_c0_exe2129(bb_gaussian_B7_stall_region_out_c0_exe2129),
        .out_c0_exe3130(bb_gaussian_B7_stall_region_out_c0_exe3130),
        .out_c0_exe4131(bb_gaussian_B7_stall_region_out_c0_exe4131),
        .out_c0_exe5132(bb_gaussian_B7_stall_region_out_c0_exe5132),
        .out_c0_exe6133(bb_gaussian_B7_stall_region_out_c0_exe6133),
        .out_c0_exe7134(bb_gaussian_B7_stall_region_out_c0_exe7134),
        .out_c0_exe8135(bb_gaussian_B7_stall_region_out_c0_exe8135),
        .out_c0_exe9136(bb_gaussian_B7_stall_region_out_c0_exe9136),
        .out_lm1_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata),
        .out_pipeline_valid_out(bb_gaussian_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_gaussian_B7_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B7_branch(BLACKBOX,3)
    gaussian_B7_branch thegaussian_B7_branch (
        .in_c0_exe10137(bb_gaussian_B7_stall_region_out_c0_exe10137),
        .in_c0_exe2129(bb_gaussian_B7_stall_region_out_c0_exe2129),
        .in_c0_exe3130(bb_gaussian_B7_stall_region_out_c0_exe3130),
        .in_c0_exe4131(bb_gaussian_B7_stall_region_out_c0_exe4131),
        .in_c0_exe5132(bb_gaussian_B7_stall_region_out_c0_exe5132),
        .in_c0_exe6133(bb_gaussian_B7_stall_region_out_c0_exe6133),
        .in_c0_exe7134(bb_gaussian_B7_stall_region_out_c0_exe7134),
        .in_c0_exe8135(bb_gaussian_B7_stall_region_out_c0_exe8135),
        .in_c0_exe9136(bb_gaussian_B7_stall_region_out_c0_exe9136),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B7_stall_region_out_valid_out),
        .out_c0_exe10137(gaussian_B7_branch_out_c0_exe10137),
        .out_c0_exe2129(gaussian_B7_branch_out_c0_exe2129),
        .out_c0_exe3130(gaussian_B7_branch_out_c0_exe3130),
        .out_c0_exe4131(gaussian_B7_branch_out_c0_exe4131),
        .out_c0_exe6133(gaussian_B7_branch_out_c0_exe6133),
        .out_c0_exe7134(gaussian_B7_branch_out_c0_exe7134),
        .out_c0_exe8135(gaussian_B7_branch_out_c0_exe8135),
        .out_c0_exe9136(gaussian_B7_branch_out_c0_exe9136),
        .out_stall_out(gaussian_B7_branch_out_stall_out),
        .out_valid_out_0(gaussian_B7_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10137(GPOUT,62)
    assign out_c0_exe10137 = gaussian_B7_branch_out_c0_exe10137;

    // out_c0_exe2129(GPOUT,63)
    assign out_c0_exe2129 = gaussian_B7_branch_out_c0_exe2129;

    // out_c0_exe3130(GPOUT,64)
    assign out_c0_exe3130 = gaussian_B7_branch_out_c0_exe3130;

    // out_c0_exe4131(GPOUT,65)
    assign out_c0_exe4131 = gaussian_B7_branch_out_c0_exe4131;

    // out_c0_exe6133(GPOUT,66)
    assign out_c0_exe6133 = gaussian_B7_branch_out_c0_exe6133;

    // out_c0_exe7134(GPOUT,67)
    assign out_c0_exe7134 = gaussian_B7_branch_out_c0_exe7134;

    // out_c0_exe8135(GPOUT,68)
    assign out_c0_exe8135 = gaussian_B7_branch_out_c0_exe8135;

    // out_c0_exe9136(GPOUT,69)
    assign out_c0_exe9136 = gaussian_B7_branch_out_c0_exe9136;

    // out_exiting_stall_out(GPOUT,70)
    assign out_exiting_stall_out = bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,71)
    assign out_exiting_valid_out = bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out;

    // out_lm1_gaussian_avm_address(GPOUT,72)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,73)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,74)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,75)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,76)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,77)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,78)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata;

    // out_lm62_gaussian_avm_address(GPOUT,79)
    assign out_lm62_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_address;

    // out_lm62_gaussian_avm_burstcount(GPOUT,80)
    assign out_lm62_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_burstcount;

    // out_lm62_gaussian_avm_byteenable(GPOUT,81)
    assign out_lm62_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_byteenable;

    // out_lm62_gaussian_avm_enable(GPOUT,82)
    assign out_lm62_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_enable;

    // out_lm62_gaussian_avm_read(GPOUT,83)
    assign out_lm62_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_read;

    // out_lm62_gaussian_avm_write(GPOUT,84)
    assign out_lm62_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_write;

    // out_lm62_gaussian_avm_writedata(GPOUT,85)
    assign out_lm62_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_writedata;

    // out_lm83_gaussian_avm_address(GPOUT,86)
    assign out_lm83_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_address;

    // out_lm83_gaussian_avm_burstcount(GPOUT,87)
    assign out_lm83_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_burstcount;

    // out_lm83_gaussian_avm_byteenable(GPOUT,88)
    assign out_lm83_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_byteenable;

    // out_lm83_gaussian_avm_enable(GPOUT,89)
    assign out_lm83_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_enable;

    // out_lm83_gaussian_avm_read(GPOUT,90)
    assign out_lm83_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_read;

    // out_lm83_gaussian_avm_write(GPOUT,91)
    assign out_lm83_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_write;

    // out_lm83_gaussian_avm_writedata(GPOUT,92)
    assign out_lm83_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_writedata;

    // out_memdep_gaussian_avm_address(GPOUT,93)
    assign out_memdep_gaussian_avm_address = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address;

    // out_memdep_gaussian_avm_burstcount(GPOUT,94)
    assign out_memdep_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount;

    // out_memdep_gaussian_avm_byteenable(GPOUT,95)
    assign out_memdep_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable;

    // out_memdep_gaussian_avm_enable(GPOUT,96)
    assign out_memdep_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable;

    // out_memdep_gaussian_avm_read(GPOUT,97)
    assign out_memdep_gaussian_avm_read = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read;

    // out_memdep_gaussian_avm_write(GPOUT,98)
    assign out_memdep_gaussian_avm_write = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write;

    // out_memdep_gaussian_avm_writedata(GPOUT,99)
    assign out_memdep_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata;

    // out_stall_in_0(GPOUT,100)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,101)
    assign out_stall_out_0 = gaussian_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,102)
    assign out_stall_out_1 = gaussian_B7_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,103)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,104)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,105)
    assign out_valid_out_0 = gaussian_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,106)
    assign out_valid_out_1 = gaussian_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,108)
    assign out_pipeline_valid_out = bb_gaussian_B7_stall_region_out_pipeline_valid_out;

endmodule
