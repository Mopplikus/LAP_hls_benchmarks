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
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B7_stall_region (
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe11971,
    input wire [31:0] in_c0_exe42003,
    input wire [0:0] in_c0_exe52016,
    input wire [0:0] in_c0_exe62028,
    input wire [31:0] in_c0_exe720310,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe52016,
    output wire [0:0] out_c0_exe62028,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    reg [1:0] coalesced_delay_0_2_q;
    reg [1:0] coalesced_delay_0_3_q;
    reg [1:0] coalesced_delay_0_4_q;
    reg [1:0] coalesced_delay_0_5_q;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_V0;
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
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [1:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_3_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_3_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_3_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_3_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_3_V;
    wire [1:0] SR_SE_coalesced_delay_0_3_D0;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [1:0] SR_SE_coalesced_delay_0_4_D0;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [1:0] SR_SE_coalesced_delay_0_5_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,29)
    assign bubble_join_stall_entry_q = {in_c0_exe720310, in_c0_exe62028, in_c0_exe52016, in_c0_exe42003, in_c0_exe11971};

    // bubble_select_stall_entry(BITSELECT,30)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,20)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d};

    // coalesced_delay_0_0(REG,22)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,23)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,24)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_2_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // coalesced_delay_0_3(REG,25)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_3_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(SR_SE_coalesced_delay_0_3_D0);
        end
    end

    // coalesced_delay_0_4(REG,26)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_4_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // SE_coalesced_delay_0_5(STALLENABLE,44)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,56)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_4(STALLENABLE,43)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_4(STALLREG,55)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_4_r_valid <= SE_coalesced_delay_0_4_backStall & (SR_SE_coalesced_delay_0_4_r_valid | SR_SE_coalesced_delay_0_4_i_valid);

            if (SR_SE_coalesced_delay_0_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_4_r_data0 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_4_i_valid = SE_coalesced_delay_0_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_4_backStall = SR_SE_coalesced_delay_0_4_r_valid | ~ (SR_SE_coalesced_delay_0_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_4_V = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_valid : SR_SE_coalesced_delay_0_4_i_valid;

    assign SR_SE_coalesced_delay_0_4_D0 = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_data0 : coalesced_delay_0_3_q;

    // SE_coalesced_delay_0_3(STALLENABLE,42)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
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

    // SR_SE_coalesced_delay_0_3(STALLREG,54)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_3_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_3_r_data0 <= 2'bxx;
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

    // SE_coalesced_delay_0_2(STALLENABLE,41)
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

    // SR_SE_coalesced_delay_0_2(STALLREG,53)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 2'bxx;
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

    // SE_coalesced_delay_0_1(STALLENABLE,40)
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

    // SE_coalesced_delay_0_0(STALLENABLE,39)
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

    // SE_stall_entry(STALLENABLE,33)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
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
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_wireValid = SE_coalesced_delay_0_5_V0 & SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_and0;

    // i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x(BLACKBOX,16)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_unnamed_stencil_2d5_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_writedata@20000000
    // out out_c0_exit160_0_tpl@6
    stencil_2d_i_sfc_s_c0_in_for_cond_cleanu0000enter156_stencil_2d3 thei_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .in_c0_eni3155_0_tpl(GND_q),
        .in_c0_eni3155_1_tpl(bubble_select_stall_entry_f),
        .in_c0_eni3155_2_tpl(bubble_select_stall_entry_c),
        .in_c0_eni3155_3_tpl(bubble_select_stall_entry_b),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_o_valid),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_c0_exit160_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // coalesced_delay_0_5(REG,27)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_5_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,21)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_5_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_5_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,15)@6
    assign out_c0_exe52016 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe62028 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d3_aunroll_x_V0;

    // rst_sync(RESETSYNC,57)
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
