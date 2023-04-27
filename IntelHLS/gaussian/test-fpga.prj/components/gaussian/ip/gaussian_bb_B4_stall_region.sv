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

// SystemVerilog created from bb_gaussian_B4_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B4_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_fpga_indvars_iv7,
    input wire [31:0] in_fpga_indvars_iv9,
    input wire [31:0] in_j_018,
    input wire [0:0] in_memdep_phi4_pop725,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_c0_exe193,
    output wire [31:0] out_c1_exe199,
    output wire [0:0] out_c1_exe2,
    output wire [31:0] out_fpga_indvars_iv7,
    output wire [31:0] out_fpga_indvars_iv9,
    output wire [31:0] out_j_018,
    output wire [0:0] out_memdep_phi4_pop725,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_o_valid;
    wire [32:0] i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_c0_exit92_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_c1_exit98_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_c1_exit98_2_tpl;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    reg [31:0] redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_q;
    reg [31:0] redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_q;
    reg [31:0] redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_q;
    reg [31:0] redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_q;
    reg [31:0] redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_q;
    reg [31:0] redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_q;
    reg [31:0] redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_q;
    reg [64:0] coalesced_delay_0_0_q;
    reg [64:0] coalesced_delay_0_1_q;
    reg [64:0] coalesced_delay_0_2_q;
    reg [64:0] coalesced_delay_0_3_q;
    reg [64:0] coalesced_delay_0_4_q;
    reg [64:0] coalesced_delay_0_5_q;
    reg [64:0] coalesced_delay_0_6_q;
    wire [96:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [96:0] bubble_join_gaussian_B4_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_gaussian_B4_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_gaussian_B4_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_gaussian_B4_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_gaussian_B4_merge_reg_aunroll_x_e;
    wire [32:0] bubble_join_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_q;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_b;
    wire [32:0] bubble_join_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_c;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_V0;
    reg [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_R_v_0;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_v_s_0;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backEN;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backStall;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_V0;
    reg [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_0;
    reg [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_1;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_v_s_0;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_1;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backEN;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_or0;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backStall;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_V0;
    wire [0:0] SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_V1;
    reg [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_R_v_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_v_s_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_s_tv_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backEN;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backStall;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_V0;
    reg [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_R_v_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_v_s_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_s_tv_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backEN;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backStall;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_V0;
    reg [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_R_v_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_v_s_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_s_tv_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backEN;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backStall;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_V0;
    reg [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_R_v_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_v_s_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_s_tv_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backEN;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backStall;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_V0;
    reg [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_R_v_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_v_s_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_s_tv_0;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backEN;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backStall;
    wire [0:0] SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_V0;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_i_valid;
    reg [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid;
    reg [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data0;
    reg [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backStall;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_V;
    wire [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_D0;
    wire [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_D1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_i_valid;
    reg [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid;
    reg [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data0;
    reg [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backStall;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_V;
    wire [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_D0;
    wire [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_D1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_i_valid;
    reg [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid;
    reg [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data0;
    reg [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backStall;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_V;
    wire [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_D0;
    wire [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_D1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_i_valid;
    reg [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid;
    reg [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data0;
    reg [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backStall;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_V;
    wire [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_D0;
    wire [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_D1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_i_valid;
    reg [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid;
    reg [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data0;
    reg [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data1;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backStall;
    wire [0:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_V;
    wire [31:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_D0;
    wire [64:0] SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_D1;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,43)
    assign bubble_join_stall_entry_q = {in_memdep_phi4_pop725, in_j_018, in_fpga_indvars_iv9, in_fpga_indvars_iv7};

    // bubble_select_stall_entry(BITSELECT,44)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:96]);

    // bubble_join_gaussian_B4_merge_reg_aunroll_x(BITJOIN,47)
    assign bubble_join_gaussian_B4_merge_reg_aunroll_x_q = {gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl, gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl, gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl, gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_gaussian_B4_merge_reg_aunroll_x(BITSELECT,48)
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[95:64]);
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[96:96]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,26)
    assign join_for_coalesced_delay_0_q = {bubble_select_gaussian_B4_merge_reg_aunroll_x_e, bubble_select_gaussian_B4_merge_reg_aunroll_x_c, bubble_select_gaussian_B4_merge_reg_aunroll_x_b};

    // coalesced_delay_0_0(REG,35)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,36)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_1_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0(REG,28)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backEN == 1'b1)
        begin
            redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_q <= $unsigned(bubble_select_gaussian_B4_merge_reg_aunroll_x_d);
        end
    end

    // redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1(REG,29)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backEN == 1'b1)
        begin
            redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_q <= $unsigned(redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_q);
        end
    end

    // SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1(STALLENABLE,66)
    // Valid signal propagation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_V0 = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_0;
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_V1 = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backStall & SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_0;
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_1 = i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_o_stall & SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_or0 = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_0;
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backEN = ~ (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_1 | SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_v_s_0 = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backEN & SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_V0;
    // Backward Stall generation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backStall = ~ (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_0 <= 1'b0;
            SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_0 <= SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_0 & SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_0 <= SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_v_s_0;
            end

            if (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_1 <= SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_1 & SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_s_tv_1;
            end
            else
            begin
                SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_R_v_1 <= SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0(STALLREG,97)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid <= 1'b0;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data1 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backStall & (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid | SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_i_valid);

            if (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data0 <= $unsigned(redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_q);
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data1 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_i_valid = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_V0;
    // Stall signal propagation
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backStall = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid | ~ (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_i_valid);

    // Valid
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_V = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid : SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_i_valid;

    // Data0
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_D0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data0 : redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_q;
    // Data1
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_D1 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_r_data1 : coalesced_delay_0_1_q;

    // coalesced_delay_0_2(REG,37)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_2_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_D1);
        end
    end

    // redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0(REG,30)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backEN == 1'b1)
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_D0);
        end
    end

    // SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0(STALLENABLE,67)
    // Valid signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_V0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_s_tv_0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backStall & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backEN = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_v_s_0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backEN & SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_V;
    // Backward Stall generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backStall = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_backEN == 1'b0)
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_R_v_0 & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_s_tv_0;
            end
            else
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_v_s_0;
            end

        end
    end

    // SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1(STALLREG,98)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid <= 1'b0;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data1 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backStall & (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid | SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_i_valid);

            if (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data0 <= $unsigned(redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_q);
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data1 <= $unsigned(coalesced_delay_0_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_i_valid = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_V0;
    // Stall signal propagation
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backStall = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid | ~ (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_i_valid);

    // Valid
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_V = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid : SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_i_valid;

    // Data0
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_D0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data0 : redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_0_q;
    // Data1
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_D1 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_r_data1 : coalesced_delay_0_2_q;

    // coalesced_delay_0_3(REG,38)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_3_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_D1);
        end
    end

    // redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1(REG,31)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backEN == 1'b1)
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_D0);
        end
    end

    // SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1(STALLENABLE,68)
    // Valid signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_V0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_s_tv_0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backStall & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backEN = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_v_s_0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backEN & SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_V;
    // Backward Stall generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backStall = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_backEN == 1'b0)
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_R_v_0 & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_s_tv_0;
            end
            else
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_v_s_0;
            end

        end
    end

    // SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2(STALLREG,99)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid <= 1'b0;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data1 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backStall & (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid | SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_i_valid);

            if (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data0 <= $unsigned(redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_q);
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data1 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_i_valid = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_V0;
    // Stall signal propagation
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backStall = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid | ~ (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_i_valid);

    // Valid
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_V = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid : SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_i_valid;

    // Data0
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_D0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data0 : redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_1_q;
    // Data1
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_D1 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_r_data1 : coalesced_delay_0_3_q;

    // coalesced_delay_0_4(REG,39)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_4_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_D1);
        end
    end

    // redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2(REG,32)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backEN == 1'b1)
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_D0);
        end
    end

    // SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2(STALLENABLE,69)
    // Valid signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_V0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_s_tv_0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backStall & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backEN = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_v_s_0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backEN & SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_V;
    // Backward Stall generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backStall = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_backEN == 1'b0)
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_R_v_0 & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_s_tv_0;
            end
            else
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_v_s_0;
            end

        end
    end

    // SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3(STALLREG,100)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid <= 1'b0;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data1 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backStall & (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid | SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_i_valid);

            if (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data0 <= $unsigned(redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_q);
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data1 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_i_valid = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_V0;
    // Stall signal propagation
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backStall = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid | ~ (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_i_valid);

    // Valid
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_V = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid : SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_i_valid;

    // Data0
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_D0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data0 : redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_2_q;
    // Data1
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_D1 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_r_data1 : coalesced_delay_0_4_q;

    // coalesced_delay_0_5(REG,40)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_5_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_D1);
        end
    end

    // redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3(REG,33)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backEN == 1'b1)
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_D0);
        end
    end

    // SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3(STALLENABLE,70)
    // Valid signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_V0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_s_tv_0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backStall & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backEN = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_v_s_0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backEN & SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_V;
    // Backward Stall generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backStall = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_backEN == 1'b0)
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_R_v_0 & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_s_tv_0;
            end
            else
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_v_s_0;
            end

        end
    end

    // SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4(STALLREG,101)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid <= 1'b0;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data1 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backStall & (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid | SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_i_valid);

            if (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data0 <= $unsigned(redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_q);
                SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data1 <= $unsigned(coalesced_delay_0_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_i_valid = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_V0;
    // Stall signal propagation
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backStall = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid | ~ (SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_i_valid);

    // Valid
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_V = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid : SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_i_valid;

    // Data0
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_D0 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data0 : redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_3_q;
    // Data1
    assign SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_D1 = SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_valid == 1'b1 ? SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_r_data1 : coalesced_delay_0_5_q;

    // SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4(STALLENABLE,71)
    // Valid signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_V0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_s_tv_0 = SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_backStall & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backEN = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_v_s_0 = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backEN & SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_V;
    // Backward Stall generation
    assign SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backStall = ~ (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backEN == 1'b0)
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_R_v_0 & SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_s_tv_0;
            end
            else
            begin
                SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_R_v_0 <= SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_v_s_0;
            end

        end
    end

    // i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x(BLACKBOX,19)@3
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c1_exit98_0_tpl@8
    // out out_c1_exit98_1_tpl@8
    // out out_c1_exit98_2_tpl@8
    gaussian_i_sfc_s_c1_in_for_body_s_c1_enter95_gaussian4 thei_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_backStall),
        .in_i_valid(SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_V1),
        .in_c1_eni194_0_tpl(GND_q),
        .in_c1_eni194_1_tpl(redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_q),
        .out_o_stall(i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_o_valid),
        .out_c1_exit98_0_tpl(),
        .out_c1_exit98_1_tpl(i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_c1_exit98_1_tpl),
        .out_c1_exit98_2_tpl(i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_c1_exit98_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_and0 = i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_and1 = i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_o_valid & SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_and0;
    assign SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_wireValid = SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_V0 & SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_and1;

    // i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit92_0_tpl@8
    // out out_c0_exit92_1_tpl@8
    gaussian_i_sfc_s_c0_in_for_body_s_c0_enter8917_gaussian1 thei_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_backStall),
        .in_i_valid(SE_out_gaussian_B4_merge_reg_aunroll_x_V1),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_gaussian_B4_merge_reg_aunroll_x_c),
        .in_c0_eni2_2_tpl(bubble_select_gaussian_B4_merge_reg_aunroll_x_b),
        .out_o_stall(i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_o_valid),
        .out_c0_exit92_0_tpl(),
        .out_c0_exit92_1_tpl(i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_c0_exit92_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0(STALLENABLE,65)
    // Valid signal propagation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_V0 = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_s_tv_0 = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_1_backStall & SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backEN = ~ (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_v_s_0 = SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backEN & SE_out_gaussian_B4_merge_reg_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backStall = ~ (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_R_v_0 <= SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_R_v_0 & SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_R_v_0 <= SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_v_s_0;
            end

        end
    end

    // SE_out_gaussian_B4_merge_reg_aunroll_x(STALLENABLE,58)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_gaussian_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_gaussian_B4_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0 = (~ (SE_redist2_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_2_0_backStall) & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1 = (~ (i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_o_stall) & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid = SE_out_gaussian_B4_merge_reg_aunroll_x_backStall & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_toReg0 = SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_toReg1 = SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_or0 = SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1 & SE_out_gaussian_B4_merge_reg_aunroll_x_or0);
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_backStall = SE_out_gaussian_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_V0 = SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_V1 = SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid = gaussian_B4_merge_reg_aunroll_x_out_valid_out;

    // gaussian_B4_merge_reg_aunroll_x(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    gaussian_B4_merge_reg thegaussian_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_gaussian_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .out_stall_out(gaussian_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(gaussian_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_stall_entry(STALLENABLE,55)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = gaussian_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4(REG,34)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backEN == 1'b1)
        begin
            redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_D0);
        end
    end

    // coalesced_delay_0_6(REG,41)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_6_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(SR_SE_redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_D1);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,27)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_6_q[64:64]);

    // bubble_join_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x(BITJOIN,53)
    assign bubble_join_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_q = {i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_c1_exit98_2_tpl, i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_out_c1_exit98_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x(BITSELECT,54)
    assign bubble_select_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_q[32:32]);

    // bubble_join_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x(BITJOIN,50)
    assign bubble_join_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_q = i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_out_c0_exit92_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x(BITSELECT,51)
    assign bubble_select_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_q[32:0]);

    // dupName_0_sync_out_x(GPOUT,16)@8
    assign out_c0_exe193 = bubble_select_i_sfc_s_c0_in_for_body_gaussians_c0_enter8917_gaussian1_aunroll_x_b;
    assign out_c1_exe199 = bubble_select_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_b;
    assign out_c1_exe2 = bubble_select_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_c;
    assign out_fpga_indvars_iv7 = sel_for_coalesced_delay_0_c;
    assign out_fpga_indvars_iv9 = sel_for_coalesced_delay_0_b;
    assign out_j_018 = redist3_gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl_7_4_q;
    assign out_memdep_phi4_pop725 = sel_for_coalesced_delay_0_d;
    assign out_valid_out = SE_out_i_sfc_s_c1_in_for_body_gaussians_c1_enter95_gaussian4_aunroll_x_V0;

    // rst_sync(RESETSYNC,102)
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
