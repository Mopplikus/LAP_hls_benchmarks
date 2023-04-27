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

// SystemVerilog created from bb_gaussian_B2_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B2_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe11451,
    input wire [0:0] in_c0_exe21465,
    input wire [0:0] in_c0_exe41486,
    input wire [31:0] in_c0_exe61508,
    input wire [31:0] in_c0_exe715110,
    input wire [31:0] in_c0_exe815212,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe11451,
    output wire [31:0] out_c0_exe187,
    output wire [0:0] out_c0_exe21465,
    output wire [0:0] out_c0_exe41486,
    output wire [31:0] out_c0_exe815212,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_c0_exit86_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_c1_exit_1_tpl;
    wire [34:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    reg [34:0] coalesced_delay_0_0_q;
    reg [34:0] coalesced_delay_0_1_q;
    reg [34:0] coalesced_delay_0_2_q;
    reg [34:0] coalesced_delay_0_3_q;
    wire [98:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_b;
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
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [34:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [34:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_3_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_3_r_valid;
    reg [34:0] SR_SE_coalesced_delay_0_3_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_3_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_3_V;
    wire [34:0] SR_SE_coalesced_delay_0_3_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,29)
    assign bubble_join_stall_entry_q = {in_c0_exe815212, in_c0_exe715110, in_c0_exe61508, in_c0_exe41486, in_c0_exe21465, in_c0_exe11451};

    // bubble_select_stall_entry(BITSELECT,30)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:67]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,22)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b, bubble_select_stall_entry_g};

    // coalesced_delay_0_0(REG,24)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(35'b00000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,25)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_1_q <= $unsigned(35'b00000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,48)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_2(STALLREG,67)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 35'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // coalesced_delay_0_2(REG,26)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_2_q <= $unsigned(35'b00000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,49)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SR_SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_3(STALLREG,68)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_3_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_3_r_data0 <= 35'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_3_r_valid <= SE_coalesced_delay_0_3_backStall & (SR_SE_coalesced_delay_0_3_r_valid | SR_SE_coalesced_delay_0_3_i_valid);

            if (SR_SE_coalesced_delay_0_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_3_r_data0 <= $unsigned(coalesced_delay_0_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_3_i_valid = SE_coalesced_delay_0_2_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_3_backStall = SR_SE_coalesced_delay_0_3_r_valid | ~ (SR_SE_coalesced_delay_0_3_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_3_V = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_valid : SR_SE_coalesced_delay_0_3_i_valid;

    assign SR_SE_coalesced_delay_0_3_D0 = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_data0 : coalesced_delay_0_2_q;

    // SE_coalesced_delay_0_3(STALLENABLE,50)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SR_SE_coalesced_delay_0_3_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x(STALLENABLE,44)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_and0 = i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_and1 = i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_o_valid & SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_and0;
    assign SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_wireValid = SE_coalesced_delay_0_3_V0 & SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_and1;

    // i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x(BLACKBOX,16)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c1_exit_0_tpl@4
    // out out_c1_exit_1_tpl@4
    gaussian_i_sfc_s_c1_in_for_cond_loopexit_s_c1_enter_gaussian4 thei_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_stall_entry_f),
        .out_o_stall(i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x(BLACKBOX,15)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c0_exit86_0_tpl@4
    // out out_c0_exit86_1_tpl@4
    gaussian_i_sfc_s_c0_in_for_cond_loopexit_s_c0_enter83_gaussian1 thei_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni182_0_tpl(GND_q),
        .in_c0_eni182_1_tpl(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_o_valid),
        .out_c0_exit86_0_tpl(),
        .out_c0_exit86_1_tpl(i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_c0_exit86_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,47)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
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

    // SE_stall_entry(STALLENABLE,39)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
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
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x(BITJOIN,37)
    assign bubble_join_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_q = i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x(BITSELECT,38)
    assign bubble_select_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_q[31:0]);

    // bubble_join_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x(BITJOIN,34)
    assign bubble_join_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_q = i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_out_c0_exit86_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x(BITSELECT,35)
    assign bubble_select_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_q[31:0]);

    // coalesced_delay_0_3(REG,27)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_3_q <= $unsigned(35'b00000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(SR_SE_coalesced_delay_0_3_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,23)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_3_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_3_q[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_3_q[33:33]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_3_q[34:34]);

    // dupName_0_sync_out_x(GPOUT,14)@4
    assign out_c0_exe11451 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe187 = bubble_select_i_sfc_s_c0_in_for_cond_loopexit_gaussians_c0_enter83_gaussian1_aunroll_x_b;
    assign out_c0_exe21465 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe41486 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe815212 = sel_for_coalesced_delay_0_b;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c1_in_for_cond_loopexit_gaussians_c1_enter_gaussian4_aunroll_x_V0;

    // rst_sync(RESETSYNC,69)
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
