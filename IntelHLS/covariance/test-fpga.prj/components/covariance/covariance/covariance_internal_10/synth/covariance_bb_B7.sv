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

// SystemVerilog created from bb_covariance_B7
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B7 (
    input wire [0:0] in_exitcond1094_pop41154_0,
    input wire [0:0] in_exitcond1094_pop41154_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked34_0,
    input wire [0:0] in_forked34_1,
    input wire [63:0] in_idxprom7143_0,
    input wire [63:0] in_idxprom7143_1,
    input wire [31:0] in_lim_ext111_0,
    input wire [31:0] in_lim_ext111_1,
    input wire [31:0] in_lim_ext76_pop37148_0,
    input wire [31:0] in_lim_ext76_pop37148_1,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_memdep_phi1_pop16116_0,
    input wire [0:0] in_memdep_phi1_pop16116_1,
    input wire [0:0] in_memdep_phi1_pop1682_pop38145_0,
    input wire [0:0] in_memdep_phi1_pop1682_pop38145_1,
    input wire [0:0] in_memdep_phi2_pop17121_0,
    input wire [0:0] in_memdep_phi2_pop17121_1,
    input wire [0:0] in_memdep_phi2_pop1785_pop39150_0,
    input wire [0:0] in_memdep_phi2_pop1785_pop39150_1,
    input wire [0:0] in_memdep_phi4_pop18126_0,
    input wire [0:0] in_memdep_phi4_pop18126_1,
    input wire [0:0] in_memdep_phi4_pop1888_pop40152_0,
    input wire [0:0] in_memdep_phi4_pop1888_pop40152_1,
    input wire [31:0] in_mul142_0,
    input wire [31:0] in_mul142_1,
    input wire [0:0] in_notcmp6596_pop42156_0,
    input wire [0:0] in_notcmp6596_pop42156_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance3_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2291,
    output wire [31:0] out_c0_exe4293,
    output wire [0:0] out_c0_exe5294,
    output wire [0:0] out_c0_exe6295,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance3_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe2291;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe3292;
    wire [31:0] bb_covariance_B7_stall_region_out_c0_exe4293;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe5294;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe6295;
    wire [31:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_address;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_read;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_write;
    wire [31:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B7_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_address;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_read;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_write;
    wire [31:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_stall_region_out_valid_out;
    wire [0:0] covariance_B7_branch_out_c0_exe2291;
    wire [31:0] covariance_B7_branch_out_c0_exe4293;
    wire [0:0] covariance_B7_branch_out_c0_exe5294;
    wire [0:0] covariance_B7_branch_out_c0_exe6295;
    wire [0:0] covariance_B7_branch_out_stall_out;
    wire [0:0] covariance_B7_branch_out_valid_out_0;
    wire [0:0] covariance_B7_branch_out_valid_out_1;
    wire [0:0] covariance_B7_merge_out_exitcond1094_pop41154;
    wire [0:0] covariance_B7_merge_out_forked34;
    wire [63:0] covariance_B7_merge_out_idxprom7143;
    wire [31:0] covariance_B7_merge_out_lim_ext111;
    wire [31:0] covariance_B7_merge_out_lim_ext76_pop37148;
    wire [0:0] covariance_B7_merge_out_memdep_phi1_pop16116;
    wire [0:0] covariance_B7_merge_out_memdep_phi1_pop1682_pop38145;
    wire [0:0] covariance_B7_merge_out_memdep_phi2_pop17121;
    wire [0:0] covariance_B7_merge_out_memdep_phi2_pop1785_pop39150;
    wire [0:0] covariance_B7_merge_out_memdep_phi4_pop18126;
    wire [0:0] covariance_B7_merge_out_memdep_phi4_pop1888_pop40152;
    wire [31:0] covariance_B7_merge_out_mul142;
    wire [0:0] covariance_B7_merge_out_notcmp6596_pop42156;
    wire [0:0] covariance_B7_merge_out_stall_out_0;
    wire [0:0] covariance_B7_merge_out_stall_out_1;
    wire [0:0] covariance_B7_merge_out_valid_out;


    // covariance_B7_merge(BLACKBOX,4)
    covariance_B7_merge thecovariance_B7_merge (
        .in_exitcond1094_pop41154_0(in_exitcond1094_pop41154_0),
        .in_exitcond1094_pop41154_1(in_exitcond1094_pop41154_1),
        .in_forked34_0(in_forked34_0),
        .in_forked34_1(in_forked34_1),
        .in_idxprom7143_0(in_idxprom7143_0),
        .in_idxprom7143_1(in_idxprom7143_1),
        .in_lim_ext111_0(in_lim_ext111_0),
        .in_lim_ext111_1(in_lim_ext111_1),
        .in_lim_ext76_pop37148_0(in_lim_ext76_pop37148_0),
        .in_lim_ext76_pop37148_1(in_lim_ext76_pop37148_1),
        .in_memdep_phi1_pop16116_0(in_memdep_phi1_pop16116_0),
        .in_memdep_phi1_pop16116_1(in_memdep_phi1_pop16116_1),
        .in_memdep_phi1_pop1682_pop38145_0(in_memdep_phi1_pop1682_pop38145_0),
        .in_memdep_phi1_pop1682_pop38145_1(in_memdep_phi1_pop1682_pop38145_1),
        .in_memdep_phi2_pop17121_0(in_memdep_phi2_pop17121_0),
        .in_memdep_phi2_pop17121_1(in_memdep_phi2_pop17121_1),
        .in_memdep_phi2_pop1785_pop39150_0(in_memdep_phi2_pop1785_pop39150_0),
        .in_memdep_phi2_pop1785_pop39150_1(in_memdep_phi2_pop1785_pop39150_1),
        .in_memdep_phi4_pop18126_0(in_memdep_phi4_pop18126_0),
        .in_memdep_phi4_pop18126_1(in_memdep_phi4_pop18126_1),
        .in_memdep_phi4_pop1888_pop40152_0(in_memdep_phi4_pop1888_pop40152_0),
        .in_memdep_phi4_pop1888_pop40152_1(in_memdep_phi4_pop1888_pop40152_1),
        .in_mul142_0(in_mul142_0),
        .in_mul142_1(in_mul142_1),
        .in_notcmp6596_pop42156_0(in_notcmp6596_pop42156_0),
        .in_notcmp6596_pop42156_1(in_notcmp6596_pop42156_1),
        .in_stall_in(bb_covariance_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1094_pop41154(covariance_B7_merge_out_exitcond1094_pop41154),
        .out_forked34(covariance_B7_merge_out_forked34),
        .out_idxprom7143(covariance_B7_merge_out_idxprom7143),
        .out_lim_ext111(covariance_B7_merge_out_lim_ext111),
        .out_lim_ext76_pop37148(covariance_B7_merge_out_lim_ext76_pop37148),
        .out_memdep_phi1_pop16116(covariance_B7_merge_out_memdep_phi1_pop16116),
        .out_memdep_phi1_pop1682_pop38145(covariance_B7_merge_out_memdep_phi1_pop1682_pop38145),
        .out_memdep_phi2_pop17121(covariance_B7_merge_out_memdep_phi2_pop17121),
        .out_memdep_phi2_pop1785_pop39150(covariance_B7_merge_out_memdep_phi2_pop1785_pop39150),
        .out_memdep_phi4_pop18126(covariance_B7_merge_out_memdep_phi4_pop18126),
        .out_memdep_phi4_pop1888_pop40152(covariance_B7_merge_out_memdep_phi4_pop1888_pop40152),
        .out_mul142(covariance_B7_merge_out_mul142),
        .out_notcmp6596_pop42156(covariance_B7_merge_out_notcmp6596_pop42156),
        .out_stall_out_0(covariance_B7_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B7_merge_out_stall_out_1),
        .out_valid_out(covariance_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7_stall_region(BLACKBOX,2)
    covariance_bb_B7_stall_region thebb_covariance_B7_stall_region (
        .in_exitcond1094_pop41154(covariance_B7_merge_out_exitcond1094_pop41154),
        .in_flush(in_flush),
        .in_forked34(covariance_B7_merge_out_forked34),
        .in_idxprom7143(covariance_B7_merge_out_idxprom7143),
        .in_lim_ext111(covariance_B7_merge_out_lim_ext111),
        .in_lim_ext76_pop37148(covariance_B7_merge_out_lim_ext76_pop37148),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_memdep_phi1_pop16116(covariance_B7_merge_out_memdep_phi1_pop16116),
        .in_memdep_phi1_pop1682_pop38145(covariance_B7_merge_out_memdep_phi1_pop1682_pop38145),
        .in_memdep_phi2_pop17121(covariance_B7_merge_out_memdep_phi2_pop17121),
        .in_memdep_phi2_pop1785_pop39150(covariance_B7_merge_out_memdep_phi2_pop1785_pop39150),
        .in_memdep_phi4_pop18126(covariance_B7_merge_out_memdep_phi4_pop18126),
        .in_memdep_phi4_pop1888_pop40152(covariance_B7_merge_out_memdep_phi4_pop1888_pop40152),
        .in_mul142(covariance_B7_merge_out_mul142),
        .in_notcmp6596_pop42156(covariance_B7_merge_out_notcmp6596_pop42156),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B7_branch_out_stall_out),
        .in_unnamed_covariance3_covariance_avm_readdata(in_unnamed_covariance3_covariance_avm_readdata),
        .in_unnamed_covariance3_covariance_avm_readdatavalid(in_unnamed_covariance3_covariance_avm_readdatavalid),
        .in_unnamed_covariance3_covariance_avm_waitrequest(in_unnamed_covariance3_covariance_avm_waitrequest),
        .in_unnamed_covariance3_covariance_avm_writeack(in_unnamed_covariance3_covariance_avm_writeack),
        .in_valid_in(covariance_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_stall_out(bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_valid_out(bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_valid_out),
        .out_c0_exe2291(bb_covariance_B7_stall_region_out_c0_exe2291),
        .out_c0_exe3292(bb_covariance_B7_stall_region_out_c0_exe3292),
        .out_c0_exe4293(bb_covariance_B7_stall_region_out_c0_exe4293),
        .out_c0_exe5294(bb_covariance_B7_stall_region_out_c0_exe5294),
        .out_c0_exe6295(bb_covariance_B7_stall_region_out_c0_exe6295),
        .out_memdep_covariance_avm_address(bb_covariance_B7_stall_region_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(bb_covariance_B7_stall_region_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(bb_covariance_B7_stall_region_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B7_stall_region_out_stall_out),
        .out_unnamed_covariance3_covariance_avm_address(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_address),
        .out_unnamed_covariance3_covariance_avm_burstcount(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_burstcount),
        .out_unnamed_covariance3_covariance_avm_byteenable(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_byteenable),
        .out_unnamed_covariance3_covariance_avm_enable(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_enable),
        .out_unnamed_covariance3_covariance_avm_read(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_read),
        .out_unnamed_covariance3_covariance_avm_write(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_write),
        .out_unnamed_covariance3_covariance_avm_writedata(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B7_branch(BLACKBOX,3)
    covariance_B7_branch thecovariance_B7_branch (
        .in_c0_exe2291(bb_covariance_B7_stall_region_out_c0_exe2291),
        .in_c0_exe3292(bb_covariance_B7_stall_region_out_c0_exe3292),
        .in_c0_exe4293(bb_covariance_B7_stall_region_out_c0_exe4293),
        .in_c0_exe5294(bb_covariance_B7_stall_region_out_c0_exe5294),
        .in_c0_exe6295(bb_covariance_B7_stall_region_out_c0_exe6295),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B7_stall_region_out_valid_out),
        .out_c0_exe2291(covariance_B7_branch_out_c0_exe2291),
        .out_c0_exe4293(covariance_B7_branch_out_c0_exe4293),
        .out_c0_exe5294(covariance_B7_branch_out_c0_exe5294),
        .out_c0_exe6295(covariance_B7_branch_out_c0_exe6295),
        .out_stall_out(covariance_B7_branch_out_stall_out),
        .out_valid_out_0(covariance_B7_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2291(GPOUT,44)
    assign out_c0_exe2291 = covariance_B7_branch_out_c0_exe2291;

    // out_c0_exe4293(GPOUT,45)
    assign out_c0_exe4293 = covariance_B7_branch_out_c0_exe4293;

    // out_c0_exe5294(GPOUT,46)
    assign out_c0_exe5294 = covariance_B7_branch_out_c0_exe5294;

    // out_c0_exe6295(GPOUT,47)
    assign out_c0_exe6295 = covariance_B7_branch_out_c0_exe6295;

    // out_exiting_stall_out(GPOUT,48)
    assign out_exiting_stall_out = bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,49)
    assign out_exiting_valid_out = bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_valid_out;

    // out_memdep_covariance_avm_address(GPOUT,50)
    assign out_memdep_covariance_avm_address = bb_covariance_B7_stall_region_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,51)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,52)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,53)
    assign out_memdep_covariance_avm_enable = bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,54)
    assign out_memdep_covariance_avm_read = bb_covariance_B7_stall_region_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,55)
    assign out_memdep_covariance_avm_write = bb_covariance_B7_stall_region_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,56)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata;

    // out_stall_in_0(GPOUT,57)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,58)
    assign out_stall_out_0 = covariance_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,59)
    assign out_stall_out_1 = covariance_B7_merge_out_stall_out_1;

    // out_unnamed_covariance3_covariance_avm_address(GPOUT,60)
    assign out_unnamed_covariance3_covariance_avm_address = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_address;

    // out_unnamed_covariance3_covariance_avm_burstcount(GPOUT,61)
    assign out_unnamed_covariance3_covariance_avm_burstcount = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_burstcount;

    // out_unnamed_covariance3_covariance_avm_byteenable(GPOUT,62)
    assign out_unnamed_covariance3_covariance_avm_byteenable = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_byteenable;

    // out_unnamed_covariance3_covariance_avm_enable(GPOUT,63)
    assign out_unnamed_covariance3_covariance_avm_enable = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_enable;

    // out_unnamed_covariance3_covariance_avm_read(GPOUT,64)
    assign out_unnamed_covariance3_covariance_avm_read = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_read;

    // out_unnamed_covariance3_covariance_avm_write(GPOUT,65)
    assign out_unnamed_covariance3_covariance_avm_write = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_write;

    // out_unnamed_covariance3_covariance_avm_writedata(GPOUT,66)
    assign out_unnamed_covariance3_covariance_avm_writedata = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,67)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,68)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,69)
    assign out_valid_out_0 = covariance_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,70)
    assign out_valid_out_1 = covariance_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,72)
    assign out_pipeline_valid_out = bb_covariance_B7_stall_region_out_pipeline_valid_out;

endmodule
