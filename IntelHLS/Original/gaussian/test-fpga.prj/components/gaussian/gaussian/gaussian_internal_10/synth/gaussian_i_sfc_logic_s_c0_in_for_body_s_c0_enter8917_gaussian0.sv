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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_gaussians_c0_enter8917_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body_s_c0_enter8917_gaussian0 (
    output wire [0:0] out_c0_exi191_0_tpl,
    output wire [32:0] out_c0_exi191_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [31:0] in_c0_eni2_1_tpl,
    input wire [31:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_199_q;
    wire [32:0] c_i33_110_q;
    wire [0:0] i_umax_gaussian3_s;
    reg [31:0] i_umax_gaussian3_q;
    wire [33:0] i_unnamed_gaussian2_a;
    wire [33:0] i_unnamed_gaussian2_b;
    logic [33:0] i_unnamed_gaussian2_o;
    wire [0:0] i_unnamed_gaussian2_c;
    wire [32:0] i_unnamed_gaussian4_a;
    wire [32:0] i_unnamed_gaussian4_b;
    logic [32:0] i_unnamed_gaussian4_o;
    wire [32:0] i_unnamed_gaussian4_q;
    wire [32:0] i_unnamed_gaussian5_vt_join_q;
    wire [31:0] i_unnamed_gaussian5_vt_select_31_b;
    wire [33:0] i_unnamed_gaussian6_a;
    wire [33:0] i_unnamed_gaussian6_b;
    logic [33:0] i_unnamed_gaussian6_o;
    wire [33:0] i_unnamed_gaussian6_q;
    wire [31:0] bgTrunc_i_unnamed_gaussian4_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_gaussian6_sel_x_b;
    wire [32:0] i_unnamed_gaussian5_sel_x_b;
    reg [31:0] redist0_sync_together13_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [31:0] redist1_sync_together13_aunroll_x_in_c0_eni2_2_tpl_2_q;
    reg [31:0] redist1_sync_together13_aunroll_x_in_c0_eni2_2_tpl_2_delay_0;
    reg [0:0] redist2_sync_together13_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_sync_together13_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist2_sync_together13_aunroll_x_in_i_valid_3_delay_1;
    reg [31:0] redist3_i_unnamed_gaussian5_vt_select_31_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together13_aunroll_x_in_i_valid_3(DELAY,26)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_3_delay_0 <= '0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_3_delay_1 <= redist2_sync_together13_aunroll_x_in_i_valid_3_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_3_q <= redist2_sync_together13_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // c_i33_110(CONSTANT,6)
    assign c_i33_110_q = $unsigned(33'b111111111111111111111111111111111);

    // redist1_sync_together13_aunroll_x_in_c0_eni2_2_tpl_2(DELAY,25)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni2_2_tpl_2_delay_0 <= $unsigned(in_c0_eni2_2_tpl);
            redist1_sync_together13_aunroll_x_in_c0_eni2_2_tpl_2_q <= redist1_sync_together13_aunroll_x_in_c0_eni2_2_tpl_2_delay_0;
        end
    end

    // redist0_sync_together13_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,24)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together13_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i32_199(CONSTANT,5)
    assign c_i32_199_q = $unsigned(32'b00000000000000000000000000010011);

    // i_unnamed_gaussian2(COMPARE,8)@1 + 1
    assign i_unnamed_gaussian2_a = {2'b00, c_i32_199_q};
    assign i_unnamed_gaussian2_b = {2'b00, in_c0_eni2_1_tpl};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_gaussian2_o <= $unsigned(i_unnamed_gaussian2_a) - $unsigned(i_unnamed_gaussian2_b);
        end
    end
    assign i_unnamed_gaussian2_c[0] = i_unnamed_gaussian2_o[33];

    // i_umax_gaussian3(MUX,7)@2 + 1
    assign i_umax_gaussian3_s = i_unnamed_gaussian2_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_umax_gaussian3_s)
                1'b0 : i_umax_gaussian3_q <= c_i32_199_q;
                1'b1 : i_umax_gaussian3_q <= redist0_sync_together13_aunroll_x_in_c0_eni2_1_tpl_1_q;
                default : i_umax_gaussian3_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_gaussian4(ADD,9)@3
    assign i_unnamed_gaussian4_a = {1'b0, i_umax_gaussian3_q};
    assign i_unnamed_gaussian4_b = {1'b0, redist1_sync_together13_aunroll_x_in_c0_eni2_2_tpl_2_q};
    assign i_unnamed_gaussian4_o = $unsigned(i_unnamed_gaussian4_a) + $unsigned(i_unnamed_gaussian4_b);
    assign i_unnamed_gaussian4_q = i_unnamed_gaussian4_o[32:0];

    // bgTrunc_i_unnamed_gaussian4_sel_x(BITSELECT,16)@3
    assign bgTrunc_i_unnamed_gaussian4_sel_x_b = i_unnamed_gaussian4_q[31:0];

    // i_unnamed_gaussian5_sel_x(BITSELECT,18)@3
    assign i_unnamed_gaussian5_sel_x_b = {1'b0, bgTrunc_i_unnamed_gaussian4_sel_x_b[31:0]};

    // i_unnamed_gaussian5_vt_select_31(BITSELECT,13)@3
    assign i_unnamed_gaussian5_vt_select_31_b = i_unnamed_gaussian5_sel_x_b[31:0];

    // redist3_i_unnamed_gaussian5_vt_select_31_b_1(DELAY,27)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_unnamed_gaussian5_vt_select_31_b_1_q <= $unsigned(i_unnamed_gaussian5_vt_select_31_b);
        end
    end

    // i_unnamed_gaussian5_vt_join(BITJOIN,12)@4
    assign i_unnamed_gaussian5_vt_join_q = {GND_q, redist3_i_unnamed_gaussian5_vt_select_31_b_1_q};

    // i_unnamed_gaussian6(ADD,14)@4
    assign i_unnamed_gaussian6_a = {1'b0, i_unnamed_gaussian5_vt_join_q};
    assign i_unnamed_gaussian6_b = {1'b0, c_i33_110_q};
    assign i_unnamed_gaussian6_o = $unsigned(i_unnamed_gaussian6_a) + $unsigned(i_unnamed_gaussian6_b);
    assign i_unnamed_gaussian6_q = i_unnamed_gaussian6_o[33:0];

    // bgTrunc_i_unnamed_gaussian6_sel_x(BITSELECT,17)@4
    assign bgTrunc_i_unnamed_gaussian6_sel_x_b = i_unnamed_gaussian6_q[32:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,19)@4
    assign out_c0_exi191_0_tpl = GND_q;
    assign out_c0_exi191_1_tpl = bgTrunc_i_unnamed_gaussian6_sel_x_b;
    assign out_o_valid = redist2_sync_together13_aunroll_x_in_i_valid_3_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
