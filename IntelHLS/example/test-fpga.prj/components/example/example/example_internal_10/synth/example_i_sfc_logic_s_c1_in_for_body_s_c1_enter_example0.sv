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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_examples_c1_enter_example0
// Created for function/kernel example
// SystemVerilog created on Tue Mar 14 13:54:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module example_i_sfc_logic_s_c1_in_for_body_s_c1_enter_example0 (
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_example1,
    output wire [0:0] out_unnamed_example8_0_tpl,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [31:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [0:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_0013_q;
    wire [31:0] i_add_example5_out_primWireOut;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_example7_example8_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_s_010_pop8_example4_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_push_f32_s_010_push8_example7_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_f32_s_010_push8_example7_out_feedback_valid_out_8;
    wire [31:0] i_sub_example2_out_primWireOut;
    wire [0:0] i_unnamed_example6_s;
    reg [31:0] i_unnamed_example6_q;
    wire [7:0] cstAllOWE_uid18_i_cmp3_example3_q;
    wire [22:0] cstZeroWF_uid19_i_cmp3_example3_q;
    wire [7:0] cstAllZWE_uid20_i_cmp3_example3_q;
    wire [7:0] exp_x_uid21_i_cmp3_example3_b;
    wire [22:0] frac_x_uid22_i_cmp3_example3_b;
    wire [0:0] expXIsZero_uid23_i_cmp3_example3_q;
    wire [0:0] expXIsMax_uid24_i_cmp3_example3_q;
    wire [0:0] fracXIsZero_uid25_i_cmp3_example3_q;
    wire [0:0] fracXIsNotZero_uid26_i_cmp3_example3_q;
    wire [0:0] excZ_x_uid27_i_cmp3_example3_q;
    wire [0:0] excN_x_uid29_i_cmp3_example3_q;
    wire [7:0] exp_y_uid38_i_cmp3_example3_b;
    wire [22:0] frac_y_uid39_i_cmp3_example3_b;
    wire [0:0] expXIsZero_uid40_i_cmp3_example3_q;
    wire [0:0] expXIsMax_uid41_i_cmp3_example3_q;
    wire [0:0] fracXIsZero_uid42_i_cmp3_example3_q;
    wire [0:0] fracXIsNotZero_uid43_i_cmp3_example3_q;
    wire [0:0] excZ_y_uid44_i_cmp3_example3_q;
    wire [0:0] excN_y_uid46_i_cmp3_example3_q;
    wire [0:0] oneIsNaN_uid52_i_cmp3_example3_qi;
    reg [0:0] oneIsNaN_uid52_i_cmp3_example3_q;
    wire [30:0] expFracX_uid57_i_cmp3_example3_q;
    wire [30:0] expFracY_uid59_i_cmp3_example3_q;
    wire [32:0] efxGTefy_uid61_i_cmp3_example3_a;
    wire [32:0] efxGTefy_uid61_i_cmp3_example3_b;
    logic [32:0] efxGTefy_uid61_i_cmp3_example3_o;
    wire [0:0] efxGTefy_uid61_i_cmp3_example3_c;
    wire [32:0] efxLTefy_uid62_i_cmp3_example3_a;
    wire [32:0] efxLTefy_uid62_i_cmp3_example3_b;
    logic [32:0] efxLTefy_uid62_i_cmp3_example3_o;
    wire [0:0] efxLTefy_uid62_i_cmp3_example3_c;
    wire [0:0] signX_uid66_i_cmp3_example3_b;
    wire [0:0] signY_uid67_i_cmp3_example3_b;
    wire [1:0] two_uid68_i_cmp3_example3_q;
    wire [1:0] concSXSY_uid69_i_cmp3_example3_q;
    wire [0:0] sxLTsy_uid70_i_cmp3_example3_q;
    wire [0:0] xorSigns_uid71_i_cmp3_example3_q;
    wire [0:0] sxEQsy_uid72_i_cmp3_example3_q;
    wire [0:0] expFracCompMux_uid73_i_cmp3_example3_s;
    reg [0:0] expFracCompMux_uid73_i_cmp3_example3_q;
    wire [0:0] invExcYZ_uid74_i_cmp3_example3_q;
    wire [0:0] invExcXZ_uid75_i_cmp3_example3_q;
    wire [0:0] oneNonZero_uid76_i_cmp3_example3_q;
    wire [0:0] rc2_uid77_i_cmp3_example3_q;
    wire [0:0] sxEQsyExpFracCompMux_uid78_i_cmp3_example3_q;
    wire [0:0] r_uid79_i_cmp3_example3_qi;
    reg [0:0] r_uid79_i_cmp3_example3_q;
    wire [0:0] rPostExc_uid80_i_cmp3_example3_qi;
    reg [0:0] rPostExc_uid80_i_cmp3_example3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    reg [0:0] redist0_rPostExc_uid80_i_cmp3_example3_q_2_q;
    reg [0:0] redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_q;
    reg [0:0] redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_0;
    reg [0:0] redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_1;
    reg [0:0] redist2_sync_together16_aunroll_x_in_c1_eni5_4_tpl_6_q;
    reg [0:0] redist3_sync_together16_aunroll_x_in_c1_eni5_5_tpl_6_q;
    reg [0:0] redist4_sync_together16_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist4_sync_together16_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist5_sync_together16_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist5_sync_together16_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist5_sync_together16_aunroll_x_in_i_valid_5_delay_1;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_delay_0;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together16_aunroll_x_in_i_valid_2(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together16_aunroll_x_in_i_valid_2_delay_0 <= '0;
            redist4_sync_together16_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist4_sync_together16_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist4_sync_together16_aunroll_x_in_i_valid_2_q <= redist4_sync_together16_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist5_sync_together16_aunroll_x_in_i_valid_5(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together16_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist5_sync_together16_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist5_sync_together16_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist5_sync_together16_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist4_sync_together16_aunroll_x_in_i_valid_2_q);
            redist5_sync_together16_aunroll_x_in_i_valid_5_delay_1 <= redist5_sync_together16_aunroll_x_in_i_valid_5_delay_0;
            redist5_sync_together16_aunroll_x_in_i_valid_5_q <= redist5_sync_together16_aunroll_x_in_i_valid_5_delay_1;
        end
    end

    // valid_fanout_reg3(REG,84)@40 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist5_sync_together16_aunroll_x_in_i_valid_5_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg1(REG,82)@37 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist4_sync_together16_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,83)@40 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist5_sync_together16_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist2_sync_together16_aunroll_x_in_c1_eni5_4_tpl_6(DELAY,87)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together16_aunroll_x_in_c1_eni5_4_tpl_6 ( .xin(in_c1_eni5_4_tpl), .xout(redist2_sync_together16_aunroll_x_in_c1_eni5_4_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f32_s_010_push8_example7(BLACKBOX,10)@41
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    example_i_llvm_fpga_push_f32_s_010_push8_0 thei_llvm_fpga_push_f32_s_010_push8_example7 (
        .in_c1_ene4(redist2_sync_together16_aunroll_x_in_c1_eni5_4_tpl_6_q),
        .in_data_in(i_unnamed_example6_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_f32_s_010_pop8_example4_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_f32_s_010_push8_example7_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_f32_s_010_push8_example7_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_0 <= '0;
            redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_1 <= '0;
            redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_0 <= $unsigned(in_c1_eni5_3_tpl);
            redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_1 <= redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_0;
            redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_q <= redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_delay_1;
        end
    end

    // c_float_0_000000e_0013(FLOATCONSTANT,2)
    assign c_float_0_000000e_0013_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_s_010_pop8_example4(BLACKBOX,9)@38
    // out out_feedback_stall_out_8@20000000
    example_i_llvm_fpga_pop_f32_s_010_pop8_0 thei_llvm_fpga_pop_f32_s_010_pop8_example4 (
        .in_data_in(c_float_0_000000e_0013_q),
        .in_dir(redist1_sync_together16_aunroll_x_in_c1_eni5_3_tpl_3_q),
        .in_feedback_in_8(i_llvm_fpga_push_f32_s_010_push8_example7_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_f32_s_010_push8_example7_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_f32_s_010_pop8_example4_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_inputreg0(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_inputreg0_q <= $unsigned(i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_delay_0 <= '0;
            redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_delay_0 <= $unsigned(redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_inputreg0_q);
            redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_q <= redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_delay_0;
        end
    end

    // i_sub_example2(BLACKBOX,11)@35
    // out out_primWireOut@38
    example_flt_i_sfc_logic_s_c1_in_for_body00002463a0054c2a6342iyc5 thei_sub_example2 (
        .in_0(in_c1_eni5_1_tpl),
        .in_1(in_c1_eni5_2_tpl),
        .out_primWireOut(i_sub_example2_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_example5(BLACKBOX,6)@38
    // out out_primWireOut@41
    example_flt_i_sfc_logic_s_c1_in_for_body00003a0054c2a6344c246w65 thei_add_example5 (
        .in_0(i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out),
        .in_1(i_sub_example2_out_primWireOut),
        .out_primWireOut(i_add_example5_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // frac_y_uid39_i_cmp3_example3(BITSELECT,38)@38
    assign frac_y_uid39_i_cmp3_example3_b = c_float_0_000000e_0013_q[22:0];

    // cstZeroWF_uid19_i_cmp3_example3(CONSTANT,18)
    assign cstZeroWF_uid19_i_cmp3_example3_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid42_i_cmp3_example3(LOGICAL,41)@38
    assign fracXIsZero_uid42_i_cmp3_example3_q = $unsigned(cstZeroWF_uid19_i_cmp3_example3_q == frac_y_uid39_i_cmp3_example3_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid43_i_cmp3_example3(LOGICAL,42)@38
    assign fracXIsNotZero_uid43_i_cmp3_example3_q = ~ (fracXIsZero_uid42_i_cmp3_example3_q);

    // cstAllOWE_uid18_i_cmp3_example3(CONSTANT,17)
    assign cstAllOWE_uid18_i_cmp3_example3_q = $unsigned(8'b11111111);

    // exp_y_uid38_i_cmp3_example3(BITSELECT,37)@38
    assign exp_y_uid38_i_cmp3_example3_b = c_float_0_000000e_0013_q[30:23];

    // expXIsMax_uid41_i_cmp3_example3(LOGICAL,40)@38
    assign expXIsMax_uid41_i_cmp3_example3_q = $unsigned(exp_y_uid38_i_cmp3_example3_b == cstAllOWE_uid18_i_cmp3_example3_q ? 1'b1 : 1'b0);

    // excN_y_uid46_i_cmp3_example3(LOGICAL,45)@38
    assign excN_y_uid46_i_cmp3_example3_q = expXIsMax_uid41_i_cmp3_example3_q & fracXIsNotZero_uid43_i_cmp3_example3_q;

    // frac_x_uid22_i_cmp3_example3(BITSELECT,21)@38
    assign frac_x_uid22_i_cmp3_example3_b = i_sub_example2_out_primWireOut[22:0];

    // fracXIsZero_uid25_i_cmp3_example3(LOGICAL,24)@38
    assign fracXIsZero_uid25_i_cmp3_example3_q = $unsigned(cstZeroWF_uid19_i_cmp3_example3_q == frac_x_uid22_i_cmp3_example3_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid26_i_cmp3_example3(LOGICAL,25)@38
    assign fracXIsNotZero_uid26_i_cmp3_example3_q = ~ (fracXIsZero_uid25_i_cmp3_example3_q);

    // exp_x_uid21_i_cmp3_example3(BITSELECT,20)@38
    assign exp_x_uid21_i_cmp3_example3_b = i_sub_example2_out_primWireOut[30:23];

    // expXIsMax_uid24_i_cmp3_example3(LOGICAL,23)@38
    assign expXIsMax_uid24_i_cmp3_example3_q = $unsigned(exp_x_uid21_i_cmp3_example3_b == cstAllOWE_uid18_i_cmp3_example3_q ? 1'b1 : 1'b0);

    // excN_x_uid29_i_cmp3_example3(LOGICAL,28)@38
    assign excN_x_uid29_i_cmp3_example3_q = expXIsMax_uid24_i_cmp3_example3_q & fracXIsNotZero_uid26_i_cmp3_example3_q;

    // oneIsNaN_uid52_i_cmp3_example3(LOGICAL,51)@38 + 1
    assign oneIsNaN_uid52_i_cmp3_example3_qi = excN_x_uid29_i_cmp3_example3_q | excN_y_uid46_i_cmp3_example3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid52_i_cmp3_example3_delay ( .xin(oneIsNaN_uid52_i_cmp3_example3_qi), .xout(oneIsNaN_uid52_i_cmp3_example3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid20_i_cmp3_example3(CONSTANT,19)
    assign cstAllZWE_uid20_i_cmp3_example3_q = $unsigned(8'b00000000);

    // expXIsZero_uid40_i_cmp3_example3(LOGICAL,39)@38
    assign expXIsZero_uid40_i_cmp3_example3_q = $unsigned(exp_y_uid38_i_cmp3_example3_b == cstAllZWE_uid20_i_cmp3_example3_q ? 1'b1 : 1'b0);

    // excZ_y_uid44_i_cmp3_example3(LOGICAL,43)@38
    assign excZ_y_uid44_i_cmp3_example3_q = expXIsZero_uid40_i_cmp3_example3_q & fracXIsZero_uid42_i_cmp3_example3_q;

    // invExcYZ_uid74_i_cmp3_example3(LOGICAL,73)@38
    assign invExcYZ_uid74_i_cmp3_example3_q = ~ (excZ_y_uid44_i_cmp3_example3_q);

    // expXIsZero_uid23_i_cmp3_example3(LOGICAL,22)@38
    assign expXIsZero_uid23_i_cmp3_example3_q = $unsigned(exp_x_uid21_i_cmp3_example3_b == cstAllZWE_uid20_i_cmp3_example3_q ? 1'b1 : 1'b0);

    // excZ_x_uid27_i_cmp3_example3(LOGICAL,26)@38
    assign excZ_x_uid27_i_cmp3_example3_q = expXIsZero_uid23_i_cmp3_example3_q & fracXIsZero_uid25_i_cmp3_example3_q;

    // invExcXZ_uid75_i_cmp3_example3(LOGICAL,74)@38
    assign invExcXZ_uid75_i_cmp3_example3_q = ~ (excZ_x_uid27_i_cmp3_example3_q);

    // oneNonZero_uid76_i_cmp3_example3(LOGICAL,75)@38
    assign oneNonZero_uid76_i_cmp3_example3_q = invExcXZ_uid75_i_cmp3_example3_q | invExcYZ_uid74_i_cmp3_example3_q;

    // two_uid68_i_cmp3_example3(CONSTANT,67)
    assign two_uid68_i_cmp3_example3_q = $unsigned(2'b10);

    // signX_uid66_i_cmp3_example3(BITSELECT,65)@38
    assign signX_uid66_i_cmp3_example3_b = $unsigned(i_sub_example2_out_primWireOut[31:31]);

    // signY_uid67_i_cmp3_example3(BITSELECT,66)@38
    assign signY_uid67_i_cmp3_example3_b = $unsigned(c_float_0_000000e_0013_q[31:31]);

    // concSXSY_uid69_i_cmp3_example3(BITJOIN,68)@38
    assign concSXSY_uid69_i_cmp3_example3_q = {signX_uid66_i_cmp3_example3_b, signY_uid67_i_cmp3_example3_b};

    // sxLTsy_uid70_i_cmp3_example3(LOGICAL,69)@38
    assign sxLTsy_uid70_i_cmp3_example3_q = $unsigned(concSXSY_uid69_i_cmp3_example3_q == two_uid68_i_cmp3_example3_q ? 1'b1 : 1'b0);

    // rc2_uid77_i_cmp3_example3(LOGICAL,76)@38
    assign rc2_uid77_i_cmp3_example3_q = sxLTsy_uid70_i_cmp3_example3_q & oneNonZero_uid76_i_cmp3_example3_q;

    // expFracX_uid57_i_cmp3_example3(BITJOIN,56)@38
    assign expFracX_uid57_i_cmp3_example3_q = {exp_x_uid21_i_cmp3_example3_b, frac_x_uid22_i_cmp3_example3_b};

    // expFracY_uid59_i_cmp3_example3(BITJOIN,58)@38
    assign expFracY_uid59_i_cmp3_example3_q = {exp_y_uid38_i_cmp3_example3_b, frac_y_uid39_i_cmp3_example3_b};

    // efxGTefy_uid61_i_cmp3_example3(COMPARE,60)@38
    assign efxGTefy_uid61_i_cmp3_example3_a = {2'b00, expFracY_uid59_i_cmp3_example3_q};
    assign efxGTefy_uid61_i_cmp3_example3_b = {2'b00, expFracX_uid57_i_cmp3_example3_q};
    assign efxGTefy_uid61_i_cmp3_example3_o = $unsigned(efxGTefy_uid61_i_cmp3_example3_a) - $unsigned(efxGTefy_uid61_i_cmp3_example3_b);
    assign efxGTefy_uid61_i_cmp3_example3_c[0] = efxGTefy_uid61_i_cmp3_example3_o[32];

    // efxLTefy_uid62_i_cmp3_example3(COMPARE,61)@38
    assign efxLTefy_uid62_i_cmp3_example3_a = {2'b00, expFracX_uid57_i_cmp3_example3_q};
    assign efxLTefy_uid62_i_cmp3_example3_b = {2'b00, expFracY_uid59_i_cmp3_example3_q};
    assign efxLTefy_uid62_i_cmp3_example3_o = $unsigned(efxLTefy_uid62_i_cmp3_example3_a) - $unsigned(efxLTefy_uid62_i_cmp3_example3_b);
    assign efxLTefy_uid62_i_cmp3_example3_c[0] = efxLTefy_uid62_i_cmp3_example3_o[32];

    // expFracCompMux_uid73_i_cmp3_example3(MUX,72)@38
    assign expFracCompMux_uid73_i_cmp3_example3_s = signX_uid66_i_cmp3_example3_b;
    always @(expFracCompMux_uid73_i_cmp3_example3_s or efxLTefy_uid62_i_cmp3_example3_c or efxGTefy_uid61_i_cmp3_example3_c)
    begin
        unique case (expFracCompMux_uid73_i_cmp3_example3_s)
            1'b0 : expFracCompMux_uid73_i_cmp3_example3_q = efxLTefy_uid62_i_cmp3_example3_c;
            1'b1 : expFracCompMux_uid73_i_cmp3_example3_q = efxGTefy_uid61_i_cmp3_example3_c;
            default : expFracCompMux_uid73_i_cmp3_example3_q = 1'b0;
        endcase
    end

    // xorSigns_uid71_i_cmp3_example3(LOGICAL,70)@38
    assign xorSigns_uid71_i_cmp3_example3_q = signX_uid66_i_cmp3_example3_b ^ signY_uid67_i_cmp3_example3_b;

    // sxEQsy_uid72_i_cmp3_example3(LOGICAL,71)@38
    assign sxEQsy_uid72_i_cmp3_example3_q = ~ (xorSigns_uid71_i_cmp3_example3_q);

    // sxEQsyExpFracCompMux_uid78_i_cmp3_example3(LOGICAL,77)@38
    assign sxEQsyExpFracCompMux_uid78_i_cmp3_example3_q = sxEQsy_uid72_i_cmp3_example3_q & expFracCompMux_uid73_i_cmp3_example3_q;

    // r_uid79_i_cmp3_example3(LOGICAL,78)@38 + 1
    assign r_uid79_i_cmp3_example3_qi = sxEQsyExpFracCompMux_uid78_i_cmp3_example3_q | rc2_uid77_i_cmp3_example3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid79_i_cmp3_example3_delay ( .xin(r_uid79_i_cmp3_example3_qi), .xout(r_uid79_i_cmp3_example3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid80_i_cmp3_example3(LOGICAL,79)@39 + 1
    assign rPostExc_uid80_i_cmp3_example3_qi = r_uid79_i_cmp3_example3_q | oneIsNaN_uid52_i_cmp3_example3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rPostExc_uid80_i_cmp3_example3_delay ( .xin(rPostExc_uid80_i_cmp3_example3_qi), .xout(rPostExc_uid80_i_cmp3_example3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_rPostExc_uid80_i_cmp3_example3_q_2(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rPostExc_uid80_i_cmp3_example3_q_2_q <= '0;
        end
        else
        begin
            redist0_rPostExc_uid80_i_cmp3_example3_q_2_q <= $unsigned(rPostExc_uid80_i_cmp3_example3_q);
        end
    end

    // i_unnamed_example6(MUX,12)@41
    assign i_unnamed_example6_s = redist0_rPostExc_uid80_i_cmp3_example3_q_2_q;
    always @(i_unnamed_example6_s or i_add_example5_out_primWireOut or redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_q)
    begin
        unique case (i_unnamed_example6_s)
            1'b0 : i_unnamed_example6_q = i_add_example5_out_primWireOut;
            1'b1 : i_unnamed_example6_q = redist6_i_llvm_fpga_pop_f32_s_010_pop8_example4_out_data_out_3_q;
            default : i_unnamed_example6_q = 32'b0;
        endcase
    end

    // redist3_sync_together16_aunroll_x_in_c1_eni5_5_tpl_6(DELAY,88)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together16_aunroll_x_in_c1_eni5_5_tpl_6 ( .xin(in_c1_eni5_5_tpl), .xout(redist3_sync_together16_aunroll_x_in_c1_eni5_5_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f32_unnamed_example7_example8(BLACKBOX,8)@41
    // out out_intel_reserved_ffwd_2_0@20000000
    example_i_llvm_fpga_ffwd_source_f32_unnamed_7_example0 thei_llvm_fpga_ffwd_source_f32_unnamed_example7_example8 (
        .in_predicate_in(redist3_sync_together16_aunroll_x_in_c1_eni5_5_tpl_6_q),
        .in_src_data_in_2_0(i_unnamed_example6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_f32_unnamed_example7_example8_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,13)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_f32_unnamed_example7_example8_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg0(REG,81)@40 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together16_aunroll_x_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,15)@41
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_example1 = GND_q;
    assign out_unnamed_example8_0_tpl = GND_q;

endmodule
