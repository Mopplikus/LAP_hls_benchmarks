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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body11_covariances_c1_enter272_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c1_in_for_body10000enter272_covariance0 (
    output wire [0:0] out_c1_exi1276_0_tpl,
    output wire [31:0] out_c1_exi1276_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c1_eni4_0_tpl,
    input wire [31:0] in_c1_eni4_1_tpl,
    input wire [0:0] in_c1_eni4_2_tpl,
    input wire [0:0] in_c1_eni4_3_tpl,
    input wire [31:0] in_c1_eni4_4_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_sub_covariance4_sel_x_b;
    wire [31:0] i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_push_i32_mul696_push46_covariance3_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_mul696_push46_covariance3_out_feedback_valid_out_46;
    wire [32:0] i_sub_covariance4_a;
    wire [32:0] i_sub_covariance4_b;
    logic [32:0] i_sub_covariance4_o;
    wire [32:0] i_sub_covariance4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [31:0] redist1_i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out_1_q;
    reg [31:0] redist2_sync_together12_aunroll_x_in_c1_eni4_1_tpl_1_q;
    reg [0:0] redist3_sync_together12_aunroll_x_in_c1_eni4_2_tpl_1_q;
    reg [0:0] redist4_sync_together12_aunroll_x_in_c1_eni4_3_tpl_1_q;
    reg [31:0] redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_q;
    reg [31:0] redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_delay_0;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // valid_fanout_reg0(REG,14)@41 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // valid_fanout_reg1(REG,15)@41 + 1
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

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,24)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,16)@41 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_sync_together12_aunroll_x_in_c1_eni4_3_tpl_1(DELAY,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together12_aunroll_x_in_c1_eni4_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together12_aunroll_x_in_c1_eni4_3_tpl_1_q <= $unsigned(in_c1_eni4_3_tpl);
        end
    end

    // i_llvm_fpga_push_i32_mul696_push46_covariance3(BLACKBOX,11)@42
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    covariance_i_llvm_fpga_push_i32_mul696_push46_0 thei_llvm_fpga_push_i32_mul696_push46_covariance3 (
        .in_c1_ene3275(redist4_sync_together12_aunroll_x_in_c1_eni4_3_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_feedback_stall_out_46),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_mul696_push46_covariance3_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_mul696_push46_covariance3_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together12_aunroll_x_in_c1_eni4_2_tpl_1(DELAY,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together12_aunroll_x_in_c1_eni4_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together12_aunroll_x_in_c1_eni4_2_tpl_1_q <= $unsigned(in_c1_eni4_2_tpl);
        end
    end

    // redist2_sync_together12_aunroll_x_in_c1_eni4_1_tpl_1(DELAY,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together12_aunroll_x_in_c1_eni4_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together12_aunroll_x_in_c1_eni4_1_tpl_1_q <= $unsigned(in_c1_eni4_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul696_pop46_covariance2(BLACKBOX,10)@42
    // out out_feedback_stall_out_46@20000000
    covariance_i_llvm_fpga_pop_i32_mul696_pop46_0 thei_llvm_fpga_pop_i32_mul696_pop46_covariance2 (
        .in_data_in(redist2_sync_together12_aunroll_x_in_c1_eni4_1_tpl_1_q),
        .in_dir(redist3_sync_together12_aunroll_x_in_c1_eni4_2_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_mul696_push46_covariance3_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_mul696_push46_covariance3_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out_1(DELAY,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out);
        end
    end

    // redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2(DELAY,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_delay_0 <= '0;
            redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_delay_0 <= $unsigned(in_c1_eni4_4_tpl);
            redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_q <= redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_delay_0;
        end
    end

    // i_sub_covariance4(SUB,12)@43
    assign i_sub_covariance4_a = {1'b0, redist5_sync_together12_aunroll_x_in_c1_eni4_4_tpl_2_q};
    assign i_sub_covariance4_b = {1'b0, redist1_i_llvm_fpga_pop_i32_mul696_pop46_covariance2_out_data_out_1_q};
    assign i_sub_covariance4_o = $unsigned(i_sub_covariance4_a) - $unsigned(i_sub_covariance4_b);
    assign i_sub_covariance4_q = i_sub_covariance4_o[32:0];

    // bgTrunc_i_sub_covariance4_sel_x(BITSELECT,2)@43
    assign bgTrunc_i_sub_covariance4_sel_x_b = $unsigned(i_sub_covariance4_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,4)@43
    assign out_c1_exi1276_0_tpl = GND_q;
    assign out_c1_exi1276_1_tpl = bgTrunc_i_sub_covariance4_sel_x_b;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
