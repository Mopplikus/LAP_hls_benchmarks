-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity stencil_2d is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    orig_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    orig_ce0 : OUT STD_LOGIC;
    orig_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    orig_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    orig_ce1 : OUT STD_LOGIC;
    orig_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    sol_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    sol_ce0 : OUT STD_LOGIC;
    sol_we0 : OUT STD_LOGIC;
    sol_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    filter_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    filter_ce0 : OUT STD_LOGIC;
    filter_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    filter_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    filter_ce1 : OUT STD_LOGIC;
    filter_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of stencil_2d is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "stencil_2d_stencil_2d,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.627000,HLS_SYN_LAT=3939,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=3242,HLS_SYN_LUT=929,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal filter_load_reg_170 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal filter_load_1_reg_185 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal filter_load_2_reg_190 : STD_LOGIC_VECTOR (31 downto 0);
    signal filter_load_3_reg_205 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal filter_load_4_reg_210 : STD_LOGIC_VECTOR (31 downto 0);
    signal filter_load_5_reg_225 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal filter_load_6_reg_230 : STD_LOGIC_VECTOR (31 downto 0);
    signal filter_load_7_reg_245 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal filter_load_8_reg_250 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_done : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_idle : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_ready : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_ce0 : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_ce1 : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_ce0 : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_we0 : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_add21_lcssa_lcssa_phi_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_add21_lcssa_lcssa_phi_out_ap_vld : STD_LOGIC;
    signal grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        orig_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        orig_ce0 : OUT STD_LOGIC;
        orig_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        orig_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        orig_ce1 : OUT STD_LOGIC;
        orig_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_1 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_2 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_3 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_4 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_5 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_6 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_7 : IN STD_LOGIC_VECTOR (31 downto 0);
        filter_load_8 : IN STD_LOGIC_VECTOR (31 downto 0);
        sol_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        sol_ce0 : OUT STD_LOGIC;
        sol_we0 : OUT STD_LOGIC;
        sol_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        add21_lcssa_lcssa_phi_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        add21_lcssa_lcssa_phi_out_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136 : component stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start,
        ap_done => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_done,
        ap_idle => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_idle,
        ap_ready => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_ready,
        orig_address0 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_address0,
        orig_ce0 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_ce0,
        orig_q0 => orig_q0,
        orig_address1 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_address1,
        orig_ce1 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_ce1,
        orig_q1 => orig_q1,
        filter_load => filter_load_reg_170,
        filter_load_1 => filter_load_1_reg_185,
        filter_load_2 => filter_load_2_reg_190,
        filter_load_3 => filter_load_3_reg_205,
        filter_load_4 => filter_load_4_reg_210,
        filter_load_5 => filter_load_5_reg_225,
        filter_load_6 => filter_load_6_reg_230,
        filter_load_7 => filter_load_7_reg_245,
        filter_load_8 => filter_load_8_reg_250,
        sol_address0 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_address0,
        sol_ce0 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_ce0,
        sol_we0 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_we0,
        sol_d0 => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_d0,
        add21_lcssa_lcssa_phi_out => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_add21_lcssa_lcssa_phi_out,
        add21_lcssa_lcssa_phi_out_ap_vld => grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_add21_lcssa_lcssa_phi_out_ap_vld);





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


    grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_ready = ap_const_logic_1)) then 
                    grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                filter_load_1_reg_185 <= filter_q1;
                filter_load_2_reg_190 <= filter_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                filter_load_3_reg_205 <= filter_q0;
                filter_load_4_reg_210 <= filter_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                filter_load_5_reg_225 <= filter_q0;
                filter_load_6_reg_230 <= filter_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                filter_load_7_reg_245 <= filter_q0;
                filter_load_8_reg_250 <= filter_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                filter_load_reg_170 <= filter_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_done, ap_CS_fsm_state7)
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
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

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

    ap_ST_fsm_state7_blk_assign_proc : process(grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_done)
    begin
        if ((grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state8_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_add21_lcssa_lcssa_phi_out;

    filter_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            filter_address0 <= ap_const_lv64_7(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            filter_address0 <= ap_const_lv64_5(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            filter_address0 <= ap_const_lv64_3(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            filter_address0 <= ap_const_lv64_2(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            filter_address0 <= ap_const_lv64_0(4 - 1 downto 0);
        else 
            filter_address0 <= "XXXX";
        end if; 
    end process;


    filter_address1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            filter_address1 <= ap_const_lv64_8(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            filter_address1 <= ap_const_lv64_6(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            filter_address1 <= ap_const_lv64_4(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            filter_address1 <= ap_const_lv64_1(4 - 1 downto 0);
        else 
            filter_address1 <= "XXXX";
        end if; 
    end process;


    filter_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            filter_ce0 <= ap_const_logic_1;
        else 
            filter_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    filter_ce1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            filter_ce1 <= ap_const_logic_1;
        else 
            filter_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_ap_start_reg;
    orig_address0 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_address0;
    orig_address1 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_address1;
    orig_ce0 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_ce0;
    orig_ce1 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_orig_ce1;
    sol_address0 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_address0;
    sol_ce0 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_ce0;
    sol_d0 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_d0;
    sol_we0 <= grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136_sol_we0;
end behav;
