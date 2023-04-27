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

// SystemVerilog created from bb_stencil_2d_B9
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B9 (
    input wire [31:0] in_c_025_pop1546_pop2586_0,
    input wire [31:0] in_c_025_pop1546_pop2586_1,
    input wire [31:0] in_c_025_pop1573_0,
    input wire [31:0] in_c_025_pop1573_1,
    input wire [31:0] in_dot_prod_add87_0,
    input wire [31:0] in_dot_prod_add87_1,
    input wire [0:0] in_exitcond388_0,
    input wire [0:0] in_exitcond388_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked3183_0,
    input wire [0:0] in_forked3183_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_mul16_add1184_0,
    input wire [31:0] in_mul16_add1184_1,
    input wire [31:0] in_mul2838_pop1779_0,
    input wire [31:0] in_mul2838_pop1779_1,
    input wire [31:0] in_mul2839_pop2290_0,
    input wire [31:0] in_mul2839_pop2290_1,
    input wire [31:0] in_mul2861_0,
    input wire [31:0] in_mul2861_1,
    input wire [0:0] in_notcmp1389_0,
    input wire [0:0] in_notcmp1389_1,
    input wire [0:0] in_notcmp1844_pop2492_0,
    input wire [0:0] in_notcmp1844_pop2492_1,
    input wire [0:0] in_notcmp1870_0,
    input wire [0:0] in_notcmp1870_1,
    input wire [0:0] in_notcmp2341_pop1882_0,
    input wire [0:0] in_notcmp2341_pop1882_1,
    input wire [0:0] in_notcmp2342_pop2391_0,
    input wire [0:0] in_notcmp2342_pop2391_1,
    input wire [0:0] in_notcmp2366_0,
    input wire [0:0] in_notcmp2366_1,
    input wire [31:0] in_r_026_pop1335_pop1676_0,
    input wire [31:0] in_r_026_pop1335_pop1676_1,
    input wire [31:0] in_r_026_pop1336_pop2185_0,
    input wire [31:0] in_r_026_pop1336_pop2185_1,
    input wire [31:0] in_r_026_pop1356_0,
    input wire [31:0] in_r_026_pop1356_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1197,
    output wire [31:0] out_c0_exe4200,
    output wire [0:0] out_c0_exe5201,
    output wire [0:0] out_c0_exe6202,
    output wire [31:0] out_c0_exe7203,
    output wire [0:0] out_c0_exe8204,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_stencil_2d7_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d7_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d7_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d8_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d8_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d8_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe1197;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe3199;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe4200;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe5201;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe6202;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe7203;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe8204;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_stall_out;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_valid_out;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe1197;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe4200;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe5201;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe6202;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe7203;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe8204;
    wire [0:0] stencil_2d_B9_branch_out_stall_out;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_1;
    wire [31:0] stencil_2d_B9_merge_out_c_025_pop1546_pop2586;
    wire [31:0] stencil_2d_B9_merge_out_c_025_pop1573;
    wire [31:0] stencil_2d_B9_merge_out_dot_prod_add87;
    wire [0:0] stencil_2d_B9_merge_out_exitcond388;
    wire [0:0] stencil_2d_B9_merge_out_forked;
    wire [0:0] stencil_2d_B9_merge_out_forked3183;
    wire [31:0] stencil_2d_B9_merge_out_mul16_add1184;
    wire [31:0] stencil_2d_B9_merge_out_mul2838_pop1779;
    wire [31:0] stencil_2d_B9_merge_out_mul2839_pop2290;
    wire [31:0] stencil_2d_B9_merge_out_mul2861;
    wire [0:0] stencil_2d_B9_merge_out_notcmp1389;
    wire [0:0] stencil_2d_B9_merge_out_notcmp1844_pop2492;
    wire [0:0] stencil_2d_B9_merge_out_notcmp1870;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2341_pop1882;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2342_pop2391;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2366;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1335_pop1676;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1336_pop2185;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1356;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B9_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // stencil_2d_B9_merge(BLACKBOX,87)
    stencil_2d_B9_merge thestencil_2d_B9_merge (
        .in_c_025_pop1546_pop2586_0(in_c_025_pop1546_pop2586_0),
        .in_c_025_pop1546_pop2586_1(in_c_025_pop1546_pop2586_1),
        .in_c_025_pop1573_0(in_c_025_pop1573_0),
        .in_c_025_pop1573_1(in_c_025_pop1573_1),
        .in_dot_prod_add87_0(in_dot_prod_add87_0),
        .in_dot_prod_add87_1(in_dot_prod_add87_1),
        .in_exitcond388_0(in_exitcond388_0),
        .in_exitcond388_1(in_exitcond388_1),
        .in_forked3183_0(in_forked3183_0),
        .in_forked3183_1(in_forked3183_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_mul16_add1184_0(in_mul16_add1184_0),
        .in_mul16_add1184_1(in_mul16_add1184_1),
        .in_mul2838_pop1779_0(in_mul2838_pop1779_0),
        .in_mul2838_pop1779_1(in_mul2838_pop1779_1),
        .in_mul2839_pop2290_0(in_mul2839_pop2290_0),
        .in_mul2839_pop2290_1(in_mul2839_pop2290_1),
        .in_mul2861_0(in_mul2861_0),
        .in_mul2861_1(in_mul2861_1),
        .in_notcmp1389_0(in_notcmp1389_0),
        .in_notcmp1389_1(in_notcmp1389_1),
        .in_notcmp1844_pop2492_0(in_notcmp1844_pop2492_0),
        .in_notcmp1844_pop2492_1(in_notcmp1844_pop2492_1),
        .in_notcmp1870_0(in_notcmp1870_0),
        .in_notcmp1870_1(in_notcmp1870_1),
        .in_notcmp2341_pop1882_0(in_notcmp2341_pop1882_0),
        .in_notcmp2341_pop1882_1(in_notcmp2341_pop1882_1),
        .in_notcmp2342_pop2391_0(in_notcmp2342_pop2391_0),
        .in_notcmp2342_pop2391_1(in_notcmp2342_pop2391_1),
        .in_notcmp2366_0(in_notcmp2366_0),
        .in_notcmp2366_1(in_notcmp2366_1),
        .in_r_026_pop1335_pop1676_0(in_r_026_pop1335_pop1676_0),
        .in_r_026_pop1335_pop1676_1(in_r_026_pop1335_pop1676_1),
        .in_r_026_pop1336_pop2185_0(in_r_026_pop1336_pop2185_0),
        .in_r_026_pop1336_pop2185_1(in_r_026_pop1336_pop2185_1),
        .in_r_026_pop1356_0(in_r_026_pop1356_0),
        .in_r_026_pop1356_1(in_r_026_pop1356_1),
        .in_stall_in(bb_stencil_2d_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_025_pop1546_pop2586(stencil_2d_B9_merge_out_c_025_pop1546_pop2586),
        .out_c_025_pop1573(stencil_2d_B9_merge_out_c_025_pop1573),
        .out_dot_prod_add87(stencil_2d_B9_merge_out_dot_prod_add87),
        .out_exitcond388(stencil_2d_B9_merge_out_exitcond388),
        .out_forked(stencil_2d_B9_merge_out_forked),
        .out_forked3183(stencil_2d_B9_merge_out_forked3183),
        .out_mul16_add1184(stencil_2d_B9_merge_out_mul16_add1184),
        .out_mul2838_pop1779(stencil_2d_B9_merge_out_mul2838_pop1779),
        .out_mul2839_pop2290(stencil_2d_B9_merge_out_mul2839_pop2290),
        .out_mul2861(stencil_2d_B9_merge_out_mul2861),
        .out_notcmp1389(stencil_2d_B9_merge_out_notcmp1389),
        .out_notcmp1844_pop2492(stencil_2d_B9_merge_out_notcmp1844_pop2492),
        .out_notcmp1870(stencil_2d_B9_merge_out_notcmp1870),
        .out_notcmp2341_pop1882(stencil_2d_B9_merge_out_notcmp2341_pop1882),
        .out_notcmp2342_pop2391(stencil_2d_B9_merge_out_notcmp2342_pop2391),
        .out_notcmp2366(stencil_2d_B9_merge_out_notcmp2366),
        .out_r_026_pop1335_pop1676(stencil_2d_B9_merge_out_r_026_pop1335_pop1676),
        .out_r_026_pop1336_pop2185(stencil_2d_B9_merge_out_r_026_pop1336_pop2185),
        .out_r_026_pop1356(stencil_2d_B9_merge_out_r_026_pop1356),
        .out_stall_out_0(stencil_2d_B9_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B9_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9_stall_region(BLACKBOX,2)
    stencil_2d_bb_B9_stall_region thebb_stencil_2d_B9_stall_region (
        .in_c_025_pop1546_pop2586(stencil_2d_B9_merge_out_c_025_pop1546_pop2586),
        .in_c_025_pop1573(stencil_2d_B9_merge_out_c_025_pop1573),
        .in_dot_prod_add87(stencil_2d_B9_merge_out_dot_prod_add87),
        .in_exitcond388(stencil_2d_B9_merge_out_exitcond388),
        .in_flush(in_flush),
        .in_forked(stencil_2d_B9_merge_out_forked),
        .in_forked3183(stencil_2d_B9_merge_out_forked3183),
        .in_mul16_add1184(stencil_2d_B9_merge_out_mul16_add1184),
        .in_mul2838_pop1779(stencil_2d_B9_merge_out_mul2838_pop1779),
        .in_mul2839_pop2290(stencil_2d_B9_merge_out_mul2839_pop2290),
        .in_mul2861(stencil_2d_B9_merge_out_mul2861),
        .in_notcmp1389(stencil_2d_B9_merge_out_notcmp1389),
        .in_notcmp1844_pop2492(stencil_2d_B9_merge_out_notcmp1844_pop2492),
        .in_notcmp1870(stencil_2d_B9_merge_out_notcmp1870),
        .in_notcmp2341_pop1882(stencil_2d_B9_merge_out_notcmp2341_pop1882),
        .in_notcmp2342_pop2391(stencil_2d_B9_merge_out_notcmp2342_pop2391),
        .in_notcmp2366(stencil_2d_B9_merge_out_notcmp2366),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_026_pop1335_pop1676(stencil_2d_B9_merge_out_r_026_pop1335_pop1676),
        .in_r_026_pop1336_pop2185(stencil_2d_B9_merge_out_r_026_pop1336_pop2185),
        .in_r_026_pop1356(stencil_2d_B9_merge_out_r_026_pop1356),
        .in_stall_in(stencil_2d_B9_branch_out_stall_out),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdata(in_unnamed_stencil_2d7_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d7_stencil_2d_avm_writeack(in_unnamed_stencil_2d7_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdata(in_unnamed_stencil_2d8_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d8_stencil_2d_avm_writeack(in_unnamed_stencil_2d8_stencil_2d_avm_writeack),
        .in_valid_in(stencil_2d_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_stall_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_valid_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_valid_out),
        .out_c0_exe1197(bb_stencil_2d_B9_stall_region_out_c0_exe1197),
        .out_c0_exe3199(bb_stencil_2d_B9_stall_region_out_c0_exe3199),
        .out_c0_exe4200(bb_stencil_2d_B9_stall_region_out_c0_exe4200),
        .out_c0_exe5201(bb_stencil_2d_B9_stall_region_out_c0_exe5201),
        .out_c0_exe6202(bb_stencil_2d_B9_stall_region_out_c0_exe6202),
        .out_c0_exe7203(bb_stencil_2d_B9_stall_region_out_c0_exe7203),
        .out_c0_exe8204(bb_stencil_2d_B9_stall_region_out_c0_exe8204),
        .out_intel_reserved_ffwd_0_0(bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_0_0),
        .out_pipeline_valid_out(bb_stencil_2d_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B9_stall_region_out_stall_out),
        .out_unnamed_stencil_2d7_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_address),
        .out_unnamed_stencil_2d7_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d7_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_read),
        .out_unnamed_stencil_2d7_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_write),
        .out_unnamed_stencil_2d7_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d8_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_address),
        .out_unnamed_stencil_2d8_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d8_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_read),
        .out_unnamed_stencil_2d8_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_write),
        .out_unnamed_stencil_2d8_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_writedata),
        .out_valid_out(bb_stencil_2d_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B9_branch(BLACKBOX,86)
    stencil_2d_B9_branch thestencil_2d_B9_branch (
        .in_c0_exe1197(bb_stencil_2d_B9_stall_region_out_c0_exe1197),
        .in_c0_exe3199(bb_stencil_2d_B9_stall_region_out_c0_exe3199),
        .in_c0_exe4200(bb_stencil_2d_B9_stall_region_out_c0_exe4200),
        .in_c0_exe5201(bb_stencil_2d_B9_stall_region_out_c0_exe5201),
        .in_c0_exe6202(bb_stencil_2d_B9_stall_region_out_c0_exe6202),
        .in_c0_exe7203(bb_stencil_2d_B9_stall_region_out_c0_exe7203),
        .in_c0_exe8204(bb_stencil_2d_B9_stall_region_out_c0_exe8204),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B9_stall_region_out_valid_out),
        .out_c0_exe1197(stencil_2d_B9_branch_out_c0_exe1197),
        .out_c0_exe4200(stencil_2d_B9_branch_out_c0_exe4200),
        .out_c0_exe5201(stencil_2d_B9_branch_out_c0_exe5201),
        .out_c0_exe6202(stencil_2d_B9_branch_out_c0_exe6202),
        .out_c0_exe7203(stencil_2d_B9_branch_out_c0_exe7203),
        .out_c0_exe8204(stencil_2d_B9_branch_out_c0_exe8204),
        .out_stall_out(stencil_2d_B9_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B9_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1197(GPOUT,54)
    assign out_c0_exe1197 = stencil_2d_B9_branch_out_c0_exe1197;

    // out_c0_exe4200(GPOUT,55)
    assign out_c0_exe4200 = stencil_2d_B9_branch_out_c0_exe4200;

    // out_c0_exe5201(GPOUT,56)
    assign out_c0_exe5201 = stencil_2d_B9_branch_out_c0_exe5201;

    // out_c0_exe6202(GPOUT,57)
    assign out_c0_exe6202 = stencil_2d_B9_branch_out_c0_exe6202;

    // out_c0_exe7203(GPOUT,58)
    assign out_c0_exe7203 = stencil_2d_B9_branch_out_c0_exe7203;

    // out_c0_exe8204(GPOUT,59)
    assign out_c0_exe8204 = stencil_2d_B9_branch_out_c0_exe8204;

    // out_exiting_stall_out(GPOUT,60)
    assign out_exiting_stall_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,61)
    assign out_exiting_valid_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,62)
    assign out_intel_reserved_ffwd_0_0 = bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_0_0;

    // out_stall_in_0(GPOUT,63)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,64)
    assign out_stall_out_0 = stencil_2d_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,65)
    assign out_stall_out_1 = stencil_2d_B9_merge_out_stall_out_1;

    // out_unnamed_stencil_2d7_stencil_2d_avm_address(GPOUT,66)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_address;

    // out_unnamed_stencil_2d7_stencil_2d_avm_burstcount(GPOUT,67)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d7_stencil_2d_avm_byteenable(GPOUT,68)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d7_stencil_2d_avm_enable(GPOUT,69)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d7_stencil_2d_avm_read(GPOUT,70)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_read;

    // out_unnamed_stencil_2d7_stencil_2d_avm_write(GPOUT,71)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_write;

    // out_unnamed_stencil_2d7_stencil_2d_avm_writedata(GPOUT,72)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d8_stencil_2d_avm_address(GPOUT,73)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_address;

    // out_unnamed_stencil_2d8_stencil_2d_avm_burstcount(GPOUT,74)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d8_stencil_2d_avm_byteenable(GPOUT,75)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d8_stencil_2d_avm_enable(GPOUT,76)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d8_stencil_2d_avm_read(GPOUT,77)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_read;

    // out_unnamed_stencil_2d8_stencil_2d_avm_write(GPOUT,78)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_write;

    // out_unnamed_stencil_2d8_stencil_2d_avm_writedata(GPOUT,79)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;

    // out_valid_in_0(GPOUT,80)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,81)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,82)
    assign out_valid_out_0 = stencil_2d_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,83)
    assign out_valid_out_1 = stencil_2d_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = bb_stencil_2d_B9_stall_region_out_pipeline_valid_out;

    // rst_sync(RESETSYNC,88)
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
