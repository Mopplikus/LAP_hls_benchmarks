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
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B4_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_fpga_indvars_iv7,
    input wire [31:0] in_fpga_indvars_iv9,
    input wire [31:0] in_j_018,
    input wire [0:0] in_memdep_phi4_pop729,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add,
    output wire [0:0] out_cmp416,
    output wire [31:0] out_fpga_indvars_iv7,
    output wire [31:0] out_fpga_indvars_iv9,
    output wire [31:0] out_j_018,
    output wire [0:0] out_memdep_phi4_pop729,
    output wire [32:0] out_unnamed_gaussian3,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_19_q;
    wire [31:0] c_i32_197_q;
    wire [32:0] c_i33_18_q;
    wire [32:0] i_add_gaussian5_a;
    wire [32:0] i_add_gaussian5_b;
    logic [32:0] i_add_gaussian5_o;
    wire [32:0] i_add_gaussian5_q;
    wire [33:0] i_cmp416_gaussian6_a;
    wire [33:0] i_cmp416_gaussian6_b;
    logic [33:0] i_cmp416_gaussian6_o;
    wire [0:0] i_cmp416_gaussian6_c;
    wire [0:0] i_umax_gaussian1_s;
    reg [31:0] i_umax_gaussian1_q;
    wire [33:0] i_unnamed_gaussian0_a;
    wire [33:0] i_unnamed_gaussian0_b;
    logic [33:0] i_unnamed_gaussian0_o;
    wire [0:0] i_unnamed_gaussian0_c;
    wire [32:0] i_unnamed_gaussian2_a;
    wire [32:0] i_unnamed_gaussian2_b;
    logic [32:0] i_unnamed_gaussian2_o;
    wire [32:0] i_unnamed_gaussian2_q;
    wire [32:0] i_unnamed_gaussian3_vt_join_q;
    wire [31:0] i_unnamed_gaussian3_vt_select_31_b;
    wire [33:0] i_unnamed_gaussian4_a;
    wire [33:0] i_unnamed_gaussian4_b;
    logic [33:0] i_unnamed_gaussian4_o;
    wire [33:0] i_unnamed_gaussian4_q;
    wire [31:0] bgTrunc_i_add_gaussian5_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_gaussian2_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_gaussian4_sel_x_b;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [32:0] i_unnamed_gaussian3_sel_x_b;
    wire [95:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [95:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    reg [0:0] redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_0_q;
    reg [0:0] redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_q;
    reg [31:0] redist7_bgTrunc_i_add_gaussian5_sel_x_b_1_0_q;
    reg [31:0] redist8_i_unnamed_gaussian3_vt_select_31_b_1_0_q;
    reg [95:0] coalesced_delay_0_0_q;
    reg [95:0] coalesced_delay_1_0_q;
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
    reg [0:0] SE_i_unnamed_gaussian0_R_v_0;
    wire [0:0] SE_i_unnamed_gaussian0_v_s_0;
    wire [0:0] SE_i_unnamed_gaussian0_s_tv_0;
    wire [0:0] SE_i_unnamed_gaussian0_backEN;
    wire [0:0] SE_i_unnamed_gaussian0_backStall;
    wire [0:0] SE_i_unnamed_gaussian0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_R_v_0;
    wire [0:0] SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_v_s_0;
    wire [0:0] SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN;
    wire [0:0] SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backStall;
    wire [0:0] SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_V0;


    // bubble_join_stall_entry(BITJOIN,59)
    assign bubble_join_stall_entry_q = {in_memdep_phi4_pop729, in_j_018, in_fpga_indvars_iv9, in_fpga_indvars_iv7};

    // bubble_select_stall_entry(BITSELECT,60)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:96]);

    // SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1(STALLENABLE,86)
    // Valid signal propagation
    assign SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_V0 = SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_s_tv_0 = in_stall_in & SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN = ~ (SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_v_s_0 = SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN & SE_i_unnamed_gaussian0_V0;
    // Backward Stall generation
    assign SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backStall = ~ (SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_R_v_0 <= SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_R_v_0 & SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_R_v_0 <= SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_v_s_0;
            end

        end
    end

    // SE_i_unnamed_gaussian0(STALLENABLE,68)
    // Valid signal propagation
    assign SE_i_unnamed_gaussian0_V0 = SE_i_unnamed_gaussian0_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_gaussian0_s_tv_0 = SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backStall & SE_i_unnamed_gaussian0_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_gaussian0_backEN = ~ (SE_i_unnamed_gaussian0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_gaussian0_v_s_0 = SE_i_unnamed_gaussian0_backEN & SE_out_gaussian_B4_merge_reg_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_unnamed_gaussian0_backStall = ~ (SE_i_unnamed_gaussian0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_gaussian0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_gaussian0_backEN == 1'b0)
            begin
                SE_i_unnamed_gaussian0_R_v_0 <= SE_i_unnamed_gaussian0_R_v_0 & SE_i_unnamed_gaussian0_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_gaussian0_R_v_0 <= SE_i_unnamed_gaussian0_v_s_0;
            end

        end
    end

    // SE_out_gaussian_B4_merge_reg_aunroll_x(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_V0 = SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_backStall = SE_i_unnamed_gaussian0_backStall | ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid = gaussian_B4_merge_reg_aunroll_x_out_valid_out;

    // gaussian_B4_merge_reg_aunroll_x(BLACKBOX,31)@0
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
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,73)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = gaussian_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // c_i33_18(CONSTANT,7)
    assign c_i33_18_q = $unsigned(33'b111111111111111111111111111111111);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_gaussian_B4_merge_reg_aunroll_x(BITJOIN,63)
    assign bubble_join_gaussian_B4_merge_reg_aunroll_x_q = {gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl, gaussian_B4_merge_reg_aunroll_x_out_data_out_2_tpl, gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl, gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_gaussian_B4_merge_reg_aunroll_x(BITSELECT,64)
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[95:64]);
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[96:96]);

    // join_for_coalesced_delay_0(BITJOIN,47)
    assign join_for_coalesced_delay_0_q = {bubble_select_gaussian_B4_merge_reg_aunroll_x_d, bubble_select_gaussian_B4_merge_reg_aunroll_x_c, bubble_select_gaussian_B4_merge_reg_aunroll_x_b};

    // coalesced_delay_0_0(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_unnamed_gaussian0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,48)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[95:64]);

    // c_i32_197(CONSTANT,6)
    assign c_i32_197_q = $unsigned(32'b00000000000000000000000000010011);

    // i_unnamed_gaussian0(COMPARE,13)@1 + 1
    assign i_unnamed_gaussian0_a = {2'b00, c_i32_197_q};
    assign i_unnamed_gaussian0_b = {2'b00, bubble_select_gaussian_B4_merge_reg_aunroll_x_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_gaussian0_o <= 34'b0;
        end
        else if (SE_i_unnamed_gaussian0_backEN == 1'b1)
        begin
            i_unnamed_gaussian0_o <= $unsigned(i_unnamed_gaussian0_a) - $unsigned(i_unnamed_gaussian0_b);
        end
    end
    assign i_unnamed_gaussian0_c[0] = i_unnamed_gaussian0_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_umax_gaussian1(MUX,12)@2
    assign i_umax_gaussian1_s = i_unnamed_gaussian0_c;
    always @(i_umax_gaussian1_s or c_i32_197_q or sel_for_coalesced_delay_0_c)
    begin
        unique case (i_umax_gaussian1_s)
            1'b0 : i_umax_gaussian1_q = c_i32_197_q;
            1'b1 : i_umax_gaussian1_q = sel_for_coalesced_delay_0_c;
            default : i_umax_gaussian1_q = 32'b0;
        endcase
    end

    // i_unnamed_gaussian2(ADD,14)@2
    assign i_unnamed_gaussian2_a = {1'b0, i_umax_gaussian1_q};
    assign i_unnamed_gaussian2_b = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_unnamed_gaussian2_o = $unsigned(i_unnamed_gaussian2_a) + $unsigned(i_unnamed_gaussian2_b);
    assign i_unnamed_gaussian2_q = i_unnamed_gaussian2_o[32:0];

    // bgTrunc_i_unnamed_gaussian2_sel_x(BITSELECT,28)@2
    assign bgTrunc_i_unnamed_gaussian2_sel_x_b = i_unnamed_gaussian2_q[31:0];

    // i_unnamed_gaussian3_sel_x(BITSELECT,32)@2
    assign i_unnamed_gaussian3_sel_x_b = {1'b0, bgTrunc_i_unnamed_gaussian2_sel_x_b[31:0]};

    // i_unnamed_gaussian3_vt_select_31(BITSELECT,18)@2
    assign i_unnamed_gaussian3_vt_select_31_b = i_unnamed_gaussian3_sel_x_b[31:0];

    // redist8_i_unnamed_gaussian3_vt_select_31_b_1_0(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_gaussian3_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN == 1'b1)
        begin
            redist8_i_unnamed_gaussian3_vt_select_31_b_1_0_q <= $unsigned(i_unnamed_gaussian3_vt_select_31_b);
        end
    end

    // i_unnamed_gaussian3_vt_join(BITJOIN,17)@3
    assign i_unnamed_gaussian3_vt_join_q = {GND_q, redist8_i_unnamed_gaussian3_vt_select_31_b_1_0_q};

    // i_unnamed_gaussian4(ADD,19)@3
    assign i_unnamed_gaussian4_a = {1'b0, i_unnamed_gaussian3_vt_join_q};
    assign i_unnamed_gaussian4_b = {1'b0, c_i33_18_q};
    assign i_unnamed_gaussian4_o = $unsigned(i_unnamed_gaussian4_a) + $unsigned(i_unnamed_gaussian4_b);
    assign i_unnamed_gaussian4_q = i_unnamed_gaussian4_o[33:0];

    // bgTrunc_i_unnamed_gaussian4_sel_x(BITSELECT,29)@3
    assign bgTrunc_i_unnamed_gaussian4_sel_x_b = i_unnamed_gaussian4_q[32:0];

    // redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_0(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_i_unnamed_gaussian0_backEN == 1'b1)
        begin
            redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_0_q <= $unsigned(bubble_select_gaussian_B4_merge_reg_aunroll_x_e);
        end
    end

    // redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN == 1'b1)
        begin
            redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_q <= $unsigned(redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_0_q);
        end
    end

    // join_for_coalesced_delay_1(BITJOIN,50)
    assign join_for_coalesced_delay_1_q = {sel_for_coalesced_delay_0_d, sel_for_coalesced_delay_0_c, sel_for_coalesced_delay_0_b};

    // coalesced_delay_1_0(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,51)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_0_q[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_0_q[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_0_q[95:64]);

    // i_cmp416_gaussian6(COMPARE,11)@3
    assign i_cmp416_gaussian6_a = {2'b00, redist7_bgTrunc_i_add_gaussian5_sel_x_b_1_0_q};
    assign i_cmp416_gaussian6_b = {2'b00, c_i32_197_q};
    assign i_cmp416_gaussian6_o = $unsigned(i_cmp416_gaussian6_a) - $unsigned(i_cmp416_gaussian6_b);
    assign i_cmp416_gaussian6_c[0] = i_cmp416_gaussian6_o[33];

    // c_i32_19(CONSTANT,5)
    assign c_i32_19_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add_gaussian5(ADD,10)@2
    assign i_add_gaussian5_a = {1'b0, sel_for_coalesced_delay_0_d};
    assign i_add_gaussian5_b = {1'b0, c_i32_19_q};
    assign i_add_gaussian5_o = $unsigned(i_add_gaussian5_a) + $unsigned(i_add_gaussian5_b);
    assign i_add_gaussian5_q = i_add_gaussian5_o[32:0];

    // bgTrunc_i_add_gaussian5_sel_x(BITSELECT,27)@2
    assign bgTrunc_i_add_gaussian5_sel_x_b = i_add_gaussian5_q[31:0];

    // redist7_bgTrunc_i_add_gaussian5_sel_x_b_1_0(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_add_gaussian5_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_backEN == 1'b1)
        begin
            redist7_bgTrunc_i_add_gaussian5_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add_gaussian5_sel_x_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,30)@3
    assign out_add = redist7_bgTrunc_i_add_gaussian5_sel_x_b_1_0_q;
    assign out_cmp416 = i_cmp416_gaussian6_c;
    assign out_fpga_indvars_iv7 = sel_for_coalesced_delay_1_c;
    assign out_fpga_indvars_iv9 = sel_for_coalesced_delay_1_b;
    assign out_j_018 = sel_for_coalesced_delay_1_d;
    assign out_memdep_phi4_pop729 = redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_q;
    assign out_unnamed_gaussian3 = bgTrunc_i_unnamed_gaussian4_sel_x_b;
    assign out_valid_out = SE_redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_3_tpl_2_1_V0;

endmodule
