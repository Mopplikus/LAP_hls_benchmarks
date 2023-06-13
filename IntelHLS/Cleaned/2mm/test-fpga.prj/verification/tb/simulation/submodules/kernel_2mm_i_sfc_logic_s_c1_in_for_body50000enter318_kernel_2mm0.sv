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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body57_kernel_2mms_c1_enter318_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c1_in_for_body50000enter318_kernel_2mm0 (
    output wire [0:0] out_c1_exi1320_0_tpl,
    output wire [31:0] out_c1_exi1320_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c1_eni1317_0_tpl,
    input wire [31:0] in_c1_eni1317_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bgTrunc_i_mul62_kernel_2mm3_sel_x_in;
    wire [31:0] bgTrunc_i_mul62_kernel_2mm3_sel_x_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_beta9934_kernel_2mm2_out_dest_data_out_1_0;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [50:0] i_mul62_kernel_2mm3_sums_align_1_q;
    wire [50:0] i_mul62_kernel_2mm3_sums_align_1_qint;
    wire i_mul62_kernel_2mm3_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul62_kernel_2mm3_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul62_kernel_2mm3_im0_cma_c0 [0:0];
    wire [35:0] i_mul62_kernel_2mm3_im0_cma_p [0:0];
    wire [35:0] i_mul62_kernel_2mm3_im0_cma_u [0:0];
    wire [35:0] i_mul62_kernel_2mm3_im0_cma_w [0:0];
    wire [35:0] i_mul62_kernel_2mm3_im0_cma_x [0:0];
    wire [35:0] i_mul62_kernel_2mm3_im0_cma_y [0:0];
    reg [35:0] i_mul62_kernel_2mm3_im0_cma_s [0:0];
    wire [35:0] i_mul62_kernel_2mm3_im0_cma_qq;
    wire [35:0] i_mul62_kernel_2mm3_im0_cma_q;
    wire i_mul62_kernel_2mm3_im0_cma_ena0;
    wire i_mul62_kernel_2mm3_im0_cma_ena1;
    wire i_mul62_kernel_2mm3_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul62_kernel_2mm3_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul62_kernel_2mm3_im8_cma_c0 [0:0];
    wire [27:0] i_mul62_kernel_2mm3_im8_cma_p [0:0];
    wire [27:0] i_mul62_kernel_2mm3_im8_cma_u [0:0];
    wire [27:0] i_mul62_kernel_2mm3_im8_cma_w [0:0];
    wire [27:0] i_mul62_kernel_2mm3_im8_cma_x [0:0];
    wire [27:0] i_mul62_kernel_2mm3_im8_cma_y [0:0];
    reg [27:0] i_mul62_kernel_2mm3_im8_cma_s [0:0];
    wire [27:0] i_mul62_kernel_2mm3_im8_cma_qq;
    wire [27:0] i_mul62_kernel_2mm3_im8_cma_q;
    wire i_mul62_kernel_2mm3_im8_cma_ena0;
    wire i_mul62_kernel_2mm3_im8_cma_ena1;
    wire i_mul62_kernel_2mm3_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul62_kernel_2mm3_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul62_kernel_2mm3_ma3_cma_c0 [0:1];
    wire [31:0] i_mul62_kernel_2mm3_ma3_cma_p [0:1];
    wire [32:0] i_mul62_kernel_2mm3_ma3_cma_u [0:1];
    wire [32:0] i_mul62_kernel_2mm3_ma3_cma_w [0:0];
    wire [32:0] i_mul62_kernel_2mm3_ma3_cma_x [0:0];
    wire [32:0] i_mul62_kernel_2mm3_ma3_cma_y [0:0];
    reg [32:0] i_mul62_kernel_2mm3_ma3_cma_s [0:0];
    wire [32:0] i_mul62_kernel_2mm3_ma3_cma_qq;
    wire [32:0] i_mul62_kernel_2mm3_ma3_cma_q;
    wire i_mul62_kernel_2mm3_ma3_cma_ena0;
    wire i_mul62_kernel_2mm3_ma3_cma_ena1;
    wire [13:0] i_mul62_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q_q;
    wire [59:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_mul62_kernel_2mm3_bs1_merged_bit_select_b;
    wire [13:0] i_mul62_kernel_2mm3_bs1_merged_bit_select_c;
    wire [17:0] i_mul62_kernel_2mm3_bs2_merged_bit_select_b;
    wire [13:0] i_mul62_kernel_2mm3_bs2_merged_bit_select_c;
    wire [23:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    reg [3:0] redist0_i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;
    reg [59:0] redist1_i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [32:0] redist2_i_mul62_kernel_2mm3_ma3_cma_q_1_q;
    reg [27:0] redist3_i_mul62_kernel_2mm3_im8_cma_q_1_q;
    reg [35:0] redist4_i_mul62_kernel_2mm3_im0_cma_q_1_q;
    reg [31:0] redist5_sync_together10_aunroll_x_in_c1_eni1317_1_tpl_1_q;
    reg [0:0] redist6_sync_together10_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist6_sync_together10_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist6_sync_together10_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist6_sync_together10_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist6_sync_together10_aunroll_x_in_i_valid_5_delay_3;
    wire [0:0] enable_stall_connector_not_enable_q;


    // redist6_sync_together10_aunroll_x_in_i_valid_5(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist6_sync_together10_aunroll_x_in_i_valid_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_1 <= redist6_sync_together10_aunroll_x_in_i_valid_5_delay_0;
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_2 <= redist6_sync_together10_aunroll_x_in_i_valid_5_delay_1;
            redist6_sync_together10_aunroll_x_in_i_valid_5_delay_3 <= redist6_sync_together10_aunroll_x_in_i_valid_5_delay_2;
            redist6_sync_together10_aunroll_x_in_i_valid_5_q <= redist6_sync_together10_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,13)@46 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together10_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg1(REG,14)@41 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // enable_stall_connector_not_enable(LOGICAL,65)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // i_llvm_fpga_ffwd_dest_i32_beta9934_kernel_2mm2(BLACKBOX,9)@42
    kernel_2mm_i_llvm_fpga_ffwd_dest_i32_beta9934_0 thei_llvm_fpga_ffwd_dest_i32_beta9934_kernel_2mm2 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_beta9934_kernel_2mm2_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul62_kernel_2mm3_bs2_merged_bit_select(BITSELECT,55)@42
    assign i_mul62_kernel_2mm3_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_beta9934_kernel_2mm2_out_dest_data_out_1_0[17:0];
    assign i_mul62_kernel_2mm3_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_beta9934_kernel_2mm2_out_dest_data_out_1_0[31:18];

    // redist5_sync_together10_aunroll_x_in_c1_eni1317_1_tpl_1(DELAY,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together10_aunroll_x_in_c1_eni1317_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together10_aunroll_x_in_c1_eni1317_1_tpl_1_q <= $unsigned(in_c1_eni1317_1_tpl);
        end
    end

    // i_mul62_kernel_2mm3_bs1_merged_bit_select(BITSELECT,54)@42
    assign i_mul62_kernel_2mm3_bs1_merged_bit_select_b = redist5_sync_together10_aunroll_x_in_c1_eni1317_1_tpl_1_q[17:0];
    assign i_mul62_kernel_2mm3_bs1_merged_bit_select_c = redist5_sync_together10_aunroll_x_in_c1_eni1317_1_tpl_1_q[31:18];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_mul62_kernel_2mm3_ma3_cma(CHAINMULTADD,33)@42 + 2
    assign i_mul62_kernel_2mm3_ma3_cma_reset = ~ (resetn);
    assign i_mul62_kernel_2mm3_ma3_cma_ena0 = in_enable[0];
    assign i_mul62_kernel_2mm3_ma3_cma_ena1 = i_mul62_kernel_2mm3_ma3_cma_ena0;
    assign i_mul62_kernel_2mm3_ma3_cma_p[0] = i_mul62_kernel_2mm3_ma3_cma_a0[0] * i_mul62_kernel_2mm3_ma3_cma_c0[0];
    assign i_mul62_kernel_2mm3_ma3_cma_p[1] = i_mul62_kernel_2mm3_ma3_cma_a0[1] * i_mul62_kernel_2mm3_ma3_cma_c0[1];
    assign i_mul62_kernel_2mm3_ma3_cma_u[0] = {1'b0, i_mul62_kernel_2mm3_ma3_cma_p[0][31:0]};
    assign i_mul62_kernel_2mm3_ma3_cma_u[1] = {1'b0, i_mul62_kernel_2mm3_ma3_cma_p[1][31:0]};
    assign i_mul62_kernel_2mm3_ma3_cma_w[0] = i_mul62_kernel_2mm3_ma3_cma_u[0] + i_mul62_kernel_2mm3_ma3_cma_u[1];
    assign i_mul62_kernel_2mm3_ma3_cma_x[0] = i_mul62_kernel_2mm3_ma3_cma_w[0];
    assign i_mul62_kernel_2mm3_ma3_cma_y[0] = i_mul62_kernel_2mm3_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_ma3_cma_a0 <= '{default: '0};
            i_mul62_kernel_2mm3_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul62_kernel_2mm3_ma3_cma_ena0 == 1'b1)
            begin
                i_mul62_kernel_2mm3_ma3_cma_a0[0] <= i_mul62_kernel_2mm3_bs1_merged_bit_select_c;
                i_mul62_kernel_2mm3_ma3_cma_a0[1] <= i_mul62_kernel_2mm3_bs2_merged_bit_select_c;
                i_mul62_kernel_2mm3_ma3_cma_c0[0] <= i_mul62_kernel_2mm3_bs2_merged_bit_select_b;
                i_mul62_kernel_2mm3_ma3_cma_c0[1] <= i_mul62_kernel_2mm3_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul62_kernel_2mm3_ma3_cma_ena1 == 1'b1)
            begin
                i_mul62_kernel_2mm3_ma3_cma_s[0] <= i_mul62_kernel_2mm3_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul62_kernel_2mm3_ma3_cma_delay ( .xin(i_mul62_kernel_2mm3_ma3_cma_s[0]), .xout(i_mul62_kernel_2mm3_ma3_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul62_kernel_2mm3_ma3_cma_q = $unsigned(i_mul62_kernel_2mm3_ma3_cma_qq[32:0]);

    // redist2_i_mul62_kernel_2mm3_ma3_cma_q_1(DELAY,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mul62_kernel_2mm3_ma3_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mul62_kernel_2mm3_ma3_cma_q_1_q <= $unsigned(i_mul62_kernel_2mm3_ma3_cma_q);
        end
    end

    // i_mul62_kernel_2mm3_sums_align_1(BITSHIFT,28)@45
    assign i_mul62_kernel_2mm3_sums_align_1_qint = { redist2_i_mul62_kernel_2mm3_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul62_kernel_2mm3_sums_align_1_q = i_mul62_kernel_2mm3_sums_align_1_qint[50:0];

    // i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,51)@45
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul62_kernel_2mm3_sums_align_1_q};

    // i_mul62_kernel_2mm3_im8_cma(CHAINMULTADD,32)@42 + 2
    assign i_mul62_kernel_2mm3_im8_cma_reset = ~ (resetn);
    assign i_mul62_kernel_2mm3_im8_cma_ena0 = in_enable[0];
    assign i_mul62_kernel_2mm3_im8_cma_ena1 = i_mul62_kernel_2mm3_im8_cma_ena0;
    assign i_mul62_kernel_2mm3_im8_cma_p[0] = i_mul62_kernel_2mm3_im8_cma_a0[0] * i_mul62_kernel_2mm3_im8_cma_c0[0];
    assign i_mul62_kernel_2mm3_im8_cma_u[0] = i_mul62_kernel_2mm3_im8_cma_p[0][27:0];
    assign i_mul62_kernel_2mm3_im8_cma_w[0] = i_mul62_kernel_2mm3_im8_cma_u[0];
    assign i_mul62_kernel_2mm3_im8_cma_x[0] = i_mul62_kernel_2mm3_im8_cma_w[0];
    assign i_mul62_kernel_2mm3_im8_cma_y[0] = i_mul62_kernel_2mm3_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_im8_cma_a0 <= '{default: '0};
            i_mul62_kernel_2mm3_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul62_kernel_2mm3_im8_cma_ena0 == 1'b1)
            begin
                i_mul62_kernel_2mm3_im8_cma_a0[0] <= i_mul62_kernel_2mm3_bs1_merged_bit_select_c;
                i_mul62_kernel_2mm3_im8_cma_c0[0] <= i_mul62_kernel_2mm3_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul62_kernel_2mm3_im8_cma_ena1 == 1'b1)
            begin
                i_mul62_kernel_2mm3_im8_cma_s[0] <= i_mul62_kernel_2mm3_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul62_kernel_2mm3_im8_cma_delay ( .xin(i_mul62_kernel_2mm3_im8_cma_s[0]), .xout(i_mul62_kernel_2mm3_im8_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul62_kernel_2mm3_im8_cma_q = $unsigned(i_mul62_kernel_2mm3_im8_cma_qq[27:0]);

    // redist3_i_mul62_kernel_2mm3_im8_cma_q_1(DELAY,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mul62_kernel_2mm3_im8_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mul62_kernel_2mm3_im8_cma_q_1_q <= $unsigned(i_mul62_kernel_2mm3_im8_cma_q);
        end
    end

    // i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,56)@45
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist3_i_mul62_kernel_2mm3_im8_cma_q_1_q[23:0]);
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist3_i_mul62_kernel_2mm3_im8_cma_q_1_q[27:24]);

    // i_mul62_kernel_2mm3_im0_cma(CHAINMULTADD,31)@42 + 2
    assign i_mul62_kernel_2mm3_im0_cma_reset = ~ (resetn);
    assign i_mul62_kernel_2mm3_im0_cma_ena0 = in_enable[0];
    assign i_mul62_kernel_2mm3_im0_cma_ena1 = i_mul62_kernel_2mm3_im0_cma_ena0;
    assign i_mul62_kernel_2mm3_im0_cma_p[0] = i_mul62_kernel_2mm3_im0_cma_a0[0] * i_mul62_kernel_2mm3_im0_cma_c0[0];
    assign i_mul62_kernel_2mm3_im0_cma_u[0] = i_mul62_kernel_2mm3_im0_cma_p[0][35:0];
    assign i_mul62_kernel_2mm3_im0_cma_w[0] = i_mul62_kernel_2mm3_im0_cma_u[0];
    assign i_mul62_kernel_2mm3_im0_cma_x[0] = i_mul62_kernel_2mm3_im0_cma_w[0];
    assign i_mul62_kernel_2mm3_im0_cma_y[0] = i_mul62_kernel_2mm3_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_im0_cma_a0 <= '{default: '0};
            i_mul62_kernel_2mm3_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul62_kernel_2mm3_im0_cma_ena0 == 1'b1)
            begin
                i_mul62_kernel_2mm3_im0_cma_a0[0] <= i_mul62_kernel_2mm3_bs1_merged_bit_select_b;
                i_mul62_kernel_2mm3_im0_cma_c0[0] <= i_mul62_kernel_2mm3_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul62_kernel_2mm3_im0_cma_ena1 == 1'b1)
            begin
                i_mul62_kernel_2mm3_im0_cma_s[0] <= i_mul62_kernel_2mm3_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul62_kernel_2mm3_im0_cma_delay ( .xin(i_mul62_kernel_2mm3_im0_cma_s[0]), .xout(i_mul62_kernel_2mm3_im0_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul62_kernel_2mm3_im0_cma_q = $unsigned(i_mul62_kernel_2mm3_im0_cma_qq[35:0]);

    // redist4_i_mul62_kernel_2mm3_im0_cma_q_1(DELAY,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul62_kernel_2mm3_im0_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_mul62_kernel_2mm3_im0_cma_q_1_q <= $unsigned(i_mul62_kernel_2mm3_im0_cma_q);
        end
    end

    // i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,45)@45
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist4_i_mul62_kernel_2mm3_im0_cma_q_1_q};

    // i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2(ADD,40)@45 + 1
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_c[0] = i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q = i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_o[59:0];

    // i_mul62_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b(CONSTANT,37)
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,57)
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,48)@46
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q};

    // i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2(ADD,41)@46 + 1
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_cin = i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_c;
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul62_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_q = i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist1_i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1(DELAY,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul62_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q(BITJOIN,42)@47
    assign i_mul62_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q_q = {i_mul62_kernel_2mm3_sums_result_add_0_0_p2_of_2_q, redist1_i_mul62_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q};

    // bgTrunc_i_mul62_kernel_2mm3_sel_x(BITSELECT,2)@47
    assign bgTrunc_i_mul62_kernel_2mm3_sel_x_in = i_mul62_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul62_kernel_2mm3_sel_x_b = bgTrunc_i_mul62_kernel_2mm3_sel_x_in[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,3)@47
    assign out_c1_exi1320_0_tpl = GND_q;
    assign out_c1_exi1320_1_tpl = bgTrunc_i_mul62_kernel_2mm3_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

endmodule
