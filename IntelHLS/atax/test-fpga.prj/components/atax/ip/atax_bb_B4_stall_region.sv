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

// SystemVerilog created from bb_atax_B4_stall_region
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4_stall_region (
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe101288,
    input wire [0:0] in_c0_exe119,
    input wire [0:0] in_c0_exe1210,
    input wire [63:0] in_c0_exe21201,
    input wire [31:0] in_c0_exe31212,
    input wire [0:0] in_c0_exe51233,
    input wire [0:0] in_c0_exe61244,
    input wire [0:0] in_c0_exe71255,
    input wire [63:0] in_c0_exe81266,
    input wire [0:0] in_c0_exe91277,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe101288,
    output wire [0:0] out_c0_exe119,
    output wire [0:0] out_c0_exe1210,
    output wire [63:0] out_c0_exe21201,
    output wire [31:0] out_c0_exe31212,
    output wire [0:0] out_c0_exe51233,
    output wire [0:0] out_c0_exe61244,
    output wire [63:0] out_c0_exe81266,
    output wire [0:0] out_c0_exe91277,
    output wire [0:0] out_memdep_phi2_pop13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out;
    wire [165:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    reg [165:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_b;
    wire [166:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_V0;
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
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_coalesced_delay_0_0(STALLENABLE,44)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_backStall & SE_coalesced_delay_0_0_R_v_0;
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

    // SE_stall_entry(STALLENABLE,40)
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
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_and0 = i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_and0;

    // bubble_join_stall_entry(BITJOIN,35)
    assign bubble_join_stall_entry_q = {in_c0_exe91277, in_c0_exe81266, in_c0_exe71255, in_c0_exe61244, in_c0_exe51233, in_c0_exe31212, in_c0_exe21201, in_c0_exe1210, in_c0_exe119, in_c0_exe101288};

    // bubble_select_stall_entry(BITSELECT,36)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[101:101]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[165:102]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[166:166]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_i_llvm_fpga_pop_i1_memdep_phi2_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_stall_entry_i),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,6)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_feedback_stall_out_13;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0(BITJOIN,31)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_q = i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0(BITSELECT,32)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,27)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_k, bubble_select_stall_entry_h, bubble_select_stall_entry_g, bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b, bubble_select_stall_entry_f, bubble_select_stall_entry_j, bubble_select_stall_entry_e};

    // coalesced_delay_0_0(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(166'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,28)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[160:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[161:161]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[162:162]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[163:163]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[164:164]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[165:165]);

    // dupName_0_sync_out_x(GPOUT,16)@1
    assign out_c0_exe101288 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe119 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe1210 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe21201 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe31212 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe51233 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe61244 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe81266 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe91277 = sel_for_coalesced_delay_0_j;
    assign out_memdep_phi2_pop13 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_V0;

endmodule
