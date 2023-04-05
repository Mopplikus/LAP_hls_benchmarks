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

// SystemVerilog created from bb_kernel_3mm_B8
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B8 (
    input wire [63:0] in_arrayidx778195_0,
    input wire [63:0] in_arrayidx778195_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked97_0,
    input wire [0:0] in_forked97_1,
    input wire [31:0] in_i_1102_pop29154_pop42192_0,
    input wire [31:0] in_i_1102_pop29154_pop42192_1,
    input wire [31:0] in_i_1102_pop29186_0,
    input wire [31:0] in_i_1102_pop29186_1,
    input wire [63:0] in_idxprom74193_0,
    input wire [63:0] in_idxprom74193_1,
    input wire [63:0] in_idxprom76194_0,
    input wire [63:0] in_idxprom76194_1,
    input wire [0:0] in_notcmp112196_0,
    input wire [0:0] in_notcmp112196_1,
    input wire [0:0] in_notcmp117157_pop43197_0,
    input wire [0:0] in_notcmp117157_pop43197_1,
    input wire [0:0] in_notcmp117191_0,
    input wire [0:0] in_notcmp117191_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm18_0,
    input wire [31:0] in_unnamed_kernel_3mm18_1,
    input wire [31:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10316,
    output wire [0:0] out_c0_exe11317,
    output wire [63:0] out_c0_exe2308,
    output wire [63:0] out_c0_exe3309,
    output wire [31:0] out_c0_exe4310,
    output wire [31:0] out_c0_exe6312,
    output wire [0:0] out_c0_exe7313,
    output wire [63:0] out_c0_exe8314,
    output wire [0:0] out_c0_exe9315,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out;
    wire [31:0] bb_kernel_3mm_B8_stall_region_out_c0_exe10316;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_c0_exe11317;
    wire [63:0] bb_kernel_3mm_B8_stall_region_out_c0_exe2308;
    wire [63:0] bb_kernel_3mm_B8_stall_region_out_c0_exe3309;
    wire [31:0] bb_kernel_3mm_B8_stall_region_out_c0_exe4310;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_c0_exe5311;
    wire [31:0] bb_kernel_3mm_B8_stall_region_out_c0_exe6312;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_c0_exe7313;
    wire [63:0] bb_kernel_3mm_B8_stall_region_out_c0_exe8314;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_c0_exe9315;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B8_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B8_branch_out_c0_exe10316;
    wire [0:0] kernel_3mm_B8_branch_out_c0_exe11317;
    wire [63:0] kernel_3mm_B8_branch_out_c0_exe2308;
    wire [63:0] kernel_3mm_B8_branch_out_c0_exe3309;
    wire [31:0] kernel_3mm_B8_branch_out_c0_exe4310;
    wire [31:0] kernel_3mm_B8_branch_out_c0_exe6312;
    wire [0:0] kernel_3mm_B8_branch_out_c0_exe7313;
    wire [63:0] kernel_3mm_B8_branch_out_c0_exe8314;
    wire [0:0] kernel_3mm_B8_branch_out_c0_exe9315;
    wire [0:0] kernel_3mm_B8_branch_out_stall_out;
    wire [0:0] kernel_3mm_B8_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B8_branch_out_valid_out_1;
    wire [63:0] kernel_3mm_B8_merge_out_arrayidx778195;
    wire [0:0] kernel_3mm_B8_merge_out_forked97;
    wire [31:0] kernel_3mm_B8_merge_out_i_1102_pop29154_pop42192;
    wire [31:0] kernel_3mm_B8_merge_out_i_1102_pop29186;
    wire [63:0] kernel_3mm_B8_merge_out_idxprom74193;
    wire [63:0] kernel_3mm_B8_merge_out_idxprom76194;
    wire [0:0] kernel_3mm_B8_merge_out_notcmp112196;
    wire [0:0] kernel_3mm_B8_merge_out_notcmp117157_pop43197;
    wire [0:0] kernel_3mm_B8_merge_out_notcmp117191;
    wire [0:0] kernel_3mm_B8_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B8_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B8_merge_out_unnamed_kernel_3mm18;
    wire [0:0] kernel_3mm_B8_merge_out_valid_out;


    // kernel_3mm_B8_merge(BLACKBOX,37)
    kernel_3mm_B8_merge thekernel_3mm_B8_merge (
        .in_arrayidx778195_0(in_arrayidx778195_0),
        .in_arrayidx778195_1(in_arrayidx778195_1),
        .in_forked97_0(in_forked97_0),
        .in_forked97_1(in_forked97_1),
        .in_i_1102_pop29154_pop42192_0(in_i_1102_pop29154_pop42192_0),
        .in_i_1102_pop29154_pop42192_1(in_i_1102_pop29154_pop42192_1),
        .in_i_1102_pop29186_0(in_i_1102_pop29186_0),
        .in_i_1102_pop29186_1(in_i_1102_pop29186_1),
        .in_idxprom74193_0(in_idxprom74193_0),
        .in_idxprom74193_1(in_idxprom74193_1),
        .in_idxprom76194_0(in_idxprom76194_0),
        .in_idxprom76194_1(in_idxprom76194_1),
        .in_notcmp112196_0(in_notcmp112196_0),
        .in_notcmp112196_1(in_notcmp112196_1),
        .in_notcmp117157_pop43197_0(in_notcmp117157_pop43197_0),
        .in_notcmp117157_pop43197_1(in_notcmp117157_pop43197_1),
        .in_notcmp117191_0(in_notcmp117191_0),
        .in_notcmp117191_1(in_notcmp117191_1),
        .in_stall_in(bb_kernel_3mm_B8_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm18_0(in_unnamed_kernel_3mm18_0),
        .in_unnamed_kernel_3mm18_1(in_unnamed_kernel_3mm18_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx778195(kernel_3mm_B8_merge_out_arrayidx778195),
        .out_forked97(kernel_3mm_B8_merge_out_forked97),
        .out_i_1102_pop29154_pop42192(kernel_3mm_B8_merge_out_i_1102_pop29154_pop42192),
        .out_i_1102_pop29186(kernel_3mm_B8_merge_out_i_1102_pop29186),
        .out_idxprom74193(kernel_3mm_B8_merge_out_idxprom74193),
        .out_idxprom76194(kernel_3mm_B8_merge_out_idxprom76194),
        .out_notcmp112196(kernel_3mm_B8_merge_out_notcmp112196),
        .out_notcmp117157_pop43197(kernel_3mm_B8_merge_out_notcmp117157_pop43197),
        .out_notcmp117191(kernel_3mm_B8_merge_out_notcmp117191),
        .out_stall_out_0(kernel_3mm_B8_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B8_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm18(kernel_3mm_B8_merge_out_unnamed_kernel_3mm18),
        .out_valid_out(kernel_3mm_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B8_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B8_stall_region thebb_kernel_3mm_B8_stall_region (
        .in_arrayidx778195(kernel_3mm_B8_merge_out_arrayidx778195),
        .in_flush(in_flush),
        .in_forked97(kernel_3mm_B8_merge_out_forked97),
        .in_i_1102_pop29154_pop42192(kernel_3mm_B8_merge_out_i_1102_pop29154_pop42192),
        .in_i_1102_pop29186(kernel_3mm_B8_merge_out_i_1102_pop29186),
        .in_idxprom74193(kernel_3mm_B8_merge_out_idxprom74193),
        .in_idxprom76194(kernel_3mm_B8_merge_out_idxprom76194),
        .in_notcmp112196(kernel_3mm_B8_merge_out_notcmp112196),
        .in_notcmp117157_pop43197(kernel_3mm_B8_merge_out_notcmp117157_pop43197),
        .in_notcmp117191(kernel_3mm_B8_merge_out_notcmp117191),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B8_branch_out_stall_out),
        .in_unnamed_kernel_3mm18(kernel_3mm_B8_merge_out_unnamed_kernel_3mm18),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out),
        .out_c0_exe10316(bb_kernel_3mm_B8_stall_region_out_c0_exe10316),
        .out_c0_exe11317(bb_kernel_3mm_B8_stall_region_out_c0_exe11317),
        .out_c0_exe2308(bb_kernel_3mm_B8_stall_region_out_c0_exe2308),
        .out_c0_exe3309(bb_kernel_3mm_B8_stall_region_out_c0_exe3309),
        .out_c0_exe4310(bb_kernel_3mm_B8_stall_region_out_c0_exe4310),
        .out_c0_exe5311(bb_kernel_3mm_B8_stall_region_out_c0_exe5311),
        .out_c0_exe6312(bb_kernel_3mm_B8_stall_region_out_c0_exe6312),
        .out_c0_exe7313(bb_kernel_3mm_B8_stall_region_out_c0_exe7313),
        .out_c0_exe8314(bb_kernel_3mm_B8_stall_region_out_c0_exe8314),
        .out_c0_exe9315(bb_kernel_3mm_B8_stall_region_out_c0_exe9315),
        .out_pipeline_valid_out(bb_kernel_3mm_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B8_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_address(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_enable(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_read(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_write(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_address(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_read(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_write(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B8_branch(BLACKBOX,36)
    kernel_3mm_B8_branch thekernel_3mm_B8_branch (
        .in_c0_exe10316(bb_kernel_3mm_B8_stall_region_out_c0_exe10316),
        .in_c0_exe11317(bb_kernel_3mm_B8_stall_region_out_c0_exe11317),
        .in_c0_exe2308(bb_kernel_3mm_B8_stall_region_out_c0_exe2308),
        .in_c0_exe3309(bb_kernel_3mm_B8_stall_region_out_c0_exe3309),
        .in_c0_exe4310(bb_kernel_3mm_B8_stall_region_out_c0_exe4310),
        .in_c0_exe5311(bb_kernel_3mm_B8_stall_region_out_c0_exe5311),
        .in_c0_exe6312(bb_kernel_3mm_B8_stall_region_out_c0_exe6312),
        .in_c0_exe7313(bb_kernel_3mm_B8_stall_region_out_c0_exe7313),
        .in_c0_exe8314(bb_kernel_3mm_B8_stall_region_out_c0_exe8314),
        .in_c0_exe9315(bb_kernel_3mm_B8_stall_region_out_c0_exe9315),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B8_stall_region_out_valid_out),
        .out_c0_exe10316(kernel_3mm_B8_branch_out_c0_exe10316),
        .out_c0_exe11317(kernel_3mm_B8_branch_out_c0_exe11317),
        .out_c0_exe2308(kernel_3mm_B8_branch_out_c0_exe2308),
        .out_c0_exe3309(kernel_3mm_B8_branch_out_c0_exe3309),
        .out_c0_exe4310(kernel_3mm_B8_branch_out_c0_exe4310),
        .out_c0_exe6312(kernel_3mm_B8_branch_out_c0_exe6312),
        .out_c0_exe7313(kernel_3mm_B8_branch_out_c0_exe7313),
        .out_c0_exe8314(kernel_3mm_B8_branch_out_c0_exe8314),
        .out_c0_exe9315(kernel_3mm_B8_branch_out_c0_exe9315),
        .out_stall_out(kernel_3mm_B8_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B8_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10316(GPOUT,38)
    assign out_c0_exe10316 = kernel_3mm_B8_branch_out_c0_exe10316;

    // out_c0_exe11317(GPOUT,39)
    assign out_c0_exe11317 = kernel_3mm_B8_branch_out_c0_exe11317;

    // out_c0_exe2308(GPOUT,40)
    assign out_c0_exe2308 = kernel_3mm_B8_branch_out_c0_exe2308;

    // out_c0_exe3309(GPOUT,41)
    assign out_c0_exe3309 = kernel_3mm_B8_branch_out_c0_exe3309;

    // out_c0_exe4310(GPOUT,42)
    assign out_c0_exe4310 = kernel_3mm_B8_branch_out_c0_exe4310;

    // out_c0_exe6312(GPOUT,43)
    assign out_c0_exe6312 = kernel_3mm_B8_branch_out_c0_exe6312;

    // out_c0_exe7313(GPOUT,44)
    assign out_c0_exe7313 = kernel_3mm_B8_branch_out_c0_exe7313;

    // out_c0_exe8314(GPOUT,45)
    assign out_c0_exe8314 = kernel_3mm_B8_branch_out_c0_exe8314;

    // out_c0_exe9315(GPOUT,46)
    assign out_c0_exe9315 = kernel_3mm_B8_branch_out_c0_exe9315;

    // out_exiting_stall_out(GPOUT,47)
    assign out_exiting_stall_out = bb_kernel_3mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,48)
    assign out_exiting_valid_out = bb_kernel_3mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,49)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,50)
    assign out_stall_out_0 = kernel_3mm_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,51)
    assign out_stall_out_1 = kernel_3mm_B8_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_address(GPOUT,52)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_address = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount(GPOUT,53)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable(GPOUT,54)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_enable(GPOUT,55)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_enable = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_read(GPOUT,56)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_read = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_write(GPOUT,57)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_write = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata(GPOUT,58)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_address(GPOUT,59)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_address = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(GPOUT,60)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(GPOUT,61)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(GPOUT,62)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_enable = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_read(GPOUT,63)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_read = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_write(GPOUT,64)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_write = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(GPOUT,65)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata = bb_kernel_3mm_B8_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,66)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,67)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,68)
    assign out_valid_out_0 = kernel_3mm_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,69)
    assign out_valid_out_1 = kernel_3mm_B8_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,71)
    assign out_pipeline_valid_out = bb_kernel_3mm_B8_stall_region_out_pipeline_valid_out;

endmodule
