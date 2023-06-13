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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond_0000enter353_covariance0 (
    output wire [0:0] out_c0_exi1358_0_tpl,
    output wire [0:0] out_c0_exi1358_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni4352_0_tpl,
    input wire [0:0] in_c0_eni4352_1_tpl,
    input wire [0:0] in_c0_eni4352_2_tpl,
    input wire [0:0] in_c0_eni4352_3_tpl,
    input wire [31:0] in_c0_eni4352_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist1_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop_28_q;
    reg [0:0] redist2_sync_together6_aunroll_x_in_c0_eni4352_1_tpl_1_q;
    reg [0:0] redist3_sync_together6_aunroll_x_in_c0_eni4352_2_tpl_1_q;
    reg [0:0] redist4_sync_together6_aunroll_x_in_c0_eni4352_3_tpl_1_q;
    reg [31:0] redist5_sync_together6_aunroll_x_in_c0_eni4352_4_tpl_1_q;
    wire redist0_valid_fanout_reg0_q_31_mem_reset0;
    wire [0:0] redist0_valid_fanout_reg0_q_31_mem_ia;
    wire [4:0] redist0_valid_fanout_reg0_q_31_mem_aa;
    wire [4:0] redist0_valid_fanout_reg0_q_31_mem_ab;
    wire [0:0] redist0_valid_fanout_reg0_q_31_mem_iq;
    wire [0:0] redist0_valid_fanout_reg0_q_31_mem_q;
    wire [4:0] redist0_valid_fanout_reg0_q_31_rdcnt_q;
    (* preserve *) reg [4:0] redist0_valid_fanout_reg0_q_31_rdcnt_i;
    (* preserve *) reg redist0_valid_fanout_reg0_q_31_rdcnt_eq;
    reg [4:0] redist0_valid_fanout_reg0_q_31_wraddr_q;
    wire [5:0] redist0_valid_fanout_reg0_q_31_mem_last_q;
    wire [5:0] redist0_valid_fanout_reg0_q_31_cmp_b;
    wire [0:0] redist0_valid_fanout_reg0_q_31_cmp_q;
    (* dont_merge *) reg [0:0] redist0_valid_fanout_reg0_q_31_cmpReg_q;
    wire [0:0] redist0_valid_fanout_reg0_q_31_notEnable_q;
    wire [0:0] redist0_valid_fanout_reg0_q_31_nor_q;
    (* dont_merge *) reg [0:0] redist0_valid_fanout_reg0_q_31_sticky_ena_q;
    wire [0:0] redist0_valid_fanout_reg0_q_31_enaAnd_q;


    // redist0_valid_fanout_reg0_q_31_notEnable(LOGICAL,21)
    assign redist0_valid_fanout_reg0_q_31_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_valid_fanout_reg0_q_31_nor(LOGICAL,22)
    assign redist0_valid_fanout_reg0_q_31_nor_q = ~ (redist0_valid_fanout_reg0_q_31_notEnable_q | redist0_valid_fanout_reg0_q_31_sticky_ena_q);

    // redist0_valid_fanout_reg0_q_31_mem_last(CONSTANT,18)
    assign redist0_valid_fanout_reg0_q_31_mem_last_q = $unsigned(6'b011100);

    // redist0_valid_fanout_reg0_q_31_cmp(LOGICAL,19)
    assign redist0_valid_fanout_reg0_q_31_cmp_b = {1'b0, redist0_valid_fanout_reg0_q_31_rdcnt_q};
    assign redist0_valid_fanout_reg0_q_31_cmp_q = $unsigned(redist0_valid_fanout_reg0_q_31_mem_last_q == redist0_valid_fanout_reg0_q_31_cmp_b ? 1'b1 : 1'b0);

    // redist0_valid_fanout_reg0_q_31_cmpReg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_31_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_valid_fanout_reg0_q_31_cmpReg_q <= $unsigned(redist0_valid_fanout_reg0_q_31_cmp_q);
        end
    end

    // redist0_valid_fanout_reg0_q_31_sticky_ena(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_31_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_valid_fanout_reg0_q_31_nor_q == 1'b1)
        begin
            redist0_valid_fanout_reg0_q_31_sticky_ena_q <= $unsigned(redist0_valid_fanout_reg0_q_31_cmpReg_q);
        end
    end

    // redist0_valid_fanout_reg0_q_31_enaAnd(LOGICAL,24)
    assign redist0_valid_fanout_reg0_q_31_enaAnd_q = redist0_valid_fanout_reg0_q_31_sticky_ena_q & VCC_q;

    // redist0_valid_fanout_reg0_q_31_rdcnt(COUNTER,16)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_31_rdcnt_i <= 5'd0;
            redist0_valid_fanout_reg0_q_31_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist0_valid_fanout_reg0_q_31_rdcnt_i == 5'd28)
            begin
                redist0_valid_fanout_reg0_q_31_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist0_valid_fanout_reg0_q_31_rdcnt_eq <= 1'b0;
            end
            if (redist0_valid_fanout_reg0_q_31_rdcnt_eq == 1'b1)
            begin
                redist0_valid_fanout_reg0_q_31_rdcnt_i <= $unsigned(redist0_valid_fanout_reg0_q_31_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist0_valid_fanout_reg0_q_31_rdcnt_i <= $unsigned(redist0_valid_fanout_reg0_q_31_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist0_valid_fanout_reg0_q_31_rdcnt_q = redist0_valid_fanout_reg0_q_31_rdcnt_i[4:0];

    // valid_fanout_reg0(REG,7)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_valid_fanout_reg0_q_31_wraddr(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_31_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist0_valid_fanout_reg0_q_31_wraddr_q <= $unsigned(redist0_valid_fanout_reg0_q_31_rdcnt_q);
        end
    end

    // redist0_valid_fanout_reg0_q_31_mem(DUALMEM,15)
    assign redist0_valid_fanout_reg0_q_31_mem_ia = $unsigned(valid_fanout_reg0_q);
    assign redist0_valid_fanout_reg0_q_31_mem_aa = redist0_valid_fanout_reg0_q_31_wraddr_q;
    assign redist0_valid_fanout_reg0_q_31_mem_ab = redist0_valid_fanout_reg0_q_31_rdcnt_q;
    assign redist0_valid_fanout_reg0_q_31_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist0_valid_fanout_reg0_q_31_mem_dmem (
        .clocken1(redist0_valid_fanout_reg0_q_31_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_valid_fanout_reg0_q_31_mem_reset0),
        .clock1(clock),
        .address_a(redist0_valid_fanout_reg0_q_31_mem_aa),
        .data_a(redist0_valid_fanout_reg0_q_31_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_valid_fanout_reg0_q_31_mem_ab),
        .q_b(redist0_valid_fanout_reg0_q_31_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist0_valid_fanout_reg0_q_31_mem_q = redist0_valid_fanout_reg0_q_31_mem_iq[0:0];

    // valid_fanout_reg1(REG,8)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together6_aunroll_x_in_c0_eni4352_2_tpl_1(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together6_aunroll_x_in_c0_eni4352_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together6_aunroll_x_in_c0_eni4352_2_tpl_1_q <= $unsigned(in_c0_eni4352_2_tpl);
        end
    end

    // redist5_sync_together6_aunroll_x_in_c0_eni4352_4_tpl_1(DELAY,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together6_aunroll_x_in_c0_eni4352_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together6_aunroll_x_in_c0_eni4352_4_tpl_1_q <= $unsigned(in_c0_eni4352_4_tpl);
        end
    end

    // redist2_sync_together6_aunroll_x_in_c0_eni4352_1_tpl_1(DELAY,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together6_aunroll_x_in_c0_eni4352_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together6_aunroll_x_in_c0_eni4352_1_tpl_1_q <= $unsigned(in_c0_eni4352_1_tpl);
        end
    end

    // redist4_sync_together6_aunroll_x_in_c0_eni4352_3_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together6_aunroll_x_in_c0_eni4352_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together6_aunroll_x_in_c0_eni4352_3_tpl_1_q <= $unsigned(in_c0_eni4352_3_tpl);
        end
    end

    // i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2(BLACKBOX,5)@1
    // out out_o_exit_outer_loop@4
    // out out_o_stall@4
    // out out_o_valid@4
    covariance_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0 thei_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2 (
        .in_i_exit_inner_loop(redist4_sync_together6_aunroll_x_in_c0_eni4352_3_tpl_1_q),
        .in_i_exit_outer_loop(redist2_sync_together6_aunroll_x_in_c0_eni4352_1_tpl_1_q),
        .in_i_outer_loop_token(redist5_sync_together6_aunroll_x_in_c0_eni4352_4_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_start_inner_loop(redist3_sync_together6_aunroll_x_in_c0_eni4352_2_tpl_1_q),
        .in_i_valid(valid_fanout_reg1_q),
        .out_o_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop_28(DELAY,10)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop_28 ( .xin(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop), .xout(redist1_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,2)@32
    assign out_c0_exi1358_0_tpl = GND_q;
    assign out_c0_exi1358_1_tpl = redist1_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_covariance2_out_o_exit_outer_loop_28_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_31_mem_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
