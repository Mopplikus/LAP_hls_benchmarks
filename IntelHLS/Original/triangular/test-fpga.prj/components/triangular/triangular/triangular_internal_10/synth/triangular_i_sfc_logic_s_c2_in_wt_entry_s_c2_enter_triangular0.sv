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

// SystemVerilog created from i_sfc_logic_s_c2_in_wt_entry_triangulars_c2_enter_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c2_in_wt_entry_s_c2_enter_triangular0 (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    output wire [0:0] out_unnamed_triangular6_0_tpl,
    input wire [0:0] in_c2_eni1_0_tpl,
    input wire [63:0] in_c2_eni1_1_tpl,
    input wire [63:0] in_c2_eni1_2_tpl,
    input wire [31:0] in_c2_eni1_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_022_q;
    wire [31:0] c_i32_124_q;
    wire [31:0] c_i32_223_q;
    wire [32:0] c_i33_125_q;
    wire [33:0] i_cmp16_triangular3_a;
    wire [33:0] i_cmp16_triangular3_b;
    logic [33:0] i_cmp16_triangular3_o;
    wire [0:0] i_cmp16_triangular3_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular14_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular13_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular15_out_intel_reserved_ffwd_2_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular16_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_smin8_triangular9_s;
    reg [31:0] i_smin8_triangular9_q;
    wire [32:0] i_unnamed_triangular10_a;
    wire [32:0] i_unnamed_triangular10_b;
    logic [32:0] i_unnamed_triangular10_o;
    wire [32:0] i_unnamed_triangular10_q;
    wire [32:0] i_unnamed_triangular11_vt_join_q;
    wire [31:0] i_unnamed_triangular11_vt_select_31_b;
    wire [33:0] i_unnamed_triangular12_a;
    wire [33:0] i_unnamed_triangular12_b;
    logic [33:0] i_unnamed_triangular12_o;
    wire [33:0] i_unnamed_triangular12_q;
    wire [32:0] i_unnamed_triangular5_a;
    wire [32:0] i_unnamed_triangular5_b;
    logic [32:0] i_unnamed_triangular5_o;
    wire [32:0] i_unnamed_triangular5_q;
    wire [32:0] i_unnamed_triangular6_a;
    wire [32:0] i_unnamed_triangular6_b;
    logic [32:0] i_unnamed_triangular6_o;
    wire [32:0] i_unnamed_triangular6_q;
    wire [31:0] bgTrunc_i_unnamed_triangular10_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_triangular12_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular5_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular6_sel_x_b;
    wire [32:0] i_unnamed_triangular11_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    wire [0:0] i_unnamed_triangular7_cmp_sign_q;
    reg [31:0] redist0_sync_together26_aunroll_x_in_c2_eni1_3_tpl_1_q;
    reg [0:0] redist1_sync_together26_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together26_aunroll_x_in_i_valid_2_delay_0;
    reg [31:0] redist2_bgTrunc_i_unnamed_triangular6_sel_x_b_1_q;
    reg [31:0] redist3_bgTrunc_i_unnamed_triangular6_sel_x_b_2_q;
    reg [31:0] redist4_i_unnamed_triangular11_vt_select_31_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,46)@10 + 1
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

    // redist0_sync_together26_aunroll_x_in_c2_eni1_3_tpl_1(DELAY,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together26_aunroll_x_in_c2_eni1_3_tpl_1_q <= $unsigned(in_c2_eni1_3_tpl);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular13(BLACKBOX,16)@11
    // out out_intel_reserved_ffwd_0_0@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_2_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist0_sync_together26_aunroll_x_in_c2_eni1_3_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular13_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,31)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular13_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg2(REG,47)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_022(CONSTANT,10)
    assign c_i32_022_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp16_triangular3(COMPARE,14)@11
    assign i_cmp16_triangular3_a = $unsigned({{2{c_i32_022_q[31]}}, c_i32_022_q});
    assign i_cmp16_triangular3_b = $unsigned({{2{redist0_sync_together26_aunroll_x_in_c2_eni1_3_tpl_1_q[31]}}, redist0_sync_together26_aunroll_x_in_c2_eni1_3_tpl_1_q});
    assign i_cmp16_triangular3_o = $unsigned($signed(i_cmp16_triangular3_a) - $signed(i_cmp16_triangular3_b));
    assign i_cmp16_triangular3_c[0] = i_cmp16_triangular3_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular14(BLACKBOX,15)@11
    // out out_intel_reserved_ffwd_1_0@20000000
    triangular_i_llvm_fpga_ffwd_source_i1_unnamed_3_triangular0 thei_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_cmp16_triangular3_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular14_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular14_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg3(REG,48)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_223(CONSTANT,12)
    assign c_i32_223_q = $unsigned(32'b11111111111111111111111111111110);

    // i_unnamed_triangular5(ADD,26)@11
    assign i_unnamed_triangular5_a = {1'b0, redist0_sync_together26_aunroll_x_in_c2_eni1_3_tpl_1_q};
    assign i_unnamed_triangular5_b = {1'b0, c_i32_223_q};
    assign i_unnamed_triangular5_o = $unsigned(i_unnamed_triangular5_a) + $unsigned(i_unnamed_triangular5_b);
    assign i_unnamed_triangular5_q = i_unnamed_triangular5_o[32:0];

    // bgTrunc_i_unnamed_triangular5_sel_x(BITSELECT,35)@11
    assign bgTrunc_i_unnamed_triangular5_sel_x_b = i_unnamed_triangular5_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular15(BLACKBOX,17)@11
    // out out_intel_reserved_ffwd_2_0@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_4_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bgTrunc_i_unnamed_triangular5_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular15_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular15_out_intel_reserved_ffwd_2_0;

    // redist1_sync_together26_aunroll_x_in_i_valid_2(DELAY,58)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together26_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together26_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together26_aunroll_x_in_i_valid_2_q <= redist1_sync_together26_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,49)@12 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together26_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i33_125(CONSTANT,13)
    assign c_i33_125_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_124(CONSTANT,11)
    assign c_i32_124_q = $unsigned(32'b11111111111111111111111111111111);

    // i_unnamed_triangular6(ADD,27)@10
    assign i_unnamed_triangular6_a = {1'b0, in_c2_eni1_3_tpl};
    assign i_unnamed_triangular6_b = {1'b0, c_i32_124_q};
    assign i_unnamed_triangular6_o = $unsigned(i_unnamed_triangular6_a) + $unsigned(i_unnamed_triangular6_b);
    assign i_unnamed_triangular6_q = i_unnamed_triangular6_o[32:0];

    // bgTrunc_i_unnamed_triangular6_sel_x(BITSELECT,36)@10
    assign bgTrunc_i_unnamed_triangular6_sel_x_b = i_unnamed_triangular6_q[31:0];

    // redist2_bgTrunc_i_unnamed_triangular6_sel_x_b_1(DELAY,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_bgTrunc_i_unnamed_triangular6_sel_x_b_1_q <= $unsigned(bgTrunc_i_unnamed_triangular6_sel_x_b);
        end
    end

    // i_unnamed_triangular7_cmp_sign(LOGICAL,55)@11
    assign i_unnamed_triangular7_cmp_sign_q = $unsigned(redist2_bgTrunc_i_unnamed_triangular6_sel_x_b_1_q[31:31]);

    // i_smin8_triangular9(MUX,19)@11 + 1
    assign i_smin8_triangular9_s = i_unnamed_triangular7_cmp_sign_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_smin8_triangular9_s)
                1'b0 : i_smin8_triangular9_q <= c_i32_022_q;
                1'b1 : i_smin8_triangular9_q <= redist2_bgTrunc_i_unnamed_triangular6_sel_x_b_1_q;
                default : i_smin8_triangular9_q <= 32'b0;
            endcase
        end
    end

    // redist3_bgTrunc_i_unnamed_triangular6_sel_x_b_2(DELAY,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_bgTrunc_i_unnamed_triangular6_sel_x_b_2_q <= $unsigned(redist2_bgTrunc_i_unnamed_triangular6_sel_x_b_1_q);
        end
    end

    // i_unnamed_triangular10(SUB,20)@12
    assign i_unnamed_triangular10_a = {1'b0, redist3_bgTrunc_i_unnamed_triangular6_sel_x_b_2_q};
    assign i_unnamed_triangular10_b = {1'b0, i_smin8_triangular9_q};
    assign i_unnamed_triangular10_o = $unsigned(i_unnamed_triangular10_a) - $unsigned(i_unnamed_triangular10_b);
    assign i_unnamed_triangular10_q = i_unnamed_triangular10_o[32:0];

    // bgTrunc_i_unnamed_triangular10_sel_x(BITSELECT,33)@12
    assign bgTrunc_i_unnamed_triangular10_sel_x_b = $unsigned(i_unnamed_triangular10_q[31:0]);

    // i_unnamed_triangular11_sel_x(BITSELECT,42)@12
    assign i_unnamed_triangular11_sel_x_b = {1'b0, bgTrunc_i_unnamed_triangular10_sel_x_b[31:0]};

    // i_unnamed_triangular11_vt_select_31(BITSELECT,24)@12
    assign i_unnamed_triangular11_vt_select_31_b = i_unnamed_triangular11_sel_x_b[31:0];

    // redist4_i_unnamed_triangular11_vt_select_31_b_1(DELAY,61)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_unnamed_triangular11_vt_select_31_b_1_q <= $unsigned(i_unnamed_triangular11_vt_select_31_b);
        end
    end

    // i_unnamed_triangular11_vt_join(BITJOIN,23)@13
    assign i_unnamed_triangular11_vt_join_q = {GND_q, redist4_i_unnamed_triangular11_vt_select_31_b_1_q};

    // i_unnamed_triangular12(ADD,25)@13
    assign i_unnamed_triangular12_a = {1'b0, i_unnamed_triangular11_vt_join_q};
    assign i_unnamed_triangular12_b = {1'b0, c_i33_125_q};
    assign i_unnamed_triangular12_o = $unsigned(i_unnamed_triangular12_a) + $unsigned(i_unnamed_triangular12_b);
    assign i_unnamed_triangular12_q = i_unnamed_triangular12_o[33:0];

    // bgTrunc_i_unnamed_triangular12_sel_x(BITSELECT,34)@13
    assign bgTrunc_i_unnamed_triangular12_sel_x_b = i_unnamed_triangular12_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular16(BLACKBOX,18)@13
    // out out_intel_reserved_ffwd_3_0@20000000
    triangular_i_llvm_fpga_ffwd_source_i33_unnamed_5_triangular0 thei_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_triangular12_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular16_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular16_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg0(REG,45)@12 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together26_aunroll_x_in_i_valid_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,43)@13
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_triangular0 = GND_q;
    assign out_unnamed_triangular6_0_tpl = GND_q;

endmodule
