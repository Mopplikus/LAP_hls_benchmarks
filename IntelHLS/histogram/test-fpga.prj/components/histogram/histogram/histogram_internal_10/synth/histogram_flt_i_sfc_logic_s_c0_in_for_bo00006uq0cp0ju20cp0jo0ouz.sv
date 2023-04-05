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

// SystemVerilog created from flt_i_sfc_logic_s_c0_in_for_body_histograms_c0_enter582_histogram0_castBlock_typeSFixed_32_0_typeSFloatIEEE_23_8_castModeConvert_3v4iz98pdqgdwhfwtf98i063065063663c65c62i65i63o62u61764761j60v642c3e60k62ki5w623643c2l60uq5ux5gv8yll5gvbyxk5id06uq0cp0ju20cp0jo0ouz
// Created for function/kernel histogram
// SystemVerilog created on Tue Apr  4 22:51:30 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_flt_i_sfc_logic_s_c0_in_for_bo00006uq0cp0ju20cp0jo0ouz (
    input wire [31:0] in_0,
    output wire [31:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] signX_uid6_block_rsrvd_fix_b;
    wire [31:0] xXorSign_uid7_block_rsrvd_fix_b;
    wire [31:0] xXorSign_uid7_block_rsrvd_fix_q;
    wire [32:0] yE_uid8_block_rsrvd_fix_a;
    wire [32:0] yE_uid8_block_rsrvd_fix_b;
    logic [32:0] yE_uid8_block_rsrvd_fix_o;
    wire [32:0] yE_uid8_block_rsrvd_fix_q;
    wire [31:0] y_uid9_block_rsrvd_fix_in;
    wire [31:0] y_uid9_block_rsrvd_fix_b;
    wire [5:0] maxCount_uid11_block_rsrvd_fix_q;
    wire [0:0] inIsZero_uid12_block_rsrvd_fix_qi;
    reg [0:0] inIsZero_uid12_block_rsrvd_fix_q;
    wire [7:0] msbIn_uid13_block_rsrvd_fix_q;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_a;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_b;
    logic [8:0] expPreRnd_uid14_block_rsrvd_fix_o;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_q;
    wire [32:0] expFracRnd_uid16_block_rsrvd_fix_q;
    wire [0:0] sticky_uid20_block_rsrvd_fix_qi;
    reg [0:0] sticky_uid20_block_rsrvd_fix_q;
    wire [0:0] nr_uid21_block_rsrvd_fix_q;
    wire [0:0] rnd_uid22_block_rsrvd_fix_q;
    wire [34:0] expFracR_uid24_block_rsrvd_fix_a;
    wire [34:0] expFracR_uid24_block_rsrvd_fix_b;
    logic [34:0] expFracR_uid24_block_rsrvd_fix_o;
    wire [33:0] expFracR_uid24_block_rsrvd_fix_q;
    wire [23:0] fracR_uid25_block_rsrvd_fix_in;
    wire [22:0] fracR_uid25_block_rsrvd_fix_b;
    wire [9:0] expR_uid26_block_rsrvd_fix_b;
    wire [11:0] udf_uid27_block_rsrvd_fix_a;
    wire [11:0] udf_uid27_block_rsrvd_fix_b;
    logic [11:0] udf_uid27_block_rsrvd_fix_o;
    wire [0:0] udf_uid27_block_rsrvd_fix_n;
    wire [7:0] expInf_uid28_block_rsrvd_fix_q;
    wire [11:0] ovf_uid29_block_rsrvd_fix_a;
    wire [11:0] ovf_uid29_block_rsrvd_fix_b;
    logic [11:0] ovf_uid29_block_rsrvd_fix_o;
    wire [0:0] ovf_uid29_block_rsrvd_fix_n;
    wire [0:0] excSelector_uid30_block_rsrvd_fix_q;
    wire [22:0] fracZ_uid31_block_rsrvd_fix_q;
    wire [0:0] fracRPostExc_uid32_block_rsrvd_fix_s;
    reg [22:0] fracRPostExc_uid32_block_rsrvd_fix_q;
    wire [0:0] udfOrInZero_uid33_block_rsrvd_fix_q;
    wire [1:0] excSelector_uid34_block_rsrvd_fix_q;
    wire [7:0] expZ_uid37_block_rsrvd_fix_q;
    wire [7:0] expR_uid38_block_rsrvd_fix_in;
    wire [7:0] expR_uid38_block_rsrvd_fix_b;
    wire [1:0] expRPostExc_uid39_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid39_block_rsrvd_fix_q;
    wire [31:0] outRes_uid40_block_rsrvd_fix_q;
    wire [31:0] zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [15:0] zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [3:0] zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [1:0] zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [5:0] vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [7:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_a;
    wire [7:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_b;
    logic [7:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_o;
    wire [0:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    wire [0:0] vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [5:0] vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [1:0] l_uid17_block_rsrvd_fix_merged_bit_select_in;
    wire [0:0] l_uid17_block_rsrvd_fix_merged_bit_select_b;
    wire [0:0] l_uid17_block_rsrvd_fix_merged_bit_select_c;
    wire [15:0] rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [23:0] rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [27:0] rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [29:0] rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [0:0] rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [30:0] rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [30:0] fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in;
    wire [23:0] fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b;
    wire [6:0] fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c;
    reg [23:0] redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_q;
    reg [23:0] redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_delay_0;
    reg [6:0] redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [23:0] redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [5:0] redist3_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
    reg [31:0] redist4_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
    reg [0:0] redist5_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
    reg [0:0] redist6_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
    reg [9:0] redist7_expR_uid26_block_rsrvd_fix_b_1_q;
    reg [22:0] redist8_fracR_uid25_block_rsrvd_fix_b_1_q;
    reg [0:0] redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q;
    reg [31:0] redist10_y_uid9_block_rsrvd_fix_b_1_q;
    reg [0:0] redist11_signX_uid6_block_rsrvd_fix_b_5_q;
    reg [0:0] redist11_signX_uid6_block_rsrvd_fix_b_5_delay_0;
    reg [0:0] redist11_signX_uid6_block_rsrvd_fix_b_5_delay_1;
    reg [0:0] redist11_signX_uid6_block_rsrvd_fix_b_5_delay_2;
    reg [0:0] redist11_signX_uid6_block_rsrvd_fix_b_5_delay_3;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    assign signX_uid6_block_rsrvd_fix_b = $unsigned(in_0[31:31]);

    // redist11_signX_uid6_block_rsrvd_fix_b_5(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_2 <= '0;
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_3 <= '0;
            redist11_signX_uid6_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_0 <= $unsigned(signX_uid6_block_rsrvd_fix_b);
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_1 <= redist11_signX_uid6_block_rsrvd_fix_b_5_delay_0;
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_2 <= redist11_signX_uid6_block_rsrvd_fix_b_5_delay_1;
            redist11_signX_uid6_block_rsrvd_fix_b_5_delay_3 <= redist11_signX_uid6_block_rsrvd_fix_b_5_delay_2;
            redist11_signX_uid6_block_rsrvd_fix_b_5_q <= redist11_signX_uid6_block_rsrvd_fix_b_5_delay_3;
        end
    end

    // expInf_uid28_block_rsrvd_fix(CONSTANT,27)
    assign expInf_uid28_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // expZ_uid37_block_rsrvd_fix(CONSTANT,36)
    assign expZ_uid37_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,93)@2
    assign rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:31];
    assign rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q[30:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,79)@2
    assign cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, GND_q};

    // rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,92)@2
    assign rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:30];
    assign rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q[29:0];

    // zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,67)
    assign zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(2'b00);

    // cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,72)@2
    assign cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,91)@2
    assign rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:28];
    assign rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q[27:0];

    // zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,60)
    assign zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(4'b0000);

    // cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,65)@2
    assign cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,89)@1
    assign rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:16];
    assign rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q[15:0];

    // zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,46)
    assign zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,51)@1
    assign cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,41)
    assign zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // xXorSign_uid7_block_rsrvd_fix(LOGICAL,6)@0
    assign xXorSign_uid7_block_rsrvd_fix_b = $unsigned({{31{signX_uid6_block_rsrvd_fix_b[0]}}, signX_uid6_block_rsrvd_fix_b});
    assign xXorSign_uid7_block_rsrvd_fix_q = in_0 ^ xXorSign_uid7_block_rsrvd_fix_b;

    // yE_uid8_block_rsrvd_fix(ADD,7)@0
    assign yE_uid8_block_rsrvd_fix_a = {1'b0, xXorSign_uid7_block_rsrvd_fix_q};
    assign yE_uid8_block_rsrvd_fix_b = {32'b00000000000000000000000000000000, signX_uid6_block_rsrvd_fix_b};
    assign yE_uid8_block_rsrvd_fix_o = $unsigned(yE_uid8_block_rsrvd_fix_a) + $unsigned(yE_uid8_block_rsrvd_fix_b);
    assign yE_uid8_block_rsrvd_fix_q = yE_uid8_block_rsrvd_fix_o[32:0];

    // y_uid9_block_rsrvd_fix(BITSELECT,8)@0
    assign y_uid9_block_rsrvd_fix_in = $unsigned(yE_uid8_block_rsrvd_fix_q[31:0]);
    assign y_uid9_block_rsrvd_fix_b = $unsigned(y_uid9_block_rsrvd_fix_in[31:0]);

    // redist10_y_uid9_block_rsrvd_fix_b_1(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_y_uid9_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist10_y_uid9_block_rsrvd_fix_b_1_q <= $unsigned(y_uid9_block_rsrvd_fix_b);
        end
    end

    // vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,43)@0 + 1
    assign vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_qi = $unsigned(y_uid9_block_rsrvd_fix_b == zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_delay ( .xin(vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_qi), .xout(vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,45)@1
    assign vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_s or redist10_y_uid9_block_rsrvd_fix_b_1_q or zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q = redist10_y_uid9_block_rsrvd_fix_b_1_q;
            1'b1 : vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q = zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,48)@1
    assign vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,52)@1
    assign vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_s or vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q or cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q = vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            1'b1 : vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q = cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,90)@1
    assign rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:24];
    assign rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q[23:0];

    // redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,58)@2
    assign cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q = {redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q, expZ_uid37_block_rsrvd_fix_q};

    // redist4_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist4_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= $unsigned(vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,55)@1 + 1
    assign vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_qi = $unsigned(rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == expZ_uid37_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_delay ( .xin(vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_qi), .xout(vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,59)@2
    assign vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_s or redist4_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q or cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q = redist4_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
            1'b1 : vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q = cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,62)@2
    assign vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,66)@2
    assign vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_s or vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q or cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q = vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            1'b1 : vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q = cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,69)@2
    assign vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,73)@2
    assign vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_s or vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q or cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q = vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            1'b1 : vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q = cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,76)@2
    assign vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == GND_q ? 1'b1 : 1'b0);

    // vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,80)@2
    assign vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s or vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q or cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q = vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            1'b1 : vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q = cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // fracRnd_uid15_block_rsrvd_fix_merged_bit_select(BITSELECT,94)@2
    assign fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in = vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q[30:0];
    assign fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b = fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in[30:7];
    assign fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c = fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in[6:0];

    // redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // sticky_uid20_block_rsrvd_fix(LOGICAL,19)@3 + 1
    assign sticky_uid20_block_rsrvd_fix_qi = $unsigned(redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q != 7'b0000000 ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sticky_uid20_block_rsrvd_fix_delay ( .xin(sticky_uid20_block_rsrvd_fix_qi), .xout(sticky_uid20_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // nr_uid21_block_rsrvd_fix(LOGICAL,20)@4
    assign nr_uid21_block_rsrvd_fix_q = ~ (l_uid17_block_rsrvd_fix_merged_bit_select_c);

    // l_uid17_block_rsrvd_fix_merged_bit_select(BITSELECT,88)@4
    assign l_uid17_block_rsrvd_fix_merged_bit_select_in = $unsigned(expFracRnd_uid16_block_rsrvd_fix_q[1:0]);
    assign l_uid17_block_rsrvd_fix_merged_bit_select_b = $unsigned(l_uid17_block_rsrvd_fix_merged_bit_select_in[1:1]);
    assign l_uid17_block_rsrvd_fix_merged_bit_select_c = $unsigned(l_uid17_block_rsrvd_fix_merged_bit_select_in[0:0]);

    // rnd_uid22_block_rsrvd_fix(LOGICAL,21)@4
    assign rnd_uid22_block_rsrvd_fix_q = l_uid17_block_rsrvd_fix_merged_bit_select_b | nr_uid21_block_rsrvd_fix_q | sticky_uid20_block_rsrvd_fix_q;

    // maxCount_uid11_block_rsrvd_fix(CONSTANT,10)
    assign maxCount_uid11_block_rsrvd_fix_q = $unsigned(6'b100000);

    // redist6_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_2(DELAY,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist6_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= $unsigned(vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // redist5_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist5_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,81)@2
    assign vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q = {redist6_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q, redist5_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q, vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q, vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q, vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q, vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // redist3_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist3_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix(COMPARE,83)@3
    assign vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_a = {2'b00, maxCount_uid11_block_rsrvd_fix_q};
    assign vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_b = {2'b00, redist3_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q};
    assign vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_o = $unsigned(vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_a) - $unsigned(vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_b);
    assign vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_c[0] = vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_o[7];

    // vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,85)@3
    assign vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    always @(vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_s or redist3_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q or maxCount_uid11_block_rsrvd_fix_q)
    begin
        unique case (vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q = redist3_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
            1'b1 : vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q = maxCount_uid11_block_rsrvd_fix_q;
            default : vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q = 6'b0;
        endcase
    end

    // msbIn_uid13_block_rsrvd_fix(CONSTANT,12)
    assign msbIn_uid13_block_rsrvd_fix_q = $unsigned(8'b10011110);

    // expPreRnd_uid14_block_rsrvd_fix(SUB,13)@3 + 1
    assign expPreRnd_uid14_block_rsrvd_fix_a = {1'b0, msbIn_uid13_block_rsrvd_fix_q};
    assign expPreRnd_uid14_block_rsrvd_fix_b = {3'b000, vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expPreRnd_uid14_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expPreRnd_uid14_block_rsrvd_fix_o <= $unsigned(expPreRnd_uid14_block_rsrvd_fix_a) - $unsigned(expPreRnd_uid14_block_rsrvd_fix_b);
        end
    end
    assign expPreRnd_uid14_block_rsrvd_fix_q = expPreRnd_uid14_block_rsrvd_fix_o[8:0];

    // redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_delay_0 <= '0;
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_q <= '0;
        end
        else
        begin
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_delay_0 <= $unsigned(fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b);
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_q <= redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_delay_0;
        end
    end

    // expFracRnd_uid16_block_rsrvd_fix(BITJOIN,15)@4
    assign expFracRnd_uid16_block_rsrvd_fix_q = {expPreRnd_uid14_block_rsrvd_fix_q, redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_2_q};

    // expFracR_uid24_block_rsrvd_fix(ADD,23)@4
    assign expFracR_uid24_block_rsrvd_fix_a = $unsigned({{2{expFracRnd_uid16_block_rsrvd_fix_q[32]}}, expFracRnd_uid16_block_rsrvd_fix_q});
    assign expFracR_uid24_block_rsrvd_fix_b = $unsigned({34'b0000000000000000000000000000000000, rnd_uid22_block_rsrvd_fix_q});
    assign expFracR_uid24_block_rsrvd_fix_o = $unsigned($signed(expFracR_uid24_block_rsrvd_fix_a) + $signed(expFracR_uid24_block_rsrvd_fix_b));
    assign expFracR_uid24_block_rsrvd_fix_q = expFracR_uid24_block_rsrvd_fix_o[33:0];

    // expR_uid26_block_rsrvd_fix(BITSELECT,25)@4
    assign expR_uid26_block_rsrvd_fix_b = $unsigned(expFracR_uid24_block_rsrvd_fix_q[33:24]);

    // redist7_expR_uid26_block_rsrvd_fix_b_1(DELAY,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_expR_uid26_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist7_expR_uid26_block_rsrvd_fix_b_1_q <= $unsigned(expR_uid26_block_rsrvd_fix_b);
        end
    end

    // expR_uid38_block_rsrvd_fix(BITSELECT,37)@5
    assign expR_uid38_block_rsrvd_fix_in = redist7_expR_uid26_block_rsrvd_fix_b_1_q[7:0];
    assign expR_uid38_block_rsrvd_fix_b = expR_uid38_block_rsrvd_fix_in[7:0];

    // ovf_uid29_block_rsrvd_fix(COMPARE,28)@5
    assign ovf_uid29_block_rsrvd_fix_a = $unsigned({{2{redist7_expR_uid26_block_rsrvd_fix_b_1_q[9]}}, redist7_expR_uid26_block_rsrvd_fix_b_1_q});
    assign ovf_uid29_block_rsrvd_fix_b = $unsigned({4'b0000, expInf_uid28_block_rsrvd_fix_q});
    assign ovf_uid29_block_rsrvd_fix_o = $unsigned($signed(ovf_uid29_block_rsrvd_fix_a) - $signed(ovf_uid29_block_rsrvd_fix_b));
    assign ovf_uid29_block_rsrvd_fix_n[0] = ~ (ovf_uid29_block_rsrvd_fix_o[11]);

    // inIsZero_uid12_block_rsrvd_fix(LOGICAL,11)@3 + 1
    assign inIsZero_uid12_block_rsrvd_fix_qi = $unsigned(vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q == maxCount_uid11_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    inIsZero_uid12_block_rsrvd_fix_delay ( .xin(inIsZero_uid12_block_rsrvd_fix_qi), .xout(inIsZero_uid12_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_inIsZero_uid12_block_rsrvd_fix_q_2(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q <= $unsigned(inIsZero_uid12_block_rsrvd_fix_q);
        end
    end

    // udf_uid27_block_rsrvd_fix(COMPARE,26)@5
    assign udf_uid27_block_rsrvd_fix_a = $unsigned({11'b00000000000, GND_q});
    assign udf_uid27_block_rsrvd_fix_b = $unsigned({{2{redist7_expR_uid26_block_rsrvd_fix_b_1_q[9]}}, redist7_expR_uid26_block_rsrvd_fix_b_1_q});
    assign udf_uid27_block_rsrvd_fix_o = $unsigned($signed(udf_uid27_block_rsrvd_fix_a) - $signed(udf_uid27_block_rsrvd_fix_b));
    assign udf_uid27_block_rsrvd_fix_n[0] = ~ (udf_uid27_block_rsrvd_fix_o[11]);

    // udfOrInZero_uid33_block_rsrvd_fix(LOGICAL,32)@5
    assign udfOrInZero_uid33_block_rsrvd_fix_q = udf_uid27_block_rsrvd_fix_n | redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q;

    // excSelector_uid34_block_rsrvd_fix(BITJOIN,33)@5
    assign excSelector_uid34_block_rsrvd_fix_q = {ovf_uid29_block_rsrvd_fix_n, udfOrInZero_uid33_block_rsrvd_fix_q};

    // expRPostExc_uid39_block_rsrvd_fix(MUX,38)@5
    assign expRPostExc_uid39_block_rsrvd_fix_s = excSelector_uid34_block_rsrvd_fix_q;
    always @(expRPostExc_uid39_block_rsrvd_fix_s or expR_uid38_block_rsrvd_fix_b or expZ_uid37_block_rsrvd_fix_q or expInf_uid28_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid39_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid39_block_rsrvd_fix_q = expR_uid38_block_rsrvd_fix_b;
            2'b01 : expRPostExc_uid39_block_rsrvd_fix_q = expZ_uid37_block_rsrvd_fix_q;
            2'b10 : expRPostExc_uid39_block_rsrvd_fix_q = expInf_uid28_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid39_block_rsrvd_fix_q = expInf_uid28_block_rsrvd_fix_q;
            default : expRPostExc_uid39_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // fracZ_uid31_block_rsrvd_fix(CONSTANT,30)
    assign fracZ_uid31_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000000);

    // fracR_uid25_block_rsrvd_fix(BITSELECT,24)@4
    assign fracR_uid25_block_rsrvd_fix_in = expFracR_uid24_block_rsrvd_fix_q[23:0];
    assign fracR_uid25_block_rsrvd_fix_b = fracR_uid25_block_rsrvd_fix_in[23:1];

    // redist8_fracR_uid25_block_rsrvd_fix_b_1(DELAY,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_fracR_uid25_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist8_fracR_uid25_block_rsrvd_fix_b_1_q <= $unsigned(fracR_uid25_block_rsrvd_fix_b);
        end
    end

    // excSelector_uid30_block_rsrvd_fix(LOGICAL,29)@5
    assign excSelector_uid30_block_rsrvd_fix_q = redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q | ovf_uid29_block_rsrvd_fix_n | udf_uid27_block_rsrvd_fix_n;

    // fracRPostExc_uid32_block_rsrvd_fix(MUX,31)@5
    assign fracRPostExc_uid32_block_rsrvd_fix_s = excSelector_uid30_block_rsrvd_fix_q;
    always @(fracRPostExc_uid32_block_rsrvd_fix_s or redist8_fracR_uid25_block_rsrvd_fix_b_1_q or fracZ_uid31_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid32_block_rsrvd_fix_s)
            1'b0 : fracRPostExc_uid32_block_rsrvd_fix_q = redist8_fracR_uid25_block_rsrvd_fix_b_1_q;
            1'b1 : fracRPostExc_uid32_block_rsrvd_fix_q = fracZ_uid31_block_rsrvd_fix_q;
            default : fracRPostExc_uid32_block_rsrvd_fix_q = 23'b0;
        endcase
    end

    // outRes_uid40_block_rsrvd_fix(BITJOIN,39)@5
    assign outRes_uid40_block_rsrvd_fix_q = {redist11_signX_uid6_block_rsrvd_fix_b_5_q, expRPostExc_uid39_block_rsrvd_fix_q, fracRPostExc_uid32_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@5
    assign out_primWireOut = outRes_uid40_block_rsrvd_fix_q;

endmodule
