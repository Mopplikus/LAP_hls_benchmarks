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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c1_in_for_cond_0000enter365_covariance0 (
    output wire [0:0] out_c1_exi1367_0_tpl,
    output wire [0:0] out_c1_exi1367_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance1,
    input wire [0:0] in_c1_eni4_0_tpl,
    input wire [0:0] in_c1_eni4_1_tpl,
    input wire [0:0] in_c1_eni4_2_tpl,
    input wire [0:0] in_c1_eni4_3_tpl,
    input wire [31:0] in_c1_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_sync_together6_aunroll_x_in_c1_eni4_1_tpl_1_q;
    reg [0:0] redist1_sync_together6_aunroll_x_in_c1_eni4_2_tpl_1_q;
    reg [0:0] redist2_sync_together6_aunroll_x_in_c1_eni4_3_tpl_1_q;
    reg [31:0] redist3_sync_together6_aunroll_x_in_c1_eni4_4_tpl_1_q;
    reg [0:0] redist4_sync_together6_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist4_sync_together6_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist4_sync_together6_aunroll_x_in_i_valid_3_delay_1;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together6_aunroll_x_in_i_valid_3(DELAY,13)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together6_aunroll_x_in_i_valid_3_delay_0 <= '0;
        end
        else
        begin
            redist4_sync_together6_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together6_aunroll_x_in_i_valid_3_delay_1 <= redist4_sync_together6_aunroll_x_in_i_valid_3_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together6_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist4_sync_together6_aunroll_x_in_i_valid_3_q <= redist4_sync_together6_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,7)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together6_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg1(REG,8)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together6_aunroll_x_in_c1_eni4_2_tpl_1(DELAY,10)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together6_aunroll_x_in_c1_eni4_2_tpl_1_q <= $unsigned(in_c1_eni4_2_tpl);
        end
    end

    // redist3_sync_together6_aunroll_x_in_c1_eni4_4_tpl_1(DELAY,12)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together6_aunroll_x_in_c1_eni4_4_tpl_1_q <= $unsigned(in_c1_eni4_4_tpl);
        end
    end

    // redist0_sync_together6_aunroll_x_in_c1_eni4_1_tpl_1(DELAY,9)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together6_aunroll_x_in_c1_eni4_1_tpl_1_q <= $unsigned(in_c1_eni4_1_tpl);
        end
    end

    // redist2_sync_together6_aunroll_x_in_c1_eni4_3_tpl_1(DELAY,11)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together6_aunroll_x_in_c1_eni4_3_tpl_1_q <= $unsigned(in_c1_eni4_3_tpl);
        end
    end

    // i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2(BLACKBOX,3)@1
    // out out_o_exit_outer_loop@4
    // out out_o_stall@4
    // out out_o_valid@4
    covariance_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0 thei_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2 (
        .in_i_exit_inner_loop(redist2_sync_together6_aunroll_x_in_c1_eni4_3_tpl_1_q),
        .in_i_exit_outer_loop(redist0_sync_together6_aunroll_x_in_c1_eni4_1_tpl_1_q),
        .in_i_outer_loop_token(redist3_sync_together6_aunroll_x_in_c1_eni4_4_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_start_inner_loop(redist1_sync_together6_aunroll_x_in_c1_eni4_2_tpl_1_q),
        .in_i_valid(valid_fanout_reg1_q),
        .out_o_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@4
    assign out_c1_exi1367_0_tpl = GND_q;
    assign out_c1_exi1367_1_tpl = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance1 = GND_q;

endmodule
