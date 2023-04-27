-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity atax is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    A_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
    A_ce1 : OUT STD_LOGIC;
    A_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    x_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    x_ce0 : OUT STD_LOGIC;
    x_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    x_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    x_ce1 : OUT STD_LOGIC;
    x_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    y_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    y_ce0 : OUT STD_LOGIC;
    y_we0 : OUT STD_LOGIC;
    y_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    y_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    y_ce1 : OUT STD_LOGIC;
    y_we1 : OUT STD_LOGIC;
    y_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    tmp_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    tmp_ce0 : OUT STD_LOGIC;
    tmp_we0 : OUT STD_LOGIC;
    tmp_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    tmp_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of atax is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "atax_atax,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.349000,HLS_SYN_LAT=693,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=12361,HLS_SYN_LUT=2411,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
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
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal x_load_reg_299 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal x_load_1_reg_304 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_2_reg_319 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal x_load_3_reg_324 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_4_reg_339 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal x_load_5_reg_344 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_6_reg_359 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal x_load_7_reg_364 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_8_reg_379 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal x_load_9_reg_384 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_10_reg_399 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal x_load_11_reg_404 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_12_reg_419 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal x_load_13_reg_424 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_14_reg_439 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal x_load_15_reg_444 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_16_reg_459 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal x_load_17_reg_464 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_load_18_reg_479 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal x_load_19_reg_484 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_idle : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_ready : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce0 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we0 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address1 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce1 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we1 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce0 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address1 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce1 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_ce0 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_we0 : STD_LOGIC;
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);
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
    signal ap_ce_reg : STD_LOGIC;

    component atax_atax_Pipeline_VITIS_LOOP_14_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        y_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        y_ce0 : OUT STD_LOGIC;
        y_we0 : OUT STD_LOGIC;
        y_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        y_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        y_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
        y_ce1 : OUT STD_LOGIC;
        y_we1 : OUT STD_LOGIC;
        y_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        y_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        A_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        A_ce0 : OUT STD_LOGIC;
        A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        A_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
        A_ce1 : OUT STD_LOGIC;
        A_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        tmp_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        tmp_ce0 : OUT STD_LOGIC;
        tmp_we0 : OUT STD_LOGIC;
        tmp_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        tmp_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_1 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_2 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_3 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_4 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_5 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_6 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_7 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_8 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_9 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_10 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_11 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_12 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_13 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_14 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_15 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_16 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_17 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_18 : IN STD_LOGIC_VECTOR (31 downto 0);
        x_load_19 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257 : component atax_atax_Pipeline_VITIS_LOOP_14_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start,
        ap_done => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done,
        ap_idle => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_idle,
        ap_ready => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_ready,
        y_address0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address0,
        y_ce0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce0,
        y_we0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we0,
        y_d0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d0,
        y_q0 => y_q0,
        y_address1 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address1,
        y_ce1 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce1,
        y_we1 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we1,
        y_d1 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d1,
        y_q1 => y_q1,
        A_address0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address0,
        A_ce0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce0,
        A_q0 => A_q0,
        A_address1 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address1,
        A_ce1 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce1,
        A_q1 => A_q1,
        tmp_address0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_address0,
        tmp_ce0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_ce0,
        tmp_we0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_we0,
        tmp_d0 => grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_d0,
        tmp_q0 => tmp_q0,
        x_load => x_load_reg_299,
        x_load_1 => x_load_1_reg_304,
        x_load_2 => x_load_2_reg_319,
        x_load_3 => x_load_3_reg_324,
        x_load_4 => x_load_4_reg_339,
        x_load_5 => x_load_5_reg_344,
        x_load_6 => x_load_6_reg_359,
        x_load_7 => x_load_7_reg_364,
        x_load_8 => x_load_8_reg_379,
        x_load_9 => x_load_9_reg_384,
        x_load_10 => x_load_10_reg_399,
        x_load_11 => x_load_11_reg_404,
        x_load_12 => x_load_12_reg_419,
        x_load_13 => x_load_13_reg_424,
        x_load_14 => x_load_14_reg_439,
        x_load_15 => x_load_15_reg_444,
        x_load_16 => x_load_16_reg_459,
        x_load_17 => x_load_17_reg_464,
        x_load_18 => x_load_18_reg_479,
        x_load_19 => x_load_19_reg_484);





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


    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_ready = ap_const_logic_1)) then 
                    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                x_load_10_reg_399 <= x_q1;
                x_load_11_reg_404 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                x_load_12_reg_419 <= x_q1;
                x_load_13_reg_424 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                x_load_14_reg_439 <= x_q1;
                x_load_15_reg_444 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                x_load_16_reg_459 <= x_q1;
                x_load_17_reg_464 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                x_load_18_reg_479 <= x_q1;
                x_load_19_reg_484 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                x_load_1_reg_304 <= x_q0;
                x_load_reg_299 <= x_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                x_load_2_reg_319 <= x_q1;
                x_load_3_reg_324 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                x_load_4_reg_339 <= x_q1;
                x_load_5_reg_344 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                x_load_6_reg_359 <= x_q1;
                x_load_7_reg_364 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                x_load_8_reg_379 <= x_q1;
                x_load_9_reg_384 <= x_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done, ap_CS_fsm_state12)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
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
                if (((ap_const_logic_1 = ap_CS_fsm_state12) and (grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state12;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    A_address0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address0;
    A_address1 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address1;
    A_ce0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce0;
    A_ce1 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce1;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
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

    ap_ST_fsm_state12_blk_assign_proc : process(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done)
    begin
        if ((grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state12_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state12_blk <= ap_const_logic_0;
        end if; 
    end process;


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

    ap_done_assign_proc : process(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= ap_const_lv32_14;
    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg;
    tmp_address0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_address0;
    tmp_ce0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_ce0;
    tmp_d0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_d0;
    tmp_we0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_we0;

    x_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            x_address0 <= ap_const_lv64_13(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            x_address0 <= ap_const_lv64_11(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            x_address0 <= ap_const_lv64_F(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            x_address0 <= ap_const_lv64_D(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            x_address0 <= ap_const_lv64_B(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            x_address0 <= ap_const_lv64_9(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            x_address0 <= ap_const_lv64_7(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            x_address0 <= ap_const_lv64_5(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            x_address0 <= ap_const_lv64_3(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            x_address0 <= ap_const_lv64_1(5 - 1 downto 0);
        else 
            x_address0 <= "XXXXX";
        end if; 
    end process;


    x_address1_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            x_address1 <= ap_const_lv64_12(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            x_address1 <= ap_const_lv64_10(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            x_address1 <= ap_const_lv64_E(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            x_address1 <= ap_const_lv64_C(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            x_address1 <= ap_const_lv64_A(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            x_address1 <= ap_const_lv64_8(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            x_address1 <= ap_const_lv64_6(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            x_address1 <= ap_const_lv64_4(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            x_address1 <= ap_const_lv64_2(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            x_address1 <= ap_const_lv64_0(5 - 1 downto 0);
        else 
            x_address1 <= "XXXXX";
        end if; 
    end process;


    x_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            x_ce0 <= ap_const_logic_1;
        else 
            x_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    x_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            x_ce1 <= ap_const_logic_1;
        else 
            x_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    y_address0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address0;
    y_address1 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address1;
    y_ce0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce0;
    y_ce1 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce1;
    y_d0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d0;
    y_d1 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d1;
    y_we0 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we0;
    y_we1 <= grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we1;
end behav;
