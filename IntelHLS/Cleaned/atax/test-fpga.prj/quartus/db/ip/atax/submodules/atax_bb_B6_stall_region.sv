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

// SystemVerilog created from bb_atax_B6_stall_region
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6_stall_region (
    output wire [0:0] out_lsu_memdep_2_o_active,
    output wire [0:0] out_notcmp3553_pop3313,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_2_atax_avm_readdata,
    input wire [0:0] in_memdep_2_atax_avm_writeack,
    input wire [0:0] in_memdep_2_atax_avm_waitrequest,
    input wire [0:0] in_memdep_2_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_2_atax_avm_address,
    output wire [0:0] out_memdep_2_atax_avm_enable,
    output wire [0:0] out_memdep_2_atax_avm_read,
    output wire [0:0] out_memdep_2_atax_avm_write,
    output wire [31:0] out_memdep_2_atax_avm_writedata,
    output wire [3:0] out_memdep_2_atax_avm_byteenable,
    output wire [0:0] out_memdep_2_atax_avm_burstcount,
    output wire [0:0] out_feedback_out_12,
    output wire [0:0] out_feedback_out_13,
    input wire [0:0] in_feedback_stall_in_12,
    input wire [0:0] in_feedback_stall_in_13,
    output wire [0:0] out_feedback_valid_out_12,
    output wire [0:0] out_feedback_valid_out_13,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add758_pop379,
    input wire [0:0] in_exitcond1251_pop3212,
    input wire [63:0] in_mPtr_bitcast_index8846_pop3011,
    input wire [0:0] in_memdep_10,
    input wire [0:0] in_notcmp3553_pop3313,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_lsu_memdep_2_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_2_atax1_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_valid_out;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_2_atax1_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_2_atax1_b;
    wire [98:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_atax0_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;


    // join_for_coalesced_delay_0(BITJOIN,33)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_f, bubble_select_stall_entry_c};

    // coalesced_delay_0_fifo(STALLFIFO,35)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_atax0(STALLENABLE,53)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_atax0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_atax0_wireValid = i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push12_atax0(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_i_llvm_fpga_push_i1_memdep_phi_push12_0 thei_llvm_fpga_push_i1_memdep_phi_push12_atax0 (
        .in_data_in(bubble_select_stall_entry_e),
        .in_exitcond1251_pop3212(bubble_select_stall_entry_c),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_atax0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_mem_memdep_2_atax1_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi3_push13_atax2(STALLENABLE,51)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_wireValid = i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_valid_out;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,46)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,47)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,34)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // bubble_join_i_llvm_fpga_mem_memdep_2_atax1(BITJOIN,37)
    assign bubble_join_i_llvm_fpga_mem_memdep_2_atax1_q = i_llvm_fpga_mem_memdep_2_atax1_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_2_atax1(BITSELECT,38)
    assign bubble_select_i_llvm_fpga_mem_memdep_2_atax1_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_2_atax1_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi3_push13_atax2(BLACKBOX,16)@31
    // in in_stall_in@20000000
    // out out_data_out@32
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@32
    atax_i_llvm_fpga_push_i1_memdep_phi3_push13_0 thei_llvm_fpga_push_i1_memdep_phi3_push13_atax2 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_2_atax1_b),
        .in_exitcond1251_pop3212(sel_for_coalesced_delay_0_b),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (in_stall_in) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_memdep_2_atax1_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_stall_entry(BITJOIN,41)
    assign bubble_join_stall_entry_q = {in_notcmp3553_pop3313, in_memdep_10, in_mPtr_bitcast_index8846_pop3011, in_exitcond1251_pop3212, in_add758_pop379};

    // bubble_select_stall_entry(BITSELECT,42)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:98]);

    // i_llvm_fpga_mem_memdep_2_atax1(BLACKBOX,15)@0
    // in in_i_stall@20000000
    // out out_lsu_memdep_2_o_active@20000000
    // out out_memdep_2_atax_avm_address@20000000
    // out out_memdep_2_atax_avm_burstcount@20000000
    // out out_memdep_2_atax_avm_byteenable@20000000
    // out out_memdep_2_atax_avm_enable@20000000
    // out out_memdep_2_atax_avm_read@20000000
    // out out_memdep_2_atax_avm_write@20000000
    // out out_memdep_2_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@31
    // out out_o_writeack@31
    atax_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_atax1 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_stall_entry_d),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_i_writedata(bubble_select_stall_entry_b),
        .in_memdep_2_atax_avm_readdata(in_memdep_2_atax_avm_readdata),
        .in_memdep_2_atax_avm_readdatavalid(in_memdep_2_atax_avm_readdatavalid),
        .in_memdep_2_atax_avm_waitrequest(in_memdep_2_atax_avm_waitrequest),
        .in_memdep_2_atax_avm_writeack(in_memdep_2_atax_avm_writeack),
        .out_lsu_memdep_2_o_active(i_llvm_fpga_mem_memdep_2_atax1_out_lsu_memdep_2_o_active),
        .out_memdep_2_atax_avm_address(i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_address),
        .out_memdep_2_atax_avm_burstcount(i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_burstcount),
        .out_memdep_2_atax_avm_byteenable(i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_byteenable),
        .out_memdep_2_atax_avm_enable(i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_enable),
        .out_memdep_2_atax_avm_read(i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_read),
        .out_memdep_2_atax_avm_write(i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_write),
        .out_memdep_2_atax_avm_writedata(i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_2_atax1_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_2_atax1_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_2_atax1_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_lsu_memdep_2_o_active = i_llvm_fpga_mem_memdep_2_atax1_out_lsu_memdep_2_o_active;

    // dupName_0_sync_out_x(GPOUT,3)@31
    assign out_notcmp3553_pop3313 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_memdep_2_atax_avm_address = i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_address;
    assign out_memdep_2_atax_avm_enable = i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_enable;
    assign out_memdep_2_atax_avm_read = i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_read;
    assign out_memdep_2_atax_avm_write = i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_write;
    assign out_memdep_2_atax_avm_writedata = i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_writedata;
    assign out_memdep_2_atax_avm_byteenable = i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_byteenable;
    assign out_memdep_2_atax_avm_burstcount = i_llvm_fpga_mem_memdep_2_atax1_out_memdep_2_atax_avm_burstcount;

    // feedback_out_12_sync(GPOUT,9)
    assign out_feedback_out_12 = i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_feedback_out_12;

    // feedback_out_13_sync(GPOUT,10)
    assign out_feedback_out_13 = i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_feedback_out_13;

    // feedback_valid_out_12_sync(GPOUT,13)
    assign out_feedback_valid_out_12 = i_llvm_fpga_push_i1_memdep_phi_push12_atax0_out_feedback_valid_out_12;

    // feedback_valid_out_13_sync(GPOUT,14)
    assign out_feedback_valid_out_13 = i_llvm_fpga_push_i1_memdep_phi3_push13_atax2_out_feedback_valid_out_13;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
