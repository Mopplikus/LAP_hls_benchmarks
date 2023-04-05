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

// SystemVerilog created from flt_i_sfc_logic_s_c0_in_for_body_examples_c0_enter102_example0_castBlock_typeUFixed_8_0_typeSFloatIEEE_23_8_castModeConvert_3v4ibb21ekleqmgqyg3di063065063663c65c62i65i63o62u65162765d62p602c5861e63ei0w63w65wc3f60uq5ux5gv8yll5gvbyxk5id06uq0cp0ju20cp0jo0ouz
// Created for function/kernel example
// SystemVerilog created on Tue Apr  4 21:14:17 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module example_flt_i_sfc_logic_s_c0_in_for_body00016uq0cp0ju20cp0jo0ouz (
    input wire [7:0] in_0,
    output wire [31:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] maxCount_uid7_block_rsrvd_fix_q;
    wire [0:0] inIsZero_uid8_block_rsrvd_fix_qi;
    reg [0:0] inIsZero_uid8_block_rsrvd_fix_q;
    wire [7:0] msbIn_uid9_block_rsrvd_fix_q;
    wire [8:0] expPreRnd_uid10_block_rsrvd_fix_a;
    wire [8:0] expPreRnd_uid10_block_rsrvd_fix_b;
    logic [8:0] expPreRnd_uid10_block_rsrvd_fix_o;
    wire [8:0] expPreRnd_uid10_block_rsrvd_fix_q;
    wire [15:0] zP_uid11_block_rsrvd_fix_q;
    wire [6:0] fracRU_uid12_block_rsrvd_fix_in;
    wire [6:0] fracRU_uid12_block_rsrvd_fix_b;
    wire [22:0] fracRR_uid13_block_rsrvd_fix_q;
    wire [10:0] udf_uid15_block_rsrvd_fix_a;
    wire [10:0] udf_uid15_block_rsrvd_fix_b;
    logic [10:0] udf_uid15_block_rsrvd_fix_o;
    wire [0:0] udf_uid15_block_rsrvd_fix_n;
    wire [7:0] expInf_uid16_block_rsrvd_fix_q;
    wire [10:0] ovf_uid17_block_rsrvd_fix_a;
    wire [10:0] ovf_uid17_block_rsrvd_fix_b;
    logic [10:0] ovf_uid17_block_rsrvd_fix_o;
    wire [0:0] ovf_uid17_block_rsrvd_fix_n;
    wire [0:0] excSelector_uid18_block_rsrvd_fix_q;
    wire [22:0] fracZ_uid19_block_rsrvd_fix_q;
    wire [0:0] fracRPostExc_uid20_block_rsrvd_fix_s;
    reg [22:0] fracRPostExc_uid20_block_rsrvd_fix_q;
    wire [0:0] udfOrInZero_uid21_block_rsrvd_fix_q;
    wire [1:0] excSelector_uid22_block_rsrvd_fix_q;
    wire [7:0] expZ_uid25_block_rsrvd_fix_q;
    wire [7:0] expR_uid26_block_rsrvd_fix_in;
    wire [7:0] expR_uid26_block_rsrvd_fix_b;
    wire [1:0] expRPostExc_uid27_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid27_block_rsrvd_fix_q;
    wire [31:0] outRes_uid28_block_rsrvd_fix_q;
    wire [0:0] vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [3:0] zs_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [0:0] vCount_uid37_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [7:0] cStage_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [1:0] zs_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [0:0] vCount_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [7:0] cStage_uid47_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [0:0] vCount_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [7:0] cStage_uid54_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [3:0] vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [5:0] vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_a;
    wire [5:0] vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_b;
    logic [5:0] vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_o;
    wire [0:0] vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_c;
    wire [0:0] vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_s;
    reg [3:0] vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    wire [3:0] rVStage_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b;
    wire [5:0] rVStage_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c;
    wire [0:0] rVStage_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b;
    wire [6:0] rVStage_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c;
    reg [3:0] redist0_vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q;
    reg [6:0] redist1_fracRU_uid12_block_rsrvd_fix_b_2_q;
    reg [6:0] redist1_fracRU_uid12_block_rsrvd_fix_b_2_delay_0;
    reg [7:0] redist2_in_0_in_0_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // expInf_uid16_block_rsrvd_fix(CONSTANT,15)
    assign expInf_uid16_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // expZ_uid25_block_rsrvd_fix(CONSTANT,24)
    assign expZ_uid25_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // maxCount_uid7_block_rsrvd_fix(CONSTANT,6)
    assign maxCount_uid7_block_rsrvd_fix_q = $unsigned(4'b1000);

    // vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,31)@0 + 1
    assign vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_qi = $unsigned(in_0 == expZ_uid25_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_delay ( .xin(vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_qi), .xout(vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zs_uid35_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,34)
    assign zs_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q = $unsigned(4'b0000);

    // redist2_in_0_in_0_1(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_in_0_in_0_1_q <= '0;
        end
        else
        begin
            redist2_in_0_in_0_1_q <= $unsigned(in_0);
        end
    end

    // vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,33)@1
    assign vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_s = vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    always @(vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_s or redist2_in_0_in_0_1_q or expZ_uid25_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_s)
            1'b0 : vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q = redist2_in_0_in_0_1_q;
            1'b1 : vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q = expZ_uid25_block_rsrvd_fix_q;
            default : vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,62)@1
    assign rVStage_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q[7:4];
    assign rVStage_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c = vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q[3:0];

    // vCount_uid37_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,36)@1
    assign vCount_uid37_lzcShifterZ1_uid6_block_rsrvd_fix_q = $unsigned(rVStage_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b == zs_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // zs_uid42_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,41)
    assign zs_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q = $unsigned(2'b00);

    // cStage_uid40_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,39)@1
    assign cStage_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q = {rVStage_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c, zs_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q};

    // vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,40)@1
    assign vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_s = vCount_uid37_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    always @(vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_s or vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q or cStage_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_s)
            1'b0 : vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q = vStagei_uid34_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            1'b1 : vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q = cStage_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            default : vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,63)@1
    assign rVStage_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q[7:6];
    assign rVStage_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c = vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q[5:0];

    // vCount_uid44_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,43)@1
    assign vCount_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q = $unsigned(rVStage_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b == zs_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // cStage_uid47_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,46)@1
    assign cStage_uid47_lzcShifterZ1_uid6_block_rsrvd_fix_q = {rVStage_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c, zs_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q};

    // vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,47)@1
    assign vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_s = vCount_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    always @(vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_s or vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q or cStage_uid47_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_s)
            1'b0 : vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q = vStagei_uid41_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            1'b1 : vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q = cStage_uid47_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            default : vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,64)@1
    assign rVStage_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q[7:7];
    assign rVStage_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c = vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q[6:0];

    // vCount_uid51_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,50)@1
    assign vCount_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q = $unsigned(rVStage_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b == GND_q ? 1'b1 : 1'b0);

    // vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,55)@1
    assign vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q = {vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q, vCount_uid37_lzcShifterZ1_uid6_block_rsrvd_fix_q, vCount_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q, vCount_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q};

    // redist0_vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist0_vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q);
        end
    end

    // vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix(COMPARE,57)@2
    assign vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_a = {2'b00, maxCount_uid7_block_rsrvd_fix_q};
    assign vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_b = {2'b00, redist0_vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q};
    assign vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_o = $unsigned(vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_a) - $unsigned(vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_b);
    assign vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_c[0] = vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_o[5];

    // vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,59)@2
    assign vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_s = vCountBig_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_c;
    always @(vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_s or redist0_vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q or maxCount_uid7_block_rsrvd_fix_q)
    begin
        unique case (vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_s)
            1'b0 : vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q = redist0_vCount_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q;
            1'b1 : vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q = maxCount_uid7_block_rsrvd_fix_q;
            default : vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q = 4'b0;
        endcase
    end

    // msbIn_uid9_block_rsrvd_fix(CONSTANT,8)
    assign msbIn_uid9_block_rsrvd_fix_q = $unsigned(8'b10000110);

    // expPreRnd_uid10_block_rsrvd_fix(SUB,9)@2 + 1
    assign expPreRnd_uid10_block_rsrvd_fix_a = {1'b0, msbIn_uid9_block_rsrvd_fix_q};
    assign expPreRnd_uid10_block_rsrvd_fix_b = {5'b00000, vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expPreRnd_uid10_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expPreRnd_uid10_block_rsrvd_fix_o <= $unsigned(expPreRnd_uid10_block_rsrvd_fix_a) - $unsigned(expPreRnd_uid10_block_rsrvd_fix_b);
        end
    end
    assign expPreRnd_uid10_block_rsrvd_fix_q = expPreRnd_uid10_block_rsrvd_fix_o[8:0];

    // expR_uid26_block_rsrvd_fix(BITSELECT,25)@3
    assign expR_uid26_block_rsrvd_fix_in = expPreRnd_uid10_block_rsrvd_fix_q[7:0];
    assign expR_uid26_block_rsrvd_fix_b = expR_uid26_block_rsrvd_fix_in[7:0];

    // ovf_uid17_block_rsrvd_fix(COMPARE,16)@3
    assign ovf_uid17_block_rsrvd_fix_a = $unsigned({{2{expPreRnd_uid10_block_rsrvd_fix_q[8]}}, expPreRnd_uid10_block_rsrvd_fix_q});
    assign ovf_uid17_block_rsrvd_fix_b = $unsigned({3'b000, expInf_uid16_block_rsrvd_fix_q});
    assign ovf_uid17_block_rsrvd_fix_o = $unsigned($signed(ovf_uid17_block_rsrvd_fix_a) - $signed(ovf_uid17_block_rsrvd_fix_b));
    assign ovf_uid17_block_rsrvd_fix_n[0] = ~ (ovf_uid17_block_rsrvd_fix_o[10]);

    // inIsZero_uid8_block_rsrvd_fix(LOGICAL,7)@2 + 1
    assign inIsZero_uid8_block_rsrvd_fix_qi = $unsigned(vCountFinal_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q == maxCount_uid7_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    inIsZero_uid8_block_rsrvd_fix_delay ( .xin(inIsZero_uid8_block_rsrvd_fix_qi), .xout(inIsZero_uid8_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // udf_uid15_block_rsrvd_fix(COMPARE,14)@3
    assign udf_uid15_block_rsrvd_fix_a = $unsigned({10'b0000000000, GND_q});
    assign udf_uid15_block_rsrvd_fix_b = $unsigned({{2{expPreRnd_uid10_block_rsrvd_fix_q[8]}}, expPreRnd_uid10_block_rsrvd_fix_q});
    assign udf_uid15_block_rsrvd_fix_o = $unsigned($signed(udf_uid15_block_rsrvd_fix_a) - $signed(udf_uid15_block_rsrvd_fix_b));
    assign udf_uid15_block_rsrvd_fix_n[0] = ~ (udf_uid15_block_rsrvd_fix_o[10]);

    // udfOrInZero_uid21_block_rsrvd_fix(LOGICAL,20)@3
    assign udfOrInZero_uid21_block_rsrvd_fix_q = udf_uid15_block_rsrvd_fix_n | inIsZero_uid8_block_rsrvd_fix_q;

    // excSelector_uid22_block_rsrvd_fix(BITJOIN,21)@3
    assign excSelector_uid22_block_rsrvd_fix_q = {ovf_uid17_block_rsrvd_fix_n, udfOrInZero_uid21_block_rsrvd_fix_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // expRPostExc_uid27_block_rsrvd_fix(MUX,26)@3
    assign expRPostExc_uid27_block_rsrvd_fix_s = excSelector_uid22_block_rsrvd_fix_q;
    always @(expRPostExc_uid27_block_rsrvd_fix_s or expR_uid26_block_rsrvd_fix_b or expZ_uid25_block_rsrvd_fix_q or expInf_uid16_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid27_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid27_block_rsrvd_fix_q = expR_uid26_block_rsrvd_fix_b;
            2'b01 : expRPostExc_uid27_block_rsrvd_fix_q = expZ_uid25_block_rsrvd_fix_q;
            2'b10 : expRPostExc_uid27_block_rsrvd_fix_q = expInf_uid16_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid27_block_rsrvd_fix_q = expInf_uid16_block_rsrvd_fix_q;
            default : expRPostExc_uid27_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // fracZ_uid19_block_rsrvd_fix(CONSTANT,18)
    assign fracZ_uid19_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000000);

    // cStage_uid54_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,53)@1
    assign cStage_uid54_lzcShifterZ1_uid6_block_rsrvd_fix_q = {rVStage_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c, GND_q};

    // vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,54)@1
    assign vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_s = vCount_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    always @(vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_s or vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q or cStage_uid54_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_s)
            1'b0 : vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q = vStagei_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            1'b1 : vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q = cStage_uid54_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            default : vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // fracRU_uid12_block_rsrvd_fix(BITSELECT,11)@1
    assign fracRU_uid12_block_rsrvd_fix_in = vStagei_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q[6:0];
    assign fracRU_uid12_block_rsrvd_fix_b = fracRU_uid12_block_rsrvd_fix_in[6:0];

    // redist1_fracRU_uid12_block_rsrvd_fix_b_2(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_fracRU_uid12_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist1_fracRU_uid12_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist1_fracRU_uid12_block_rsrvd_fix_b_2_delay_0 <= $unsigned(fracRU_uid12_block_rsrvd_fix_b);
            redist1_fracRU_uid12_block_rsrvd_fix_b_2_q <= redist1_fracRU_uid12_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // zP_uid11_block_rsrvd_fix(CONSTANT,10)
    assign zP_uid11_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // fracRR_uid13_block_rsrvd_fix(BITJOIN,12)@3
    assign fracRR_uid13_block_rsrvd_fix_q = {redist1_fracRU_uid12_block_rsrvd_fix_b_2_q, zP_uid11_block_rsrvd_fix_q};

    // excSelector_uid18_block_rsrvd_fix(LOGICAL,17)@3
    assign excSelector_uid18_block_rsrvd_fix_q = inIsZero_uid8_block_rsrvd_fix_q | ovf_uid17_block_rsrvd_fix_n | udf_uid15_block_rsrvd_fix_n;

    // fracRPostExc_uid20_block_rsrvd_fix(MUX,19)@3
    assign fracRPostExc_uid20_block_rsrvd_fix_s = excSelector_uid18_block_rsrvd_fix_q;
    always @(fracRPostExc_uid20_block_rsrvd_fix_s or fracRR_uid13_block_rsrvd_fix_q or fracZ_uid19_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid20_block_rsrvd_fix_s)
            1'b0 : fracRPostExc_uid20_block_rsrvd_fix_q = fracRR_uid13_block_rsrvd_fix_q;
            1'b1 : fracRPostExc_uid20_block_rsrvd_fix_q = fracZ_uid19_block_rsrvd_fix_q;
            default : fracRPostExc_uid20_block_rsrvd_fix_q = 23'b0;
        endcase
    end

    // outRes_uid28_block_rsrvd_fix(BITJOIN,27)@3
    assign outRes_uid28_block_rsrvd_fix_q = {GND_q, expRPostExc_uid27_block_rsrvd_fix_q, fracRPostExc_uid20_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@3
    assign out_primWireOut = outRes_uid28_block_rsrvd_fix_q;

endmodule
