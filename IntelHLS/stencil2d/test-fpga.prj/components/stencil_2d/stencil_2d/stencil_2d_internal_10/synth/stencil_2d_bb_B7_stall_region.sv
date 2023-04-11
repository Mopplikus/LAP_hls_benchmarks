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

// SystemVerilog created from bb_stencil_2d_B7_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B7_stall_region (
    input wire [31:0] in_unnamed_stencil_2d4_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid,
    output wire [31:0] out_unnamed_stencil_2d4_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d4_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d4_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe21891,
    input wire [31:0] in_c0_exe41913,
    input wire [0:0] in_c0_exe51926,
    input wire [0:0] in_c0_exe61938,
    input wire [31:0] in_c0_exe719410,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe51926,
    output wire [0:0] out_c0_exe61938,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_stencil_2d_sol_pmem_q;
    wire [32:0] i_add29_stencil_2d0_a;
    wire [32:0] i_add29_stencil_2d0_b;
    logic [32:0] i_add29_stencil_2d0_o;
    wire [32:0] i_add29_stencil_2d0_q;
    wire [1:0] i_arrayidx313_stencil_2d2_vt_const_1_q;
    wire [63:0] i_arrayidx313_stencil_2d2_vt_join_q;
    wire [61:0] i_arrayidx313_stencil_2d2_vt_select_63_b;
    wire [31:0] i_idxprom30_stencil_2d1_vt_const_63_q;
    wire [63:0] i_idxprom30_stencil_2d1_vt_join_q;
    wire [31:0] i_idxprom30_stencil_2d1_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;
    wire [31:0] bgTrunc_i_add29_stencil_2d0_sel_x_b;
    wire [12:0] i_arrayidx313_stencil_2d0_add_x_a;
    wire [12:0] i_arrayidx313_stencil_2d0_add_x_b;
    logic [12:0] i_arrayidx313_stencil_2d0_add_x_o;
    wire [12:0] i_arrayidx313_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx313_stencil_2d0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx313_stencil_2d0_narrow_x_b;
    wire [11:0] i_arrayidx313_stencil_2d0_shift_join_x_q;
    wire [11:0] i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom30_stencil_2d1_sel_x_b;
    wire [51:0] i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    wire [97:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_sel_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_sel_for_coalesced_delay_0_and0;
    wire [0:0] SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] SE_sel_for_coalesced_delay_0_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,52)
    assign bubble_join_stall_entry_q = {in_c0_exe719410, in_c0_exe61938, in_c0_exe51926, in_c0_exe41913, in_c0_exe21891};

    // bubble_select_stall_entry(BITSELECT,53)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);

    // SE_coalesced_delay_0_0(STALLENABLE,75)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_sel_for_coalesced_delay_0(STALLENABLE,74)
    // Valid signal propagation
    assign SE_sel_for_coalesced_delay_0_V0 = SE_sel_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_sel_for_coalesced_delay_0_backStall = in_stall_in | ~ (SE_sel_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_sel_for_coalesced_delay_0_and0 = SE_coalesced_delay_0_0_V0;
    assign SE_sel_for_coalesced_delay_0_wireValid = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_o_valid & SE_sel_for_coalesced_delay_0_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_stencil_2d_sol_pmem(CONSTANT,4)
    assign c_stencil_2d_sol_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,43)@0
    assign i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_sol_pmem_q[63:12];
    assign i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_sol_pmem_q[11:0];

    // i_idxprom30_stencil_2d1_vt_const_63(CONSTANT,14)
    assign i_idxprom30_stencil_2d1_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_add29_stencil_2d0(ADD,9)@0
    assign i_add29_stencil_2d0_a = {1'b0, bubble_select_stall_entry_f};
    assign i_add29_stencil_2d0_b = {1'b0, bubble_select_stall_entry_c};
    assign i_add29_stencil_2d0_o = $unsigned(i_add29_stencil_2d0_a) + $unsigned(i_add29_stencil_2d0_b);
    assign i_add29_stencil_2d0_q = i_add29_stencil_2d0_o[32:0];

    // bgTrunc_i_add29_stencil_2d0_sel_x(BITSELECT,26)@0
    assign bgTrunc_i_add29_stencil_2d0_sel_x_b = i_add29_stencil_2d0_q[31:0];

    // i_idxprom30_stencil_2d1_sel_x(BITSELECT,40)@0
    assign i_idxprom30_stencil_2d1_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add29_stencil_2d0_sel_x_b[31:0]};

    // i_idxprom30_stencil_2d1_vt_select_31(BITSELECT,16)@0
    assign i_idxprom30_stencil_2d1_vt_select_31_b = i_idxprom30_stencil_2d1_sel_x_b[31:0];

    // i_idxprom30_stencil_2d1_vt_join(BITJOIN,15)@0
    assign i_idxprom30_stencil_2d1_vt_join_q = {i_idxprom30_stencil_2d1_vt_const_63_q, i_idxprom30_stencil_2d1_vt_select_31_b};

    // i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,38)@0
    assign i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom30_stencil_2d1_vt_join_q[11:0];

    // i_arrayidx313_stencil_2d0_narrow_x(BITSELECT,31)@0
    assign i_arrayidx313_stencil_2d0_narrow_x_b = i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx313_stencil_2d0_shift_join_x(BITJOIN,32)@0
    assign i_arrayidx313_stencil_2d0_shift_join_x_q = {i_arrayidx313_stencil_2d0_narrow_x_b, i_arrayidx313_stencil_2d2_vt_const_1_q};

    // i_arrayidx313_stencil_2d0_add_x(ADD,28)@0
    assign i_arrayidx313_stencil_2d0_add_x_a = {1'b0, i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx313_stencil_2d0_add_x_b = {1'b0, i_arrayidx313_stencil_2d0_shift_join_x_q};
    assign i_arrayidx313_stencil_2d0_add_x_o = $unsigned(i_arrayidx313_stencil_2d0_add_x_a) + $unsigned(i_arrayidx313_stencil_2d0_add_x_b);
    assign i_arrayidx313_stencil_2d0_add_x_q = i_arrayidx313_stencil_2d0_add_x_o[12:0];

    // i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,39)@0
    assign i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx313_stencil_2d0_add_x_q[11:0];

    // i_arrayidx313_stencil_2d0_append_upper_bits_x(BITJOIN,29)@0
    assign i_arrayidx313_stencil_2d0_append_upper_bits_x_q = {i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx313_stencil_2d2_vt_select_63(BITSELECT,12)@0
    assign i_arrayidx313_stencil_2d2_vt_select_63_b = i_arrayidx313_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx313_stencil_2d2_vt_const_1(CONSTANT,10)
    assign i_arrayidx313_stencil_2d2_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx313_stencil_2d2_vt_join(BITJOIN,11)@0
    assign i_arrayidx313_stencil_2d2_vt_join_q = {i_arrayidx313_stencil_2d2_vt_select_63_b, i_arrayidx313_stencil_2d2_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3(BLACKBOX,17)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_unnamed_stencil_2d4_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d4_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d4_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d4_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d4_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d4_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d4_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_4_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx313_stencil_2d2_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_sel_for_coalesced_delay_0_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_i_writedata(bubble_select_stall_entry_b),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdata(in_unnamed_stencil_2d4_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d4_stencil_2d_avm_writeack(in_unnamed_stencil_2d4_stencil_2d_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_o_valid),
        .out_unnamed_stencil_2d4_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_address),
        .out_unnamed_stencil_2d4_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d4_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_read),
        .out_unnamed_stencil_2d4_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_write),
        .out_unnamed_stencil_2d4_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d4_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d4_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d4_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d4_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d4_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d4_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d4_stencil_2d3_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // join_for_coalesced_delay_0(BITJOIN,47)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d};

    // coalesced_delay_0_0(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,48)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,27)@1
    assign out_c0_exe51926 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe61938 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_sel_for_coalesced_delay_0_V0;

endmodule
