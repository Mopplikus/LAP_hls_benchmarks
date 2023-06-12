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

// SystemVerilog created from bb_triangular_B5
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B5 (
    input wire [0:0] in_flush,
    input wire [31:0] in_i_01838_0,
    input wire [31:0] in_i_01838_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_lim_ext25_pop1442_0,
    input wire [31:0] in_lim_ext25_pop1442_1,
    input wire [31:0] in_lim_ext34_0,
    input wire [31:0] in_lim_ext34_1,
    input wire [31:0] in_lm113_triangular_avm_readdata,
    input wire [0:0] in_lm113_triangular_avm_readdatavalid,
    input wire [0:0] in_lm113_triangular_avm_waitrequest,
    input wire [0:0] in_lm113_triangular_avm_writeack,
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [31:0] in_lm92_triangular_avm_readdata,
    input wire [0:0] in_lm92_triangular_avm_readdatavalid,
    input wire [0:0] in_lm92_triangular_avm_waitrequest,
    input wire [0:0] in_lm92_triangular_avm_writeack,
    input wire [0:0] in_memdep_phi4_pop1341_0,
    input wire [0:0] in_memdep_phi4_pop1341_1,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_notcmp1740_0,
    input wire [0:0] in_notcmp1740_1,
    input wire [31:0] in_reorder_limiter_enter27_pop1543_0,
    input wire [31:0] in_reorder_limiter_enter27_pop1543_1,
    input wire [31:0] in_reorder_limiter_enter37_0,
    input wire [31:0] in_reorder_limiter_enter37_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_sub339_0,
    input wire [31:0] in_sub339_1,
    input wire [32:0] in_unnamed_triangular12_0,
    input wire [32:0] in_unnamed_triangular12_1,
    input wire [0:0] in_unnamed_triangular13_0,
    input wire [0:0] in_unnamed_triangular13_1,
    input wire [0:0] in_unnamed_triangular14_0,
    input wire [0:0] in_unnamed_triangular14_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe177,
    output wire [0:0] out_c0_exe480,
    output wire [31:0] out_c0_exe581,
    output wire [0:0] out_c0_exe682,
    output wire [31:0] out_lm113_triangular_avm_address,
    output wire [0:0] out_lm113_triangular_avm_burstcount,
    output wire [3:0] out_lm113_triangular_avm_byteenable,
    output wire [0:0] out_lm113_triangular_avm_enable,
    output wire [0:0] out_lm113_triangular_avm_read,
    output wire [0:0] out_lm113_triangular_avm_write,
    output wire [31:0] out_lm113_triangular_avm_writedata,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [31:0] out_lm92_triangular_avm_address,
    output wire [0:0] out_lm92_triangular_avm_burstcount,
    output wire [3:0] out_lm92_triangular_avm_byteenable,
    output wire [0:0] out_lm92_triangular_avm_enable,
    output wire [0:0] out_lm92_triangular_avm_read,
    output wire [0:0] out_lm92_triangular_avm_write,
    output wire [31:0] out_lm92_triangular_avm_writedata,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe177;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe379;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe480;
    wire [31:0] bb_triangular_B5_stall_region_out_c0_exe581;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe682;
    wire [31:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_writedata;
    wire [0:0] bb_triangular_B5_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_triangular_B5_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B5_stall_region_out_valid_out;
    wire [0:0] triangular_B5_branch_out_c0_exe177;
    wire [0:0] triangular_B5_branch_out_c0_exe480;
    wire [31:0] triangular_B5_branch_out_c0_exe581;
    wire [0:0] triangular_B5_branch_out_c0_exe682;
    wire [0:0] triangular_B5_branch_out_stall_out;
    wire [0:0] triangular_B5_branch_out_valid_out_0;
    wire [0:0] triangular_B5_branch_out_valid_out_1;
    wire [31:0] triangular_B5_merge_out_i_01838;
    wire [31:0] triangular_B5_merge_out_lim_ext25_pop1442;
    wire [31:0] triangular_B5_merge_out_lim_ext34;
    wire [0:0] triangular_B5_merge_out_memdep_phi4_pop1341;
    wire [0:0] triangular_B5_merge_out_notcmp1740;
    wire [31:0] triangular_B5_merge_out_reorder_limiter_enter27_pop1543;
    wire [31:0] triangular_B5_merge_out_reorder_limiter_enter37;
    wire [0:0] triangular_B5_merge_out_stall_out_0;
    wire [0:0] triangular_B5_merge_out_stall_out_1;
    wire [31:0] triangular_B5_merge_out_sub339;
    wire [32:0] triangular_B5_merge_out_unnamed_triangular12;
    wire [0:0] triangular_B5_merge_out_unnamed_triangular13;
    wire [0:0] triangular_B5_merge_out_unnamed_triangular14;
    wire [0:0] triangular_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // triangular_B5_merge(BLACKBOX,87)
    triangular_B5_merge thetriangular_B5_merge (
        .in_i_01838_0(in_i_01838_0),
        .in_i_01838_1(in_i_01838_1),
        .in_lim_ext25_pop1442_0(in_lim_ext25_pop1442_0),
        .in_lim_ext25_pop1442_1(in_lim_ext25_pop1442_1),
        .in_lim_ext34_0(in_lim_ext34_0),
        .in_lim_ext34_1(in_lim_ext34_1),
        .in_memdep_phi4_pop1341_0(in_memdep_phi4_pop1341_0),
        .in_memdep_phi4_pop1341_1(in_memdep_phi4_pop1341_1),
        .in_notcmp1740_0(in_notcmp1740_0),
        .in_notcmp1740_1(in_notcmp1740_1),
        .in_reorder_limiter_enter27_pop1543_0(in_reorder_limiter_enter27_pop1543_0),
        .in_reorder_limiter_enter27_pop1543_1(in_reorder_limiter_enter27_pop1543_1),
        .in_reorder_limiter_enter37_0(in_reorder_limiter_enter37_0),
        .in_reorder_limiter_enter37_1(in_reorder_limiter_enter37_1),
        .in_stall_in(bb_triangular_B5_stall_region_out_stall_out),
        .in_sub339_0(in_sub339_0),
        .in_sub339_1(in_sub339_1),
        .in_unnamed_triangular12_0(in_unnamed_triangular12_0),
        .in_unnamed_triangular12_1(in_unnamed_triangular12_1),
        .in_unnamed_triangular13_0(in_unnamed_triangular13_0),
        .in_unnamed_triangular13_1(in_unnamed_triangular13_1),
        .in_unnamed_triangular14_0(in_unnamed_triangular14_0),
        .in_unnamed_triangular14_1(in_unnamed_triangular14_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_i_01838(triangular_B5_merge_out_i_01838),
        .out_lim_ext25_pop1442(triangular_B5_merge_out_lim_ext25_pop1442),
        .out_lim_ext34(triangular_B5_merge_out_lim_ext34),
        .out_memdep_phi4_pop1341(triangular_B5_merge_out_memdep_phi4_pop1341),
        .out_notcmp1740(triangular_B5_merge_out_notcmp1740),
        .out_reorder_limiter_enter27_pop1543(triangular_B5_merge_out_reorder_limiter_enter27_pop1543),
        .out_reorder_limiter_enter37(triangular_B5_merge_out_reorder_limiter_enter37),
        .out_stall_out_0(triangular_B5_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B5_merge_out_stall_out_1),
        .out_sub339(triangular_B5_merge_out_sub339),
        .out_unnamed_triangular12(triangular_B5_merge_out_unnamed_triangular12),
        .out_unnamed_triangular13(triangular_B5_merge_out_unnamed_triangular13),
        .out_unnamed_triangular14(triangular_B5_merge_out_unnamed_triangular14),
        .out_valid_out(triangular_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B5_stall_region(BLACKBOX,2)
    triangular_bb_B5_stall_region thebb_triangular_B5_stall_region (
        .in_flush(in_flush),
        .in_i_01838(triangular_B5_merge_out_i_01838),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lim_ext25_pop1442(triangular_B5_merge_out_lim_ext25_pop1442),
        .in_lim_ext34(triangular_B5_merge_out_lim_ext34),
        .in_lm113_triangular_avm_readdata(in_lm113_triangular_avm_readdata),
        .in_lm113_triangular_avm_readdatavalid(in_lm113_triangular_avm_readdatavalid),
        .in_lm113_triangular_avm_waitrequest(in_lm113_triangular_avm_waitrequest),
        .in_lm113_triangular_avm_writeack(in_lm113_triangular_avm_writeack),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_lm92_triangular_avm_readdata(in_lm92_triangular_avm_readdata),
        .in_lm92_triangular_avm_readdatavalid(in_lm92_triangular_avm_readdatavalid),
        .in_lm92_triangular_avm_waitrequest(in_lm92_triangular_avm_waitrequest),
        .in_lm92_triangular_avm_writeack(in_lm92_triangular_avm_writeack),
        .in_memdep_phi4_pop1341(triangular_B5_merge_out_memdep_phi4_pop1341),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .in_notcmp1740(triangular_B5_merge_out_notcmp1740),
        .in_reorder_limiter_enter27_pop1543(triangular_B5_merge_out_reorder_limiter_enter27_pop1543),
        .in_reorder_limiter_enter37(triangular_B5_merge_out_reorder_limiter_enter37),
        .in_stall_in(triangular_B5_branch_out_stall_out),
        .in_sub339(triangular_B5_merge_out_sub339),
        .in_unnamed_triangular12(triangular_B5_merge_out_unnamed_triangular12),
        .in_unnamed_triangular13(triangular_B5_merge_out_unnamed_triangular13),
        .in_unnamed_triangular14(triangular_B5_merge_out_unnamed_triangular14),
        .in_valid_in(triangular_B5_merge_out_valid_out),
        .out_c0_exe177(bb_triangular_B5_stall_region_out_c0_exe177),
        .out_c0_exe379(bb_triangular_B5_stall_region_out_c0_exe379),
        .out_c0_exe480(bb_triangular_B5_stall_region_out_c0_exe480),
        .out_c0_exe581(bb_triangular_B5_stall_region_out_c0_exe581),
        .out_c0_exe682(bb_triangular_B5_stall_region_out_c0_exe682),
        .out_lm113_triangular_avm_address(bb_triangular_B5_stall_region_out_lm113_triangular_avm_address),
        .out_lm113_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_lm113_triangular_avm_burstcount),
        .out_lm113_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_lm113_triangular_avm_byteenable),
        .out_lm113_triangular_avm_enable(bb_triangular_B5_stall_region_out_lm113_triangular_avm_enable),
        .out_lm113_triangular_avm_read(bb_triangular_B5_stall_region_out_lm113_triangular_avm_read),
        .out_lm113_triangular_avm_write(bb_triangular_B5_stall_region_out_lm113_triangular_avm_write),
        .out_lm113_triangular_avm_writedata(bb_triangular_B5_stall_region_out_lm113_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(bb_triangular_B5_stall_region_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(bb_triangular_B5_stall_region_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(bb_triangular_B5_stall_region_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(bb_triangular_B5_stall_region_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(bb_triangular_B5_stall_region_out_lm1_triangular_avm_writedata),
        .out_lm92_triangular_avm_address(bb_triangular_B5_stall_region_out_lm92_triangular_avm_address),
        .out_lm92_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_lm92_triangular_avm_burstcount),
        .out_lm92_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_lm92_triangular_avm_byteenable),
        .out_lm92_triangular_avm_enable(bb_triangular_B5_stall_region_out_lm92_triangular_avm_enable),
        .out_lm92_triangular_avm_read(bb_triangular_B5_stall_region_out_lm92_triangular_avm_read),
        .out_lm92_triangular_avm_write(bb_triangular_B5_stall_region_out_lm92_triangular_avm_write),
        .out_lm92_triangular_avm_writedata(bb_triangular_B5_stall_region_out_lm92_triangular_avm_writedata),
        .out_memdep_triangular_avm_address(bb_triangular_B5_stall_region_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(bb_triangular_B5_stall_region_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(bb_triangular_B5_stall_region_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(bb_triangular_B5_stall_region_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(bb_triangular_B5_stall_region_out_memdep_triangular_avm_writedata),
        .out_profile_loop_o_valid(bb_triangular_B5_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_triangular_B5_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B5_branch(BLACKBOX,86)
    triangular_B5_branch thetriangular_B5_branch (
        .in_c0_exe177(bb_triangular_B5_stall_region_out_c0_exe177),
        .in_c0_exe379(bb_triangular_B5_stall_region_out_c0_exe379),
        .in_c0_exe480(bb_triangular_B5_stall_region_out_c0_exe480),
        .in_c0_exe581(bb_triangular_B5_stall_region_out_c0_exe581),
        .in_c0_exe682(bb_triangular_B5_stall_region_out_c0_exe682),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_triangular_B5_stall_region_out_valid_out),
        .out_c0_exe177(triangular_B5_branch_out_c0_exe177),
        .out_c0_exe480(triangular_B5_branch_out_c0_exe480),
        .out_c0_exe581(triangular_B5_branch_out_c0_exe581),
        .out_c0_exe682(triangular_B5_branch_out_c0_exe682),
        .out_stall_out(triangular_B5_branch_out_stall_out),
        .out_valid_out_0(triangular_B5_branch_out_valid_out_0),
        .out_valid_out_1(triangular_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe177(GPOUT,47)
    assign out_c0_exe177 = triangular_B5_branch_out_c0_exe177;

    // out_c0_exe480(GPOUT,48)
    assign out_c0_exe480 = triangular_B5_branch_out_c0_exe480;

    // out_c0_exe581(GPOUT,49)
    assign out_c0_exe581 = triangular_B5_branch_out_c0_exe581;

    // out_c0_exe682(GPOUT,50)
    assign out_c0_exe682 = triangular_B5_branch_out_c0_exe682;

    // out_lm113_triangular_avm_address(GPOUT,51)
    assign out_lm113_triangular_avm_address = bb_triangular_B5_stall_region_out_lm113_triangular_avm_address;

    // out_lm113_triangular_avm_burstcount(GPOUT,52)
    assign out_lm113_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_lm113_triangular_avm_burstcount;

    // out_lm113_triangular_avm_byteenable(GPOUT,53)
    assign out_lm113_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_lm113_triangular_avm_byteenable;

    // out_lm113_triangular_avm_enable(GPOUT,54)
    assign out_lm113_triangular_avm_enable = bb_triangular_B5_stall_region_out_lm113_triangular_avm_enable;

    // out_lm113_triangular_avm_read(GPOUT,55)
    assign out_lm113_triangular_avm_read = bb_triangular_B5_stall_region_out_lm113_triangular_avm_read;

    // out_lm113_triangular_avm_write(GPOUT,56)
    assign out_lm113_triangular_avm_write = bb_triangular_B5_stall_region_out_lm113_triangular_avm_write;

    // out_lm113_triangular_avm_writedata(GPOUT,57)
    assign out_lm113_triangular_avm_writedata = bb_triangular_B5_stall_region_out_lm113_triangular_avm_writedata;

    // out_lm1_triangular_avm_address(GPOUT,58)
    assign out_lm1_triangular_avm_address = bb_triangular_B5_stall_region_out_lm1_triangular_avm_address;

    // out_lm1_triangular_avm_burstcount(GPOUT,59)
    assign out_lm1_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_lm1_triangular_avm_burstcount;

    // out_lm1_triangular_avm_byteenable(GPOUT,60)
    assign out_lm1_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_lm1_triangular_avm_byteenable;

    // out_lm1_triangular_avm_enable(GPOUT,61)
    assign out_lm1_triangular_avm_enable = bb_triangular_B5_stall_region_out_lm1_triangular_avm_enable;

    // out_lm1_triangular_avm_read(GPOUT,62)
    assign out_lm1_triangular_avm_read = bb_triangular_B5_stall_region_out_lm1_triangular_avm_read;

    // out_lm1_triangular_avm_write(GPOUT,63)
    assign out_lm1_triangular_avm_write = bb_triangular_B5_stall_region_out_lm1_triangular_avm_write;

    // out_lm1_triangular_avm_writedata(GPOUT,64)
    assign out_lm1_triangular_avm_writedata = bb_triangular_B5_stall_region_out_lm1_triangular_avm_writedata;

    // out_lm92_triangular_avm_address(GPOUT,65)
    assign out_lm92_triangular_avm_address = bb_triangular_B5_stall_region_out_lm92_triangular_avm_address;

    // out_lm92_triangular_avm_burstcount(GPOUT,66)
    assign out_lm92_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_lm92_triangular_avm_burstcount;

    // out_lm92_triangular_avm_byteenable(GPOUT,67)
    assign out_lm92_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_lm92_triangular_avm_byteenable;

    // out_lm92_triangular_avm_enable(GPOUT,68)
    assign out_lm92_triangular_avm_enable = bb_triangular_B5_stall_region_out_lm92_triangular_avm_enable;

    // out_lm92_triangular_avm_read(GPOUT,69)
    assign out_lm92_triangular_avm_read = bb_triangular_B5_stall_region_out_lm92_triangular_avm_read;

    // out_lm92_triangular_avm_write(GPOUT,70)
    assign out_lm92_triangular_avm_write = bb_triangular_B5_stall_region_out_lm92_triangular_avm_write;

    // out_lm92_triangular_avm_writedata(GPOUT,71)
    assign out_lm92_triangular_avm_writedata = bb_triangular_B5_stall_region_out_lm92_triangular_avm_writedata;

    // out_memdep_triangular_avm_address(GPOUT,72)
    assign out_memdep_triangular_avm_address = bb_triangular_B5_stall_region_out_memdep_triangular_avm_address;

    // out_memdep_triangular_avm_burstcount(GPOUT,73)
    assign out_memdep_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_memdep_triangular_avm_burstcount;

    // out_memdep_triangular_avm_byteenable(GPOUT,74)
    assign out_memdep_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_memdep_triangular_avm_byteenable;

    // out_memdep_triangular_avm_enable(GPOUT,75)
    assign out_memdep_triangular_avm_enable = bb_triangular_B5_stall_region_out_memdep_triangular_avm_enable;

    // out_memdep_triangular_avm_read(GPOUT,76)
    assign out_memdep_triangular_avm_read = bb_triangular_B5_stall_region_out_memdep_triangular_avm_read;

    // out_memdep_triangular_avm_write(GPOUT,77)
    assign out_memdep_triangular_avm_write = bb_triangular_B5_stall_region_out_memdep_triangular_avm_write;

    // out_memdep_triangular_avm_writedata(GPOUT,78)
    assign out_memdep_triangular_avm_writedata = bb_triangular_B5_stall_region_out_memdep_triangular_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,79)
    assign out_profile_loop_o_valid = bb_triangular_B5_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,80)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,81)
    assign out_stall_out_0 = triangular_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,82)
    assign out_stall_out_1 = triangular_B5_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,83)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,84)
    assign out_valid_out_0 = triangular_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,85)
    assign out_valid_out_1 = triangular_B5_branch_out_valid_out_1;

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
