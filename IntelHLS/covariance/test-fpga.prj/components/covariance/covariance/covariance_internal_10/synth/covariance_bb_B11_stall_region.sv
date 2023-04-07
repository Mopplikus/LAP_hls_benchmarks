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

// SystemVerilog created from bb_covariance_B11_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B11_stall_region (
    input wire [31:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1043430,
    input wire [0:0] in_c0_exe1143531,
    input wire [0:0] in_c0_exe1243632,
    input wire [63:0] in_c0_exe242620,
    input wire [63:0] in_c0_exe342721,
    input wire [0:0] in_c0_exe442824,
    input wire [31:0] in_c0_exe643025,
    input wire [31:0] in_c0_exe843228,
    input wire [31:0] in_c0_exe943329,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1243632,
    output wire [0:0] out_c0_exe1381,
    output wire [0:0] out_c0_exe442824,
    output wire [31:0] out_c0_exe843228,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_cov_local_pmem_q;
    wire [1:0] i_arrayidx545_covariance0_vt_const_1_q;
    wire [63:0] i_arrayidx545_covariance0_vt_join_q;
    wire [61:0] i_arrayidx545_covariance0_vt_select_63_b;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_writedata;
    wire [31:0] i_mul50_covariance1_vt_join_q;
    wire [30:0] i_mul50_covariance1_vt_select_31_b;
    wire [12:0] i_arrayidx545_covariance0_add_x_a;
    wire [12:0] i_arrayidx545_covariance0_add_x_b;
    logic [12:0] i_arrayidx545_covariance0_add_x_o;
    wire [12:0] i_arrayidx545_covariance0_add_x_q;
    wire [63:0] i_arrayidx545_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx545_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx545_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx545_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx545_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx545_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx545_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx545_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx545_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx545_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx545_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx545_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx545_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx545_covariance0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_c0_exit380_1_tpl;
    wire [30:0] leftShiftStage0Idx1Rng1_uid57_i_mul50_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid57_i_mul50_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid58_i_mul50_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid60_i_mul50_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid60_i_mul50_covariance0_shift_x_q;
    wire [51:0] i_arrayidx545_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx545_covariance0_upper_bits_x_merged_bit_select_c;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    reg [33:0] coalesced_delay_0_0_q;
    reg [33:0] coalesced_delay_0_1_q;
    reg [33:0] coalesced_delay_0_2_q;
    reg [33:0] coalesced_delay_0_3_q;
    reg [33:0] coalesced_delay_0_4_q;
    reg [33:0] coalesced_delay_0_5_q;
    reg [33:0] coalesced_delay_0_6_q;
    wire [227:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_V0;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_V0;
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
    reg [0:0] SE_coalesced_delay_0_6_R_v_0;
    wire [0:0] SE_coalesced_delay_0_6_v_s_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_6_backEN;
    wire [0:0] SE_coalesced_delay_0_6_backStall;
    wire [0:0] SE_coalesced_delay_0_6_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [33:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [33:0] SR_SE_coalesced_delay_0_5_D0;


    // leftShiftStage0Idx1Rng1_uid57_i_mul50_covariance0_shift_x(BITSELECT,56)@0
    assign leftShiftStage0Idx1Rng1_uid57_i_mul50_covariance0_shift_x_in = bubble_select_stall_entry_h[30:0];
    assign leftShiftStage0Idx1Rng1_uid57_i_mul50_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid57_i_mul50_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid58_i_mul50_covariance0_shift_x(BITJOIN,57)@0
    assign leftShiftStage0Idx1_uid58_i_mul50_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid57_i_mul50_covariance0_shift_x_b, GND_q};

    // bubble_join_stall_entry(BITJOIN,77)
    assign bubble_join_stall_entry_q = {in_c0_exe943329, in_c0_exe843228, in_c0_exe643025, in_c0_exe442824, in_c0_exe342721, in_c0_exe242620, in_c0_exe1243632, in_c0_exe1143531, in_c0_exe1043430};

    // bubble_select_stall_entry(BITSELECT,78)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[130:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[163:132]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[195:164]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[227:196]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid60_i_mul50_covariance0_shift_x(MUX,59)@0
    assign leftShiftStage0_uid60_i_mul50_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid60_i_mul50_covariance0_shift_x_s or bubble_select_stall_entry_h or leftShiftStage0Idx1_uid58_i_mul50_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid60_i_mul50_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid60_i_mul50_covariance0_shift_x_q = bubble_select_stall_entry_h;
            1'b1 : leftShiftStage0_uid60_i_mul50_covariance0_shift_x_q = leftShiftStage0Idx1_uid58_i_mul50_covariance0_shift_x_q;
            default : leftShiftStage0_uid60_i_mul50_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul50_covariance1_vt_select_31(BITSELECT,15)@0
    assign i_mul50_covariance1_vt_select_31_b = leftShiftStage0_uid60_i_mul50_covariance0_shift_x_q[31:1];

    // i_mul50_covariance1_vt_join(BITJOIN,14)@0
    assign i_mul50_covariance1_vt_join_q = {i_mul50_covariance1_vt_select_31_b, GND_q};

    // SE_coalesced_delay_0_1(STALLENABLE,113)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
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

    // SE_coalesced_delay_0_2(STALLENABLE,114)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
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

    // SE_coalesced_delay_0_3(STALLENABLE,115)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
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

    // join_for_coalesced_delay_0(BITJOIN,66)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_d, bubble_select_stall_entry_i};

    // coalesced_delay_0_0(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // SE_coalesced_delay_0_4(STALLENABLE,116)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SE_coalesced_delay_0_3_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
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

    // SR_SE_coalesced_delay_0_5(STALLREG,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 34'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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

    // SE_coalesced_delay_0_5(STALLENABLE,117)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_coalesced_delay_0_6_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
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

    // SE_coalesced_delay_0_6(STALLENABLE,118)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_backStall & SE_coalesced_delay_0_6_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_6_backEN = ~ (SE_coalesced_delay_0_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_6_v_s_0 = SE_coalesced_delay_0_6_backEN & SE_coalesced_delay_0_5_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_6_backStall = ~ (SE_coalesced_delay_0_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_R_v_0 & SE_coalesced_delay_0_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg(STALLFIFO,135)
    assign bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_in = SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_V0;
    assign bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_in = SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_backStall;
    assign bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_and1 = bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_valid_out & SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_and0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_wireValid = SE_coalesced_delay_0_6_V0 & SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_and1;

    // i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x(BLACKBOX,51)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit380_0_tpl@7
    // out out_c0_exit380_1_tpl@7
    covariance_i_sfc_s_c0_in_for_cond_cleanu0000enter374_covariance6 thei_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni4373_0_tpl(GND_q),
        .in_c0_eni4373_1_tpl(bubble_select_stall_entry_b),
        .in_c0_eni4373_2_tpl(bubble_select_stall_entry_c),
        .in_c0_eni4373_3_tpl(bubble_select_stall_entry_d),
        .in_c0_eni4373_4_tpl(bubble_select_stall_entry_j),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_o_valid),
        .out_c0_exit380_0_tpl(),
        .out_c0_exit380_1_tpl(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_c0_exit380_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,112)
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

    // SE_stall_entry(STALLENABLE,91)
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
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_V0 = SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_backStall = bubble_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_wireValid = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_covariance_cov_local_pmem(CONSTANT,2)
    assign c_covariance_cov_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx545_covariance0_upper_bits_x_merged_bit_select(BITSELECT,61)@0
    assign i_arrayidx545_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_cov_local_pmem_q[63:12];
    assign i_arrayidx545_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_cov_local_pmem_q[11:0];

    // i_arrayidx545_covariance0_dupName_3_trunc_sel_x(BITSELECT,45)@0
    assign i_arrayidx545_covariance0_dupName_3_trunc_sel_x_b = bubble_select_stall_entry_e[11:0];

    // i_arrayidx545_covariance0_dupName_0_narrow_x(BITSELECT,36)@0
    assign i_arrayidx545_covariance0_dupName_0_narrow_x_b = i_arrayidx545_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx545_covariance0_dupName_0_shift_join_x(BITJOIN,37)@0
    assign i_arrayidx545_covariance0_dupName_0_shift_join_x_q = {i_arrayidx545_covariance0_dupName_0_narrow_x_b, i_arrayidx545_covariance0_vt_const_1_q};

    // i_arrayidx545_covariance0_dupName_0_trunc_sel_x(BITSELECT,43)@0
    assign i_arrayidx545_covariance0_dupName_0_trunc_sel_x_b = bubble_select_stall_entry_f[11:0];

    // i_arrayidx545_covariance0_narrow_x(BITSELECT,31)@0
    assign i_arrayidx545_covariance0_narrow_x_b = i_arrayidx545_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx545_covariance0_c_i7_01_x(CONSTANT,30)
    assign i_arrayidx545_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx545_covariance0_shift_join_x(BITJOIN,32)@0
    assign i_arrayidx545_covariance0_shift_join_x_q = {i_arrayidx545_covariance0_narrow_x_b, i_arrayidx545_covariance0_c_i7_01_x_q};

    // i_arrayidx545_covariance0_add_x(ADD,27)@0
    assign i_arrayidx545_covariance0_add_x_a = {1'b0, i_arrayidx545_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx545_covariance0_add_x_b = {1'b0, i_arrayidx545_covariance0_shift_join_x_q};
    assign i_arrayidx545_covariance0_add_x_o = $unsigned(i_arrayidx545_covariance0_add_x_a) + $unsigned(i_arrayidx545_covariance0_add_x_b);
    assign i_arrayidx545_covariance0_add_x_q = i_arrayidx545_covariance0_add_x_o[12:0];

    // i_arrayidx545_covariance0_dupName_2_trunc_sel_x(BITSELECT,44)@0
    assign i_arrayidx545_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx545_covariance0_add_x_q[11:0];

    // i_arrayidx545_covariance0_dupName_0_add_x(ADD,35)@0
    assign i_arrayidx545_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx545_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx545_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx545_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx545_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx545_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx545_covariance0_dupName_0_add_x_b);
    assign i_arrayidx545_covariance0_dupName_0_add_x_q = i_arrayidx545_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx545_covariance0_dupName_5_trunc_sel_x(BITSELECT,46)@0
    assign i_arrayidx545_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx545_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx545_covariance0_append_upper_bits_x(BITJOIN,28)@0
    assign i_arrayidx545_covariance0_append_upper_bits_x_q = {i_arrayidx545_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx545_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx545_covariance0_vt_select_63(BITSELECT,11)@0
    assign i_arrayidx545_covariance0_vt_select_63_b = i_arrayidx545_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx545_covariance0_vt_const_1(CONSTANT,9)
    assign i_arrayidx545_covariance0_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx545_covariance0_vt_join(BITJOIN,10)@0
    assign i_arrayidx545_covariance0_vt_join_q = {i_arrayidx545_covariance0_vt_select_63_b, i_arrayidx545_covariance0_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance4_covariance8(BLACKBOX,12)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_unnamed_covariance4_covariance_avm_address@20000000
    // out out_unnamed_covariance4_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance4_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance4_covariance_avm_enable@20000000
    // out out_unnamed_covariance4_covariance_avm_read@20000000
    // out out_unnamed_covariance4_covariance_avm_write@20000000
    // out out_unnamed_covariance4_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_4_covariance0 thei_llvm_fpga_mem_unnamed_covariance4_covariance8 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx545_covariance0_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_covariance4_covariance8_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_i_writedata(i_mul50_covariance1_vt_join_q),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_o_valid),
        .out_unnamed_covariance4_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_unnamed_covariance4_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_address;
    assign out_unnamed_covariance4_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_enable;
    assign out_unnamed_covariance4_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_read;
    assign out_unnamed_covariance4_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_write;
    assign out_unnamed_covariance4_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_writedata;
    assign out_unnamed_covariance4_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_byteenable;
    assign out_unnamed_covariance4_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance4_covariance8_out_unnamed_covariance4_covariance_avm_burstcount;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x(BITJOIN,82)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_out_c0_exit380_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x(BITSELECT,83)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_q[0:0]);

    // coalesced_delay_0_5(REG,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // coalesced_delay_0_6(REG,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,67)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_6_q[33:33]);

    // dupName_0_sync_out_x(GPOUT,26)@7
    assign out_c0_exe1243632 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe1381 = bubble_select_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_b;
    assign out_c0_exe442824 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe843228 = sel_for_coalesced_delay_0_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter374_covariance6_aunroll_x_V0;

endmodule
