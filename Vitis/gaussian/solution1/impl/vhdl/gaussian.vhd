-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gaussian is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    c_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    A_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_we0 : OUT STD_LOGIC;
    A_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    A_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
    A_ce1 : OUT STD_LOGIC;
    A_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of gaussian is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "gaussian_gaussian,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.349000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=816,HLS_SYN_LUT=596,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv5_11 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_const_lv5_13 : STD_LOGIC_VECTOR (4 downto 0) := "10011";
    constant ap_const_lv9_13 : STD_LOGIC_VECTOR (8 downto 0) := "000010011";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal j_1_reg_214 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal idx_load_reg_222 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln10_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mul_ln10_fu_129_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal mul_ln10_reg_233 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln18_fu_186_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln18_reg_238 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal c_load_reg_243 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start : STD_LOGIC;
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_done : STD_LOGIC;
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_idle : STD_LOGIC;
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_ready : STD_LOGIC;
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_ce0 : STD_LOGIC;
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_we0 : STD_LOGIC;
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_address1 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_ce1 : STD_LOGIC;
    signal grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln10_fu_120_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal idx_fu_54 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln10_1_fu_141_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_fu_58 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln10_fu_135_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvars_iv1_fu_62 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln10_2_fu_147_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul_ln10_fu_129_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul_ln10_fu_129_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_fu_175_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_fu_168_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln18_fu_182_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal mul_ln10_fu_129_p00 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component gaussian_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        zext_ln10_1 : IN STD_LOGIC_VECTOR (4 downto 0);
        bound : IN STD_LOGIC_VECTOR (8 downto 0);
        A_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        A_ce0 : OUT STD_LOGIC;
        A_we0 : OUT STD_LOGIC;
        A_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        A_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
        A_ce1 : OUT STD_LOGIC;
        A_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        add_ln18 : IN STD_LOGIC_VECTOR (8 downto 0);
        c_load : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component gaussian_mul_5ns_6ns_9_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        dout : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;



begin
    grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79 : component gaussian_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start,
        ap_done => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_done,
        ap_idle => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_idle,
        ap_ready => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_ready,
        zext_ln10_1 => j_1_reg_214,
        bound => mul_ln10_reg_233,
        A_address0 => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_address0,
        A_ce0 => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_ce0,
        A_we0 => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_we0,
        A_d0 => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_d0,
        A_q0 => A_q0,
        A_address1 => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_address1,
        A_ce1 => grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_ce1,
        A_q1 => A_q1,
        add_ln18 => add_ln18_reg_238,
        c_load => c_load_reg_243);

    mul_5ns_6ns_9_1_1_U8 : component gaussian_mul_5ns_6ns_9_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 5,
        din1_WIDTH => 6,
        dout_WIDTH => 9)
    port map (
        din0 => mul_ln10_fu_129_p0,
        din1 => mul_ln10_fu_129_p1,
        dout => mul_ln10_fu_129_p2);





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


    grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_ready = ap_const_logic_1)) then 
                    grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    idx_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                idx_fu_54 <= ap_const_lv5_1;
            elsif (((icmp_ln10_fu_108_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                idx_fu_54 <= add_ln10_1_fu_141_p2;
            end if; 
        end if;
    end process;

    indvars_iv1_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvars_iv1_fu_62 <= ap_const_lv5_11;
            elsif (((icmp_ln10_fu_108_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvars_iv1_fu_62 <= add_ln10_2_fu_147_p2;
            end if; 
        end if;
    end process;

    j_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_fu_58 <= ap_const_lv5_2;
            elsif (((icmp_ln10_fu_108_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_fu_58 <= add_ln10_fu_135_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    add_ln18_reg_238(8 downto 2) <= add_ln18_fu_186_p2(8 downto 2);
                c_load_reg_243 <= c_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln10_fu_108_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                idx_load_reg_222 <= idx_fu_54;
                mul_ln10_reg_233 <= mul_ln10_fu_129_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                j_1_reg_214 <= j_fu_58;
            end if;
        end if;
    end process;
    add_ln18_reg_238(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln10_fu_108_p2, grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_done, ap_CS_fsm_state4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln10_fu_108_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    A_address0 <= grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_address0;
    A_address1 <= grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_address1;
    A_ce0 <= grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_ce0;
    A_ce1 <= grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_ce1;
    A_d0 <= grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_d0;
    A_we0 <= grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_A_we0;
    add_ln10_1_fu_141_p2 <= std_logic_vector(unsigned(idx_fu_54) + unsigned(ap_const_lv5_1));
    add_ln10_2_fu_147_p2 <= std_logic_vector(unsigned(indvars_iv1_fu_62) + unsigned(ap_const_lv5_1F));
    add_ln10_fu_135_p2 <= std_logic_vector(unsigned(j_fu_58) + unsigned(ap_const_lv5_1));
    add_ln18_fu_186_p2 <= std_logic_vector(unsigned(tmp_fu_168_p3) + unsigned(zext_ln18_fu_182_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

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

    ap_ST_fsm_state4_blk_assign_proc : process(grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_done)
    begin
        if ((grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln10_fu_108_p2)
    begin
        if (((icmp_ln10_fu_108_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln10_fu_108_p2)
    begin
        if (((icmp_ln10_fu_108_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_address0 <= zext_ln10_fu_120_p1(5 - 1 downto 0);

    c_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start <= grp_gaussian_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_14_3_fu_79_ap_start_reg;
    icmp_ln10_fu_108_p2 <= "1" when (j_fu_58 = ap_const_lv5_13) else "0";
    mul_ln10_fu_129_p0 <= mul_ln10_fu_129_p00(5 - 1 downto 0);
    mul_ln10_fu_129_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(indvars_iv1_fu_62),9));
    mul_ln10_fu_129_p1 <= ap_const_lv9_13(6 - 1 downto 0);
    tmp_1_fu_175_p3 <= (idx_load_reg_222 & ap_const_lv2_0);
    tmp_fu_168_p3 <= (idx_load_reg_222 & ap_const_lv4_0);
    zext_ln10_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(idx_fu_54),64));
    zext_ln18_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_175_p3),9));
end behav;
