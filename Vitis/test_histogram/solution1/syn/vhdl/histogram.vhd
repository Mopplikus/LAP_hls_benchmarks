-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity histogram is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    feature_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    feature_ce0 : OUT STD_LOGIC;
    feature_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    weight_ce0 : OUT STD_LOGIC;
    weight_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    hist_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    hist_ce0 : OUT STD_LOGIC;
    hist_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    n : IN STD_LOGIC_VECTOR (31 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of histogram is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "histogram_histogram,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck24-ubva530-2LV-c,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.456000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=0,HLS_SYN_FF=733,HLS_SYN_LUT=815,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal or_ln17_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln17_reg_127 : STD_LOGIC_VECTOR (0 downto 0);
    signal hist_local_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal hist_local_ce0 : STD_LOGIC;
    signal hist_local_we0 : STD_LOGIC;
    signal hist_local_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist_local_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_done : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_idle : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_ready : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_ce0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_ce0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_we0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_histogram_Pipeline_LOOP_I_fu_66_ap_start : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_ap_done : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_ap_idle : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_ap_ready : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_feature_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_histogram_Pipeline_LOOP_I_fu_66_feature_ce0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_weight_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_histogram_Pipeline_LOOP_I_fu_66_weight_ce0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_ce0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_we0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_histogram_Pipeline_LOOP_END_fu_78_ap_start : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_END_fu_78_ap_done : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_END_fu_78_ap_idle : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_END_fu_78_ap_ready : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_ce0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_END_fu_78_out_r_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_histogram_Pipeline_LOOP_END_fu_78_out_r_ce0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_END_fu_78_out_r_we0 : STD_LOGIC;
    signal grp_histogram_Pipeline_LOOP_END_fu_78_out_r_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_histogram_Pipeline_LOOP_I_fu_66_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_histogram_Pipeline_LOOP_END_fu_78_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal bitcast_ln17_fu_85_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_89_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln17_fu_99_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln17_2_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln17_fu_103_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component histogram_histogram_Pipeline_LOOP_INIT IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        hist_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        hist_ce0 : OUT STD_LOGIC;
        hist_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        hist_local_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        hist_local_ce0 : OUT STD_LOGIC;
        hist_local_we0 : OUT STD_LOGIC;
        hist_local_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component histogram_histogram_Pipeline_LOOP_I IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        or_ln17_1 : IN STD_LOGIC_VECTOR (0 downto 0);
        n : IN STD_LOGIC_VECTOR (31 downto 0);
        feature_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        feature_ce0 : OUT STD_LOGIC;
        feature_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        weight_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        weight_ce0 : OUT STD_LOGIC;
        weight_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        hist_local_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        hist_local_ce0 : OUT STD_LOGIC;
        hist_local_we0 : OUT STD_LOGIC;
        hist_local_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        hist_local_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component histogram_histogram_Pipeline_LOOP_END IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        hist_local_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        hist_local_ce0 : OUT STD_LOGIC;
        hist_local_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        out_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        out_r_ce0 : OUT STD_LOGIC;
        out_r_we0 : OUT STD_LOGIC;
        out_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component histogram_hist_local_RAM_AUTO_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    hist_local_U : component histogram_hist_local_RAM_AUTO_1R1W
    generic map (
        DataWidth => 32,
        AddressRange => 100,
        AddressWidth => 7)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => hist_local_address0,
        ce0 => hist_local_ce0,
        we0 => hist_local_we0,
        d0 => hist_local_d0,
        q0 => hist_local_q0);

    grp_histogram_Pipeline_LOOP_INIT_fu_58 : component histogram_histogram_Pipeline_LOOP_INIT
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start,
        ap_done => grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_done,
        ap_idle => grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_idle,
        ap_ready => grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_ready,
        hist_address0 => grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_address0,
        hist_ce0 => grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_ce0,
        hist_q0 => hist_q0,
        hist_local_address0 => grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_address0,
        hist_local_ce0 => grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_ce0,
        hist_local_we0 => grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_we0,
        hist_local_d0 => grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_d0);

    grp_histogram_Pipeline_LOOP_I_fu_66 : component histogram_histogram_Pipeline_LOOP_I
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_histogram_Pipeline_LOOP_I_fu_66_ap_start,
        ap_done => grp_histogram_Pipeline_LOOP_I_fu_66_ap_done,
        ap_idle => grp_histogram_Pipeline_LOOP_I_fu_66_ap_idle,
        ap_ready => grp_histogram_Pipeline_LOOP_I_fu_66_ap_ready,
        or_ln17_1 => or_ln17_reg_127,
        n => n,
        feature_address0 => grp_histogram_Pipeline_LOOP_I_fu_66_feature_address0,
        feature_ce0 => grp_histogram_Pipeline_LOOP_I_fu_66_feature_ce0,
        feature_q0 => feature_q0,
        weight_address0 => grp_histogram_Pipeline_LOOP_I_fu_66_weight_address0,
        weight_ce0 => grp_histogram_Pipeline_LOOP_I_fu_66_weight_ce0,
        weight_q0 => weight_q0,
        hist_local_address0 => grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_address0,
        hist_local_ce0 => grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_ce0,
        hist_local_we0 => grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_we0,
        hist_local_d0 => grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_d0,
        hist_local_q0 => hist_local_q0);

    grp_histogram_Pipeline_LOOP_END_fu_78 : component histogram_histogram_Pipeline_LOOP_END
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_histogram_Pipeline_LOOP_END_fu_78_ap_start,
        ap_done => grp_histogram_Pipeline_LOOP_END_fu_78_ap_done,
        ap_idle => grp_histogram_Pipeline_LOOP_END_fu_78_ap_idle,
        ap_ready => grp_histogram_Pipeline_LOOP_END_fu_78_ap_ready,
        hist_local_address0 => grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_address0,
        hist_local_ce0 => grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_ce0,
        hist_local_q0 => hist_local_q0,
        out_r_address0 => grp_histogram_Pipeline_LOOP_END_fu_78_out_r_address0,
        out_r_ce0 => grp_histogram_Pipeline_LOOP_END_fu_78_out_r_ce0,
        out_r_we0 => grp_histogram_Pipeline_LOOP_END_fu_78_out_r_we0,
        out_r_d0 => grp_histogram_Pipeline_LOOP_END_fu_78_out_r_d0);





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


    grp_histogram_Pipeline_LOOP_END_fu_78_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_histogram_Pipeline_LOOP_END_fu_78_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_histogram_Pipeline_LOOP_END_fu_78_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_histogram_Pipeline_LOOP_END_fu_78_ap_ready = ap_const_logic_1)) then 
                    grp_histogram_Pipeline_LOOP_END_fu_78_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_ready = ap_const_logic_1)) then 
                    grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_histogram_Pipeline_LOOP_I_fu_66_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_histogram_Pipeline_LOOP_I_fu_66_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_histogram_Pipeline_LOOP_I_fu_66_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_histogram_Pipeline_LOOP_I_fu_66_ap_ready = ap_const_logic_1)) then 
                    grp_histogram_Pipeline_LOOP_I_fu_66_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                or_ln17_reg_127 <= or_ln17_fu_115_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_done, grp_histogram_Pipeline_LOOP_I_fu_66_ap_done, grp_histogram_Pipeline_LOOP_END_fu_78_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_histogram_Pipeline_LOOP_I_fu_66_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_histogram_Pipeline_LOOP_END_fu_78_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_done)
    begin
        if ((grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_histogram_Pipeline_LOOP_I_fu_66_ap_done)
    begin
        if ((grp_histogram_Pipeline_LOOP_I_fu_66_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(grp_histogram_Pipeline_LOOP_END_fu_78_ap_done)
    begin
        if ((grp_histogram_Pipeline_LOOP_END_fu_78_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(grp_histogram_Pipeline_LOOP_END_fu_78_ap_done, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_histogram_Pipeline_LOOP_END_fu_78_ap_done = ap_const_logic_1))) then 
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


    ap_ready_assign_proc : process(grp_histogram_Pipeline_LOOP_END_fu_78_ap_done, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_histogram_Pipeline_LOOP_END_fu_78_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln17_fu_85_p1 <= n;
    feature_address0 <= grp_histogram_Pipeline_LOOP_I_fu_66_feature_address0;
    feature_ce0 <= grp_histogram_Pipeline_LOOP_I_fu_66_feature_ce0;
    grp_histogram_Pipeline_LOOP_END_fu_78_ap_start <= grp_histogram_Pipeline_LOOP_END_fu_78_ap_start_reg;
    grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start <= grp_histogram_Pipeline_LOOP_INIT_fu_58_ap_start_reg;
    grp_histogram_Pipeline_LOOP_I_fu_66_ap_start <= grp_histogram_Pipeline_LOOP_I_fu_66_ap_start_reg;
    hist_address0 <= grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_address0;
    hist_ce0 <= grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_ce0;

    hist_local_address0_assign_proc : process(grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_address0, grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_address0, grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_address0, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            hist_local_address0 <= grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_local_address0 <= grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_local_address0 <= grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_address0;
        else 
            hist_local_address0 <= "XXXXXXX";
        end if; 
    end process;


    hist_local_ce0_assign_proc : process(grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_ce0, grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_ce0, grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_ce0, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            hist_local_ce0 <= grp_histogram_Pipeline_LOOP_END_fu_78_hist_local_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_local_ce0 <= grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_local_ce0 <= grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_ce0;
        else 
            hist_local_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    hist_local_d0_assign_proc : process(grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_d0, grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_d0, ap_CS_fsm_state2, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_local_d0 <= grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_d0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_local_d0 <= grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_d0;
        else 
            hist_local_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    hist_local_we0_assign_proc : process(grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_we0, grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_we0, ap_CS_fsm_state2, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_local_we0 <= grp_histogram_Pipeline_LOOP_I_fu_66_hist_local_we0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_local_we0 <= grp_histogram_Pipeline_LOOP_INIT_fu_58_hist_local_we0;
        else 
            hist_local_we0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln17_2_fu_109_p2 <= "1" when (trunc_ln17_fu_99_p1 = ap_const_lv23_0) else "0";
    icmp_ln17_fu_103_p2 <= "0" when (tmp_1_fu_89_p4 = ap_const_lv8_FF) else "1";
    or_ln17_fu_115_p2 <= (icmp_ln17_fu_103_p2 or icmp_ln17_2_fu_109_p2);
    out_r_address0 <= grp_histogram_Pipeline_LOOP_END_fu_78_out_r_address0;
    out_r_ce0 <= grp_histogram_Pipeline_LOOP_END_fu_78_out_r_ce0;
    out_r_d0 <= grp_histogram_Pipeline_LOOP_END_fu_78_out_r_d0;
    out_r_we0 <= grp_histogram_Pipeline_LOOP_END_fu_78_out_r_we0;
    tmp_1_fu_89_p4 <= bitcast_ln17_fu_85_p1(30 downto 23);
    trunc_ln17_fu_99_p1 <= bitcast_ln17_fu_85_p1(23 - 1 downto 0);
    weight_address0 <= grp_histogram_Pipeline_LOOP_I_fu_66_weight_address0;
    weight_ce0 <= grp_histogram_Pipeline_LOOP_I_fu_66_weight_ce0;
end behav;
