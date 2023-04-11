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

// SystemVerilog created from bb_atax_B7
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B7 (
    input wire [31:0] in_add73_0,
    input wire [31:0] in_add73_1,
    input wire [63:0] in_arrayidx145_pop2580_0,
    input wire [63:0] in_arrayidx145_pop2580_1,
    input wire [0:0] in_exitcond947_pop2682_0,
    input wire [0:0] in_exitcond947_pop2682_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_idxprom43_pop2471_0,
    input wire [63:0] in_idxprom43_pop2471_1,
    input wire [31:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [0:0] in_memdep_phi2_pop1370_0,
    input wire [0:0] in_memdep_phi2_pop1370_1,
    input wire [0:0] in_memdep_phi3_pop1040_pop2277_0,
    input wire [0:0] in_memdep_phi3_pop1040_pop2277_1,
    input wire [0:0] in_memdep_phi3_pop1060_0,
    input wire [0:0] in_memdep_phi3_pop1060_1,
    input wire [0:0] in_memdep_phi_pop937_pop2175_0,
    input wire [0:0] in_memdep_phi_pop937_pop2175_1,
    input wire [0:0] in_memdep_phi_pop955_0,
    input wire [0:0] in_memdep_phi_pop955_1,
    input wire [0:0] in_notcmp2649_pop2784_0,
    input wire [0:0] in_notcmp2649_pop2784_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2163,
    output wire [0:0] out_c0_exe3164,
    output wire [63:0] out_c0_exe5166,
    output wire [0:0] out_c0_exe6167,
    output wire [0:0] out_c0_exe7168,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
    output wire [3:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [31:0] out_memdep_1_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [31:0] out_unnamed_atax8_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] atax_B7_branch_out_c0_exe2163;
    wire [0:0] atax_B7_branch_out_c0_exe3164;
    wire [63:0] atax_B7_branch_out_c0_exe5166;
    wire [0:0] atax_B7_branch_out_c0_exe6167;
    wire [0:0] atax_B7_branch_out_c0_exe7168;
    wire [0:0] atax_B7_branch_out_stall_out;
    wire [0:0] atax_B7_branch_out_valid_out_0;
    wire [0:0] atax_B7_branch_out_valid_out_1;
    wire [31:0] atax_B7_merge_out_add73;
    wire [63:0] atax_B7_merge_out_arrayidx145_pop2580;
    wire [0:0] atax_B7_merge_out_exitcond947_pop2682;
    wire [0:0] atax_B7_merge_out_forked;
    wire [63:0] atax_B7_merge_out_idxprom43_pop2471;
    wire [0:0] atax_B7_merge_out_memdep_phi2_pop1370;
    wire [0:0] atax_B7_merge_out_memdep_phi3_pop1040_pop2277;
    wire [0:0] atax_B7_merge_out_memdep_phi3_pop1060;
    wire [0:0] atax_B7_merge_out_memdep_phi_pop937_pop2175;
    wire [0:0] atax_B7_merge_out_memdep_phi_pop955;
    wire [0:0] atax_B7_merge_out_notcmp2649_pop2784;
    wire [0:0] atax_B7_merge_out_stall_out_0;
    wire [0:0] atax_B7_merge_out_stall_out_1;
    wire [0:0] atax_B7_merge_out_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_valid_out;
    wire [31:0] bb_atax_B7_stall_region_out_c0_exe2163;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe3164;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe4165;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe5166;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe6167;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe7168;
    wire [31:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_stall_out;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_valid_out;


    // atax_B7_merge(BLACKBOX,3)
    atax_B7_merge theatax_B7_merge (
        .in_add73_0(in_add73_0),
        .in_add73_1(in_add73_1),
        .in_arrayidx145_pop2580_0(in_arrayidx145_pop2580_0),
        .in_arrayidx145_pop2580_1(in_arrayidx145_pop2580_1),
        .in_exitcond947_pop2682_0(in_exitcond947_pop2682_0),
        .in_exitcond947_pop2682_1(in_exitcond947_pop2682_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_idxprom43_pop2471_0(in_idxprom43_pop2471_0),
        .in_idxprom43_pop2471_1(in_idxprom43_pop2471_1),
        .in_memdep_phi2_pop1370_0(in_memdep_phi2_pop1370_0),
        .in_memdep_phi2_pop1370_1(in_memdep_phi2_pop1370_1),
        .in_memdep_phi3_pop1040_pop2277_0(in_memdep_phi3_pop1040_pop2277_0),
        .in_memdep_phi3_pop1040_pop2277_1(in_memdep_phi3_pop1040_pop2277_1),
        .in_memdep_phi3_pop1060_0(in_memdep_phi3_pop1060_0),
        .in_memdep_phi3_pop1060_1(in_memdep_phi3_pop1060_1),
        .in_memdep_phi_pop937_pop2175_0(in_memdep_phi_pop937_pop2175_0),
        .in_memdep_phi_pop937_pop2175_1(in_memdep_phi_pop937_pop2175_1),
        .in_memdep_phi_pop955_0(in_memdep_phi_pop955_0),
        .in_memdep_phi_pop955_1(in_memdep_phi_pop955_1),
        .in_notcmp2649_pop2784_0(in_notcmp2649_pop2784_0),
        .in_notcmp2649_pop2784_1(in_notcmp2649_pop2784_1),
        .in_stall_in(bb_atax_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add73(atax_B7_merge_out_add73),
        .out_arrayidx145_pop2580(atax_B7_merge_out_arrayidx145_pop2580),
        .out_exitcond947_pop2682(atax_B7_merge_out_exitcond947_pop2682),
        .out_forked(atax_B7_merge_out_forked),
        .out_idxprom43_pop2471(atax_B7_merge_out_idxprom43_pop2471),
        .out_memdep_phi2_pop1370(atax_B7_merge_out_memdep_phi2_pop1370),
        .out_memdep_phi3_pop1040_pop2277(atax_B7_merge_out_memdep_phi3_pop1040_pop2277),
        .out_memdep_phi3_pop1060(atax_B7_merge_out_memdep_phi3_pop1060),
        .out_memdep_phi_pop937_pop2175(atax_B7_merge_out_memdep_phi_pop937_pop2175),
        .out_memdep_phi_pop955(atax_B7_merge_out_memdep_phi_pop955),
        .out_notcmp2649_pop2784(atax_B7_merge_out_notcmp2649_pop2784),
        .out_stall_out_0(atax_B7_merge_out_stall_out_0),
        .out_stall_out_1(atax_B7_merge_out_stall_out_1),
        .out_valid_out(atax_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_stall_region(BLACKBOX,4)
    atax_bb_B7_stall_region thebb_atax_B7_stall_region (
        .in_add73(atax_B7_merge_out_add73),
        .in_arrayidx145_pop2580(atax_B7_merge_out_arrayidx145_pop2580),
        .in_exitcond947_pop2682(atax_B7_merge_out_exitcond947_pop2682),
        .in_flush(in_flush),
        .in_forked(atax_B7_merge_out_forked),
        .in_idxprom43_pop2471(atax_B7_merge_out_idxprom43_pop2471),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .in_memdep_phi2_pop1370(atax_B7_merge_out_memdep_phi2_pop1370),
        .in_memdep_phi3_pop1040_pop2277(atax_B7_merge_out_memdep_phi3_pop1040_pop2277),
        .in_memdep_phi3_pop1060(atax_B7_merge_out_memdep_phi3_pop1060),
        .in_memdep_phi_pop937_pop2175(atax_B7_merge_out_memdep_phi_pop937_pop2175),
        .in_memdep_phi_pop955(atax_B7_merge_out_memdep_phi_pop955),
        .in_notcmp2649_pop2784(atax_B7_merge_out_notcmp2649_pop2784),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B7_branch_out_stall_out),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .in_valid_in(atax_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_stall_out(bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_valid_out(bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_valid_out),
        .out_c0_exe2163(bb_atax_B7_stall_region_out_c0_exe2163),
        .out_c0_exe3164(bb_atax_B7_stall_region_out_c0_exe3164),
        .out_c0_exe4165(bb_atax_B7_stall_region_out_c0_exe4165),
        .out_c0_exe5166(bb_atax_B7_stall_region_out_c0_exe5166),
        .out_c0_exe6167(bb_atax_B7_stall_region_out_c0_exe6167),
        .out_c0_exe7168(bb_atax_B7_stall_region_out_c0_exe7168),
        .out_memdep_1_atax_avm_address(bb_atax_B7_stall_region_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(bb_atax_B7_stall_region_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(bb_atax_B7_stall_region_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(bb_atax_B7_stall_region_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(bb_atax_B7_stall_region_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(bb_atax_B7_stall_region_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(bb_atax_B7_stall_region_out_memdep_1_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B7_stall_region_out_stall_out),
        .out_unnamed_atax7_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_writedata),
        .out_unnamed_atax8_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_writedata),
        .out_valid_out(bb_atax_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B7_branch(BLACKBOX,2)
    atax_B7_branch theatax_B7_branch (
        .in_c0_exe2163(bb_atax_B7_stall_region_out_c0_exe2163),
        .in_c0_exe3164(bb_atax_B7_stall_region_out_c0_exe3164),
        .in_c0_exe4165(bb_atax_B7_stall_region_out_c0_exe4165),
        .in_c0_exe5166(bb_atax_B7_stall_region_out_c0_exe5166),
        .in_c0_exe6167(bb_atax_B7_stall_region_out_c0_exe6167),
        .in_c0_exe7168(bb_atax_B7_stall_region_out_c0_exe7168),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B7_stall_region_out_valid_out),
        .out_c0_exe2163(atax_B7_branch_out_c0_exe2163),
        .out_c0_exe3164(atax_B7_branch_out_c0_exe3164),
        .out_c0_exe5166(atax_B7_branch_out_c0_exe5166),
        .out_c0_exe6167(atax_B7_branch_out_c0_exe6167),
        .out_c0_exe7168(atax_B7_branch_out_c0_exe7168),
        .out_stall_out(atax_B7_branch_out_stall_out),
        .out_valid_out_0(atax_B7_branch_out_valid_out_0),
        .out_valid_out_1(atax_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2163(GPOUT,44)
    assign out_c0_exe2163 = atax_B7_branch_out_c0_exe2163;

    // out_c0_exe3164(GPOUT,45)
    assign out_c0_exe3164 = atax_B7_branch_out_c0_exe3164;

    // out_c0_exe5166(GPOUT,46)
    assign out_c0_exe5166 = atax_B7_branch_out_c0_exe5166;

    // out_c0_exe6167(GPOUT,47)
    assign out_c0_exe6167 = atax_B7_branch_out_c0_exe6167;

    // out_c0_exe7168(GPOUT,48)
    assign out_c0_exe7168 = atax_B7_branch_out_c0_exe7168;

    // out_exiting_stall_out(GPOUT,49)
    assign out_exiting_stall_out = bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,50)
    assign out_exiting_valid_out = bb_atax_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_valid_out;

    // out_memdep_1_atax_avm_address(GPOUT,51)
    assign out_memdep_1_atax_avm_address = bb_atax_B7_stall_region_out_memdep_1_atax_avm_address;

    // out_memdep_1_atax_avm_burstcount(GPOUT,52)
    assign out_memdep_1_atax_avm_burstcount = bb_atax_B7_stall_region_out_memdep_1_atax_avm_burstcount;

    // out_memdep_1_atax_avm_byteenable(GPOUT,53)
    assign out_memdep_1_atax_avm_byteenable = bb_atax_B7_stall_region_out_memdep_1_atax_avm_byteenable;

    // out_memdep_1_atax_avm_enable(GPOUT,54)
    assign out_memdep_1_atax_avm_enable = bb_atax_B7_stall_region_out_memdep_1_atax_avm_enable;

    // out_memdep_1_atax_avm_read(GPOUT,55)
    assign out_memdep_1_atax_avm_read = bb_atax_B7_stall_region_out_memdep_1_atax_avm_read;

    // out_memdep_1_atax_avm_write(GPOUT,56)
    assign out_memdep_1_atax_avm_write = bb_atax_B7_stall_region_out_memdep_1_atax_avm_write;

    // out_memdep_1_atax_avm_writedata(GPOUT,57)
    assign out_memdep_1_atax_avm_writedata = bb_atax_B7_stall_region_out_memdep_1_atax_avm_writedata;

    // out_stall_in_0(GPOUT,58)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = atax_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = atax_B7_merge_out_stall_out_1;

    // out_unnamed_atax7_atax_avm_address(GPOUT,61)
    assign out_unnamed_atax7_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_address;

    // out_unnamed_atax7_atax_avm_burstcount(GPOUT,62)
    assign out_unnamed_atax7_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_burstcount;

    // out_unnamed_atax7_atax_avm_byteenable(GPOUT,63)
    assign out_unnamed_atax7_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_byteenable;

    // out_unnamed_atax7_atax_avm_enable(GPOUT,64)
    assign out_unnamed_atax7_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_enable;

    // out_unnamed_atax7_atax_avm_read(GPOUT,65)
    assign out_unnamed_atax7_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_read;

    // out_unnamed_atax7_atax_avm_write(GPOUT,66)
    assign out_unnamed_atax7_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_write;

    // out_unnamed_atax7_atax_avm_writedata(GPOUT,67)
    assign out_unnamed_atax7_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_writedata;

    // out_unnamed_atax8_atax_avm_address(GPOUT,68)
    assign out_unnamed_atax8_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_address;

    // out_unnamed_atax8_atax_avm_burstcount(GPOUT,69)
    assign out_unnamed_atax8_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_burstcount;

    // out_unnamed_atax8_atax_avm_byteenable(GPOUT,70)
    assign out_unnamed_atax8_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_byteenable;

    // out_unnamed_atax8_atax_avm_enable(GPOUT,71)
    assign out_unnamed_atax8_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_enable;

    // out_unnamed_atax8_atax_avm_read(GPOUT,72)
    assign out_unnamed_atax8_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_read;

    // out_unnamed_atax8_atax_avm_write(GPOUT,73)
    assign out_unnamed_atax8_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_write;

    // out_unnamed_atax8_atax_avm_writedata(GPOUT,74)
    assign out_unnamed_atax8_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_writedata;

    // out_valid_in_0(GPOUT,75)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,76)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = atax_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,78)
    assign out_valid_out_1 = atax_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,80)
    assign out_pipeline_valid_out = bb_atax_B7_stall_region_out_pipeline_valid_out;

endmodule
