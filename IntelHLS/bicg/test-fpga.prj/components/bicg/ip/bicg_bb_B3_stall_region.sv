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

// SystemVerilog created from bb_bicg_B3_stall_region
// Created for function/kernel bicg
// SystemVerilog created on Fri Apr  7 18:01:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B3_stall_region (
    input wire [31:0] in_unnamed_bicg3_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg3_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg3_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg3_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_stall_out,
    input wire [0:0] in_feedback_in_11,
    output wire [0:0] out_feedback_stall_out_11,
    input wire [0:0] in_feedback_valid_in_11,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked16,
    input wire [0:0] in_memdep_phi3_pop829,
    input wire [0:0] in_memdep_phi_pop726,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_unnamed_bicg3_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg3_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg3_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_burstcount,
    output wire [0:0] out_c0_exe10,
    output wire [63:0] out_c0_exe153,
    output wire [63:0] out_c0_exe254,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi2_pop11,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_valid_out;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_10_tpl;
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
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_b;
    wire [2:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [2:0] bubble_join_bicg_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_d;
    wire [166:0] bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_k;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,47)
    assign bubble_join_stall_entry_q = {in_memdep_phi_pop726, in_memdep_phi3_pop829, in_forked16};

    // bubble_select_stall_entry(BITSELECT,48)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);

    // SE_stall_entry(STALLENABLE,59)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = bicg_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bicg_B3_merge_reg_aunroll_x(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    bicg_B3_merge_reg thebicg_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_bicg_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .out_stall_out(bicg_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(bicg_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_bicg_B3_merge_reg_aunroll_x(BITJOIN,51)
    assign bubble_join_bicg_B3_merge_reg_aunroll_x_q = {bicg_B3_merge_reg_aunroll_x_out_data_out_2_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_1_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_bicg_B3_merge_reg_aunroll_x(BITSELECT,52)
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[2:2]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_bicg_B3_merge_reg_aunroll_x(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V0 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_bicg_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_o_stall | ~ (SE_out_bicg_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bicg_B3_merge_reg_aunroll_x_wireValid = bicg_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3(STALLENABLE,58)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_and0 = i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_and0;

    // SE_coalesced_delay_0_0(STALLENABLE,67)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x(BITJOIN,55)
    assign bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q = {i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_10_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_9_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_8_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_7_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_6_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_5_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_4_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_3_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_2_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x(BITSELECT,56)
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[128:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[160:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[161:161]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_q[166:166]);

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3(BLACKBOX,10)@9
    // in in_stall_in@20000000
    // out out_data_out@10
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@10
    bicg_i_llvm_fpga_pop_i1_memdep_phi2_pop11_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_i),
        .in_feedback_in_11(in_feedback_in_11),
        .in_feedback_valid_in_11(in_feedback_valid_in_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x(STALLENABLE,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x(BLACKBOX,28)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_bicg3_bicg_avm_address@20000000
    // out out_unnamed_bicg3_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg3_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg3_bicg_avm_enable@20000000
    // out out_unnamed_bicg3_bicg_avm_read@20000000
    // out out_unnamed_bicg3_bicg_avm_write@20000000
    // out out_unnamed_bicg3_bicg_avm_writedata@20000000
    // out out_c0_exit52_0_tpl@9
    // out out_c0_exit52_1_tpl@9
    // out out_c0_exit52_2_tpl@9
    // out out_c0_exit52_3_tpl@9
    // out out_c0_exit52_4_tpl@9
    // out out_c0_exit52_5_tpl@9
    // out out_c0_exit52_6_tpl@9
    // out out_c0_exit52_7_tpl@9
    // out out_c0_exit52_8_tpl@9
    // out out_c0_exit52_9_tpl@9
    // out out_c0_exit52_10_tpl@9
    bicg_i_sfc_s_c0_in_for_body_s_c0_enter489_bicg1 thei_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_backStall),
        .in_i_valid(SE_out_bicg_B3_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_bicg3_bicg_avm_readdata(in_unnamed_bicg3_bicg_avm_readdata),
        .in_unnamed_bicg3_bicg_avm_readdatavalid(in_unnamed_bicg3_bicg_avm_readdatavalid),
        .in_unnamed_bicg3_bicg_avm_waitrequest(in_unnamed_bicg3_bicg_avm_waitrequest),
        .in_unnamed_bicg3_bicg_avm_writeack(in_unnamed_bicg3_bicg_avm_writeack),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_bicg_B3_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_bicg_B3_merge_reg_aunroll_x_c),
        .in_c0_eni3_3_tpl(bubble_select_bicg_B3_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_stall_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_valid_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_bicg3_bicg_avm_address(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_address),
        .out_unnamed_bicg3_bicg_avm_burstcount(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_burstcount),
        .out_unnamed_bicg3_bicg_avm_byteenable(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_byteenable),
        .out_unnamed_bicg3_bicg_avm_enable(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_enable),
        .out_unnamed_bicg3_bicg_avm_read(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_read),
        .out_unnamed_bicg3_bicg_avm_write(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_write),
        .out_unnamed_bicg3_bicg_avm_writedata(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_writedata),
        .out_c0_exit52_0_tpl(),
        .out_c0_exit52_1_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_1_tpl),
        .out_c0_exit52_2_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_2_tpl),
        .out_c0_exit52_3_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_3_tpl),
        .out_c0_exit52_4_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_4_tpl),
        .out_c0_exit52_5_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_5_tpl),
        .out_c0_exit52_6_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_6_tpl),
        .out_c0_exit52_7_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_7_tpl),
        .out_c0_exit52_8_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_8_tpl),
        .out_c0_exit52_9_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_9_tpl),
        .out_c0_exit52_10_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_c0_exit52_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_valid_out = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_stall_out = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going9_bicg2_exiting_stall_out;

    // feedback_stall_out_11_sync(GPOUT,8)
    assign out_feedback_stall_out_11 = i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_feedback_stall_out_11;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,26)
    assign out_unnamed_bicg3_bicg_avm_address = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_address;
    assign out_unnamed_bicg3_bicg_avm_enable = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_enable;
    assign out_unnamed_bicg3_bicg_avm_read = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_read;
    assign out_unnamed_bicg3_bicg_avm_write = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_write;
    assign out_unnamed_bicg3_bicg_avm_writedata = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_writedata;
    assign out_unnamed_bicg3_bicg_avm_byteenable = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_byteenable;
    assign out_unnamed_bicg3_bicg_avm_burstcount = i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_out_unnamed_bicg3_bicg_avm_burstcount;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_q = i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,39)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter489_bicg1_aunroll_x_b};

    // coalesced_delay_0_0(REG,41)
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

    // sel_for_coalesced_delay_0(BITSELECT,40)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[160:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[161:161]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[162:162]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[163:163]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[164:164]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[165:165]);

    // dupName_0_sync_out_x(GPOUT,27)@10
    assign out_c0_exe10 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe153 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe254 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_i;
    assign out_memdep_phi2_pop11 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg3_V0;

endmodule
