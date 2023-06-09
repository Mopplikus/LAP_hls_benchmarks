-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matvec is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    M_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    M_ce0 : OUT STD_LOGIC;
    M_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    M_ce1 : OUT STD_LOGIC;
    M_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    V_ce0 : OUT STD_LOGIC;
    V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    V_ce1 : OUT STD_LOGIC;
    V_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    Out_r_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    Out_r_ce0 : OUT STD_LOGIC;
    Out_r_we0 : OUT STD_LOGIC;
    Out_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of matvec is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matvec_matvec,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.349000,HLS_SYN_LAT=483,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=9644,HLS_SYN_LUT=2015,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (17 downto 0) := "000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (17 downto 0) := "000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (17 downto 0) := "000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (17 downto 0) := "000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (17 downto 0) := "000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (17 downto 0) := "000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (17 downto 0) := "000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (17 downto 0) := "000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (17 downto 0) := "000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (17 downto 0) := "001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (17 downto 0) := "010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (17 downto 0) := "100000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv64_9 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001001";
    constant ap_const_lv64_A : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001010";
    constant ap_const_lv64_B : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001011";
    constant ap_const_lv64_C : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001100";
    constant ap_const_lv64_D : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001101";
    constant ap_const_lv64_E : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001110";
    constant ap_const_lv64_F : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001111";
    constant ap_const_lv64_10 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010000";
    constant ap_const_lv64_11 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010001";
    constant ap_const_lv64_12 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010010";
    constant ap_const_lv64_13 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010011";
    constant ap_const_lv64_14 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010100";
    constant ap_const_lv64_15 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010101";
    constant ap_const_lv64_16 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010110";
    constant ap_const_lv64_17 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010111";
    constant ap_const_lv64_18 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011000";
    constant ap_const_lv64_19 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011001";
    constant ap_const_lv64_1A : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011010";
    constant ap_const_lv64_1B : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011011";
    constant ap_const_lv64_1C : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011100";
    constant ap_const_lv64_1D : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011101";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal V_load_reg_427 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal V_load_1_reg_432 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_2_reg_447 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal V_load_3_reg_452 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_4_reg_467 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal V_load_5_reg_472 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_6_reg_487 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal V_load_7_reg_492 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_8_reg_507 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal V_load_9_reg_512 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_10_reg_527 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal V_load_11_reg_532 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_12_reg_547 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal V_load_13_reg_552 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_14_reg_567 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal V_load_15_reg_572 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_16_reg_587 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal V_load_17_reg_592 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_18_reg_607 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal V_load_19_reg_612 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_20_reg_627 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal V_load_21_reg_632 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_22_reg_647 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal V_load_23_reg_652 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_24_reg_667 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal V_load_25_reg_672 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_26_reg_687 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal V_load_27_reg_692 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_load_28_reg_707 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal V_load_29_reg_712 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_done : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_idle : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_ready : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_ce0 : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_ce1 : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_ce0 : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_we0 : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_add_lcssa_phi_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_add_lcssa_phi_out_ap_vld : STD_LOGIC;
    signal grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ST_fsm_state11_blk : STD_LOGIC;
    signal ap_ST_fsm_state12_blk : STD_LOGIC;
    signal ap_ST_fsm_state13_blk : STD_LOGIC;
    signal ap_ST_fsm_state14_blk : STD_LOGIC;
    signal ap_ST_fsm_state15_blk : STD_LOGIC;
    signal ap_ST_fsm_state16_blk : STD_LOGIC;
    signal ap_ST_fsm_state17_blk : STD_LOGIC;
    signal ap_ST_fsm_state18_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component matvec_matvec_Pipeline_VITIS_LOOP_7_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        M_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        M_ce0 : OUT STD_LOGIC;
        M_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        M_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        M_ce1 : OUT STD_LOGIC;
        M_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_1 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_2 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_3 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_4 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_5 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_6 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_7 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_8 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_9 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_10 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_11 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_12 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_13 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_14 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_15 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_16 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_17 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_18 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_19 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_20 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_21 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_22 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_23 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_24 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_25 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_26 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_27 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_28 : IN STD_LOGIC_VECTOR (31 downto 0);
        V_load_29 : IN STD_LOGIC_VECTOR (31 downto 0);
        Out_r_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        Out_r_ce0 : OUT STD_LOGIC;
        Out_r_we0 : OUT STD_LOGIC;
        Out_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        add_lcssa_phi_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        add_lcssa_phi_out_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367 : component matvec_matvec_Pipeline_VITIS_LOOP_7_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start,
        ap_done => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_done,
        ap_idle => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_idle,
        ap_ready => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_ready,
        M_address0 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_address0,
        M_ce0 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_ce0,
        M_q0 => M_q0,
        M_address1 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_address1,
        M_ce1 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_ce1,
        M_q1 => M_q1,
        V_load => V_load_reg_427,
        V_load_1 => V_load_1_reg_432,
        V_load_2 => V_load_2_reg_447,
        V_load_3 => V_load_3_reg_452,
        V_load_4 => V_load_4_reg_467,
        V_load_5 => V_load_5_reg_472,
        V_load_6 => V_load_6_reg_487,
        V_load_7 => V_load_7_reg_492,
        V_load_8 => V_load_8_reg_507,
        V_load_9 => V_load_9_reg_512,
        V_load_10 => V_load_10_reg_527,
        V_load_11 => V_load_11_reg_532,
        V_load_12 => V_load_12_reg_547,
        V_load_13 => V_load_13_reg_552,
        V_load_14 => V_load_14_reg_567,
        V_load_15 => V_load_15_reg_572,
        V_load_16 => V_load_16_reg_587,
        V_load_17 => V_load_17_reg_592,
        V_load_18 => V_load_18_reg_607,
        V_load_19 => V_load_19_reg_612,
        V_load_20 => V_load_20_reg_627,
        V_load_21 => V_load_21_reg_632,
        V_load_22 => V_load_22_reg_647,
        V_load_23 => V_load_23_reg_652,
        V_load_24 => V_load_24_reg_667,
        V_load_25 => V_load_25_reg_672,
        V_load_26 => V_load_26_reg_687,
        V_load_27 => V_load_27_reg_692,
        V_load_28 => V_load_28_reg_707,
        V_load_29 => V_load_29_reg_712,
        Out_r_address0 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_address0,
        Out_r_ce0 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_ce0,
        Out_r_we0 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_we0,
        Out_r_d0 => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_d0,
        add_lcssa_phi_out => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_add_lcssa_phi_out,
        add_lcssa_phi_out_ap_vld => grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_add_lcssa_phi_out_ap_vld);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                    grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_ready = ap_const_logic_1)) then 
                    grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                V_load_10_reg_527 <= V_q1;
                V_load_11_reg_532 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                V_load_12_reg_547 <= V_q1;
                V_load_13_reg_552 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                V_load_14_reg_567 <= V_q1;
                V_load_15_reg_572 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                V_load_16_reg_587 <= V_q1;
                V_load_17_reg_592 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                V_load_18_reg_607 <= V_q1;
                V_load_19_reg_612 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                V_load_1_reg_432 <= V_q0;
                V_load_reg_427 <= V_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                V_load_20_reg_627 <= V_q1;
                V_load_21_reg_632 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then
                V_load_22_reg_647 <= V_q1;
                V_load_23_reg_652 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then
                V_load_24_reg_667 <= V_q1;
                V_load_25_reg_672 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state15)) then
                V_load_26_reg_687 <= V_q1;
                V_load_27_reg_692 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state16)) then
                V_load_28_reg_707 <= V_q1;
                V_load_29_reg_712 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                V_load_2_reg_447 <= V_q1;
                V_load_3_reg_452 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                V_load_4_reg_467 <= V_q1;
                V_load_5_reg_472 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                V_load_6_reg_487 <= V_q1;
                V_load_7_reg_492 <= V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                V_load_8_reg_507 <= V_q1;
                V_load_9_reg_512 <= V_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_done, ap_CS_fsm_state17)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                if (((grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state17))) then
                    ap_NS_fsm <= ap_ST_fsm_state18;
                else
                    ap_NS_fsm <= ap_ST_fsm_state17;
                end if;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    M_address0 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_address0;
    M_address1 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_address1;
    M_ce0 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_ce0;
    M_ce1 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_M_ce1;
    Out_r_address0 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_address0;
    Out_r_ce0 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_ce0;
    Out_r_d0 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_d0;
    Out_r_we0 <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_Out_r_we0;

    V_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state12, ap_CS_fsm_state13, ap_CS_fsm_state14, ap_CS_fsm_state15)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            V_address0 <= ap_const_lv64_1D(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            V_address0 <= ap_const_lv64_1B(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            V_address0 <= ap_const_lv64_19(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            V_address0 <= ap_const_lv64_17(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            V_address0 <= ap_const_lv64_15(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            V_address0 <= ap_const_lv64_13(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            V_address0 <= ap_const_lv64_11(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            V_address0 <= ap_const_lv64_F(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            V_address0 <= ap_const_lv64_D(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            V_address0 <= ap_const_lv64_B(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            V_address0 <= ap_const_lv64_9(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            V_address0 <= ap_const_lv64_7(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            V_address0 <= ap_const_lv64_5(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            V_address0 <= ap_const_lv64_3(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            V_address0 <= ap_const_lv64_1(5 - 1 downto 0);
        else 
            V_address0 <= "XXXXX";
        end if; 
    end process;


    V_address1_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state12, ap_CS_fsm_state13, ap_CS_fsm_state14, ap_CS_fsm_state15)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            V_address1 <= ap_const_lv64_1C(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            V_address1 <= ap_const_lv64_1A(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            V_address1 <= ap_const_lv64_18(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            V_address1 <= ap_const_lv64_16(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            V_address1 <= ap_const_lv64_14(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            V_address1 <= ap_const_lv64_12(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            V_address1 <= ap_const_lv64_10(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            V_address1 <= ap_const_lv64_E(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            V_address1 <= ap_const_lv64_C(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            V_address1 <= ap_const_lv64_A(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            V_address1 <= ap_const_lv64_8(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            V_address1 <= ap_const_lv64_6(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            V_address1 <= ap_const_lv64_4(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            V_address1 <= ap_const_lv64_2(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            V_address1 <= ap_const_lv64_0(5 - 1 downto 0);
        else 
            V_address1 <= "XXXXX";
        end if; 
    end process;


    V_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state12, ap_CS_fsm_state13, ap_CS_fsm_state14, ap_CS_fsm_state15)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state15) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            V_ce0 <= ap_const_logic_1;
        else 
            V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    V_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state12, ap_CS_fsm_state13, ap_CS_fsm_state14, ap_CS_fsm_state15)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state15) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            V_ce1 <= ap_const_logic_1;
        else 
            V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;
    ap_ST_fsm_state11_blk <= ap_const_logic_0;
    ap_ST_fsm_state12_blk <= ap_const_logic_0;
    ap_ST_fsm_state13_blk <= ap_const_logic_0;
    ap_ST_fsm_state14_blk <= ap_const_logic_0;
    ap_ST_fsm_state15_blk <= ap_const_logic_0;
    ap_ST_fsm_state16_blk <= ap_const_logic_0;

    ap_ST_fsm_state17_blk_assign_proc : process(grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_done)
    begin
        if ((grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state17_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state17_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state18_blk <= ap_const_logic_0;

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;
    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_CS_fsm_state18)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state18)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_add_lcssa_phi_out;
    grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start <= grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_367_ap_start_reg;
end behav;
