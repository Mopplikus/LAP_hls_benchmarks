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
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B7_stall_region (
    input wire [63:0] in_memdep_stencil_2d_avm_readdata,
    input wire [0:0] in_memdep_stencil_2d_avm_writeack,
    input wire [0:0] in_memdep_stencil_2d_avm_waitrequest,
    input wire [0:0] in_memdep_stencil_2d_avm_readdatavalid,
    output wire [63:0] out_memdep_stencil_2d_avm_address,
    output wire [0:0] out_memdep_stencil_2d_avm_enable,
    output wire [0:0] out_memdep_stencil_2d_avm_read,
    output wire [0:0] out_memdep_stencil_2d_avm_write,
    output wire [63:0] out_memdep_stencil_2d_avm_writedata,
    output wire [7:0] out_memdep_stencil_2d_avm_byteenable,
    output wire [0:0] out_memdep_stencil_2d_avm_burstcount,
    output wire [0:0] out_feedback_out_17,
    input wire [0:0] in_feedback_stall_in_17,
    output wire [0:0] out_feedback_valid_out_17,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe102845,
    input wire [0:0] in_c0_exe112858,
    input wire [0:0] in_c0_exe1228610,
    input wire [0:0] in_c0_exe1328712,
    input wire [31:0] in_c0_exe1428814,
    input wire [31:0] in_c0_exe92832,
    input wire [31:0] in_c1_exe117,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_c0_exe102845,
    output wire [0:0] out_c0_exe112858,
    output wire [0:0] out_c0_exe1328712,
    output wire [0:0] out_memdep,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_add26_stencil_2d0_a;
    wire [32:0] i_add26_stencil_2d0_b;
    logic [32:0] i_add26_stencil_2d0_o;
    wire [32:0] i_add26_stencil_2d0_q;
    wire [31:0] i_idxprom27_stencil_2d1_vt_const_63_q;
    wire [63:0] i_idxprom27_stencil_2d1_vt_join_q;
    wire [31:0] i_idxprom27_stencil_2d1_vt_select_31_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d4_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_valid_out;
    wire [31:0] bgTrunc_i_add26_stencil_2d0_sel_x_b;
    wire [64:0] i_arrayidx28_stencil_2d0_add_x_a;
    wire [64:0] i_arrayidx28_stencil_2d0_add_x_b;
    logic [64:0] i_arrayidx28_stencil_2d0_add_x_o;
    wire [64:0] i_arrayidx28_stencil_2d0_add_x_q;
    wire [1:0] i_arrayidx28_stencil_2d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx28_stencil_2d0_narrow_x_b;
    wire [63:0] i_arrayidx28_stencil_2d0_shift_join_x_q;
    wire [63:0] i_arrayidx28_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom27_stencil_2d1_sel_x_b;
    wire [3:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    reg [31:0] redist4_stall_entry_o10_1_0_q;
    reg [31:0] redist5_i_idxprom27_stencil_2d1_vt_select_31_b_1_0_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_stencil_2d4_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_stencil_2d4_b;
    wire [99:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [3:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_backStall;
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
    reg [0:0] SE_redist4_stall_entry_o10_1_0_R_v_0;
    wire [0:0] SE_redist4_stall_entry_o10_1_0_v_s_0;
    wire [0:0] SE_redist4_stall_entry_o10_1_0_s_tv_0;
    wire [0:0] SE_redist4_stall_entry_o10_1_0_backEN;
    wire [0:0] SE_redist4_stall_entry_o10_1_0_backStall;
    wire [0:0] SE_redist4_stall_entry_o10_1_0_V0;
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


    // join_for_coalesced_delay_0(BITJOIN,51)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_0_fifo(STALLFIFO,55)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
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

    // i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    stencil_2d_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_0 thei_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,79)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist4_stall_entry_o10_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_redist4_stall_entry_o10_1_0(STALLENABLE,89)
    // Valid signal propagation
    assign SE_redist4_stall_entry_o10_1_0_V0 = SE_redist4_stall_entry_o10_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_stall_entry_o10_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_backStall & SE_redist4_stall_entry_o10_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_stall_entry_o10_1_0_backEN = ~ (SE_redist4_stall_entry_o10_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_stall_entry_o10_1_0_v_s_0 = SE_redist4_stall_entry_o10_1_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist4_stall_entry_o10_1_0_backStall = ~ (SE_redist4_stall_entry_o10_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_stall_entry_o10_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_stall_entry_o10_1_0_backEN == 1'b0)
            begin
                SE_redist4_stall_entry_o10_1_0_R_v_0 <= SE_redist4_stall_entry_o10_1_0_R_v_0 & SE_redist4_stall_entry_o10_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_stall_entry_o10_1_0_R_v_0 <= SE_redist4_stall_entry_o10_1_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,64)
    assign bubble_join_stall_entry_q = {in_c1_exe117, in_c0_exe92832, in_c0_exe1428814, in_c0_exe1328712, in_c0_exe1228610, in_c0_exe112858, in_c0_exe102845};

    // bubble_select_stall_entry(BITSELECT,65)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:68]);

    // redist4_stall_entry_o10_1_0(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_stall_entry_o10_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_stall_entry_o10_1_0_backEN == 1'b1)
        begin
            redist4_stall_entry_o10_1_0_q <= $unsigned(bubble_select_stall_entry_h);
        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2(STALLENABLE,74)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_backStall = i_llvm_fpga_mem_memdep_stencil_2d4_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_and0 = i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_wireValid = SE_redist4_stall_entry_o10_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5(STALLENABLE,78)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_wireValid = i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_stencil_2d4(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_mem_memdep_stencil_2d4_q = i_llvm_fpga_mem_memdep_stencil_2d4_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_stencil_2d4(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_mem_memdep_stencil_2d4_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_stencil_2d4_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,68)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,69)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[3:0]);

    // sel_for_coalesced_delay_0(BITSELECT,52)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);

    // i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5(BLACKBOX,18)@32
    // in in_stall_in@20000000
    // out out_data_out@33
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@33
    stencil_2d_i_llvm_fpga_push_i1_memdep_phi_push17_0 thei_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5 (
        .in_c0_exe1228610(sel_for_coalesced_delay_0_d),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_stencil_2d4_b),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,92)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (in_stall_in) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
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
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_memdep_stencil_2d4_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_idxprom27_stencil_2d1_vt_const_63(CONSTANT,13)
    assign i_idxprom27_stencil_2d1_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_add26_stencil_2d0(ADD,11)@0
    assign i_add26_stencil_2d0_a = {1'b0, bubble_select_stall_entry_f};
    assign i_add26_stencil_2d0_b = {1'b0, bubble_select_stall_entry_g};
    assign i_add26_stencil_2d0_o = $unsigned(i_add26_stencil_2d0_a) + $unsigned(i_add26_stencil_2d0_b);
    assign i_add26_stencil_2d0_q = i_add26_stencil_2d0_o[32:0];

    // bgTrunc_i_add26_stencil_2d0_sel_x(BITSELECT,32)@0
    assign bgTrunc_i_add26_stencil_2d0_sel_x_b = i_add26_stencil_2d0_q[31:0];

    // i_idxprom27_stencil_2d1_sel_x(BITSELECT,41)@0
    assign i_idxprom27_stencil_2d1_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add26_stencil_2d0_sel_x_b[31:0]};

    // i_idxprom27_stencil_2d1_vt_select_31(BITSELECT,15)@0
    assign i_idxprom27_stencil_2d1_vt_select_31_b = i_idxprom27_stencil_2d1_sel_x_b[31:0];

    // redist5_i_idxprom27_stencil_2d1_vt_select_31_b_1_0(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom27_stencil_2d1_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_stall_entry_o10_1_0_backEN == 1'b1)
        begin
            redist5_i_idxprom27_stencil_2d1_vt_select_31_b_1_0_q <= $unsigned(i_idxprom27_stencil_2d1_vt_select_31_b);
        end
    end

    // i_idxprom27_stencil_2d1_vt_join(BITJOIN,14)@1
    assign i_idxprom27_stencil_2d1_vt_join_q = {i_idxprom27_stencil_2d1_vt_const_63_q, redist5_i_idxprom27_stencil_2d1_vt_select_31_b_1_0_q};

    // i_arrayidx28_stencil_2d0_narrow_x(BITSELECT,37)@1
    assign i_arrayidx28_stencil_2d0_narrow_x_b = i_idxprom27_stencil_2d1_vt_join_q[61:0];

    // i_arrayidx28_stencil_2d0_c_i2_01_x(CONSTANT,36)
    assign i_arrayidx28_stencil_2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx28_stencil_2d0_shift_join_x(BITJOIN,38)@1
    assign i_arrayidx28_stencil_2d0_shift_join_x_q = {i_arrayidx28_stencil_2d0_narrow_x_b, i_arrayidx28_stencil_2d0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2(BITJOIN,57)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_q = i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2(BITSELECT,58)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_q[63:0]);

    // i_arrayidx28_stencil_2d0_add_x(ADD,35)@1
    assign i_arrayidx28_stencil_2d0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_b};
    assign i_arrayidx28_stencil_2d0_add_x_b = {1'b0, i_arrayidx28_stencil_2d0_shift_join_x_q};
    assign i_arrayidx28_stencil_2d0_add_x_o = $unsigned(i_arrayidx28_stencil_2d0_add_x_a) + $unsigned(i_arrayidx28_stencil_2d0_add_x_b);
    assign i_arrayidx28_stencil_2d0_add_x_q = i_arrayidx28_stencil_2d0_add_x_o[64:0];

    // i_arrayidx28_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,40)@1
    assign i_arrayidx28_stencil_2d0_dupName_0_trunc_sel_x_b = i_arrayidx28_stencil_2d0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_stencil_2d4(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_stencil_2d_avm_address@20000000
    // out out_memdep_stencil_2d_avm_burstcount@20000000
    // out out_memdep_stencil_2d_avm_byteenable@20000000
    // out out_memdep_stencil_2d_avm_enable@20000000
    // out out_memdep_stencil_2d_avm_read@20000000
    // out out_memdep_stencil_2d_avm_write@20000000
    // out out_memdep_stencil_2d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@32
    // out out_o_writeack@32
    stencil_2d_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_stencil_2d4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx28_stencil_2d0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_sol2815_stencil_2d2_V0),
        .in_i_writedata(redist4_stall_entry_o10_1_0_q),
        .in_memdep_stencil_2d_avm_readdata(in_memdep_stencil_2d_avm_readdata),
        .in_memdep_stencil_2d_avm_readdatavalid(in_memdep_stencil_2d_avm_readdatavalid),
        .in_memdep_stencil_2d_avm_waitrequest(in_memdep_stencil_2d_avm_waitrequest),
        .in_memdep_stencil_2d_avm_writeack(in_memdep_stencil_2d_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_stencil_2d4_out_lsu_memdep_o_active),
        .out_memdep_stencil_2d_avm_address(i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_address),
        .out_memdep_stencil_2d_avm_burstcount(i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_burstcount),
        .out_memdep_stencil_2d_avm_byteenable(i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_byteenable),
        .out_memdep_stencil_2d_avm_enable(i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_enable),
        .out_memdep_stencil_2d_avm_read(i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_read),
        .out_memdep_stencil_2d_avm_write(i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_write),
        .out_memdep_stencil_2d_avm_writedata(i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_stencil_2d4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_stencil_2d4_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_stencil_2d4_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_stencil_2d_avm_address = i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_address;
    assign out_memdep_stencil_2d_avm_enable = i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_enable;
    assign out_memdep_stencil_2d_avm_read = i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_read;
    assign out_memdep_stencil_2d_avm_write = i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_write;
    assign out_memdep_stencil_2d_avm_writedata = i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_writedata;
    assign out_memdep_stencil_2d_avm_byteenable = i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_byteenable;
    assign out_memdep_stencil_2d_avm_burstcount = i_llvm_fpga_mem_memdep_stencil_2d4_out_memdep_stencil_2d_avm_burstcount;

    // feedback_out_17_sync(GPOUT,8)
    assign out_feedback_out_17 = i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_feedback_out_17;

    // feedback_valid_out_17_sync(GPOUT,10)
    assign out_feedback_valid_out_17 = i_llvm_fpga_push_i1_memdep_phi_push17_stencil_2d5_out_feedback_valid_out_17;

    // sync_out(GPOUT,30)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,33)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_stencil_2d4_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,34)@32
    assign out_c0_exe102845 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe112858 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe1328712 = sel_for_coalesced_delay_0_e;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_stencil_2d4_b;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V1;

endmodule
