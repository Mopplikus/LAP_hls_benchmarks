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

// SystemVerilog created from bb_kernel_2mm_B9
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B9 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked107_0,
    input wire [0:0] in_forked107_1,
    input wire [31:0] in_i11_082_pop23136_0,
    input wire [31:0] in_i11_082_pop23136_1,
    input wire [31:0] in_mul_add26139_0,
    input wire [31:0] in_mul_add26139_1,
    input wire [0:0] in_notcmp72142_0,
    input wire [0:0] in_notcmp72142_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [31:0] out_c0_exe1227,
    output wire [31:0] out_c0_exe2228,
    output wire [63:0] out_c0_exe3229,
    output wire [31:0] out_c0_exe4230,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_c0_exe10;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe11;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_c0_exe1227;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_c0_exe2228;
    wire [63:0] bb_kernel_2mm_B9_stall_region_out_c0_exe3229;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_c0_exe4230;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe6;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_c0_exe7;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe8;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_c0_exe9;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B9_branch_out_c0_exe10;
    wire [0:0] kernel_2mm_B9_branch_out_c0_exe11;
    wire [31:0] kernel_2mm_B9_branch_out_c0_exe1227;
    wire [31:0] kernel_2mm_B9_branch_out_c0_exe2228;
    wire [63:0] kernel_2mm_B9_branch_out_c0_exe3229;
    wire [31:0] kernel_2mm_B9_branch_out_c0_exe4230;
    wire [0:0] kernel_2mm_B9_branch_out_c0_exe6;
    wire [31:0] kernel_2mm_B9_branch_out_c0_exe7;
    wire [0:0] kernel_2mm_B9_branch_out_c0_exe8;
    wire [31:0] kernel_2mm_B9_branch_out_c0_exe9;
    wire [0:0] kernel_2mm_B9_branch_out_stall_out;
    wire [0:0] kernel_2mm_B9_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B9_merge_out_forked107;
    wire [31:0] kernel_2mm_B9_merge_out_i11_082_pop23136;
    wire [31:0] kernel_2mm_B9_merge_out_mul_add26139;
    wire [0:0] kernel_2mm_B9_merge_out_notcmp72142;
    wire [0:0] kernel_2mm_B9_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B9_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B9_merge_out_valid_out;


    // kernel_2mm_B9_merge(BLACKBOX,20)
    kernel_2mm_B9_merge thekernel_2mm_B9_merge (
        .in_forked107_0(in_forked107_0),
        .in_forked107_1(in_forked107_1),
        .in_i11_082_pop23136_0(in_i11_082_pop23136_0),
        .in_i11_082_pop23136_1(in_i11_082_pop23136_1),
        .in_mul_add26139_0(in_mul_add26139_0),
        .in_mul_add26139_1(in_mul_add26139_1),
        .in_notcmp72142_0(in_notcmp72142_0),
        .in_notcmp72142_1(in_notcmp72142_1),
        .in_stall_in(bb_kernel_2mm_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked107(kernel_2mm_B9_merge_out_forked107),
        .out_i11_082_pop23136(kernel_2mm_B9_merge_out_i11_082_pop23136),
        .out_mul_add26139(kernel_2mm_B9_merge_out_mul_add26139),
        .out_notcmp72142(kernel_2mm_B9_merge_out_notcmp72142),
        .out_stall_out_0(kernel_2mm_B9_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B9_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B9_stall_region thebb_kernel_2mm_B9_stall_region (
        .in_flush(in_flush),
        .in_forked107(kernel_2mm_B9_merge_out_forked107),
        .in_i11_082_pop23136(kernel_2mm_B9_merge_out_i11_082_pop23136),
        .in_mul_add26139(kernel_2mm_B9_merge_out_mul_add26139),
        .in_notcmp72142(kernel_2mm_B9_merge_out_notcmp72142),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B9_branch_out_stall_out),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out(bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out(bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out),
        .out_c0_exe10(bb_kernel_2mm_B9_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_kernel_2mm_B9_stall_region_out_c0_exe11),
        .out_c0_exe1227(bb_kernel_2mm_B9_stall_region_out_c0_exe1227),
        .out_c0_exe2228(bb_kernel_2mm_B9_stall_region_out_c0_exe2228),
        .out_c0_exe3229(bb_kernel_2mm_B9_stall_region_out_c0_exe3229),
        .out_c0_exe4230(bb_kernel_2mm_B9_stall_region_out_c0_exe4230),
        .out_c0_exe6(bb_kernel_2mm_B9_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_kernel_2mm_B9_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_kernel_2mm_B9_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_kernel_2mm_B9_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_kernel_2mm_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B9_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B9_branch(BLACKBOX,19)
    kernel_2mm_B9_branch thekernel_2mm_B9_branch (
        .in_c0_exe10(bb_kernel_2mm_B9_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_kernel_2mm_B9_stall_region_out_c0_exe11),
        .in_c0_exe1227(bb_kernel_2mm_B9_stall_region_out_c0_exe1227),
        .in_c0_exe2228(bb_kernel_2mm_B9_stall_region_out_c0_exe2228),
        .in_c0_exe3229(bb_kernel_2mm_B9_stall_region_out_c0_exe3229),
        .in_c0_exe4230(bb_kernel_2mm_B9_stall_region_out_c0_exe4230),
        .in_c0_exe6(bb_kernel_2mm_B9_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_kernel_2mm_B9_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_kernel_2mm_B9_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_kernel_2mm_B9_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B9_stall_region_out_valid_out),
        .out_c0_exe10(kernel_2mm_B9_branch_out_c0_exe10),
        .out_c0_exe11(kernel_2mm_B9_branch_out_c0_exe11),
        .out_c0_exe1227(kernel_2mm_B9_branch_out_c0_exe1227),
        .out_c0_exe2228(kernel_2mm_B9_branch_out_c0_exe2228),
        .out_c0_exe3229(kernel_2mm_B9_branch_out_c0_exe3229),
        .out_c0_exe4230(kernel_2mm_B9_branch_out_c0_exe4230),
        .out_c0_exe6(kernel_2mm_B9_branch_out_c0_exe6),
        .out_c0_exe7(kernel_2mm_B9_branch_out_c0_exe7),
        .out_c0_exe8(kernel_2mm_B9_branch_out_c0_exe8),
        .out_c0_exe9(kernel_2mm_B9_branch_out_c0_exe9),
        .out_stall_out(kernel_2mm_B9_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,21)
    assign out_c0_exe10 = kernel_2mm_B9_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,22)
    assign out_c0_exe11 = kernel_2mm_B9_branch_out_c0_exe11;

    // out_c0_exe1227(GPOUT,23)
    assign out_c0_exe1227 = kernel_2mm_B9_branch_out_c0_exe1227;

    // out_c0_exe2228(GPOUT,24)
    assign out_c0_exe2228 = kernel_2mm_B9_branch_out_c0_exe2228;

    // out_c0_exe3229(GPOUT,25)
    assign out_c0_exe3229 = kernel_2mm_B9_branch_out_c0_exe3229;

    // out_c0_exe4230(GPOUT,26)
    assign out_c0_exe4230 = kernel_2mm_B9_branch_out_c0_exe4230;

    // out_c0_exe6(GPOUT,27)
    assign out_c0_exe6 = kernel_2mm_B9_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,28)
    assign out_c0_exe7 = kernel_2mm_B9_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,29)
    assign out_c0_exe8 = kernel_2mm_B9_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,30)
    assign out_c0_exe9 = kernel_2mm_B9_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,31)
    assign out_exiting_stall_out = bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,32)
    assign out_exiting_valid_out = bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = kernel_2mm_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = kernel_2mm_B9_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_address(GPOUT,35)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(GPOUT,36)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(GPOUT,37)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(GPOUT,38)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_read(GPOUT,39)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_write(GPOUT,40)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(GPOUT,41)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,42)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,43)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = kernel_2mm_B9_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = bb_kernel_2mm_B9_stall_region_out_pipeline_valid_out;

endmodule
