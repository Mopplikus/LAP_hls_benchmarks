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
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B9 (
    input wire [31:0] in_c_025_pop1547_pop2589_0,
    input wire [31:0] in_c_025_pop1547_pop2589_1,
    input wire [31:0] in_c_025_pop1576_0,
    input wire [31:0] in_c_025_pop1576_1,
    input wire [31:0] in_dot_prod_add90_0,
    input wire [31:0] in_dot_prod_add90_1,
    input wire [0:0] in_exitcond391_0,
    input wire [0:0] in_exitcond391_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked3286_0,
    input wire [0:0] in_forked3286_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_mul16_add1187_0,
    input wire [31:0] in_mul16_add1187_1,
    input wire [31:0] in_mul2839_pop1782_0,
    input wire [31:0] in_mul2839_pop1782_1,
    input wire [31:0] in_mul2840_pop2293_0,
    input wire [31:0] in_mul2840_pop2293_1,
    input wire [31:0] in_mul2864_0,
    input wire [31:0] in_mul2864_1,
    input wire [0:0] in_notcmp1492_0,
    input wire [0:0] in_notcmp1492_1,
    input wire [0:0] in_notcmp1945_pop2495_0,
    input wire [0:0] in_notcmp1945_pop2495_1,
    input wire [0:0] in_notcmp1973_0,
    input wire [0:0] in_notcmp1973_1,
    input wire [0:0] in_notcmp2442_pop1885_0,
    input wire [0:0] in_notcmp2442_pop1885_1,
    input wire [0:0] in_notcmp2443_pop2394_0,
    input wire [0:0] in_notcmp2443_pop2394_1,
    input wire [0:0] in_notcmp2469_0,
    input wire [0:0] in_notcmp2469_1,
    input wire [31:0] in_r_026_pop1336_pop1679_0,
    input wire [31:0] in_r_026_pop1336_pop1679_1,
    input wire [31:0] in_r_026_pop1337_pop2188_0,
    input wire [31:0] in_r_026_pop1337_pop2188_1,
    input wire [31:0] in_r_026_pop1359_0,
    input wire [31:0] in_r_026_pop1359_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2189,
    output wire [31:0] out_c0_exe4191,
    output wire [0:0] out_c0_exe5192,
    output wire [0:0] out_c0_exe6193,
    output wire [31:0] out_c0_exe7194,
    output wire [0:0] out_c0_exe8195,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d6_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe2189;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe3190;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe4191;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe5192;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe6193;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe7194;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe8195;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_stall_out;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_valid_out;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe2189;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe4191;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe5192;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe6193;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe7194;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe8195;
    wire [0:0] stencil_2d_B9_branch_out_stall_out;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_1;
    wire [31:0] stencil_2d_B9_merge_out_c_025_pop1547_pop2589;
    wire [31:0] stencil_2d_B9_merge_out_c_025_pop1576;
    wire [31:0] stencil_2d_B9_merge_out_dot_prod_add90;
    wire [0:0] stencil_2d_B9_merge_out_exitcond391;
    wire [0:0] stencil_2d_B9_merge_out_forked;
    wire [0:0] stencil_2d_B9_merge_out_forked3286;
    wire [31:0] stencil_2d_B9_merge_out_mul16_add1187;
    wire [31:0] stencil_2d_B9_merge_out_mul2839_pop1782;
    wire [31:0] stencil_2d_B9_merge_out_mul2840_pop2293;
    wire [31:0] stencil_2d_B9_merge_out_mul2864;
    wire [0:0] stencil_2d_B9_merge_out_notcmp1492;
    wire [0:0] stencil_2d_B9_merge_out_notcmp1945_pop2495;
    wire [0:0] stencil_2d_B9_merge_out_notcmp1973;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2442_pop1885;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2443_pop2394;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2469;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1336_pop1679;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1337_pop2188;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1359;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B9_merge_out_valid_out;


    // stencil_2d_B9_merge(BLACKBOX,87)
    stencil_2d_B9_merge thestencil_2d_B9_merge (
        .in_c_025_pop1547_pop2589_0(in_c_025_pop1547_pop2589_0),
        .in_c_025_pop1547_pop2589_1(in_c_025_pop1547_pop2589_1),
        .in_c_025_pop1576_0(in_c_025_pop1576_0),
        .in_c_025_pop1576_1(in_c_025_pop1576_1),
        .in_dot_prod_add90_0(in_dot_prod_add90_0),
        .in_dot_prod_add90_1(in_dot_prod_add90_1),
        .in_exitcond391_0(in_exitcond391_0),
        .in_exitcond391_1(in_exitcond391_1),
        .in_forked3286_0(in_forked3286_0),
        .in_forked3286_1(in_forked3286_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_mul16_add1187_0(in_mul16_add1187_0),
        .in_mul16_add1187_1(in_mul16_add1187_1),
        .in_mul2839_pop1782_0(in_mul2839_pop1782_0),
        .in_mul2839_pop1782_1(in_mul2839_pop1782_1),
        .in_mul2840_pop2293_0(in_mul2840_pop2293_0),
        .in_mul2840_pop2293_1(in_mul2840_pop2293_1),
        .in_mul2864_0(in_mul2864_0),
        .in_mul2864_1(in_mul2864_1),
        .in_notcmp1492_0(in_notcmp1492_0),
        .in_notcmp1492_1(in_notcmp1492_1),
        .in_notcmp1945_pop2495_0(in_notcmp1945_pop2495_0),
        .in_notcmp1945_pop2495_1(in_notcmp1945_pop2495_1),
        .in_notcmp1973_0(in_notcmp1973_0),
        .in_notcmp1973_1(in_notcmp1973_1),
        .in_notcmp2442_pop1885_0(in_notcmp2442_pop1885_0),
        .in_notcmp2442_pop1885_1(in_notcmp2442_pop1885_1),
        .in_notcmp2443_pop2394_0(in_notcmp2443_pop2394_0),
        .in_notcmp2443_pop2394_1(in_notcmp2443_pop2394_1),
        .in_notcmp2469_0(in_notcmp2469_0),
        .in_notcmp2469_1(in_notcmp2469_1),
        .in_r_026_pop1336_pop1679_0(in_r_026_pop1336_pop1679_0),
        .in_r_026_pop1336_pop1679_1(in_r_026_pop1336_pop1679_1),
        .in_r_026_pop1337_pop2188_0(in_r_026_pop1337_pop2188_0),
        .in_r_026_pop1337_pop2188_1(in_r_026_pop1337_pop2188_1),
        .in_r_026_pop1359_0(in_r_026_pop1359_0),
        .in_r_026_pop1359_1(in_r_026_pop1359_1),
        .in_stall_in(bb_stencil_2d_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_025_pop1547_pop2589(stencil_2d_B9_merge_out_c_025_pop1547_pop2589),
        .out_c_025_pop1576(stencil_2d_B9_merge_out_c_025_pop1576),
        .out_dot_prod_add90(stencil_2d_B9_merge_out_dot_prod_add90),
        .out_exitcond391(stencil_2d_B9_merge_out_exitcond391),
        .out_forked(stencil_2d_B9_merge_out_forked),
        .out_forked3286(stencil_2d_B9_merge_out_forked3286),
        .out_mul16_add1187(stencil_2d_B9_merge_out_mul16_add1187),
        .out_mul2839_pop1782(stencil_2d_B9_merge_out_mul2839_pop1782),
        .out_mul2840_pop2293(stencil_2d_B9_merge_out_mul2840_pop2293),
        .out_mul2864(stencil_2d_B9_merge_out_mul2864),
        .out_notcmp1492(stencil_2d_B9_merge_out_notcmp1492),
        .out_notcmp1945_pop2495(stencil_2d_B9_merge_out_notcmp1945_pop2495),
        .out_notcmp1973(stencil_2d_B9_merge_out_notcmp1973),
        .out_notcmp2442_pop1885(stencil_2d_B9_merge_out_notcmp2442_pop1885),
        .out_notcmp2443_pop2394(stencil_2d_B9_merge_out_notcmp2443_pop2394),
        .out_notcmp2469(stencil_2d_B9_merge_out_notcmp2469),
        .out_r_026_pop1336_pop1679(stencil_2d_B9_merge_out_r_026_pop1336_pop1679),
        .out_r_026_pop1337_pop2188(stencil_2d_B9_merge_out_r_026_pop1337_pop2188),
        .out_r_026_pop1359(stencil_2d_B9_merge_out_r_026_pop1359),
        .out_stall_out_0(stencil_2d_B9_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B9_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9_stall_region(BLACKBOX,2)
    stencil_2d_bb_B9_stall_region thebb_stencil_2d_B9_stall_region (
        .in_c_025_pop1547_pop2589(stencil_2d_B9_merge_out_c_025_pop1547_pop2589),
        .in_c_025_pop1576(stencil_2d_B9_merge_out_c_025_pop1576),
        .in_dot_prod_add90(stencil_2d_B9_merge_out_dot_prod_add90),
        .in_exitcond391(stencil_2d_B9_merge_out_exitcond391),
        .in_flush(in_flush),
        .in_forked(stencil_2d_B9_merge_out_forked),
        .in_forked3286(stencil_2d_B9_merge_out_forked3286),
        .in_mul16_add1187(stencil_2d_B9_merge_out_mul16_add1187),
        .in_mul2839_pop1782(stencil_2d_B9_merge_out_mul2839_pop1782),
        .in_mul2840_pop2293(stencil_2d_B9_merge_out_mul2840_pop2293),
        .in_mul2864(stencil_2d_B9_merge_out_mul2864),
        .in_notcmp1492(stencil_2d_B9_merge_out_notcmp1492),
        .in_notcmp1945_pop2495(stencil_2d_B9_merge_out_notcmp1945_pop2495),
        .in_notcmp1973(stencil_2d_B9_merge_out_notcmp1973),
        .in_notcmp2442_pop1885(stencil_2d_B9_merge_out_notcmp2442_pop1885),
        .in_notcmp2443_pop2394(stencil_2d_B9_merge_out_notcmp2443_pop2394),
        .in_notcmp2469(stencil_2d_B9_merge_out_notcmp2469),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_026_pop1336_pop1679(stencil_2d_B9_merge_out_r_026_pop1336_pop1679),
        .in_r_026_pop1337_pop2188(stencil_2d_B9_merge_out_r_026_pop1337_pop2188),
        .in_r_026_pop1359(stencil_2d_B9_merge_out_r_026_pop1359),
        .in_stall_in(stencil_2d_B9_branch_out_stall_out),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdata(in_unnamed_stencil_2d6_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d6_stencil_2d_avm_writeack(in_unnamed_stencil_2d6_stencil_2d_avm_writeack),
        .in_valid_in(stencil_2d_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out),
        .out_c0_exe2189(bb_stencil_2d_B9_stall_region_out_c0_exe2189),
        .out_c0_exe3190(bb_stencil_2d_B9_stall_region_out_c0_exe3190),
        .out_c0_exe4191(bb_stencil_2d_B9_stall_region_out_c0_exe4191),
        .out_c0_exe5192(bb_stencil_2d_B9_stall_region_out_c0_exe5192),
        .out_c0_exe6193(bb_stencil_2d_B9_stall_region_out_c0_exe6193),
        .out_c0_exe7194(bb_stencil_2d_B9_stall_region_out_c0_exe7194),
        .out_c0_exe8195(bb_stencil_2d_B9_stall_region_out_c0_exe8195),
        .out_intel_reserved_ffwd_0_0(bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_0_0),
        .out_pipeline_valid_out(bb_stencil_2d_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B9_stall_region_out_stall_out),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d6_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_address),
        .out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_read),
        .out_unnamed_stencil_2d6_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_write),
        .out_unnamed_stencil_2d6_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_writedata),
        .out_valid_out(bb_stencil_2d_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B9_branch(BLACKBOX,86)
    stencil_2d_B9_branch thestencil_2d_B9_branch (
        .in_c0_exe2189(bb_stencil_2d_B9_stall_region_out_c0_exe2189),
        .in_c0_exe3190(bb_stencil_2d_B9_stall_region_out_c0_exe3190),
        .in_c0_exe4191(bb_stencil_2d_B9_stall_region_out_c0_exe4191),
        .in_c0_exe5192(bb_stencil_2d_B9_stall_region_out_c0_exe5192),
        .in_c0_exe6193(bb_stencil_2d_B9_stall_region_out_c0_exe6193),
        .in_c0_exe7194(bb_stencil_2d_B9_stall_region_out_c0_exe7194),
        .in_c0_exe8195(bb_stencil_2d_B9_stall_region_out_c0_exe8195),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B9_stall_region_out_valid_out),
        .out_c0_exe2189(stencil_2d_B9_branch_out_c0_exe2189),
        .out_c0_exe4191(stencil_2d_B9_branch_out_c0_exe4191),
        .out_c0_exe5192(stencil_2d_B9_branch_out_c0_exe5192),
        .out_c0_exe6193(stencil_2d_B9_branch_out_c0_exe6193),
        .out_c0_exe7194(stencil_2d_B9_branch_out_c0_exe7194),
        .out_c0_exe8195(stencil_2d_B9_branch_out_c0_exe8195),
        .out_stall_out(stencil_2d_B9_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B9_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2189(GPOUT,54)
    assign out_c0_exe2189 = stencil_2d_B9_branch_out_c0_exe2189;

    // out_c0_exe4191(GPOUT,55)
    assign out_c0_exe4191 = stencil_2d_B9_branch_out_c0_exe4191;

    // out_c0_exe5192(GPOUT,56)
    assign out_c0_exe5192 = stencil_2d_B9_branch_out_c0_exe5192;

    // out_c0_exe6193(GPOUT,57)
    assign out_c0_exe6193 = stencil_2d_B9_branch_out_c0_exe6193;

    // out_c0_exe7194(GPOUT,58)
    assign out_c0_exe7194 = stencil_2d_B9_branch_out_c0_exe7194;

    // out_c0_exe8195(GPOUT,59)
    assign out_c0_exe8195 = stencil_2d_B9_branch_out_c0_exe8195;

    // out_exiting_stall_out(GPOUT,60)
    assign out_exiting_stall_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,61)
    assign out_exiting_valid_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,62)
    assign out_intel_reserved_ffwd_0_0 = bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_0_0;

    // out_stall_in_0(GPOUT,63)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,64)
    assign out_stall_out_0 = stencil_2d_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,65)
    assign out_stall_out_1 = stencil_2d_B9_merge_out_stall_out_1;

    // out_unnamed_stencil_2d5_stencil_2d_avm_address(GPOUT,66)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address;

    // out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(GPOUT,67)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(GPOUT,68)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_enable(GPOUT,69)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_read(GPOUT,70)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read;

    // out_unnamed_stencil_2d5_stencil_2d_avm_write(GPOUT,71)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write;

    // out_unnamed_stencil_2d5_stencil_2d_avm_writedata(GPOUT,72)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d6_stencil_2d_avm_address(GPOUT,73)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_address;

    // out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(GPOUT,74)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(GPOUT,75)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_enable(GPOUT,76)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_read(GPOUT,77)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_read;

    // out_unnamed_stencil_2d6_stencil_2d_avm_write(GPOUT,78)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_write;

    // out_unnamed_stencil_2d6_stencil_2d_avm_writedata(GPOUT,79)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;

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

endmodule
