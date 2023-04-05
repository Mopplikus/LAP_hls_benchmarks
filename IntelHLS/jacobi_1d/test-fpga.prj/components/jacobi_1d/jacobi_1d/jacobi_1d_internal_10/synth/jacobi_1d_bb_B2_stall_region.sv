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

// SystemVerilog created from bb_jacobi_1d_B2_stall_region
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B2_stall_region (
    input wire [31:0] in_pre_pre1_jacobi_1d_avm_readdata,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_writeack,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_address,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_enable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_read,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_write,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_writedata,
    output wire [3:0] out_pre_pre1_jacobi_1d_avm_byteenable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_writedata;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,20)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x(STALLENABLE,23)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x(BLACKBOX,17)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_pre_pre1_jacobi_1d_avm_address@20000000
    // out out_pre_pre1_jacobi_1d_avm_burstcount@20000000
    // out out_pre_pre1_jacobi_1d_avm_byteenable@20000000
    // out out_pre_pre1_jacobi_1d_avm_enable@20000000
    // out out_pre_pre1_jacobi_1d_avm_read@20000000
    // out out_pre_pre1_jacobi_1d_avm_write@20000000
    // out out_pre_pre1_jacobi_1d_avm_writedata@20000000
    // out out_c0_exit71_0_tpl@8
    jacobi_1d_i_sfc_s_c0_in_for_cond15_prehe00000_enter70_jacobi_1d0 thei_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_pre_pre1_jacobi_1d_avm_readdata(in_pre_pre1_jacobi_1d_avm_readdata),
        .in_pre_pre1_jacobi_1d_avm_readdatavalid(in_pre_pre1_jacobi_1d_avm_readdatavalid),
        .in_pre_pre1_jacobi_1d_avm_waitrequest(in_pre_pre1_jacobi_1d_avm_waitrequest),
        .in_pre_pre1_jacobi_1d_avm_writeack(in_pre_pre1_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d6_0_tpl(GND_q),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_o_valid),
        .out_pre_pre1_jacobi_1d_avm_address(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_address),
        .out_pre_pre1_jacobi_1d_avm_burstcount(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_burstcount),
        .out_pre_pre1_jacobi_1d_avm_byteenable(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_byteenable),
        .out_pre_pre1_jacobi_1d_avm_enable(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_enable),
        .out_pre_pre1_jacobi_1d_avm_read(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_read),
        .out_pre_pre1_jacobi_1d_avm_write(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_write),
        .out_pre_pre1_jacobi_1d_avm_writedata(i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_writedata),
        .out_c0_exit71_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_pre_pre1_jacobi_1d_avm_address = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_address;
    assign out_pre_pre1_jacobi_1d_avm_enable = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_enable;
    assign out_pre_pre1_jacobi_1d_avm_read = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_read;
    assign out_pre_pre1_jacobi_1d_avm_write = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_write;
    assign out_pre_pre1_jacobi_1d_avm_writedata = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_writedata;
    assign out_pre_pre1_jacobi_1d_avm_byteenable = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_byteenable;
    assign out_pre_pre1_jacobi_1d_avm_burstcount = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_pre_pre1_jacobi_1d_avm_burstcount;

    // regfree_osync(GPOUT,10)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_out_intel_reserved_ffwd_3_0;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,16)@8
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond15_preheader_jacobi_1ds_c0_enter70_jacobi_1d0_aunroll_x_V0;

endmodule
