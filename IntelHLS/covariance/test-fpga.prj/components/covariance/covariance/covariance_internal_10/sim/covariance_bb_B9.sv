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

// SystemVerilog created from bb_covariance_B9
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B9 (
    input wire [0:0] in_exitcond16184_0,
    input wire [0:0] in_exitcond16184_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked86_0,
    input wire [0:0] in_forked86_1,
    input wire [31:0] in_j24_062_pop30186_0,
    input wire [31:0] in_j24_062_pop30186_1,
    input wire [31:0] in_lim_ext133_pop44175_0,
    input wire [31:0] in_lim_ext133_pop44175_1,
    input wire [31:0] in_lim_ext134_pop32188_0,
    input wire [31:0] in_lim_ext134_pop32188_1,
    input wire [0:0] in_memdep_phi_pop31187_0,
    input wire [0:0] in_memdep_phi_pop31187_1,
    input wire [0:0] in_notcmp101185_0,
    input wire [0:0] in_notcmp101185_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe2308,
    output wire [31:0] out_c0_exe3309,
    output wire [31:0] out_c0_exe5311,
    output wire [0:0] out_c0_exe6312,
    output wire [0:0] out_c0_exe7313,
    output wire [31:0] out_c0_exe8314,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out;
    wire [63:0] bb_covariance_B9_stall_region_out_c0_exe2308;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe3309;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe4310;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe5311;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe6312;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe7313;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe8314;
    wire [0:0] bb_covariance_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B9_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_writedata;
    wire [0:0] bb_covariance_B9_stall_region_out_valid_out;
    wire [63:0] covariance_B9_branch_out_c0_exe2308;
    wire [31:0] covariance_B9_branch_out_c0_exe3309;
    wire [31:0] covariance_B9_branch_out_c0_exe5311;
    wire [0:0] covariance_B9_branch_out_c0_exe6312;
    wire [0:0] covariance_B9_branch_out_c0_exe7313;
    wire [31:0] covariance_B9_branch_out_c0_exe8314;
    wire [0:0] covariance_B9_branch_out_stall_out;
    wire [0:0] covariance_B9_branch_out_valid_out_0;
    wire [0:0] covariance_B9_branch_out_valid_out_1;
    wire [0:0] covariance_B9_merge_out_exitcond16184;
    wire [0:0] covariance_B9_merge_out_forked86;
    wire [31:0] covariance_B9_merge_out_j24_062_pop30186;
    wire [31:0] covariance_B9_merge_out_lim_ext133_pop44175;
    wire [31:0] covariance_B9_merge_out_lim_ext134_pop32188;
    wire [0:0] covariance_B9_merge_out_memdep_phi_pop31187;
    wire [0:0] covariance_B9_merge_out_notcmp101185;
    wire [0:0] covariance_B9_merge_out_stall_out_0;
    wire [0:0] covariance_B9_merge_out_stall_out_1;
    wire [0:0] covariance_B9_merge_out_valid_out;


    // covariance_B9_merge(BLACKBOX,4)
    covariance_B9_merge thecovariance_B9_merge (
        .in_exitcond16184_0(in_exitcond16184_0),
        .in_exitcond16184_1(in_exitcond16184_1),
        .in_forked86_0(in_forked86_0),
        .in_forked86_1(in_forked86_1),
        .in_j24_062_pop30186_0(in_j24_062_pop30186_0),
        .in_j24_062_pop30186_1(in_j24_062_pop30186_1),
        .in_lim_ext133_pop44175_0(in_lim_ext133_pop44175_0),
        .in_lim_ext133_pop44175_1(in_lim_ext133_pop44175_1),
        .in_lim_ext134_pop32188_0(in_lim_ext134_pop32188_0),
        .in_lim_ext134_pop32188_1(in_lim_ext134_pop32188_1),
        .in_memdep_phi_pop31187_0(in_memdep_phi_pop31187_0),
        .in_memdep_phi_pop31187_1(in_memdep_phi_pop31187_1),
        .in_notcmp101185_0(in_notcmp101185_0),
        .in_notcmp101185_1(in_notcmp101185_1),
        .in_stall_in(bb_covariance_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond16184(covariance_B9_merge_out_exitcond16184),
        .out_forked86(covariance_B9_merge_out_forked86),
        .out_j24_062_pop30186(covariance_B9_merge_out_j24_062_pop30186),
        .out_lim_ext133_pop44175(covariance_B9_merge_out_lim_ext133_pop44175),
        .out_lim_ext134_pop32188(covariance_B9_merge_out_lim_ext134_pop32188),
        .out_memdep_phi_pop31187(covariance_B9_merge_out_memdep_phi_pop31187),
        .out_notcmp101185(covariance_B9_merge_out_notcmp101185),
        .out_stall_out_0(covariance_B9_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B9_merge_out_stall_out_1),
        .out_valid_out(covariance_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9_stall_region(BLACKBOX,2)
    covariance_bb_B9_stall_region thebb_covariance_B9_stall_region (
        .in_exitcond16184(covariance_B9_merge_out_exitcond16184),
        .in_flush(in_flush),
        .in_forked86(covariance_B9_merge_out_forked86),
        .in_j24_062_pop30186(covariance_B9_merge_out_j24_062_pop30186),
        .in_lim_ext133_pop44175(covariance_B9_merge_out_lim_ext133_pop44175),
        .in_lim_ext134_pop32188(covariance_B9_merge_out_lim_ext134_pop32188),
        .in_memdep_phi_pop31187(covariance_B9_merge_out_memdep_phi_pop31187),
        .in_notcmp101185(covariance_B9_merge_out_notcmp101185),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B9_branch_out_stall_out),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .in_valid_in(covariance_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out(bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out(bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out),
        .out_c0_exe2308(bb_covariance_B9_stall_region_out_c0_exe2308),
        .out_c0_exe3309(bb_covariance_B9_stall_region_out_c0_exe3309),
        .out_c0_exe4310(bb_covariance_B9_stall_region_out_c0_exe4310),
        .out_c0_exe5311(bb_covariance_B9_stall_region_out_c0_exe5311),
        .out_c0_exe6312(bb_covariance_B9_stall_region_out_c0_exe6312),
        .out_c0_exe7313(bb_covariance_B9_stall_region_out_c0_exe7313),
        .out_c0_exe8314(bb_covariance_B9_stall_region_out_c0_exe8314),
        .out_pipeline_valid_out(bb_covariance_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B9_stall_region_out_stall_out),
        .out_unnamed_covariance6_covariance_avm_address(bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B9_branch(BLACKBOX,3)
    covariance_B9_branch thecovariance_B9_branch (
        .in_c0_exe2308(bb_covariance_B9_stall_region_out_c0_exe2308),
        .in_c0_exe3309(bb_covariance_B9_stall_region_out_c0_exe3309),
        .in_c0_exe4310(bb_covariance_B9_stall_region_out_c0_exe4310),
        .in_c0_exe5311(bb_covariance_B9_stall_region_out_c0_exe5311),
        .in_c0_exe6312(bb_covariance_B9_stall_region_out_c0_exe6312),
        .in_c0_exe7313(bb_covariance_B9_stall_region_out_c0_exe7313),
        .in_c0_exe8314(bb_covariance_B9_stall_region_out_c0_exe8314),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B9_stall_region_out_valid_out),
        .out_c0_exe2308(covariance_B9_branch_out_c0_exe2308),
        .out_c0_exe3309(covariance_B9_branch_out_c0_exe3309),
        .out_c0_exe5311(covariance_B9_branch_out_c0_exe5311),
        .out_c0_exe6312(covariance_B9_branch_out_c0_exe6312),
        .out_c0_exe7313(covariance_B9_branch_out_c0_exe7313),
        .out_c0_exe8314(covariance_B9_branch_out_c0_exe8314),
        .out_stall_out(covariance_B9_branch_out_stall_out),
        .out_valid_out_0(covariance_B9_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2308(GPOUT,28)
    assign out_c0_exe2308 = covariance_B9_branch_out_c0_exe2308;

    // out_c0_exe3309(GPOUT,29)
    assign out_c0_exe3309 = covariance_B9_branch_out_c0_exe3309;

    // out_c0_exe5311(GPOUT,30)
    assign out_c0_exe5311 = covariance_B9_branch_out_c0_exe5311;

    // out_c0_exe6312(GPOUT,31)
    assign out_c0_exe6312 = covariance_B9_branch_out_c0_exe6312;

    // out_c0_exe7313(GPOUT,32)
    assign out_c0_exe7313 = covariance_B9_branch_out_c0_exe7313;

    // out_c0_exe8314(GPOUT,33)
    assign out_c0_exe8314 = covariance_B9_branch_out_c0_exe8314;

    // out_exiting_stall_out(GPOUT,34)
    assign out_exiting_stall_out = bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,35)
    assign out_exiting_valid_out = bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out;

    // out_stall_in_0(GPOUT,36)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = covariance_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,38)
    assign out_stall_out_1 = covariance_B9_merge_out_stall_out_1;

    // out_unnamed_covariance6_covariance_avm_address(GPOUT,39)
    assign out_unnamed_covariance6_covariance_avm_address = bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_address;

    // out_unnamed_covariance6_covariance_avm_burstcount(GPOUT,40)
    assign out_unnamed_covariance6_covariance_avm_burstcount = bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_burstcount;

    // out_unnamed_covariance6_covariance_avm_byteenable(GPOUT,41)
    assign out_unnamed_covariance6_covariance_avm_byteenable = bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_byteenable;

    // out_unnamed_covariance6_covariance_avm_enable(GPOUT,42)
    assign out_unnamed_covariance6_covariance_avm_enable = bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_enable;

    // out_unnamed_covariance6_covariance_avm_read(GPOUT,43)
    assign out_unnamed_covariance6_covariance_avm_read = bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_read;

    // out_unnamed_covariance6_covariance_avm_write(GPOUT,44)
    assign out_unnamed_covariance6_covariance_avm_write = bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_write;

    // out_unnamed_covariance6_covariance_avm_writedata(GPOUT,45)
    assign out_unnamed_covariance6_covariance_avm_writedata = bb_covariance_B9_stall_region_out_unnamed_covariance6_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,46)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,47)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,48)
    assign out_valid_out_0 = covariance_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,49)
    assign out_valid_out_1 = covariance_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,51)
    assign out_pipeline_valid_out = bb_covariance_B9_stall_region_out_pipeline_valid_out;

endmodule
