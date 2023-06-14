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

// SystemVerilog created from bb_covariance_B5
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5 (
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [0:0] in_exitcond10123_0,
    input wire [0:0] in_exitcond10123_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked54_0,
    input wire [0:0] in_forked54_1,
    input wire [31:0] in_j_077_pop19125_0,
    input wire [31:0] in_j_077_pop19125_1,
    input wire [31:0] in_lim_ext117_0,
    input wire [31:0] in_lim_ext117_1,
    input wire [31:0] in_lim_ext79_pop21127_0,
    input wire [31:0] in_lim_ext79_pop21127_1,
    input wire [0:0] in_memdep_phi_pop20126_0,
    input wire [0:0] in_memdep_phi_pop20126_1,
    input wire [0:0] in_notcmp69124_0,
    input wire [0:0] in_notcmp69124_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance8_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe12,
    output wire [63:0] out_c0_exe3223,
    output wire [31:0] out_c0_exe4224,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_c1_exe1232,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance8_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe10;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe12;
    wire [63:0] bb_covariance_B5_stall_region_out_c0_exe3223;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe4224;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe7;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe8;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe9;
    wire [31:0] bb_covariance_B5_stall_region_out_c1_exe1232;
    wire [63:0] bb_covariance_B5_stall_region_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_covariance_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B5_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_address;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_read;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_write;
    wire [31:0] bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_stall_region_out_valid_out;
    wire [0:0] covariance_B5_branch_out_c0_exe10;
    wire [31:0] covariance_B5_branch_out_c0_exe12;
    wire [63:0] covariance_B5_branch_out_c0_exe3223;
    wire [31:0] covariance_B5_branch_out_c0_exe4224;
    wire [31:0] covariance_B5_branch_out_c0_exe8;
    wire [0:0] covariance_B5_branch_out_c0_exe9;
    wire [31:0] covariance_B5_branch_out_c1_exe1232;
    wire [0:0] covariance_B5_branch_out_stall_out;
    wire [0:0] covariance_B5_branch_out_valid_out_0;
    wire [0:0] covariance_B5_branch_out_valid_out_1;
    wire [0:0] covariance_B5_merge_out_exitcond10123;
    wire [0:0] covariance_B5_merge_out_forked54;
    wire [31:0] covariance_B5_merge_out_j_077_pop19125;
    wire [31:0] covariance_B5_merge_out_lim_ext117;
    wire [31:0] covariance_B5_merge_out_lim_ext79_pop21127;
    wire [0:0] covariance_B5_merge_out_memdep_phi_pop20126;
    wire [0:0] covariance_B5_merge_out_notcmp69124;
    wire [0:0] covariance_B5_merge_out_stall_out_0;
    wire [0:0] covariance_B5_merge_out_stall_out_1;
    wire [0:0] covariance_B5_merge_out_valid_out;


    // covariance_B5_merge(BLACKBOX,29)
    covariance_B5_merge thecovariance_B5_merge (
        .in_exitcond10123_0(in_exitcond10123_0),
        .in_exitcond10123_1(in_exitcond10123_1),
        .in_forked54_0(in_forked54_0),
        .in_forked54_1(in_forked54_1),
        .in_j_077_pop19125_0(in_j_077_pop19125_0),
        .in_j_077_pop19125_1(in_j_077_pop19125_1),
        .in_lim_ext117_0(in_lim_ext117_0),
        .in_lim_ext117_1(in_lim_ext117_1),
        .in_lim_ext79_pop21127_0(in_lim_ext79_pop21127_0),
        .in_lim_ext79_pop21127_1(in_lim_ext79_pop21127_1),
        .in_memdep_phi_pop20126_0(in_memdep_phi_pop20126_0),
        .in_memdep_phi_pop20126_1(in_memdep_phi_pop20126_1),
        .in_notcmp69124_0(in_notcmp69124_0),
        .in_notcmp69124_1(in_notcmp69124_1),
        .in_stall_in(bb_covariance_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond10123(covariance_B5_merge_out_exitcond10123),
        .out_forked54(covariance_B5_merge_out_forked54),
        .out_j_077_pop19125(covariance_B5_merge_out_j_077_pop19125),
        .out_lim_ext117(covariance_B5_merge_out_lim_ext117),
        .out_lim_ext79_pop21127(covariance_B5_merge_out_lim_ext79_pop21127),
        .out_memdep_phi_pop20126(covariance_B5_merge_out_memdep_phi_pop20126),
        .out_notcmp69124(covariance_B5_merge_out_notcmp69124),
        .out_stall_out_0(covariance_B5_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B5_merge_out_stall_out_1),
        .out_valid_out(covariance_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_stall_region(BLACKBOX,27)
    covariance_bb_B5_stall_region thebb_covariance_B5_stall_region (
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_exitcond10123(covariance_B5_merge_out_exitcond10123),
        .in_flush(in_flush),
        .in_forked54(covariance_B5_merge_out_forked54),
        .in_j_077_pop19125(covariance_B5_merge_out_j_077_pop19125),
        .in_lim_ext117(covariance_B5_merge_out_lim_ext117),
        .in_lim_ext79_pop21127(covariance_B5_merge_out_lim_ext79_pop21127),
        .in_memdep_phi_pop20126(covariance_B5_merge_out_memdep_phi_pop20126),
        .in_notcmp69124(covariance_B5_merge_out_notcmp69124),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B5_branch_out_stall_out),
        .in_unnamed_covariance8_covariance_avm_readdata(in_unnamed_covariance8_covariance_avm_readdata),
        .in_unnamed_covariance8_covariance_avm_readdatavalid(in_unnamed_covariance8_covariance_avm_readdatavalid),
        .in_unnamed_covariance8_covariance_avm_waitrequest(in_unnamed_covariance8_covariance_avm_waitrequest),
        .in_unnamed_covariance8_covariance_avm_writeack(in_unnamed_covariance8_covariance_avm_writeack),
        .in_valid_in(covariance_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out(bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out(bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out),
        .out_c0_exe10(bb_covariance_B5_stall_region_out_c0_exe10),
        .out_c0_exe12(bb_covariance_B5_stall_region_out_c0_exe12),
        .out_c0_exe3223(bb_covariance_B5_stall_region_out_c0_exe3223),
        .out_c0_exe4224(bb_covariance_B5_stall_region_out_c0_exe4224),
        .out_c0_exe7(bb_covariance_B5_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_covariance_B5_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_covariance_B5_stall_region_out_c0_exe9),
        .out_c1_exe1232(bb_covariance_B5_stall_region_out_c1_exe1232),
        .out_intel_reserved_ffwd_3_0(bb_covariance_B5_stall_region_out_intel_reserved_ffwd_3_0),
        .out_pipeline_valid_out(bb_covariance_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B5_stall_region_out_stall_out),
        .out_unnamed_covariance8_covariance_avm_address(bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_address),
        .out_unnamed_covariance8_covariance_avm_burstcount(bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_burstcount),
        .out_unnamed_covariance8_covariance_avm_byteenable(bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_byteenable),
        .out_unnamed_covariance8_covariance_avm_enable(bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_enable),
        .out_unnamed_covariance8_covariance_avm_read(bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_read),
        .out_unnamed_covariance8_covariance_avm_write(bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_write),
        .out_unnamed_covariance8_covariance_avm_writedata(bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B5_branch(BLACKBOX,28)
    covariance_B5_branch thecovariance_B5_branch (
        .in_c0_exe10(bb_covariance_B5_stall_region_out_c0_exe10),
        .in_c0_exe12(bb_covariance_B5_stall_region_out_c0_exe12),
        .in_c0_exe3223(bb_covariance_B5_stall_region_out_c0_exe3223),
        .in_c0_exe4224(bb_covariance_B5_stall_region_out_c0_exe4224),
        .in_c0_exe7(bb_covariance_B5_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_covariance_B5_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_covariance_B5_stall_region_out_c0_exe9),
        .in_c1_exe1232(bb_covariance_B5_stall_region_out_c1_exe1232),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B5_stall_region_out_valid_out),
        .out_c0_exe10(covariance_B5_branch_out_c0_exe10),
        .out_c0_exe12(covariance_B5_branch_out_c0_exe12),
        .out_c0_exe3223(covariance_B5_branch_out_c0_exe3223),
        .out_c0_exe4224(covariance_B5_branch_out_c0_exe4224),
        .out_c0_exe8(covariance_B5_branch_out_c0_exe8),
        .out_c0_exe9(covariance_B5_branch_out_c0_exe9),
        .out_c1_exe1232(covariance_B5_branch_out_c1_exe1232),
        .out_stall_out(covariance_B5_branch_out_stall_out),
        .out_valid_out_0(covariance_B5_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,30)
    assign out_c0_exe10 = covariance_B5_branch_out_c0_exe10;

    // out_c0_exe12(GPOUT,31)
    assign out_c0_exe12 = covariance_B5_branch_out_c0_exe12;

    // out_c0_exe3223(GPOUT,32)
    assign out_c0_exe3223 = covariance_B5_branch_out_c0_exe3223;

    // out_c0_exe4224(GPOUT,33)
    assign out_c0_exe4224 = covariance_B5_branch_out_c0_exe4224;

    // out_c0_exe8(GPOUT,34)
    assign out_c0_exe8 = covariance_B5_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,35)
    assign out_c0_exe9 = covariance_B5_branch_out_c0_exe9;

    // out_c1_exe1232(GPOUT,36)
    assign out_c1_exe1232 = covariance_B5_branch_out_c1_exe1232;

    // out_exiting_stall_out(GPOUT,37)
    assign out_exiting_stall_out = bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,38)
    assign out_exiting_valid_out = bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out;

    // out_intel_reserved_ffwd_3_0(GPOUT,39)
    assign out_intel_reserved_ffwd_3_0 = bb_covariance_B5_stall_region_out_intel_reserved_ffwd_3_0;

    // out_stall_in_0(GPOUT,40)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = covariance_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = covariance_B5_merge_out_stall_out_1;

    // out_unnamed_covariance8_covariance_avm_address(GPOUT,43)
    assign out_unnamed_covariance8_covariance_avm_address = bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_address;

    // out_unnamed_covariance8_covariance_avm_burstcount(GPOUT,44)
    assign out_unnamed_covariance8_covariance_avm_burstcount = bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_burstcount;

    // out_unnamed_covariance8_covariance_avm_byteenable(GPOUT,45)
    assign out_unnamed_covariance8_covariance_avm_byteenable = bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_byteenable;

    // out_unnamed_covariance8_covariance_avm_enable(GPOUT,46)
    assign out_unnamed_covariance8_covariance_avm_enable = bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_enable;

    // out_unnamed_covariance8_covariance_avm_read(GPOUT,47)
    assign out_unnamed_covariance8_covariance_avm_read = bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_read;

    // out_unnamed_covariance8_covariance_avm_write(GPOUT,48)
    assign out_unnamed_covariance8_covariance_avm_write = bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_write;

    // out_unnamed_covariance8_covariance_avm_writedata(GPOUT,49)
    assign out_unnamed_covariance8_covariance_avm_writedata = bb_covariance_B5_stall_region_out_unnamed_covariance8_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,50)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,51)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = covariance_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,53)
    assign out_valid_out_1 = covariance_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,55)
    assign out_pipeline_valid_out = bb_covariance_B5_stall_region_out_pipeline_valid_out;

endmodule
