-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Mar 30 00:13:08 2023
-- Host        : Frostspark running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck24-ubva530-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_flow_control_loop_pipe_sequential_init is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \c_fu_84_reg[0]\ : out STD_LOGIC;
    select_ln8_fu_383_p3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    add_ln17_3_fu_473_p2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    indvar_flatten_fu_92 : out STD_LOGIC;
    icmp_ln8_fu_362_p2 : out STD_LOGIC;
    grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    orig_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_fu_88_reg[0]\ : out STD_LOGIC;
    orig_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    c_fu_8401_out : out STD_LOGIC;
    \c_fu_84_reg[2]\ : out STD_LOGIC;
    \r_fu_88_reg[3]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC;
    \r_fu_88_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \r_fu_88_reg[3]_0\ : out STD_LOGIC;
    \r_fu_88_reg[3]_1\ : out STD_LOGIC;
    \r_fu_88_reg[2]\ : out STD_LOGIC;
    \r_fu_88_reg[4]_0\ : out STD_LOGIC;
    \r_fu_88_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_fu_88_reg[3]_2\ : out STD_LOGIC;
    \c_fu_84_reg[1]\ : out STD_LOGIC;
    \c_fu_84_reg[1]_0\ : out STD_LOGIC;
    \c_fu_84_reg[1]_1\ : out STD_LOGIC;
    add_ln8_fu_368_p2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    add_ln17_3_reg_7760 : out STD_LOGIC;
    \r_fu_88_reg[0]_1\ : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln17_3_reg_776_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \empty_6_reg_737_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_done_cache_reg_0 : in STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_done_reg1 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    \orig_address1[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    add_ln17_3_reg_776 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    add_ln17_reg_756 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \icmp_ln10_reg_746_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    orig_address0_2_sp_1 : in STD_LOGIC;
    \orig_address0[2]_0\ : in STD_LOGIC;
    orig_address0_3_sp_1 : in STD_LOGIC;
    \orig_address0[3]_0\ : in STD_LOGIC;
    orig_address0_4_sp_1 : in STD_LOGIC;
    \orig_address0[4]_0\ : in STD_LOGIC;
    \orig_address0[4]_1\ : in STD_LOGIC;
    orig_address0_5_sp_1 : in STD_LOGIC;
    \orig_address0[5]_0\ : in STD_LOGIC;
    \orig_address0[5]_1\ : in STD_LOGIC;
    orig_address0_6_sp_1 : in STD_LOGIC;
    \orig_address0[6]_0\ : in STD_LOGIC;
    \orig_address0[6]_1\ : in STD_LOGIC;
    orig_address0_7_sp_1 : in STD_LOGIC;
    \orig_address0[7]_0\ : in STD_LOGIC;
    \orig_address0[7]_1\ : in STD_LOGIC;
    orig_address0_9_sp_1 : in STD_LOGIC;
    \orig_address0[9]_0\ : in STD_LOGIC;
    \orig_address0[9]_1\ : in STD_LOGIC;
    orig_address0_8_sp_1 : in STD_LOGIC;
    \orig_address0[8]_0\ : in STD_LOGIC;
    \orig_address0[8]_1\ : in STD_LOGIC;
    \empty_6_reg_737_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \add_ln17_reg_756_reg[9]\ : in STD_LOGIC;
    orig_address1_8_sp_1 : in STD_LOGIC;
    \orig_address1[9]_0\ : in STD_LOGIC;
    \orig_address1[9]_1\ : in STD_LOGIC;
    orig_address1_7_sp_1 : in STD_LOGIC;
    orig_address1_6_sp_1 : in STD_LOGIC;
    orig_address1_4_sp_1 : in STD_LOGIC;
    \orig_address1[4]_0\ : in STD_LOGIC;
    orig_address1_5_sp_1 : in STD_LOGIC;
    orig_address1_3_sp_1 : in STD_LOGIC;
    orig_address1_2_sp_1 : in STD_LOGIC;
    \indvar_flatten_fu_92_reg[9]\ : in STD_LOGIC;
    \indvar_flatten_fu_92_reg[9]_0\ : in STD_LOGIC;
    \indvar_flatten_fu_92_reg[9]_1\ : in STD_LOGIC;
    \indvar_flatten_fu_92_reg[9]_2\ : in STD_LOGIC;
    \icmp_ln8_reg_742_reg[0]\ : in STD_LOGIC;
    \icmp_ln8_reg_742_reg[0]_0\ : in STD_LOGIC;
    \icmp_ln8_reg_742_reg[0]_1\ : in STD_LOGIC;
    \indvar_flatten_fu_92_reg[3]\ : in STD_LOGIC;
    \indvar_flatten_fu_92_reg[3]_0\ : in STD_LOGIC;
    \indvar_flatten_fu_92_reg[4]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_flow_control_loop_pipe_sequential_init is
  signal \^add_ln17_3_fu_473_p2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \add_ln17_3_reg_776[7]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln17_3_reg_776[7]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln17_3_reg_776[7]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \add_ln17_3_reg_776_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_10_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_11_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_12_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_13_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[9]_i_10_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[9]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[9]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[9]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[9]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[9]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \add_ln17_6_reg_783_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \add_ln17_reg_756[2]_i_2_n_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[0]\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal \^c_fu_8401_out\ : STD_LOGIC;
  signal \^c_fu_84_reg[0]\ : STD_LOGIC;
  signal \^c_fu_84_reg[1]\ : STD_LOGIC;
  signal \^c_fu_84_reg[1]_1\ : STD_LOGIC;
  signal \^c_fu_84_reg[2]\ : STD_LOGIC;
  signal \^grp_stencil_2d_pipeline_vitis_loop_8_1_vitis_loop_10_2_fu_136_ap_start_reg_reg\ : STD_LOGIC;
  signal \^icmp_ln8_fu_362_p2\ : STD_LOGIC;
  signal \icmp_ln8_reg_742[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln8_reg_742[0]_i_3_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_92[5]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_92[9]_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address0[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \orig_address0[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal orig_address0_2_sn_1 : STD_LOGIC;
  signal orig_address0_3_sn_1 : STD_LOGIC;
  signal orig_address0_4_sn_1 : STD_LOGIC;
  signal orig_address0_5_sn_1 : STD_LOGIC;
  signal orig_address0_6_sn_1 : STD_LOGIC;
  signal orig_address0_7_sn_1 : STD_LOGIC;
  signal orig_address0_8_sn_1 : STD_LOGIC;
  signal orig_address0_9_sn_1 : STD_LOGIC;
  signal \orig_address1[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address1[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address1[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address1[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address1[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address1[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address1[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal orig_address1_2_sn_1 : STD_LOGIC;
  signal orig_address1_3_sn_1 : STD_LOGIC;
  signal orig_address1_4_sn_1 : STD_LOGIC;
  signal orig_address1_5_sn_1 : STD_LOGIC;
  signal orig_address1_6_sn_1 : STD_LOGIC;
  signal orig_address1_7_sn_1 : STD_LOGIC;
  signal orig_address1_8_sn_1 : STD_LOGIC;
  signal \^r_fu_88_reg[0]\ : STD_LOGIC;
  signal \^r_fu_88_reg[3]\ : STD_LOGIC;
  signal \^r_fu_88_reg[3]_0\ : STD_LOGIC;
  signal \^r_fu_88_reg[3]_1\ : STD_LOGIC;
  signal \^r_fu_88_reg[3]_2\ : STD_LOGIC;
  signal \^r_fu_88_reg[4]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^r_fu_88_reg[4]_0\ : STD_LOGIC;
  signal select_ln8_2_fu_399_p3 : STD_LOGIC_VECTOR ( 9 downto 5 );
  signal select_ln8_3_fu_439_p3 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \^select_ln8_fu_383_p3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_add_ln17_3_reg_776_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_add_ln17_3_reg_776_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_add_ln17_3_reg_776_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_add_ln17_6_reg_783_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_add_ln17_6_reg_783_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \add_ln17_3_reg_776_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln17_3_reg_776_reg[9]_i_1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln17_6_reg_783[9]_i_7\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \add_ln17_6_reg_783_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln17_6_reg_783_reg[9]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ap_loop_init_int_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \empty_6_reg_737[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \empty_6_reg_737[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \empty_6_reg_737[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \empty_6_reg_737[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \icmp_ln8_reg_742[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_92[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_92[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_92[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_92[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_92[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_92[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_92[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \orig_address0[0]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \orig_address0[2]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \orig_address0[5]_INST_0_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \orig_address0[6]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \orig_address0[7]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \orig_address1[4]_INST_0_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \orig_address1[4]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \orig_address1[6]_INST_0_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \orig_address1[7]_INST_0_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \orig_address1[8]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \orig_address1[9]_INST_0_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_1_reg_732[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_1_reg_732[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_1_reg_732[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_1_reg_732[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_1_reg_732[4]_i_1\ : label is "soft_lutpair11";
begin
  add_ln17_3_fu_473_p2(9 downto 0) <= \^add_ln17_3_fu_473_p2\(9 downto 0);
  \ap_CS_fsm_reg[0]\ <= \^ap_cs_fsm_reg[0]\;
  c_fu_8401_out <= \^c_fu_8401_out\;
  \c_fu_84_reg[0]\ <= \^c_fu_84_reg[0]\;
  \c_fu_84_reg[1]\ <= \^c_fu_84_reg[1]\;
  \c_fu_84_reg[1]_1\ <= \^c_fu_84_reg[1]_1\;
  \c_fu_84_reg[2]\ <= \^c_fu_84_reg[2]\;
  grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg <= \^grp_stencil_2d_pipeline_vitis_loop_8_1_vitis_loop_10_2_fu_136_ap_start_reg_reg\;
  icmp_ln8_fu_362_p2 <= \^icmp_ln8_fu_362_p2\;
  orig_address0_2_sn_1 <= orig_address0_2_sp_1;
  orig_address0_3_sn_1 <= orig_address0_3_sp_1;
  orig_address0_4_sn_1 <= orig_address0_4_sp_1;
  orig_address0_5_sn_1 <= orig_address0_5_sp_1;
  orig_address0_6_sn_1 <= orig_address0_6_sp_1;
  orig_address0_7_sn_1 <= orig_address0_7_sp_1;
  orig_address0_8_sn_1 <= orig_address0_8_sp_1;
  orig_address0_9_sn_1 <= orig_address0_9_sp_1;
  orig_address1_2_sn_1 <= orig_address1_2_sp_1;
  orig_address1_3_sn_1 <= orig_address1_3_sp_1;
  orig_address1_4_sn_1 <= orig_address1_4_sp_1;
  orig_address1_5_sn_1 <= orig_address1_5_sp_1;
  orig_address1_6_sn_1 <= orig_address1_6_sp_1;
  orig_address1_7_sn_1 <= orig_address1_7_sp_1;
  orig_address1_8_sn_1 <= orig_address1_8_sp_1;
  \r_fu_88_reg[0]\ <= \^r_fu_88_reg[0]\;
  \r_fu_88_reg[3]\ <= \^r_fu_88_reg[3]\;
  \r_fu_88_reg[3]_0\ <= \^r_fu_88_reg[3]_0\;
  \r_fu_88_reg[3]_1\ <= \^r_fu_88_reg[3]_1\;
  \r_fu_88_reg[3]_2\ <= \^r_fu_88_reg[3]_2\;
  \r_fu_88_reg[4]\(4 downto 0) <= \^r_fu_88_reg[4]\(4 downto 0);
  \r_fu_88_reg[4]_0\ <= \^r_fu_88_reg[4]_0\;
  select_ln8_fu_383_p3(2 downto 0) <= \^select_ln8_fu_383_p3\(2 downto 0);
\add_ln17_3_reg_776[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"009AFFFF009A0000"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(2),
      I1 => \add_ln17_6_reg_783[7]_i_10_n_0\,
      I2 => \empty_6_reg_737_reg[4]\(1),
      I3 => \^c_fu_8401_out\,
      I4 => \^c_fu_84_reg[2]\,
      I5 => \orig_address0[7]_INST_0_i_6_n_0\,
      O => select_ln8_2_fu_399_p3(7)
    );
\add_ln17_3_reg_776[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A06050A090AC5CA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(1),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(4),
      I4 => \add_ln17_6_reg_783[9]_i_5_n_0\,
      I5 => \^c_fu_84_reg[2]\,
      O => select_ln8_2_fu_399_p3(6)
    );
\add_ln17_3_reg_776[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF93003C"
    )
        port map (
      I0 => \add_ln17_6_reg_783[9]_i_5_n_0\,
      I1 => \empty_6_reg_737_reg[4]\(4),
      I2 => \empty_6_reg_737_reg[4]\(0),
      I3 => \^c_fu_8401_out\,
      I4 => \^c_fu_84_reg[2]\,
      O => select_ln8_2_fu_399_p3(5)
    );
\add_ln17_3_reg_776[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBB1444"
    )
        port map (
      I0 => \^c_fu_8401_out\,
      I1 => \empty_6_reg_737_reg[4]\(1),
      I2 => \^c_fu_84_reg[2]\,
      I3 => \empty_6_reg_737_reg[4]\(0),
      I4 => \add_ln17_reg_756[2]_i_2_n_0\,
      O => \add_ln17_3_reg_776[7]_i_7_n_0\
    );
\add_ln17_3_reg_776[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFF807F0080FF"
    )
        port map (
      I0 => Q(0),
      I1 => \empty_6_reg_737_reg[1]\,
      I2 => ap_loop_init_int,
      I3 => \icmp_ln10_reg_746_reg[0]\(1),
      I4 => \^c_fu_84_reg[2]\,
      I5 => \empty_6_reg_737_reg[4]\(0),
      O => \add_ln17_3_reg_776[7]_i_8_n_0\
    );
\add_ln17_3_reg_776[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(0),
      I1 => \^c_fu_8401_out\,
      O => \add_ln17_3_reg_776[7]_i_9_n_0\
    );
\add_ln17_3_reg_776[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAA0000FFFF"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \^r_fu_88_reg[4]\(1),
      I2 => \empty_6_reg_737_reg[4]\(2),
      I3 => \empty_6_reg_737_reg[4]\(3),
      I4 => \orig_address0[9]_INST_0_i_8_n_0\,
      I5 => \^c_fu_84_reg[2]\,
      O => select_ln8_2_fu_399_p3(9)
    );
\add_ln17_3_reg_776[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \add_ln17_6_reg_783[9]_i_10_n_0\,
      I1 => \orig_address0[9]_INST_0_i_11_n_0\,
      I2 => \^c_fu_84_reg[2]\,
      O => select_ln8_2_fu_399_p3(8)
    );
\add_ln17_3_reg_776_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \add_ln17_3_reg_776_reg[7]_i_1_n_0\,
      CO(6) => \add_ln17_3_reg_776_reg[7]_i_1_n_1\,
      CO(5) => \add_ln17_3_reg_776_reg[7]_i_1_n_2\,
      CO(4) => \add_ln17_3_reg_776_reg[7]_i_1_n_3\,
      CO(3) => \add_ln17_3_reg_776_reg[7]_i_1_n_4\,
      CO(2) => \add_ln17_3_reg_776_reg[7]_i_1_n_5\,
      CO(1) => \add_ln17_3_reg_776_reg[7]_i_1_n_6\,
      CO(0) => \add_ln17_3_reg_776_reg[7]_i_1_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \^c_fu_84_reg[0]\,
      DI(3 downto 1) => \^select_ln8_fu_383_p3\(2 downto 0),
      DI(0) => '0',
      O(7 downto 1) => \^add_ln17_3_fu_473_p2\(7 downto 1),
      O(0) => \NLW_add_ln17_3_reg_776_reg[7]_i_1_O_UNCONNECTED\(0),
      S(7 downto 5) => select_ln8_2_fu_399_p3(7 downto 5),
      S(4 downto 3) => \add_ln17_3_reg_776_reg[7]\(1 downto 0),
      S(2) => \add_ln17_3_reg_776[7]_i_7_n_0\,
      S(1) => \add_ln17_3_reg_776[7]_i_8_n_0\,
      S(0) => \add_ln17_3_reg_776[7]_i_9_n_0\
    );
\add_ln17_3_reg_776_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln17_3_reg_776_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_add_ln17_3_reg_776_reg[9]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \add_ln17_3_reg_776_reg[9]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_add_ln17_3_reg_776_reg[9]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => \^add_ln17_3_fu_473_p2\(9 downto 8),
      S(7 downto 2) => B"000000",
      S(1 downto 0) => select_ln8_2_fu_399_p3(9 downto 8)
    );
\add_ln17_6_reg_783[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FDFDFDFDFDFDFD"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => \empty_6_reg_737_reg[4]\(4),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(2),
      I5 => \empty_6_reg_737_reg[4]\(3),
      O => \add_ln17_6_reg_783[7]_i_10_n_0\
    );
\add_ln17_6_reg_783[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FF95FF00FF55"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(2),
      I2 => \empty_6_reg_737_reg[4]\(1),
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(0),
      I5 => \empty_6_reg_737_reg[4]\(3),
      O => \add_ln17_6_reg_783[7]_i_11_n_0\
    );
\add_ln17_6_reg_783[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0095005500AA00AA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(3),
      I2 => \empty_6_reg_737_reg[4]\(2),
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(1),
      I5 => \empty_6_reg_737_reg[4]\(0),
      O => \add_ln17_6_reg_783[7]_i_12_n_0\
    );
\add_ln17_6_reg_783[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C040C0C"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(2),
      O => \add_ln17_6_reg_783[7]_i_13_n_0\
    );
\add_ln17_6_reg_783[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAA0000"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => ap_loop_init_int,
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => Q(0),
      I4 => \empty_6_reg_737_reg[4]\(2),
      I5 => \empty_6_reg_737_reg[4]\(1),
      O => \r_fu_88_reg[0]_1\
    );
\add_ln17_6_reg_783[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF30C03F6F906F90"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[0]\,
      I1 => \add_ln17_6_reg_783[9]_i_9_n_0\,
      I2 => \^c_fu_84_reg[2]\,
      I3 => \^r_fu_88_reg[4]\(2),
      I4 => \add_ln17_6_reg_783[7]_i_10_n_0\,
      I5 => \^r_fu_88_reg[4]\(1),
      O => select_ln8_3_fu_439_p3(7)
    );
\add_ln17_6_reg_783[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C6C9C60F00F0FF"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => \add_ln17_6_reg_783[7]_i_11_n_0\,
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \add_ln17_6_reg_783[7]_i_10_n_0\,
      I5 => \^c_fu_84_reg[2]\,
      O => select_ln8_3_fu_439_p3(6)
    );
\add_ln17_6_reg_783[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C355"
    )
        port map (
      I0 => \add_ln17_6_reg_783[7]_i_12_n_0\,
      I1 => \add_ln17_6_reg_783[9]_i_6_n_0\,
      I2 => \add_ln17_6_reg_783[7]_i_13_n_0\,
      I3 => \^c_fu_84_reg[2]\,
      O => select_ln8_3_fu_439_p3(5)
    );
\add_ln17_6_reg_783[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A39C5C6"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(1),
      I1 => \^c_fu_84_reg[2]\,
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(0),
      I4 => \add_ln17_reg_756[2]_i_2_n_0\,
      O => \add_ln17_6_reg_783[7]_i_7_n_0\
    );
\add_ln17_6_reg_783[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC96969696969696"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => \^c_fu_84_reg[2]\,
      I2 => \icmp_ln10_reg_746_reg[0]\(1),
      I3 => ap_loop_init_int,
      I4 => \empty_6_reg_737_reg[1]\,
      I5 => Q(0),
      O => \add_ln17_6_reg_783[7]_i_8_n_0\
    );
\add_ln17_6_reg_783[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(0),
      I1 => \^c_fu_8401_out\,
      O => \add_ln17_6_reg_783[7]_i_9_n_0\
    );
\add_ln17_6_reg_783[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000032AA0000AAAA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(4),
      I2 => \empty_6_reg_737_reg[4]\(0),
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \^c_fu_8401_out\,
      I5 => \empty_6_reg_737_reg[4]\(2),
      O => \add_ln17_6_reg_783[9]_i_10_n_0\
    );
\add_ln17_6_reg_783[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8888888F888F88"
    )
        port map (
      I0 => \add_ln17_6_reg_783[9]_i_4_n_0\,
      I1 => \add_ln17_6_reg_783[9]_i_5_n_0\,
      I2 => \add_ln17_6_reg_783[9]_i_6_n_0\,
      I3 => \^c_fu_84_reg[2]\,
      I4 => \^r_fu_88_reg[3]\,
      I5 => \add_ln17_6_reg_783[9]_i_8_n_0\,
      O => select_ln8_3_fu_439_p3(9)
    );
\add_ln17_6_reg_783[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAFFFFA6AA0000"
    )
        port map (
      I0 => \^r_fu_88_reg[3]\,
      I1 => \empty_6_reg_737_reg[4]\(2),
      I2 => \^c_fu_8401_out\,
      I3 => \add_ln17_6_reg_783[9]_i_9_n_0\,
      I4 => \^c_fu_84_reg[2]\,
      I5 => \add_ln17_6_reg_783[9]_i_10_n_0\,
      O => select_ln8_3_fu_439_p3(8)
    );
\add_ln17_6_reg_783[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000000"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(2),
      I1 => \icmp_ln10_reg_746_reg[0]\(3),
      I2 => \icmp_ln10_reg_746_reg[0]\(4),
      I3 => \icmp_ln10_reg_746_reg[0]\(1),
      I4 => \icmp_ln10_reg_746_reg[0]\(0),
      I5 => \^r_fu_88_reg[4]\(4),
      O => \add_ln17_6_reg_783[9]_i_4_n_0\
    );
\add_ln17_6_reg_783[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555FFFFFFFFFFFF"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(1),
      I1 => Q(0),
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_loop_init_int,
      I4 => \empty_6_reg_737_reg[4]\(2),
      I5 => \empty_6_reg_737_reg[4]\(3),
      O => \add_ln17_6_reg_783[9]_i_5_n_0\
    );
\add_ln17_6_reg_783[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F5F9F5F9F5F5F5"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(3),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(2),
      I4 => \empty_6_reg_737_reg[4]\(1),
      I5 => \empty_6_reg_737_reg[4]\(0),
      O => \add_ln17_6_reg_783[9]_i_6_n_0\
    );
\add_ln17_6_reg_783[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05060A0A"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(2),
      O => \^r_fu_88_reg[3]\
    );
\add_ln17_6_reg_783[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000143800000000"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(1),
      I2 => \empty_6_reg_737_reg[4]\(0),
      I3 => \empty_6_reg_737_reg[4]\(3),
      I4 => \^c_fu_8401_out\,
      I5 => \empty_6_reg_737_reg[4]\(2),
      O => \add_ln17_6_reg_783[9]_i_8_n_0\
    );
\add_ln17_6_reg_783[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0104030C020C000C"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(2),
      I5 => \empty_6_reg_737_reg[4]\(4),
      O => \add_ln17_6_reg_783[9]_i_9_n_0\
    );
\add_ln17_6_reg_783_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \add_ln17_6_reg_783_reg[7]_i_1_n_0\,
      CO(6) => \add_ln17_6_reg_783_reg[7]_i_1_n_1\,
      CO(5) => \add_ln17_6_reg_783_reg[7]_i_1_n_2\,
      CO(4) => \add_ln17_6_reg_783_reg[7]_i_1_n_3\,
      CO(3) => \add_ln17_6_reg_783_reg[7]_i_1_n_4\,
      CO(2) => \add_ln17_6_reg_783_reg[7]_i_1_n_5\,
      CO(1) => \add_ln17_6_reg_783_reg[7]_i_1_n_6\,
      CO(0) => \add_ln17_6_reg_783_reg[7]_i_1_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \^c_fu_84_reg[0]\,
      DI(3 downto 1) => \^select_ln8_fu_383_p3\(2 downto 0),
      DI(0) => '0',
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 5) => select_ln8_3_fu_439_p3(7 downto 5),
      S(4 downto 3) => S(1 downto 0),
      S(2) => \add_ln17_6_reg_783[7]_i_7_n_0\,
      S(1) => \add_ln17_6_reg_783[7]_i_8_n_0\,
      S(0) => \add_ln17_6_reg_783[7]_i_9_n_0\
    );
\add_ln17_6_reg_783_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln17_6_reg_783_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_add_ln17_6_reg_783_reg[9]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \add_ln17_6_reg_783_reg[9]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_add_ln17_6_reg_783_reg[9]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => D(9 downto 8),
      S(7 downto 2) => B"000000",
      S(1 downto 0) => select_ln8_3_fu_439_p3(9 downto 8)
    );
\add_ln17_reg_756[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC96969696969696"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => \^c_fu_84_reg[2]\,
      I2 => \icmp_ln10_reg_746_reg[0]\(1),
      I3 => ap_loop_init_int,
      I4 => \empty_6_reg_737_reg[1]\,
      I5 => Q(0),
      O => \^r_fu_88_reg[0]\
    );
\add_ln17_reg_756[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F099F03C0F660FC3"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(1),
      I1 => \empty_6_reg_737_reg[4]\(1),
      I2 => \^c_fu_84_reg[2]\,
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(0),
      I5 => \add_ln17_reg_756[2]_i_2_n_0\,
      O => \^c_fu_84_reg[1]_1\
    );
\add_ln17_reg_756[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1000FFFFFFFF"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(0),
      I1 => \icmp_ln10_reg_746_reg[0]\(1),
      I2 => \icmp_ln10_reg_746_reg[0]\(4),
      I3 => \icmp_ln10_reg_746_reg[0]\(3),
      I4 => \^c_fu_8401_out\,
      I5 => \icmp_ln10_reg_746_reg[0]\(2),
      O => \add_ln17_reg_756[2]_i_2_n_0\
    );
\add_ln17_reg_756[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF1D0DC020E2F23"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(1),
      I1 => \^ap_cs_fsm_reg[0]\,
      I2 => \add_ln17_reg_756[2]_i_2_n_0\,
      I3 => \^c_fu_84_reg[2]\,
      I4 => \^r_fu_88_reg[4]\(1),
      I5 => \orig_address1[3]_INST_0_i_3_n_0\,
      O => \c_fu_84_reg[1]_0\
    );
\add_ln17_reg_756[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \orig_address0[7]_INST_0_i_3_n_0\,
      I1 => \orig_address1[7]_INST_0_i_2_n_0\,
      O => \r_fu_88_reg[2]\
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[7]\(0),
      I1 => ap_done_reg1,
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_done_cache,
      I4 => \ap_CS_fsm_reg[7]\(1),
      O => \ap_CS_fsm_reg[6]\(0)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \ap_CS_fsm_reg[7]\(1),
      I1 => ap_done_cache,
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_done_reg1,
      O => \ap_CS_fsm_reg[6]\(1)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD555555B8000000"
    )
        port map (
      I0 => \empty_6_reg_737_reg[1]\,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => Q(1),
      I4 => ap_done_cache_reg_0,
      I5 => ap_done_cache,
      O => ap_done_cache_i_1_n_0
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_0,
      Q => ap_done_cache,
      R => ap_rst
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCF444"
    )
        port map (
      I0 => Q(4),
      I1 => ap_loop_init_int,
      I2 => ap_done_cache_reg_0,
      I3 => Q(1),
      I4 => \^grp_stencil_2d_pipeline_vitis_loop_8_1_vitis_loop_10_2_fu_136_ap_start_reg_reg\,
      I5 => ap_rst,
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \empty_6_reg_737_reg[1]\,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => \^grp_stencil_2d_pipeline_vitis_loop_8_1_vitis_loop_10_2_fu_136_ap_start_reg_reg\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_0,
      Q => ap_loop_init_int,
      R => '0'
    );
\c_fu_84[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \empty_6_reg_737_reg[1]\,
      I2 => Q(0),
      O => \^c_fu_8401_out\
    );
\empty_6_reg_737[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => Q(0),
      I1 => \empty_6_reg_737_reg[1]\,
      I2 => ap_loop_init_int,
      I3 => \empty_6_reg_737_reg[4]\(0),
      O => \^ap_cs_fsm_reg[0]\
    );
\empty_6_reg_737[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0666"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(1),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => ap_loop_init_int,
      I3 => \empty_6_reg_737_reg[1]\,
      O => \r_fu_88_reg[0]_0\(0)
    );
\empty_6_reg_737[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"152A2A2A"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(2),
      I1 => \empty_6_reg_737_reg[1]\,
      I2 => ap_loop_init_int,
      I3 => \empty_6_reg_737_reg[4]\(0),
      I4 => \empty_6_reg_737_reg[4]\(1),
      O => \r_fu_88_reg[0]_0\(1)
    );
\empty_6_reg_737[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"060A0A0A"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(2),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(0),
      O => \r_fu_88_reg[0]_0\(2)
    );
\empty_6_reg_737[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F00FF00800000"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => \empty_6_reg_737_reg[4]\(3),
      I2 => \empty_6_reg_737_reg[4]\(2),
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(1),
      I5 => \empty_6_reg_737_reg[4]\(4),
      O => \r_fu_88_reg[0]_0\(3)
    );
\icmp_ln10_reg_746[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^c_fu_8401_out\,
      I1 => \icmp_ln10_reg_746_reg[0]\(2),
      I2 => \icmp_ln10_reg_746_reg[0]\(3),
      I3 => \icmp_ln10_reg_746_reg[0]\(4),
      I4 => \icmp_ln10_reg_746_reg[0]\(1),
      I5 => \icmp_ln10_reg_746_reg[0]\(0),
      O => \^c_fu_84_reg[2]\
    );
\icmp_ln8_reg_742[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \icmp_ln8_reg_742[0]_i_2_n_0\,
      I1 => \icmp_ln8_reg_742_reg[0]\,
      I2 => \^c_fu_8401_out\,
      I3 => \indvar_flatten_fu_92_reg[9]\,
      I4 => \icmp_ln8_reg_742_reg[0]_0\,
      I5 => \icmp_ln8_reg_742_reg[0]_1\,
      O => \^icmp_ln8_fu_362_p2\
    );
\icmp_ln8_reg_742[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[9]_1\,
      I1 => \indvar_flatten_fu_92_reg[9]_0\,
      I2 => \indvar_flatten_fu_92_reg[4]\,
      I3 => \indvar_flatten_fu_92_reg[3]\,
      I4 => \indvar_flatten_fu_92_reg[9]_2\,
      I5 => \icmp_ln8_reg_742[0]_i_3_n_0\,
      O => \icmp_ln8_reg_742[0]_i_2_n_0\
    );
\icmp_ln8_reg_742[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[3]_0\,
      I1 => Q(0),
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_loop_init_int,
      O => \icmp_ln8_reg_742[0]_i_3_n_0\
    );
\indvar_flatten_fu_92[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \icmp_ln8_reg_742_reg[0]_1\,
      O => add_ln8_fu_368_p2(0)
    );
\indvar_flatten_fu_92[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \icmp_ln8_reg_742_reg[0]_0\,
      I1 => ap_loop_init_int,
      I2 => \icmp_ln8_reg_742_reg[0]_1\,
      O => add_ln8_fu_368_p2(1)
    );
\indvar_flatten_fu_92[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"060A"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[3]_0\,
      I1 => \icmp_ln8_reg_742_reg[0]_1\,
      I2 => ap_loop_init_int,
      I3 => \icmp_ln8_reg_742_reg[0]_0\,
      O => add_ln8_fu_368_p2(2)
    );
\indvar_flatten_fu_92[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"060A0A0A"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[3]\,
      I1 => \icmp_ln8_reg_742_reg[0]_0\,
      I2 => \^c_fu_8401_out\,
      I3 => \icmp_ln8_reg_742_reg[0]_1\,
      I4 => \indvar_flatten_fu_92_reg[3]_0\,
      O => add_ln8_fu_368_p2(3)
    );
\indvar_flatten_fu_92[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A00AA00AA00AA"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[4]\,
      I1 => \indvar_flatten_fu_92_reg[3]_0\,
      I2 => \icmp_ln8_reg_742_reg[0]_1\,
      I3 => \^c_fu_8401_out\,
      I4 => \icmp_ln8_reg_742_reg[0]_0\,
      I5 => \indvar_flatten_fu_92_reg[3]\,
      O => add_ln8_fu_368_p2(4)
    );
\indvar_flatten_fu_92[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \icmp_ln8_reg_742_reg[0]\,
      I2 => \indvar_flatten_fu_92[5]_i_2_n_0\,
      O => add_ln8_fu_368_p2(5)
    );
\indvar_flatten_fu_92[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[3]_0\,
      I1 => \icmp_ln8_reg_742_reg[0]_1\,
      I2 => \^c_fu_8401_out\,
      I3 => \icmp_ln8_reg_742_reg[0]_0\,
      I4 => \indvar_flatten_fu_92_reg[3]\,
      I5 => \indvar_flatten_fu_92_reg[4]\,
      O => \indvar_flatten_fu_92[5]_i_2_n_0\
    );
\indvar_flatten_fu_92[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \indvar_flatten_fu_92_reg[9]_1\,
      I2 => \indvar_flatten_fu_92[9]_i_3_n_0\,
      O => add_ln8_fu_368_p2(6)
    );
\indvar_flatten_fu_92[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B444"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \indvar_flatten_fu_92_reg[9]_0\,
      I2 => \indvar_flatten_fu_92[9]_i_3_n_0\,
      I3 => \indvar_flatten_fu_92_reg[9]_1\,
      O => add_ln8_fu_368_p2(7)
    );
\indvar_flatten_fu_92[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12222222"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[9]_2\,
      I1 => \^c_fu_8401_out\,
      I2 => \indvar_flatten_fu_92_reg[9]_1\,
      I3 => \indvar_flatten_fu_92[9]_i_3_n_0\,
      I4 => \indvar_flatten_fu_92_reg[9]_0\,
      O => add_ln8_fu_368_p2(8)
    );
\indvar_flatten_fu_92[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \empty_6_reg_737_reg[1]\,
      I1 => Q(0),
      I2 => \^icmp_ln8_fu_362_p2\,
      O => indvar_flatten_fu_92
    );
\indvar_flatten_fu_92[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006AAA0000AAAA"
    )
        port map (
      I0 => \indvar_flatten_fu_92_reg[9]\,
      I1 => \indvar_flatten_fu_92_reg[9]_0\,
      I2 => \indvar_flatten_fu_92[9]_i_3_n_0\,
      I3 => \indvar_flatten_fu_92_reg[9]_1\,
      I4 => \^c_fu_8401_out\,
      I5 => \indvar_flatten_fu_92_reg[9]_2\,
      O => add_ln8_fu_368_p2(9)
    );
\indvar_flatten_fu_92[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F000000"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \empty_6_reg_737_reg[1]\,
      I2 => Q(0),
      I3 => \icmp_ln8_reg_742_reg[0]\,
      I4 => \indvar_flatten_fu_92[5]_i_2_n_0\,
      O => \indvar_flatten_fu_92[9]_i_3_n_0\
    );
\orig_address0[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF4E00FF004E"
    )
        port map (
      I0 => \orig_address0[9]_0\,
      I1 => add_ln17_3_reg_776(0),
      I2 => \^add_ln17_3_fu_473_p2\(0),
      I3 => Q(4),
      I4 => Q(3),
      I5 => \orig_address1[9]\(0),
      O => orig_address0(0)
    );
\orig_address0[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(0),
      I1 => \^c_fu_8401_out\,
      O => \^add_ln17_3_fu_473_p2\(0)
    );
\orig_address0[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0131FDCD"
    )
        port map (
      I0 => \orig_address0[1]_INST_0_i_1_n_0\,
      I1 => Q(4),
      I2 => Q(3),
      I3 => \orig_address1[9]\(0),
      I4 => \orig_address1[9]\(1),
      O => orig_address0(1)
    );
\orig_address0[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00FF909"
    )
        port map (
      I0 => \^add_ln17_3_fu_473_p2\(0),
      I1 => \^r_fu_88_reg[0]\,
      I2 => Q(2),
      I3 => add_ln17_3_reg_776(1),
      I4 => Q(1),
      O => \orig_address0[1]_INST_0_i_1_n_0\
    );
\orig_address0[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6F000000"
    )
        port map (
      I0 => add_ln17_3_reg_776(1),
      I1 => add_ln17_3_reg_776(2),
      I2 => Q(2),
      I3 => orig_address0_2_sn_1,
      I4 => \orig_address0[2]_INST_0_i_1_n_0\,
      I5 => \orig_address0[2]_0\,
      O => orig_address0(2)
    );
\orig_address0[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF6FF06"
    )
        port map (
      I0 => \orig_address0[2]_INST_0_i_3_n_0\,
      I1 => \orig_address0[2]_INST_0_i_4_n_0\,
      I2 => Q(1),
      I3 => Q(2),
      I4 => add_ln17_3_reg_776(2),
      O => \orig_address0[2]_INST_0_i_1_n_0\
    );
\orig_address0[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F80080"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(0),
      I1 => \add_ln17_reg_756_reg[9]\,
      I2 => \empty_6_reg_737_reg[4]\(0),
      I3 => \^c_fu_8401_out\,
      I4 => \icmp_ln10_reg_746_reg[0]\(1),
      O => \orig_address0[2]_INST_0_i_3_n_0\
    );
\orig_address0[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A556AA59"
    )
        port map (
      I0 => \add_ln17_reg_756[2]_i_2_n_0\,
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \^c_fu_8401_out\,
      I3 => \^c_fu_84_reg[2]\,
      I4 => \empty_6_reg_737_reg[4]\(1),
      O => \orig_address0[2]_INST_0_i_4_n_0\
    );
\orig_address0[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7B000000"
    )
        port map (
      I0 => add_ln17_3_reg_776(3),
      I1 => Q(2),
      I2 => orig_address0_3_sn_1,
      I3 => orig_address0_2_sn_1,
      I4 => \orig_address0[3]_INST_0_i_3_n_0\,
      I5 => \orig_address0[3]_0\,
      O => orig_address0(3)
    );
\orig_address0[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF69FFFF0069"
    )
        port map (
      I0 => \orig_address0[3]_INST_0_i_5_n_0\,
      I1 => \orig_address0[3]_INST_0_i_6_n_0\,
      I2 => \^select_ln8_fu_383_p3\(2),
      I3 => Q(1),
      I4 => Q(2),
      I5 => add_ln17_3_reg_776(3),
      O => \orig_address0[3]_INST_0_i_3_n_0\
    );
\orig_address0[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB22222BBBBB22B2"
    )
        port map (
      I0 => \orig_address0[2]_INST_0_i_3_n_0\,
      I1 => \add_ln17_reg_756[2]_i_2_n_0\,
      I2 => \empty_6_reg_737_reg[4]\(0),
      I3 => \^c_fu_8401_out\,
      I4 => \^c_fu_84_reg[2]\,
      I5 => \empty_6_reg_737_reg[4]\(1),
      O => \orig_address0[3]_INST_0_i_5_n_0\
    );
\orig_address0[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFAFABE"
    )
        port map (
      I0 => \^c_fu_8401_out\,
      I1 => \add_ln17_reg_756_reg[9]\,
      I2 => \empty_6_reg_737_reg[4]\(2),
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(0),
      O => \orig_address0[3]_INST_0_i_6_n_0\
    );
\orig_address0[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEBAEEABEFAAEEA"
    )
        port map (
      I0 => \orig_address0[4]_INST_0_i_1_n_0\,
      I1 => Q(4),
      I2 => \orig_address1[9]\(4),
      I3 => orig_address0_4_sn_1,
      I4 => Q(3),
      I5 => \orig_address0[4]_0\,
      O => orig_address0(4)
    );
\orig_address0[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ECEFEFEC"
    )
        port map (
      I0 => add_ln17_3_reg_776(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \orig_address0[4]_INST_0_i_4_n_0\,
      I4 => \orig_address0[9]_INST_0_i_13_n_0\,
      I5 => \orig_address0[4]_1\,
      O => \orig_address0[4]_INST_0_i_1_n_0\
    );
\orig_address0[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA9A55555565"
    )
        port map (
      I0 => \^c_fu_84_reg[0]\,
      I1 => \^c_fu_84_reg[2]\,
      I2 => \^ap_cs_fsm_reg[0]\,
      I3 => \^r_fu_88_reg[4]\(1),
      I4 => \^r_fu_88_reg[4]\(2),
      I5 => \^r_fu_88_reg[4]\(3),
      O => \orig_address0[4]_INST_0_i_4_n_0\
    );
\orig_address0[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550110"
    )
        port map (
      I0 => orig_address0_5_sn_1,
      I1 => Q(1),
      I2 => \orig_address0[5]_INST_0_i_2_n_0\,
      I3 => \orig_address0[5]_INST_0_i_3_n_0\,
      I4 => \orig_address0[5]_0\,
      I5 => \orig_address0[5]_1\,
      O => orig_address0(5)
    );
\orig_address0[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606F6F90909F9F9"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => \empty_6_reg_737_reg[4]\(4),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(3),
      I4 => \orig_address0[5]_INST_0_i_6_n_0\,
      I5 => \add_ln17_reg_756_reg[9]\,
      O => \orig_address0[5]_INST_0_i_2_n_0\
    );
\orig_address0[5]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \orig_address0[9]_INST_0_i_13_n_0\,
      I1 => \^c_fu_84_reg[0]\,
      I2 => \orig_address0[9]_INST_0_i_12_n_0\,
      O => \orig_address0[5]_INST_0_i_3_n_0\
    );
\orig_address0[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFF0EEEEEEE"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(2),
      I1 => \empty_6_reg_737_reg[4]\(1),
      I2 => Q(0),
      I3 => \empty_6_reg_737_reg[1]\,
      I4 => ap_loop_init_int,
      I5 => \empty_6_reg_737_reg[4]\(0),
      O => \orig_address0[5]_INST_0_i_6_n_0\
    );
\orig_address0[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550014"
    )
        port map (
      I0 => orig_address0_6_sn_1,
      I1 => \orig_address0[6]_INST_0_i_2_n_0\,
      I2 => \orig_address0[6]_INST_0_i_3_n_0\,
      I3 => Q(1),
      I4 => \orig_address0[6]_0\,
      I5 => \orig_address0[6]_1\,
      O => orig_address0(6)
    );
\orig_address0[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABBF"
    )
        port map (
      I0 => \orig_address0[5]_INST_0_i_2_n_0\,
      I1 => \orig_address0[9]_INST_0_i_12_n_0\,
      I2 => \^c_fu_84_reg[0]\,
      I3 => \orig_address0[9]_INST_0_i_13_n_0\,
      O => \orig_address0[6]_INST_0_i_2_n_0\
    );
\orig_address0[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A00B5FF4AFFB500"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[0]\,
      I1 => \empty_6_reg_737_reg[4]\(4),
      I2 => \orig_address0[6]_INST_0_i_7_n_0\,
      I3 => \^c_fu_84_reg[2]\,
      I4 => \^r_fu_88_reg[4]\(1),
      I5 => \orig_address0[6]_INST_0_i_8_n_0\,
      O => \orig_address0[6]_INST_0_i_3_n_0\
    );
\orig_address0[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F5F5F5F5F5F5F5"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(1),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(2),
      I4 => \empty_6_reg_737_reg[4]\(3),
      I5 => \empty_6_reg_737_reg[4]\(0),
      O => \orig_address0[6]_INST_0_i_7_n_0\
    );
\orig_address0[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF50FF50FF50FF51"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(3),
      I2 => \empty_6_reg_737_reg[4]\(0),
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(1),
      I5 => \empty_6_reg_737_reg[4]\(2),
      O => \orig_address0[6]_INST_0_i_8_n_0\
    );
\orig_address0[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550041"
    )
        port map (
      I0 => orig_address0_7_sn_1,
      I1 => \orig_address0[7]_INST_0_i_2_n_0\,
      I2 => \orig_address0[7]_INST_0_i_3_n_0\,
      I3 => Q(1),
      I4 => \orig_address0[7]_0\,
      I5 => \orig_address0[7]_1\,
      O => orig_address0(7)
    );
\orig_address0[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF17"
    )
        port map (
      I0 => \orig_address0[9]_INST_0_i_13_n_0\,
      I1 => \^c_fu_84_reg[0]\,
      I2 => \orig_address0[9]_INST_0_i_12_n_0\,
      I3 => \orig_address0[5]_INST_0_i_2_n_0\,
      I4 => \orig_address0[6]_INST_0_i_3_n_0\,
      O => \orig_address0[7]_INST_0_i_2_n_0\
    );
\orig_address0[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8B88"
    )
        port map (
      I0 => \orig_address0[7]_INST_0_i_6_n_0\,
      I1 => \^c_fu_84_reg[2]\,
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(2),
      I4 => \orig_address0[7]_INST_0_i_7_n_0\,
      O => \orig_address0[7]_INST_0_i_3_n_0\
    );
\orig_address0[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FF30000000C"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(4),
      I2 => \empty_6_reg_737_reg[4]\(1),
      I3 => \empty_6_reg_737_reg[4]\(0),
      I4 => \^c_fu_8401_out\,
      I5 => \empty_6_reg_737_reg[4]\(2),
      O => \orig_address0[7]_INST_0_i_6_n_0\
    );
\orig_address0[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030300030002"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(2),
      I1 => \empty_6_reg_737_reg[4]\(1),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(0),
      I4 => \empty_6_reg_737_reg[4]\(3),
      I5 => \empty_6_reg_737_reg[4]\(4),
      O => \orig_address0[7]_INST_0_i_7_n_0\
    );
\orig_address0[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550041"
    )
        port map (
      I0 => orig_address0_8_sn_1,
      I1 => \orig_address0[9]_INST_0_i_4_n_0\,
      I2 => \orig_address0[9]_INST_0_i_3_n_0\,
      I3 => Q(1),
      I4 => \orig_address0[8]_0\,
      I5 => \orig_address0[8]_1\,
      O => orig_address0(8)
    );
\orig_address0[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45445555"
    )
        port map (
      I0 => orig_address0_9_sn_1,
      I1 => \orig_address0[9]_INST_0_i_2_n_0\,
      I2 => \orig_address0[9]_INST_0_i_3_n_0\,
      I3 => \orig_address0[9]_INST_0_i_4_n_0\,
      I4 => \orig_address0[9]_0\,
      I5 => \orig_address0[9]_1\,
      O => orig_address0(9)
    );
\orig_address0[9]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FF02FFFFFFFD"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \empty_6_reg_737_reg[4]\(1),
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(2),
      I5 => \empty_6_reg_737_reg[4]\(3),
      O => \orig_address0[9]_INST_0_i_11_n_0\
    );
\orig_address0[9]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055005600550055"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(2),
      I2 => \empty_6_reg_737_reg[4]\(1),
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(0),
      I5 => \add_ln17_reg_756_reg[9]\,
      O => \orig_address0[9]_INST_0_i_12_n_0\
    );
\orig_address0[9]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080E0FAF000008AE"
    )
        port map (
      I0 => \orig_address0[2]_INST_0_i_3_n_0\,
      I1 => \icmp_ln10_reg_746_reg[0]\(2),
      I2 => \orig_address0[9]_INST_0_i_15_n_0\,
      I3 => select_ln8_3_fu_439_p3(2),
      I4 => \orig_address0[3]_INST_0_i_6_n_0\,
      I5 => \icmp_ln10_reg_746_reg[0]\(3),
      O => \orig_address0[9]_INST_0_i_13_n_0\
    );
\orig_address0[9]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAAA"
    )
        port map (
      I0 => \^c_fu_8401_out\,
      I1 => \icmp_ln10_reg_746_reg[0]\(2),
      I2 => \icmp_ln10_reg_746_reg[0]\(3),
      I3 => \icmp_ln10_reg_746_reg[0]\(4),
      I4 => \icmp_ln10_reg_746_reg[0]\(1),
      I5 => \icmp_ln10_reg_746_reg[0]\(0),
      O => \orig_address0[9]_INST_0_i_15_n_0\
    );
\orig_address0[9]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAD555EAAA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(1),
      I1 => Q(0),
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_loop_init_int,
      I4 => \add_ln17_reg_756_reg[9]\,
      I5 => \empty_6_reg_737_reg[4]\(0),
      O => select_ln8_3_fu_439_p3(2)
    );
\orig_address0[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330111100001111"
    )
        port map (
      I0 => \orig_address0[9]_INST_0_i_8_n_0\,
      I1 => \^c_fu_8401_out\,
      I2 => \empty_6_reg_737_reg[4]\(3),
      I3 => \orig_address0[9]_INST_0_i_9_n_0\,
      I4 => \add_ln17_reg_756_reg[9]\,
      I5 => \empty_6_reg_737_reg[4]\(4),
      O => \orig_address0[9]_INST_0_i_2_n_0\
    );
\orig_address0[9]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B88B8"
    )
        port map (
      I0 => \orig_address0[9]_INST_0_i_11_n_0\,
      I1 => \^c_fu_84_reg[2]\,
      I2 => \empty_6_reg_737_reg[4]\(3),
      I3 => \^c_fu_8401_out\,
      I4 => \orig_address0[9]_INST_0_i_9_n_0\,
      O => \orig_address0[9]_INST_0_i_3_n_0\
    );
\orig_address0[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020002000000"
    )
        port map (
      I0 => \orig_address0[7]_INST_0_i_3_n_0\,
      I1 => \orig_address0[6]_INST_0_i_3_n_0\,
      I2 => \orig_address0[5]_INST_0_i_2_n_0\,
      I3 => \orig_address0[9]_INST_0_i_12_n_0\,
      I4 => \^c_fu_84_reg[0]\,
      I5 => \orig_address0[9]_INST_0_i_13_n_0\,
      O => \orig_address0[9]_INST_0_i_4_n_0\
    );
\orig_address0[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F0F0F1FFFFFFFF"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => \empty_6_reg_737_reg[4]\(2),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(0),
      I5 => \empty_6_reg_737_reg[4]\(4),
      O => \orig_address0[9]_INST_0_i_8_n_0\
    );
\orig_address0[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF51"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => \empty_6_reg_737_reg[4]\(3),
      I2 => \empty_6_reg_737_reg[4]\(0),
      I3 => \^c_fu_8401_out\,
      I4 => \empty_6_reg_737_reg[4]\(1),
      I5 => \empty_6_reg_737_reg[4]\(2),
      O => \orig_address0[9]_INST_0_i_9_n_0\
    );
\orig_address1[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB88BBB8BB888B8"
    )
        port map (
      I0 => \orig_address1[9]\(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => add_ln17_3_reg_776(0),
      I4 => Q(1),
      I5 => \^add_ln17_3_fu_473_p2\(0),
      O => orig_address1(0)
    );
\orig_address1[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \orig_address1[9]\(1),
      I1 => Q(3),
      I2 => \orig_address1[1]_INST_0_i_1_n_0\,
      O => orig_address1(1)
    );
\orig_address1[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606F6F6F60606F60"
    )
        port map (
      I0 => add_ln17_3_reg_776(0),
      I1 => add_ln17_3_reg_776(1),
      I2 => Q(2),
      I3 => Q(1),
      I4 => add_ln17_reg_756(0),
      I5 => \^r_fu_88_reg[0]\,
      O => \orig_address1[1]_INST_0_i_1_n_0\
    );
\orig_address1[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B888B8B8B8B8"
    )
        port map (
      I0 => \orig_address1[9]\(2),
      I1 => Q(3),
      I2 => \orig_address1[2]_INST_0_i_1_n_0\,
      I3 => add_ln17_3_reg_776(2),
      I4 => orig_address1_2_sn_1,
      I5 => Q(2),
      O => orig_address1(2)
    );
\orig_address1[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2EE2"
    )
        port map (
      I0 => \^c_fu_84_reg[1]_1\,
      I1 => Q(1),
      I2 => add_ln17_reg_756(1),
      I3 => add_ln17_reg_756(0),
      I4 => Q(2),
      O => \orig_address1[2]_INST_0_i_1_n_0\
    );
\orig_address1[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8888B88B8BB8BBB"
    )
        port map (
      I0 => \orig_address1[9]\(3),
      I1 => Q(3),
      I2 => add_ln17_3_reg_776(3),
      I3 => Q(2),
      I4 => orig_address1_3_sn_1,
      I5 => \orig_address1[3]_INST_0_i_2_n_0\,
      O => orig_address1(3)
    );
\orig_address1[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95FF9500950095FF"
    )
        port map (
      I0 => add_ln17_reg_756(2),
      I1 => add_ln17_reg_756(1),
      I2 => add_ln17_reg_756(0),
      I3 => Q(1),
      I4 => \orig_address1[3]_INST_0_i_3_n_0\,
      I5 => \orig_address1[5]_INST_0_i_5_n_0\,
      O => \orig_address1[3]_INST_0_i_2_n_0\
    );
\orig_address1[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555AAA9A5A6"
    )
        port map (
      I0 => \^select_ln8_fu_383_p3\(2),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \^c_fu_8401_out\,
      I3 => \empty_6_reg_737_reg[4]\(1),
      I4 => \empty_6_reg_737_reg[4]\(2),
      I5 => \^c_fu_84_reg[2]\,
      O => \orig_address1[3]_INST_0_i_3_n_0\
    );
\orig_address1[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAFCAAFCAAFC"
    )
        port map (
      I0 => \orig_address1[9]\(4),
      I1 => orig_address1_4_sn_1,
      I2 => \orig_address1[4]_0\,
      I3 => Q(3),
      I4 => \orig_address0[9]_0\,
      I5 => \^r_fu_88_reg[3]_2\,
      O => orig_address1(4)
    );
\orig_address1[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \orig_address0[9]_INST_0_i_12_n_0\,
      I1 => \^c_fu_84_reg[0]\,
      I2 => \orig_address1[4]_INST_0_i_4_n_0\,
      O => \^r_fu_88_reg[3]_2\
    );
\orig_address1[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFBBEB0A0A2282"
    )
        port map (
      I0 => \orig_address1[5]_INST_0_i_5_n_0\,
      I1 => \orig_address1[4]_INST_0_i_5_n_0\,
      I2 => \empty_6_reg_737_reg[4]\(2),
      I3 => \^c_fu_8401_out\,
      I4 => \^c_fu_84_reg[2]\,
      I5 => \^select_ln8_fu_383_p3\(2),
      O => \orig_address1[4]_INST_0_i_4_n_0\
    );
\orig_address1[4]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000D555"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => ap_loop_init_int,
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => Q(0),
      I4 => \empty_6_reg_737_reg[4]\(1),
      O => \orig_address1[4]_INST_0_i_5_n_0\
    );
\orig_address1[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0DDD0D0D0D0"
    )
        port map (
      I0 => Q(3),
      I1 => \orig_address1[9]\(5),
      I2 => orig_address1_5_sn_1,
      I3 => Q(2),
      I4 => Q(1),
      I5 => \^c_fu_84_reg[1]\,
      O => orig_address1(5)
    );
\orig_address1[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB2B200004D4DFF"
    )
        port map (
      I0 => \orig_address1[5]_INST_0_i_5_n_0\,
      I1 => \orig_address0[3]_INST_0_i_6_n_0\,
      I2 => \^select_ln8_fu_383_p3\(2),
      I3 => \^c_fu_84_reg[0]\,
      I4 => \orig_address0[9]_INST_0_i_12_n_0\,
      I5 => \orig_address0[5]_INST_0_i_2_n_0\,
      O => \^c_fu_84_reg[1]\
    );
\orig_address1[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0000000C080808"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(1),
      I1 => \empty_6_reg_737_reg[4]\(0),
      I2 => \^c_fu_8401_out\,
      I3 => \icmp_ln10_reg_746_reg[0]\(2),
      I4 => \add_ln17_reg_756_reg[9]\,
      I5 => \empty_6_reg_737_reg[4]\(1),
      O => \orig_address1[5]_INST_0_i_5_n_0\
    );
\orig_address1[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0DDD0D0D0D0"
    )
        port map (
      I0 => Q(3),
      I1 => \orig_address1[9]\(6),
      I2 => orig_address1_6_sn_1,
      I3 => Q(2),
      I4 => Q(1),
      I5 => \^r_fu_88_reg[4]_0\,
      O => orig_address1(6)
    );
\orig_address1[6]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \orig_address0[6]_INST_0_i_3_n_0\,
      I1 => \orig_address1[9]_INST_0_i_6_n_0\,
      O => \^r_fu_88_reg[4]_0\
    );
\orig_address1[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0DDD0DDD0D0D0"
    )
        port map (
      I0 => Q(3),
      I1 => \orig_address1[9]\(7),
      I2 => orig_address1_7_sn_1,
      I3 => \orig_address0[9]_0\,
      I4 => \orig_address1[7]_INST_0_i_2_n_0\,
      I5 => \orig_address0[7]_INST_0_i_3_n_0\,
      O => orig_address1(7)
    );
\orig_address1[7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \orig_address0[6]_INST_0_i_3_n_0\,
      I1 => \orig_address1[9]_INST_0_i_6_n_0\,
      O => \orig_address1[7]_INST_0_i_2_n_0\
    );
\orig_address1[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0DDD0D0D0D0"
    )
        port map (
      I0 => Q(3),
      I1 => \orig_address1[9]\(8),
      I2 => orig_address1_8_sn_1,
      I3 => Q(2),
      I4 => Q(1),
      I5 => \^r_fu_88_reg[3]_0\,
      O => orig_address1(8)
    );
\orig_address1[8]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5655"
    )
        port map (
      I0 => \orig_address0[9]_INST_0_i_3_n_0\,
      I1 => \orig_address0[6]_INST_0_i_3_n_0\,
      I2 => \orig_address1[9]_INST_0_i_6_n_0\,
      I3 => \orig_address0[7]_INST_0_i_3_n_0\,
      O => \^r_fu_88_reg[3]_0\
    );
\orig_address1[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAFCAAFCAAFC"
    )
        port map (
      I0 => \orig_address1[9]\(9),
      I1 => \orig_address1[9]_0\,
      I2 => \orig_address1[9]_1\,
      I3 => Q(3),
      I4 => \orig_address0[9]_0\,
      I5 => \^r_fu_88_reg[3]_1\,
      O => orig_address1(9)
    );
\orig_address1[9]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => \orig_address0[9]_INST_0_i_2_n_0\,
      I1 => \orig_address0[9]_INST_0_i_3_n_0\,
      I2 => \orig_address0[7]_INST_0_i_3_n_0\,
      I3 => \orig_address1[9]_INST_0_i_6_n_0\,
      I4 => \orig_address0[6]_INST_0_i_3_n_0\,
      O => \^r_fu_88_reg[3]_1\
    );
\orig_address1[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBFABABBFBFABBF"
    )
        port map (
      I0 => \orig_address0[5]_INST_0_i_2_n_0\,
      I1 => \orig_address0[9]_INST_0_i_12_n_0\,
      I2 => \^c_fu_84_reg[0]\,
      I3 => \^select_ln8_fu_383_p3\(2),
      I4 => \orig_address0[3]_INST_0_i_6_n_0\,
      I5 => \orig_address1[5]_INST_0_i_5_n_0\,
      O => \orig_address1[9]_INST_0_i_6_n_0\
    );
\r_1_reg_732[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(0),
      I1 => ap_loop_init_int,
      I2 => \empty_6_reg_737_reg[1]\,
      O => \^r_fu_88_reg[4]\(0)
    );
\r_1_reg_732[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(1),
      I1 => Q(0),
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_loop_init_int,
      O => \^r_fu_88_reg[4]\(1)
    );
\r_1_reg_732[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(2),
      I1 => Q(0),
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_loop_init_int,
      O => \^r_fu_88_reg[4]\(2)
    );
\r_1_reg_732[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(3),
      I1 => Q(0),
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_loop_init_int,
      O => \^r_fu_88_reg[4]\(3)
    );
\r_1_reg_732[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \empty_6_reg_737_reg[4]\(4),
      I1 => Q(0),
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => ap_loop_init_int,
      O => \^r_fu_88_reg[4]\(4)
    );
\select_ln8_reg_751[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(1),
      I1 => ap_loop_init_int,
      I2 => \empty_6_reg_737_reg[1]\,
      I3 => Q(0),
      O => \^select_ln8_fu_383_p3\(0)
    );
\select_ln8_reg_751[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222220222"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(2),
      I1 => \^c_fu_8401_out\,
      I2 => \icmp_ln10_reg_746_reg[0]\(3),
      I3 => \icmp_ln10_reg_746_reg[0]\(4),
      I4 => \icmp_ln10_reg_746_reg[0]\(1),
      I5 => \icmp_ln10_reg_746_reg[0]\(0),
      O => \^select_ln8_fu_383_p3\(1)
    );
\select_ln8_reg_751[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EF00FF00"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(0),
      I1 => \icmp_ln10_reg_746_reg[0]\(1),
      I2 => \icmp_ln10_reg_746_reg[0]\(4),
      I3 => \icmp_ln10_reg_746_reg[0]\(3),
      I4 => \icmp_ln10_reg_746_reg[0]\(2),
      I5 => \^c_fu_8401_out\,
      O => \^select_ln8_fu_383_p3\(2)
    );
\select_ln8_reg_751[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => \^icmp_ln8_fu_362_p2\,
      O => add_ln17_3_reg_7760
    );
\select_ln8_reg_751[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0F0F0F0"
    )
        port map (
      I0 => \icmp_ln10_reg_746_reg[0]\(0),
      I1 => \icmp_ln10_reg_746_reg[0]\(1),
      I2 => \icmp_ln10_reg_746_reg[0]\(4),
      I3 => \icmp_ln10_reg_746_reg[0]\(3),
      I4 => \icmp_ln10_reg_746_reg[0]\(2),
      I5 => \^c_fu_8401_out\,
      O => \^c_fu_84_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1 is
  port (
    CEP : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_reg_790_reg__1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln18_1_reg_865_reg[30]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \add_ln18_1_reg_865_reg[22]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_7_fu_644_p2__0_carry__1_i_15\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mul_ln17_reg_790_reg[0]__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mul_ln17_reg_790_reg[0]__0_0\ : in STD_LOGIC;
    \add_ln18_7_fu_644_p2__0_carry__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln18_7_fu_644_p2__0_carry__2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \mul_ln17_2_reg_810_reg__1\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1 is
  signal \^cep\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8__3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal \dout_carry_i_1__3_n_0\ : STD_LOGIC;
  signal \dout_carry_i_2__3_n_0\ : STD_LOGIC;
  signal \dout_carry_i_3__3_n_0\ : STD_LOGIC;
  signal \dout_carry_i_4__3_n_0\ : STD_LOGIC;
  signal \dout_carry_i_5__3_n_0\ : STD_LOGIC;
  signal \dout_carry_i_6__3_n_0\ : STD_LOGIC;
  signal \dout_carry_i_7__3_n_0\ : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal \^mul_ln17_reg_790_reg__1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
  CEP <= \^cep\;
  DI(6 downto 0) <= \^di\(6 downto 0);
  \mul_ln17_reg_790_reg__1\(15 downto 0) <= \^mul_ln17_reg_790_reg__1\(15 downto 0);
\add_ln18_7_fu_644_p2__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(6),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(7),
      I2 => \mul_ln17_2_reg_810_reg__1\(6),
      O => \add_ln18_1_reg_865_reg[22]\(6)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__0_carry__1\(0),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(0),
      I2 => \add_ln18_7_fu_644_p2__0_carry__1_i_15\(0),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(1),
      I4 => \^mul_ln17_reg_790_reg__1\(0),
      I5 => \mul_ln17_2_reg_810_reg__1\(0),
      O => S(0)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(5),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(6),
      I2 => \mul_ln17_2_reg_810_reg__1\(5),
      O => \add_ln18_1_reg_865_reg[22]\(5)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(4),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(5),
      I2 => \mul_ln17_2_reg_810_reg__1\(4),
      O => \add_ln18_1_reg_865_reg[22]\(4)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(3),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(4),
      I2 => \mul_ln17_2_reg_810_reg__1\(3),
      O => \add_ln18_1_reg_865_reg[22]\(3)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(2),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(3),
      I2 => \mul_ln17_2_reg_810_reg__1\(2),
      O => \add_ln18_1_reg_865_reg[22]\(2)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(1),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(2),
      I2 => \mul_ln17_2_reg_810_reg__1\(1),
      O => \add_ln18_1_reg_865_reg[22]\(1)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(0),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(1),
      I2 => \mul_ln17_2_reg_810_reg__1\(0),
      O => \add_ln18_1_reg_865_reg[22]\(0)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(13),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(14),
      I2 => \mul_ln17_2_reg_810_reg__1\(13),
      O => \^di\(6)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(12),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(13),
      I2 => \mul_ln17_2_reg_810_reg__1\(12),
      O => \^di\(5)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(11),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(12),
      I2 => \mul_ln17_2_reg_810_reg__1\(11),
      O => \^di\(4)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(10),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(11),
      I2 => \mul_ln17_2_reg_810_reg__1\(10),
      O => \^di\(3)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(9),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(10),
      I2 => \mul_ln17_2_reg_810_reg__1\(9),
      O => \^di\(2)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(8),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(9),
      I2 => \mul_ln17_2_reg_810_reg__1\(8),
      O => \^di\(1)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_reg_790_reg__1\(7),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(8),
      I2 => \mul_ln17_2_reg_810_reg__1\(7),
      O => \^di\(0)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^di\(6),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(15),
      I2 => \^mul_ln17_reg_790_reg__1\(14),
      I3 => \mul_ln17_2_reg_810_reg__1\(14),
      O => \add_ln18_1_reg_865_reg[30]\(0)
    );
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q1(31),
      B(16) => orig_q1(31),
      B(15) => orig_q1(31),
      B(14 downto 0) => orig_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q0(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \^mul_ln17_reg_790_reg__1\(7 downto 0),
      S(7) => \dout_carry_i_1__3_n_0\,
      S(6) => \dout_carry_i_2__3_n_0\,
      S(5) => \dout_carry_i_3__3_n_0\,
      S(4) => \dout_carry_i_4__3_n_0\,
      S(3) => \dout_carry_i_5__3_n_0\,
      S(2) => \dout_carry_i_6__3_n_0\,
      S(1) => \dout_carry_i_7__3_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__0_carry__1_i_15\(1)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7 downto 0) => \^mul_ln17_reg_790_reg__1\(15 downto 8),
      S(7) => \dout_carry__0_i_1__3_n_0\,
      S(6) => \dout_carry__0_i_2__3_n_0\,
      S(5) => \dout_carry__0_i_3__3_n_0\,
      S(4) => \dout_carry__0_i_4__3_n_0\,
      S(3) => \dout_carry__0_i_5__3_n_0\,
      S(2) => \dout_carry__0_i_6__3_n_0\,
      S(1) => \dout_carry__0_i_7__3_n_0\,
      S(0) => \dout_carry__0_i_8__3_n_0\
    );
\dout_carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1__3_n_0\
    );
\dout_carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2__3_n_0\
    );
\dout_carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3__3_n_0\
    );
\dout_carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4__3_n_0\
    );
\dout_carry__0_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5__3_n_0\
    );
\dout_carry__0_i_6__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6__3_n_0\
    );
\dout_carry__0_i_7__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7__3_n_0\
    );
\dout_carry__0_i_8__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8__3_n_0\
    );
\dout_carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => \dout_carry_i_1__3_n_0\
    );
\dout_carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => \dout_carry_i_2__3_n_0\
    );
\dout_carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => \dout_carry_i_3__3_n_0\
    );
\dout_carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => \dout_carry_i_4__3_n_0\
    );
\dout_carry_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => \dout_carry_i_5__3_n_0\
    );
\dout_carry_i_6__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => \dout_carry_i_6__3_n_0\
    );
\dout_carry_i_7__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => \dout_carry_i_7__3_n_0\
    );
\dout_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[0]__0\(0),
      I1 => \mul_ln17_reg_790_reg[0]__0_0\,
      O => \^cep\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_1_reg_795_reg__1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mul_ln17_8_reg_870_reg[30]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \mul_ln17_8_reg_870_reg[22]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    CEP : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_7_fu_644_p2__94_carry__1_i_15\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln18_7_fu_644_p2__94_carry__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln18_7_fu_644_p2__94_carry__2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \mul_ln17_3_reg_815_reg__1\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_0 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_0 is
  signal \^di\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal \dout_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \dout_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \dout_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \dout_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \dout_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \dout_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \dout_carry_i_7__1_n_0\ : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal \^mul_ln17_1_reg_795_reg__1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
  DI(6 downto 0) <= \^di\(6 downto 0);
  \mul_ln17_1_reg_795_reg__1\(15 downto 0) <= \^mul_ln17_1_reg_795_reg__1\(15 downto 0);
\add_ln18_7_fu_644_p2__94_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(6),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(7),
      I2 => \mul_ln17_3_reg_815_reg__1\(6),
      O => \mul_ln17_8_reg_870_reg[22]\(6)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1\(0),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(0),
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_i_15\(0),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(1),
      I4 => \^mul_ln17_1_reg_795_reg__1\(0),
      I5 => \mul_ln17_3_reg_815_reg__1\(0),
      O => S(0)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(5),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(6),
      I2 => \mul_ln17_3_reg_815_reg__1\(5),
      O => \mul_ln17_8_reg_870_reg[22]\(5)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(4),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(5),
      I2 => \mul_ln17_3_reg_815_reg__1\(4),
      O => \mul_ln17_8_reg_870_reg[22]\(4)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(3),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(4),
      I2 => \mul_ln17_3_reg_815_reg__1\(3),
      O => \mul_ln17_8_reg_870_reg[22]\(3)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(2),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(3),
      I2 => \mul_ln17_3_reg_815_reg__1\(2),
      O => \mul_ln17_8_reg_870_reg[22]\(2)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(1),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(2),
      I2 => \mul_ln17_3_reg_815_reg__1\(1),
      O => \mul_ln17_8_reg_870_reg[22]\(1)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(0),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(1),
      I2 => \mul_ln17_3_reg_815_reg__1\(0),
      O => \mul_ln17_8_reg_870_reg[22]\(0)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(13),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(14),
      I2 => \mul_ln17_3_reg_815_reg__1\(13),
      O => \^di\(6)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(12),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(13),
      I2 => \mul_ln17_3_reg_815_reg__1\(12),
      O => \^di\(5)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(11),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(12),
      I2 => \mul_ln17_3_reg_815_reg__1\(11),
      O => \^di\(4)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(10),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(11),
      I2 => \mul_ln17_3_reg_815_reg__1\(10),
      O => \^di\(3)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(9),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(10),
      I2 => \mul_ln17_3_reg_815_reg__1\(9),
      O => \^di\(2)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(8),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(9),
      I2 => \mul_ln17_3_reg_815_reg__1\(8),
      O => \^di\(1)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^mul_ln17_1_reg_795_reg__1\(7),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(8),
      I2 => \mul_ln17_3_reg_815_reg__1\(7),
      O => \^di\(0)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^di\(6),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(15),
      I2 => \^mul_ln17_1_reg_795_reg__1\(14),
      I3 => \mul_ln17_3_reg_815_reg__1\(14),
      O => \mul_ln17_8_reg_870_reg[30]\(0)
    );
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q0(31),
      B(16) => orig_q0(31),
      B(15) => orig_q0(31),
      B(14 downto 0) => orig_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q1(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \^mul_ln17_1_reg_795_reg__1\(7 downto 0),
      S(7) => \dout_carry_i_1__1_n_0\,
      S(6) => \dout_carry_i_2__1_n_0\,
      S(5) => \dout_carry_i_3__1_n_0\,
      S(4) => \dout_carry_i_4__1_n_0\,
      S(3) => \dout_carry_i_5__1_n_0\,
      S(2) => \dout_carry_i_6__1_n_0\,
      S(1) => \dout_carry_i_7__1_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__94_carry__1_i_15\(1)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7 downto 0) => \^mul_ln17_1_reg_795_reg__1\(15 downto 8),
      S(7) => \dout_carry__0_i_1__1_n_0\,
      S(6) => \dout_carry__0_i_2__1_n_0\,
      S(5) => \dout_carry__0_i_3__1_n_0\,
      S(4) => \dout_carry__0_i_4__1_n_0\,
      S(3) => \dout_carry__0_i_5__1_n_0\,
      S(2) => \dout_carry__0_i_6__1_n_0\,
      S(1) => \dout_carry__0_i_7__1_n_0\,
      S(0) => \dout_carry__0_i_8__1_n_0\
    );
\dout_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1__1_n_0\
    );
\dout_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2__1_n_0\
    );
\dout_carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3__1_n_0\
    );
\dout_carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4__1_n_0\
    );
\dout_carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5__1_n_0\
    );
\dout_carry__0_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6__1_n_0\
    );
\dout_carry__0_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7__1_n_0\
    );
\dout_carry__0_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8__1_n_0\
    );
\dout_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => \dout_carry_i_1__1_n_0\
    );
\dout_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => \dout_carry_i_2__1_n_0\
    );
\dout_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => \dout_carry_i_3__1_n_0\
    );
\dout_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => \dout_carry_i_4__1_n_0\
    );
\dout_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => \dout_carry_i_5__1_n_0\
    );
\dout_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => \dout_carry_i_6__1_n_0\
    );
\dout_carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => \dout_carry_i_7__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_1 is
  port (
    CEP : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_2_reg_810_reg[16]__0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    S : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \add_ln18_1_reg_865_reg[30]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_7_fu_644_p2__0_carry__1_i_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mul_ln17_2_reg_810_reg[0]__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mul_ln17_2_reg_810_reg[0]__0_0\ : in STD_LOGIC;
    \add_ln18_7_fu_644_p2__0_carry__2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \mul_ln17_reg_790_reg__1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_1 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_1 is
  signal \^cep\ : STD_LOGIC;
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8__4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal \dout_carry_i_1__4_n_0\ : STD_LOGIC;
  signal \dout_carry_i_2__4_n_0\ : STD_LOGIC;
  signal \dout_carry_i_3__4_n_0\ : STD_LOGIC;
  signal \dout_carry_i_4__4_n_0\ : STD_LOGIC;
  signal \dout_carry_i_5__4_n_0\ : STD_LOGIC;
  signal \dout_carry_i_6__4_n_0\ : STD_LOGIC;
  signal \dout_carry_i_7__4_n_0\ : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal \^mul_ln17_2_reg_810_reg[16]__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \mul_ln17_2_reg_810_reg__1\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
  CEP <= \^cep\;
  \mul_ln17_2_reg_810_reg[16]__0\(14 downto 0) <= \^mul_ln17_2_reg_810_reg[16]__0\(14 downto 0);
\add_ln18_7_fu_644_p2__0_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(5),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(5),
      I2 => \mul_ln17_reg_790_reg__1\(5),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(6),
      I4 => \mul_ln17_reg_790_reg__1\(6),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(6),
      O => S(5)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(4),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(4),
      I2 => \mul_ln17_reg_790_reg__1\(4),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(5),
      I4 => \mul_ln17_reg_790_reg__1\(5),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(5),
      O => S(4)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(3),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(3),
      I2 => \mul_ln17_reg_790_reg__1\(3),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(4),
      I4 => \mul_ln17_reg_790_reg__1\(4),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(4),
      O => S(3)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(2),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(2),
      I2 => \mul_ln17_reg_790_reg__1\(2),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(3),
      I4 => \mul_ln17_reg_790_reg__1\(3),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(3),
      O => S(2)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(1),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(1),
      I2 => \mul_ln17_reg_790_reg__1\(1),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(2),
      I4 => \mul_ln17_reg_790_reg__1\(2),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(2),
      O => S(1)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(0),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(0),
      I2 => \mul_ln17_reg_790_reg__1\(0),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(1),
      I4 => \mul_ln17_reg_790_reg__1\(1),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(1),
      O => S(0)
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(6),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(6),
      I2 => \mul_ln17_reg_790_reg__1\(6),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(7),
      I4 => \mul_ln17_reg_790_reg__1\(7),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(7),
      O => S(6)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(12),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(12),
      I2 => \mul_ln17_reg_790_reg__1\(12),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(13),
      I4 => \mul_ln17_reg_790_reg__1\(13),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(13),
      O => \add_ln18_1_reg_865_reg[30]\(5)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(11),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(11),
      I2 => \mul_ln17_reg_790_reg__1\(11),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(12),
      I4 => \mul_ln17_reg_790_reg__1\(12),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(12),
      O => \add_ln18_1_reg_865_reg[30]\(4)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(10),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(10),
      I2 => \mul_ln17_reg_790_reg__1\(10),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(11),
      I4 => \mul_ln17_reg_790_reg__1\(11),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(11),
      O => \add_ln18_1_reg_865_reg[30]\(3)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(9),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(9),
      I2 => \mul_ln17_reg_790_reg__1\(9),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(10),
      I4 => \mul_ln17_reg_790_reg__1\(10),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(10),
      O => \add_ln18_1_reg_865_reg[30]\(2)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(8),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(8),
      I2 => \mul_ln17_reg_790_reg__1\(8),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(9),
      I4 => \mul_ln17_reg_790_reg__1\(9),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(9),
      O => \add_ln18_1_reg_865_reg[30]\(1)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(7),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(7),
      I2 => \mul_ln17_reg_790_reg__1\(7),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(8),
      I4 => \mul_ln17_reg_790_reg__1\(8),
      I5 => \^mul_ln17_2_reg_810_reg[16]__0\(8),
      O => \add_ln18_1_reg_865_reg[30]\(0)
    );
\add_ln18_7_fu_644_p2__0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_2_reg_810_reg[16]__0\(14),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2\(14),
      I2 => \mul_ln17_reg_790_reg__1\(14),
      I3 => \add_ln18_7_fu_644_p2__0_carry__2\(15),
      I4 => \mul_ln17_reg_790_reg__1\(15),
      I5 => \mul_ln17_2_reg_810_reg__1\(31),
      O => \add_ln18_1_reg_865_reg[30]\(6)
    );
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q1(31),
      B(16) => orig_q1(31),
      B(15) => orig_q1(31),
      B(14 downto 0) => orig_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q0(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \^mul_ln17_2_reg_810_reg[16]__0\(7 downto 0),
      S(7) => \dout_carry_i_1__4_n_0\,
      S(6) => \dout_carry_i_2__4_n_0\,
      S(5) => \dout_carry_i_3__4_n_0\,
      S(4) => \dout_carry_i_4__4_n_0\,
      S(3) => \dout_carry_i_5__4_n_0\,
      S(2) => \dout_carry_i_6__4_n_0\,
      S(1) => \dout_carry_i_7__4_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__0_carry__1_i_7\(0)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7) => \mul_ln17_2_reg_810_reg__1\(31),
      O(6 downto 0) => \^mul_ln17_2_reg_810_reg[16]__0\(14 downto 8),
      S(7) => \dout_carry__0_i_1__4_n_0\,
      S(6) => \dout_carry__0_i_2__4_n_0\,
      S(5) => \dout_carry__0_i_3__4_n_0\,
      S(4) => \dout_carry__0_i_4__4_n_0\,
      S(3) => \dout_carry__0_i_5__4_n_0\,
      S(2) => \dout_carry__0_i_6__4_n_0\,
      S(1) => \dout_carry__0_i_7__4_n_0\,
      S(0) => \dout_carry__0_i_8__4_n_0\
    );
\dout_carry__0_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1__4_n_0\
    );
\dout_carry__0_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2__4_n_0\
    );
\dout_carry__0_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3__4_n_0\
    );
\dout_carry__0_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4__4_n_0\
    );
\dout_carry__0_i_5__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5__4_n_0\
    );
\dout_carry__0_i_6__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6__4_n_0\
    );
\dout_carry__0_i_7__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7__4_n_0\
    );
\dout_carry__0_i_8__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8__4_n_0\
    );
\dout_carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => \dout_carry_i_1__4_n_0\
    );
\dout_carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => \dout_carry_i_2__4_n_0\
    );
\dout_carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => \dout_carry_i_3__4_n_0\
    );
\dout_carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => \dout_carry_i_4__4_n_0\
    );
\dout_carry_i_5__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => \dout_carry_i_5__4_n_0\
    );
\dout_carry_i_6__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => \dout_carry_i_6__4_n_0\
    );
\dout_carry_i_7__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => \dout_carry_i_7__4_n_0\
    );
\dout_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[0]__0\(0),
      I1 => \mul_ln17_2_reg_810_reg[0]__0_0\,
      O => \^cep\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_3_reg_815_reg[16]__0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    S : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \mul_ln17_8_reg_870_reg[30]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    CEP : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_7_fu_644_p2__94_carry__1_i_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln18_7_fu_644_p2__94_carry__2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \mul_ln17_1_reg_795_reg__1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_2 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_2 is
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8__2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal \dout_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \dout_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \dout_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \dout_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \dout_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \dout_carry_i_6__2_n_0\ : STD_LOGIC;
  signal \dout_carry_i_7__2_n_0\ : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal \^mul_ln17_3_reg_815_reg[16]__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \mul_ln17_3_reg_815_reg__1\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
  \mul_ln17_3_reg_815_reg[16]__0\(14 downto 0) <= \^mul_ln17_3_reg_815_reg[16]__0\(14 downto 0);
\add_ln18_7_fu_644_p2__94_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(5),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(5),
      I2 => \mul_ln17_1_reg_795_reg__1\(5),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(6),
      I4 => \mul_ln17_1_reg_795_reg__1\(6),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(6),
      O => S(5)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(4),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(4),
      I2 => \mul_ln17_1_reg_795_reg__1\(4),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(5),
      I4 => \mul_ln17_1_reg_795_reg__1\(5),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(5),
      O => S(4)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(3),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(3),
      I2 => \mul_ln17_1_reg_795_reg__1\(3),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(4),
      I4 => \mul_ln17_1_reg_795_reg__1\(4),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(4),
      O => S(3)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(2),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(2),
      I2 => \mul_ln17_1_reg_795_reg__1\(2),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(3),
      I4 => \mul_ln17_1_reg_795_reg__1\(3),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(3),
      O => S(2)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(1),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(1),
      I2 => \mul_ln17_1_reg_795_reg__1\(1),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(2),
      I4 => \mul_ln17_1_reg_795_reg__1\(2),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(2),
      O => S(1)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(0),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(0),
      I2 => \mul_ln17_1_reg_795_reg__1\(0),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(1),
      I4 => \mul_ln17_1_reg_795_reg__1\(1),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(1),
      O => S(0)
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(6),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(6),
      I2 => \mul_ln17_1_reg_795_reg__1\(6),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(7),
      I4 => \mul_ln17_1_reg_795_reg__1\(7),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(7),
      O => S(6)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(12),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(12),
      I2 => \mul_ln17_1_reg_795_reg__1\(12),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(13),
      I4 => \mul_ln17_1_reg_795_reg__1\(13),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(13),
      O => \mul_ln17_8_reg_870_reg[30]\(5)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(11),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(11),
      I2 => \mul_ln17_1_reg_795_reg__1\(11),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(12),
      I4 => \mul_ln17_1_reg_795_reg__1\(12),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(12),
      O => \mul_ln17_8_reg_870_reg[30]\(4)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(10),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(10),
      I2 => \mul_ln17_1_reg_795_reg__1\(10),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(11),
      I4 => \mul_ln17_1_reg_795_reg__1\(11),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(11),
      O => \mul_ln17_8_reg_870_reg[30]\(3)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(9),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(9),
      I2 => \mul_ln17_1_reg_795_reg__1\(9),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(10),
      I4 => \mul_ln17_1_reg_795_reg__1\(10),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(10),
      O => \mul_ln17_8_reg_870_reg[30]\(2)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(8),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(8),
      I2 => \mul_ln17_1_reg_795_reg__1\(8),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(9),
      I4 => \mul_ln17_1_reg_795_reg__1\(9),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(9),
      O => \mul_ln17_8_reg_870_reg[30]\(1)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(7),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(7),
      I2 => \mul_ln17_1_reg_795_reg__1\(7),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(8),
      I4 => \mul_ln17_1_reg_795_reg__1\(8),
      I5 => \^mul_ln17_3_reg_815_reg[16]__0\(8),
      O => \mul_ln17_8_reg_870_reg[30]\(0)
    );
\add_ln18_7_fu_644_p2__94_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^mul_ln17_3_reg_815_reg[16]__0\(14),
      I1 => \add_ln18_7_fu_644_p2__94_carry__2\(14),
      I2 => \mul_ln17_1_reg_795_reg__1\(14),
      I3 => \add_ln18_7_fu_644_p2__94_carry__2\(15),
      I4 => \mul_ln17_1_reg_795_reg__1\(15),
      I5 => \mul_ln17_3_reg_815_reg__1\(31),
      O => \mul_ln17_8_reg_870_reg[30]\(6)
    );
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q0(31),
      B(16) => orig_q0(31),
      B(15) => orig_q0(31),
      B(14 downto 0) => orig_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q0(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \^mul_ln17_3_reg_815_reg[16]__0\(7 downto 0),
      S(7) => \dout_carry_i_1__2_n_0\,
      S(6) => \dout_carry_i_2__2_n_0\,
      S(5) => \dout_carry_i_3__2_n_0\,
      S(4) => \dout_carry_i_4__2_n_0\,
      S(3) => \dout_carry_i_5__2_n_0\,
      S(2) => \dout_carry_i_6__2_n_0\,
      S(1) => \dout_carry_i_7__2_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__94_carry__1_i_7\(0)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7) => \mul_ln17_3_reg_815_reg__1\(31),
      O(6 downto 0) => \^mul_ln17_3_reg_815_reg[16]__0\(14 downto 8),
      S(7) => \dout_carry__0_i_1__2_n_0\,
      S(6) => \dout_carry__0_i_2__2_n_0\,
      S(5) => \dout_carry__0_i_3__2_n_0\,
      S(4) => \dout_carry__0_i_4__2_n_0\,
      S(3) => \dout_carry__0_i_5__2_n_0\,
      S(2) => \dout_carry__0_i_6__2_n_0\,
      S(1) => \dout_carry__0_i_7__2_n_0\,
      S(0) => \dout_carry__0_i_8__2_n_0\
    );
\dout_carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1__2_n_0\
    );
\dout_carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2__2_n_0\
    );
\dout_carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3__2_n_0\
    );
\dout_carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4__2_n_0\
    );
\dout_carry__0_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5__2_n_0\
    );
\dout_carry__0_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6__2_n_0\
    );
\dout_carry__0_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7__2_n_0\
    );
\dout_carry__0_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8__2_n_0\
    );
\dout_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => \dout_carry_i_1__2_n_0\
    );
\dout_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => \dout_carry_i_2__2_n_0\
    );
\dout_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => \dout_carry_i_3__2_n_0\
    );
\dout_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => \dout_carry_i_4__2_n_0\
    );
\dout_carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => \dout_carry_i_5__2_n_0\
    );
\dout_carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => \dout_carry_i_6__2_n_0\
    );
\dout_carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => \dout_carry_i_7__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_4_reg_830_reg__1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    CEP : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_1_fu_593_p2_carry__1_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_3 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_3 is
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8__5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal \dout_carry_i_1__5_n_0\ : STD_LOGIC;
  signal \dout_carry_i_2__5_n_0\ : STD_LOGIC;
  signal \dout_carry_i_3__5_n_0\ : STD_LOGIC;
  signal \dout_carry_i_4__5_n_0\ : STD_LOGIC;
  signal \dout_carry_i_5__5_n_0\ : STD_LOGIC;
  signal \dout_carry_i_6__5_n_0\ : STD_LOGIC;
  signal \dout_carry_i_7__5_n_0\ : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q1(31),
      B(16) => orig_q1(31),
      B(15) => orig_q1(31),
      B(14 downto 0) => orig_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q1(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \mul_ln17_4_reg_830_reg__1\(7 downto 0),
      S(7) => \dout_carry_i_1__5_n_0\,
      S(6) => \dout_carry_i_2__5_n_0\,
      S(5) => \dout_carry_i_3__5_n_0\,
      S(4) => \dout_carry_i_4__5_n_0\,
      S(3) => \dout_carry_i_5__5_n_0\,
      S(2) => \dout_carry_i_6__5_n_0\,
      S(1) => \dout_carry_i_7__5_n_0\,
      S(0) => \add_ln18_1_fu_593_p2_carry__1_i_8\(0)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7 downto 0) => \mul_ln17_4_reg_830_reg__1\(15 downto 8),
      S(7) => \dout_carry__0_i_1__5_n_0\,
      S(6) => \dout_carry__0_i_2__5_n_0\,
      S(5) => \dout_carry__0_i_3__5_n_0\,
      S(4) => \dout_carry__0_i_4__5_n_0\,
      S(3) => \dout_carry__0_i_5__5_n_0\,
      S(2) => \dout_carry__0_i_6__5_n_0\,
      S(1) => \dout_carry__0_i_7__5_n_0\,
      S(0) => \dout_carry__0_i_8__5_n_0\
    );
\dout_carry__0_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1__5_n_0\
    );
\dout_carry__0_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2__5_n_0\
    );
\dout_carry__0_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3__5_n_0\
    );
\dout_carry__0_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4__5_n_0\
    );
\dout_carry__0_i_5__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5__5_n_0\
    );
\dout_carry__0_i_6__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6__5_n_0\
    );
\dout_carry__0_i_7__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7__5_n_0\
    );
\dout_carry__0_i_8__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8__5_n_0\
    );
\dout_carry_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => \dout_carry_i_1__5_n_0\
    );
\dout_carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => \dout_carry_i_2__5_n_0\
    );
\dout_carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => \dout_carry_i_3__5_n_0\
    );
\dout_carry_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => \dout_carry_i_4__5_n_0\
    );
\dout_carry_i_5__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => \dout_carry_i_5__5_n_0\
    );
\dout_carry_i_6__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => \dout_carry_i_6__5_n_0\
    );
\dout_carry_i_7__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => \dout_carry_i_7__5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_4 is
  port (
    CEP : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_5_reg_835_reg[16]__0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_carry__0_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_1_reg_865_reg[23]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mul_ln17_5_reg_835_reg[0]__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mul_ln17_5_reg_835_reg[0]__0_0\ : in STD_LOGIC;
    \mul_ln17_4_reg_830_reg__1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_4 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_4 is
  signal \^cep\ : STD_LOGIC;
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8__6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal \dout_carry_i_1__6_n_0\ : STD_LOGIC;
  signal \dout_carry_i_2__6_n_0\ : STD_LOGIC;
  signal \dout_carry_i_3__6_n_0\ : STD_LOGIC;
  signal \dout_carry_i_4__6_n_0\ : STD_LOGIC;
  signal \dout_carry_i_5__6_n_0\ : STD_LOGIC;
  signal \dout_carry_i_6__6_n_0\ : STD_LOGIC;
  signal \dout_carry_i_7__6_n_0\ : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal \^mul_ln17_5_reg_835_reg[16]__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \mul_ln17_5_reg_835_reg__1\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
  CEP <= \^cep\;
  \mul_ln17_5_reg_835_reg[16]__0\(14 downto 0) <= \^mul_ln17_5_reg_835_reg[16]__0\(14 downto 0);
\add_ln18_1_fu_593_p2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(7),
      I1 => \mul_ln17_4_reg_830_reg__1\(7),
      O => S(7)
    );
\add_ln18_1_fu_593_p2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(6),
      I1 => \mul_ln17_4_reg_830_reg__1\(6),
      O => S(6)
    );
\add_ln18_1_fu_593_p2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(5),
      I1 => \mul_ln17_4_reg_830_reg__1\(5),
      O => S(5)
    );
\add_ln18_1_fu_593_p2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(4),
      I1 => \mul_ln17_4_reg_830_reg__1\(4),
      O => S(4)
    );
\add_ln18_1_fu_593_p2_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(3),
      I1 => \mul_ln17_4_reg_830_reg__1\(3),
      O => S(3)
    );
\add_ln18_1_fu_593_p2_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(2),
      I1 => \mul_ln17_4_reg_830_reg__1\(2),
      O => S(2)
    );
\add_ln18_1_fu_593_p2_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(1),
      I1 => \mul_ln17_4_reg_830_reg__1\(1),
      O => S(1)
    );
\add_ln18_1_fu_593_p2_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(0),
      I1 => \mul_ln17_4_reg_830_reg__1\(0),
      O => S(0)
    );
\add_ln18_1_fu_593_p2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg__1\(31),
      I1 => \mul_ln17_4_reg_830_reg__1\(15),
      O => \dout_carry__0_0\(7)
    );
\add_ln18_1_fu_593_p2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(14),
      I1 => \mul_ln17_4_reg_830_reg__1\(14),
      O => \dout_carry__0_0\(6)
    );
\add_ln18_1_fu_593_p2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(13),
      I1 => \mul_ln17_4_reg_830_reg__1\(13),
      O => \dout_carry__0_0\(5)
    );
\add_ln18_1_fu_593_p2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(12),
      I1 => \mul_ln17_4_reg_830_reg__1\(12),
      O => \dout_carry__0_0\(4)
    );
\add_ln18_1_fu_593_p2_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(11),
      I1 => \mul_ln17_4_reg_830_reg__1\(11),
      O => \dout_carry__0_0\(3)
    );
\add_ln18_1_fu_593_p2_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(10),
      I1 => \mul_ln17_4_reg_830_reg__1\(10),
      O => \dout_carry__0_0\(2)
    );
\add_ln18_1_fu_593_p2_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(9),
      I1 => \mul_ln17_4_reg_830_reg__1\(9),
      O => \dout_carry__0_0\(1)
    );
\add_ln18_1_fu_593_p2_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_5_reg_835_reg[16]__0\(8),
      I1 => \mul_ln17_4_reg_830_reg__1\(8),
      O => \dout_carry__0_0\(0)
    );
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q0(31),
      B(16) => orig_q0(31),
      B(15) => orig_q0(31),
      B(14 downto 0) => orig_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q0(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \^mul_ln17_5_reg_835_reg[16]__0\(7 downto 0),
      S(7) => \dout_carry_i_1__6_n_0\,
      S(6) => \dout_carry_i_2__6_n_0\,
      S(5) => \dout_carry_i_3__6_n_0\,
      S(4) => \dout_carry_i_4__6_n_0\,
      S(3) => \dout_carry_i_5__6_n_0\,
      S(2) => \dout_carry_i_6__6_n_0\,
      S(1) => \dout_carry_i_7__6_n_0\,
      S(0) => \add_ln18_1_reg_865_reg[23]\(0)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7) => \mul_ln17_5_reg_835_reg__1\(31),
      O(6 downto 0) => \^mul_ln17_5_reg_835_reg[16]__0\(14 downto 8),
      S(7) => \dout_carry__0_i_1__6_n_0\,
      S(6) => \dout_carry__0_i_2__6_n_0\,
      S(5) => \dout_carry__0_i_3__6_n_0\,
      S(4) => \dout_carry__0_i_4__6_n_0\,
      S(3) => \dout_carry__0_i_5__6_n_0\,
      S(2) => \dout_carry__0_i_6__6_n_0\,
      S(1) => \dout_carry__0_i_7__6_n_0\,
      S(0) => \dout_carry__0_i_8__6_n_0\
    );
\dout_carry__0_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1__6_n_0\
    );
\dout_carry__0_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2__6_n_0\
    );
\dout_carry__0_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3__6_n_0\
    );
\dout_carry__0_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4__6_n_0\
    );
\dout_carry__0_i_5__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5__6_n_0\
    );
\dout_carry__0_i_6__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6__6_n_0\
    );
\dout_carry__0_i_7__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7__6_n_0\
    );
\dout_carry__0_i_8__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8__6_n_0\
    );
\dout_carry_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => \dout_carry_i_1__6_n_0\
    );
\dout_carry_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => \dout_carry_i_2__6_n_0\
    );
\dout_carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => \dout_carry_i_3__6_n_0\
    );
\dout_carry_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => \dout_carry_i_4__6_n_0\
    );
\dout_carry_i_5__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => \dout_carry_i_5__6_n_0\
    );
\dout_carry_i_6__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => \dout_carry_i_6__6_n_0\
    );
\dout_carry_i_7__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => \dout_carry_i_7__6_n_0\
    );
\dout_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[0]__0\(0),
      I1 => \mul_ln17_5_reg_835_reg[0]__0_0\,
      O => \^cep\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_5 is
  port (
    CEP : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_6_reg_850_reg[16]__0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_carry__0_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_reg_875_reg[23]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln18_1_reg_865_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln18_1_reg_865_reg[0]_0\ : in STD_LOGIC;
    \mul_ln17_7_reg_855_reg__1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_5 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_5 is
  signal \^cep\ : STD_LOGIC;
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal \dout_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \dout_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \dout_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \dout_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \dout_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \dout_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \dout_carry_i_7__0_n_0\ : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal \^mul_ln17_6_reg_850_reg[16]__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \mul_ln17_6_reg_850_reg__1\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
  CEP <= \^cep\;
  \mul_ln17_6_reg_850_reg[16]__0\(14 downto 0) <= \^mul_ln17_6_reg_850_reg[16]__0\(14 downto 0);
\add_ln18_fu_617_p2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(7),
      I1 => \mul_ln17_7_reg_855_reg__1\(7),
      O => S(7)
    );
\add_ln18_fu_617_p2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(6),
      I1 => \mul_ln17_7_reg_855_reg__1\(6),
      O => S(6)
    );
\add_ln18_fu_617_p2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(5),
      I1 => \mul_ln17_7_reg_855_reg__1\(5),
      O => S(5)
    );
\add_ln18_fu_617_p2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(4),
      I1 => \mul_ln17_7_reg_855_reg__1\(4),
      O => S(4)
    );
\add_ln18_fu_617_p2_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(3),
      I1 => \mul_ln17_7_reg_855_reg__1\(3),
      O => S(3)
    );
\add_ln18_fu_617_p2_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(2),
      I1 => \mul_ln17_7_reg_855_reg__1\(2),
      O => S(2)
    );
\add_ln18_fu_617_p2_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(1),
      I1 => \mul_ln17_7_reg_855_reg__1\(1),
      O => S(1)
    );
\add_ln18_fu_617_p2_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(0),
      I1 => \mul_ln17_7_reg_855_reg__1\(0),
      O => S(0)
    );
\add_ln18_fu_617_p2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg__1\(31),
      I1 => \mul_ln17_7_reg_855_reg__1\(15),
      O => \dout_carry__0_0\(7)
    );
\add_ln18_fu_617_p2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(14),
      I1 => \mul_ln17_7_reg_855_reg__1\(14),
      O => \dout_carry__0_0\(6)
    );
\add_ln18_fu_617_p2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(13),
      I1 => \mul_ln17_7_reg_855_reg__1\(13),
      O => \dout_carry__0_0\(5)
    );
\add_ln18_fu_617_p2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(12),
      I1 => \mul_ln17_7_reg_855_reg__1\(12),
      O => \dout_carry__0_0\(4)
    );
\add_ln18_fu_617_p2_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(11),
      I1 => \mul_ln17_7_reg_855_reg__1\(11),
      O => \dout_carry__0_0\(3)
    );
\add_ln18_fu_617_p2_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(10),
      I1 => \mul_ln17_7_reg_855_reg__1\(10),
      O => \dout_carry__0_0\(2)
    );
\add_ln18_fu_617_p2_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(9),
      I1 => \mul_ln17_7_reg_855_reg__1\(9),
      O => \dout_carry__0_0\(1)
    );
\add_ln18_fu_617_p2_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mul_ln17_6_reg_850_reg[16]__0\(8),
      I1 => \mul_ln17_7_reg_855_reg__1\(8),
      O => \dout_carry__0_0\(0)
    );
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q1(31),
      B(16) => orig_q1(31),
      B(15) => orig_q1(31),
      B(14 downto 0) => orig_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q1(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \^mul_ln17_6_reg_850_reg[16]__0\(7 downto 0),
      S(7) => \dout_carry_i_1__0_n_0\,
      S(6) => \dout_carry_i_2__0_n_0\,
      S(5) => \dout_carry_i_3__0_n_0\,
      S(4) => \dout_carry_i_4__0_n_0\,
      S(3) => \dout_carry_i_5__0_n_0\,
      S(2) => \dout_carry_i_6__0_n_0\,
      S(1) => \dout_carry_i_7__0_n_0\,
      S(0) => \add_ln18_reg_875_reg[23]\(0)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7) => \mul_ln17_6_reg_850_reg__1\(31),
      O(6 downto 0) => \^mul_ln17_6_reg_850_reg[16]__0\(14 downto 8),
      S(7) => \dout_carry__0_i_1__0_n_0\,
      S(6) => \dout_carry__0_i_2__0_n_0\,
      S(5) => \dout_carry__0_i_3__0_n_0\,
      S(4) => \dout_carry__0_i_4__0_n_0\,
      S(3) => \dout_carry__0_i_5__0_n_0\,
      S(2) => \dout_carry__0_i_6__0_n_0\,
      S(1) => \dout_carry__0_i_7__0_n_0\,
      S(0) => \dout_carry__0_i_8__0_n_0\
    );
\dout_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1__0_n_0\
    );
\dout_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2__0_n_0\
    );
\dout_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3__0_n_0\
    );
\dout_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4__0_n_0\
    );
\dout_carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5__0_n_0\
    );
\dout_carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6__0_n_0\
    );
\dout_carry__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7__0_n_0\
    );
\dout_carry__0_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8__0_n_0\
    );
\dout_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => \dout_carry_i_1__0_n_0\
    );
\dout_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => \dout_carry_i_2__0_n_0\
    );
\dout_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => \dout_carry_i_3__0_n_0\
    );
\dout_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => \dout_carry_i_4__0_n_0\
    );
\dout_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => \dout_carry_i_5__0_n_0\
    );
\dout_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => \dout_carry_i_6__0_n_0\
    );
\dout_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => \dout_carry_i_7__0_n_0\
    );
dout_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \add_ln18_1_reg_865_reg[0]\(0),
      I1 => \add_ln18_1_reg_865_reg[0]_0\,
      O => \^cep\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \mul_ln17_7_reg_855_reg__1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    CEP : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \add_ln18_fu_617_p2_carry__1_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_6 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_6 is
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \dout_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \dout_carry__0_n_1\ : STD_LOGIC;
  signal \dout_carry__0_n_2\ : STD_LOGIC;
  signal \dout_carry__0_n_3\ : STD_LOGIC;
  signal \dout_carry__0_n_4\ : STD_LOGIC;
  signal \dout_carry__0_n_5\ : STD_LOGIC;
  signal \dout_carry__0_n_6\ : STD_LOGIC;
  signal \dout_carry__0_n_7\ : STD_LOGIC;
  signal dout_carry_i_1_n_0 : STD_LOGIC;
  signal dout_carry_i_2_n_0 : STD_LOGIC;
  signal dout_carry_i_3_n_0 : STD_LOGIC;
  signal dout_carry_i_4_n_0 : STD_LOGIC;
  signal dout_carry_i_5_n_0 : STD_LOGIC;
  signal dout_carry_i_6_n_0 : STD_LOGIC;
  signal dout_carry_i_7_n_0 : STD_LOGIC;
  signal dout_carry_n_0 : STD_LOGIC;
  signal dout_carry_n_1 : STD_LOGIC;
  signal dout_carry_n_2 : STD_LOGIC;
  signal dout_carry_n_3 : STD_LOGIC;
  signal dout_carry_n_4 : STD_LOGIC;
  signal dout_carry_n_5 : STD_LOGIC;
  signal dout_carry_n_6 : STD_LOGIC;
  signal dout_carry_n_7 : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
begin
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q0(31),
      B(16) => orig_q0(31),
      B(15) => orig_q0(31),
      B(14 downto 0) => orig_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q0(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
dout_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => dout_carry_n_0,
      CO(6) => dout_carry_n_1,
      CO(5) => dout_carry_n_2,
      CO(4) => dout_carry_n_3,
      CO(3) => dout_carry_n_4,
      CO(2) => dout_carry_n_5,
      CO(1) => dout_carry_n_6,
      CO(0) => dout_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \mul_ln17_7_reg_855_reg__1\(7 downto 0),
      S(7) => dout_carry_i_1_n_0,
      S(6) => dout_carry_i_2_n_0,
      S(5) => dout_carry_i_3_n_0,
      S(4) => dout_carry_i_4_n_0,
      S(3) => dout_carry_i_5_n_0,
      S(2) => dout_carry_i_6_n_0,
      S(1) => dout_carry_i_7_n_0,
      S(0) => \add_ln18_fu_617_p2_carry__1_i_8\(0)
    );
\dout_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => dout_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_dout_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \dout_carry__0_n_1\,
      CO(5) => \dout_carry__0_n_2\,
      CO(4) => \dout_carry__0_n_3\,
      CO(3) => \dout_carry__0_n_4\,
      CO(2) => \dout_carry__0_n_5\,
      CO(1) => \dout_carry__0_n_6\,
      CO(0) => \dout_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => P(13 downto 7),
      O(7 downto 0) => \mul_ln17_7_reg_855_reg__1\(15 downto 8),
      S(7) => \dout_carry__0_i_1_n_0\,
      S(6) => \dout_carry__0_i_2_n_0\,
      S(5) => \dout_carry__0_i_3_n_0\,
      S(4) => \dout_carry__0_i_4_n_0\,
      S(3) => \dout_carry__0_i_5_n_0\,
      S(2) => \dout_carry__0_i_6_n_0\,
      S(1) => \dout_carry__0_i_7_n_0\,
      S(0) => \dout_carry__0_i_8_n_0\
    );
\dout_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => dout_n_91,
      O => \dout_carry__0_i_1_n_0\
    );
\dout_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => dout_n_92,
      O => \dout_carry__0_i_2_n_0\
    );
\dout_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => dout_n_93,
      O => \dout_carry__0_i_3_n_0\
    );
\dout_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => dout_n_94,
      O => \dout_carry__0_i_4_n_0\
    );
\dout_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => dout_n_95,
      O => \dout_carry__0_i_5_n_0\
    );
\dout_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => dout_n_96,
      O => \dout_carry__0_i_6_n_0\
    );
\dout_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => dout_n_97,
      O => \dout_carry__0_i_7_n_0\
    );
\dout_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => dout_n_98,
      O => \dout_carry__0_i_8_n_0\
    );
dout_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => dout_n_99,
      O => dout_carry_i_1_n_0
    );
dout_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => dout_n_100,
      O => dout_carry_i_2_n_0
    );
dout_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => dout_n_101,
      O => dout_carry_i_3_n_0
    );
dout_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => dout_n_102,
      O => dout_carry_i_4_n_0
    );
dout_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => dout_n_103,
      O => dout_carry_i_5_n_0
    );
dout_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => dout_n_104,
      O => dout_carry_i_6_n_0
    );
dout_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => dout_n_105,
      O => dout_carry_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_7 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_7 : entity is "stencil_2d_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_7 is
  signal \dout__0_n_106\ : STD_LOGIC;
  signal \dout__0_n_107\ : STD_LOGIC;
  signal \dout__0_n_108\ : STD_LOGIC;
  signal \dout__0_n_109\ : STD_LOGIC;
  signal \dout__0_n_110\ : STD_LOGIC;
  signal \dout__0_n_111\ : STD_LOGIC;
  signal \dout__0_n_112\ : STD_LOGIC;
  signal \dout__0_n_113\ : STD_LOGIC;
  signal \dout__0_n_114\ : STD_LOGIC;
  signal \dout__0_n_115\ : STD_LOGIC;
  signal \dout__0_n_116\ : STD_LOGIC;
  signal \dout__0_n_117\ : STD_LOGIC;
  signal \dout__0_n_118\ : STD_LOGIC;
  signal \dout__0_n_119\ : STD_LOGIC;
  signal \dout__0_n_120\ : STD_LOGIC;
  signal \dout__0_n_121\ : STD_LOGIC;
  signal \dout__0_n_122\ : STD_LOGIC;
  signal \dout__0_n_123\ : STD_LOGIC;
  signal \dout__0_n_124\ : STD_LOGIC;
  signal \dout__0_n_125\ : STD_LOGIC;
  signal \dout__0_n_126\ : STD_LOGIC;
  signal \dout__0_n_127\ : STD_LOGIC;
  signal \dout__0_n_128\ : STD_LOGIC;
  signal \dout__0_n_129\ : STD_LOGIC;
  signal \dout__0_n_130\ : STD_LOGIC;
  signal \dout__0_n_131\ : STD_LOGIC;
  signal \dout__0_n_132\ : STD_LOGIC;
  signal \dout__0_n_133\ : STD_LOGIC;
  signal \dout__0_n_134\ : STD_LOGIC;
  signal \dout__0_n_135\ : STD_LOGIC;
  signal \dout__0_n_136\ : STD_LOGIC;
  signal \dout__0_n_137\ : STD_LOGIC;
  signal \dout__0_n_138\ : STD_LOGIC;
  signal \dout__0_n_139\ : STD_LOGIC;
  signal \dout__0_n_140\ : STD_LOGIC;
  signal \dout__0_n_141\ : STD_LOGIC;
  signal \dout__0_n_142\ : STD_LOGIC;
  signal \dout__0_n_143\ : STD_LOGIC;
  signal \dout__0_n_144\ : STD_LOGIC;
  signal \dout__0_n_145\ : STD_LOGIC;
  signal \dout__0_n_146\ : STD_LOGIC;
  signal \dout__0_n_147\ : STD_LOGIC;
  signal \dout__0_n_148\ : STD_LOGIC;
  signal \dout__0_n_149\ : STD_LOGIC;
  signal \dout__0_n_150\ : STD_LOGIC;
  signal \dout__0_n_151\ : STD_LOGIC;
  signal \dout__0_n_152\ : STD_LOGIC;
  signal \dout__0_n_153\ : STD_LOGIC;
  signal \dout__0_n_58\ : STD_LOGIC;
  signal \dout__0_n_59\ : STD_LOGIC;
  signal \dout__0_n_60\ : STD_LOGIC;
  signal \dout__0_n_61\ : STD_LOGIC;
  signal \dout__0_n_62\ : STD_LOGIC;
  signal \dout__0_n_63\ : STD_LOGIC;
  signal \dout__0_n_64\ : STD_LOGIC;
  signal \dout__0_n_65\ : STD_LOGIC;
  signal \dout__0_n_66\ : STD_LOGIC;
  signal \dout__0_n_67\ : STD_LOGIC;
  signal \dout__0_n_68\ : STD_LOGIC;
  signal \dout__0_n_69\ : STD_LOGIC;
  signal \dout__0_n_70\ : STD_LOGIC;
  signal \dout__0_n_71\ : STD_LOGIC;
  signal \dout__0_n_72\ : STD_LOGIC;
  signal \dout__0_n_73\ : STD_LOGIC;
  signal \dout__0_n_74\ : STD_LOGIC;
  signal \dout__0_n_75\ : STD_LOGIC;
  signal \dout__0_n_76\ : STD_LOGIC;
  signal \dout__0_n_77\ : STD_LOGIC;
  signal \dout__0_n_78\ : STD_LOGIC;
  signal \dout__0_n_79\ : STD_LOGIC;
  signal \dout__0_n_80\ : STD_LOGIC;
  signal \dout__0_n_81\ : STD_LOGIC;
  signal \dout__0_n_82\ : STD_LOGIC;
  signal \dout__0_n_83\ : STD_LOGIC;
  signal \dout__0_n_84\ : STD_LOGIC;
  signal \dout__0_n_85\ : STD_LOGIC;
  signal \dout__0_n_86\ : STD_LOGIC;
  signal \dout__0_n_87\ : STD_LOGIC;
  signal \dout__0_n_88\ : STD_LOGIC;
  signal \dout__0_n_89\ : STD_LOGIC;
  signal \dout__1_n_100\ : STD_LOGIC;
  signal \dout__1_n_101\ : STD_LOGIC;
  signal \dout__1_n_102\ : STD_LOGIC;
  signal \dout__1_n_103\ : STD_LOGIC;
  signal \dout__1_n_104\ : STD_LOGIC;
  signal \dout__1_n_105\ : STD_LOGIC;
  signal \dout__1_n_58\ : STD_LOGIC;
  signal \dout__1_n_59\ : STD_LOGIC;
  signal \dout__1_n_60\ : STD_LOGIC;
  signal \dout__1_n_61\ : STD_LOGIC;
  signal \dout__1_n_62\ : STD_LOGIC;
  signal \dout__1_n_63\ : STD_LOGIC;
  signal \dout__1_n_64\ : STD_LOGIC;
  signal \dout__1_n_65\ : STD_LOGIC;
  signal \dout__1_n_66\ : STD_LOGIC;
  signal \dout__1_n_67\ : STD_LOGIC;
  signal \dout__1_n_68\ : STD_LOGIC;
  signal \dout__1_n_69\ : STD_LOGIC;
  signal \dout__1_n_70\ : STD_LOGIC;
  signal \dout__1_n_71\ : STD_LOGIC;
  signal \dout__1_n_72\ : STD_LOGIC;
  signal \dout__1_n_73\ : STD_LOGIC;
  signal \dout__1_n_74\ : STD_LOGIC;
  signal \dout__1_n_75\ : STD_LOGIC;
  signal \dout__1_n_76\ : STD_LOGIC;
  signal \dout__1_n_77\ : STD_LOGIC;
  signal \dout__1_n_78\ : STD_LOGIC;
  signal \dout__1_n_79\ : STD_LOGIC;
  signal \dout__1_n_80\ : STD_LOGIC;
  signal \dout__1_n_81\ : STD_LOGIC;
  signal \dout__1_n_82\ : STD_LOGIC;
  signal \dout__1_n_83\ : STD_LOGIC;
  signal \dout__1_n_84\ : STD_LOGIC;
  signal \dout__1_n_85\ : STD_LOGIC;
  signal \dout__1_n_86\ : STD_LOGIC;
  signal \dout__1_n_87\ : STD_LOGIC;
  signal \dout__1_n_88\ : STD_LOGIC;
  signal \dout__1_n_89\ : STD_LOGIC;
  signal \dout__1_n_90\ : STD_LOGIC;
  signal \dout__1_n_91\ : STD_LOGIC;
  signal \dout__1_n_92\ : STD_LOGIC;
  signal \dout__1_n_93\ : STD_LOGIC;
  signal \dout__1_n_94\ : STD_LOGIC;
  signal \dout__1_n_95\ : STD_LOGIC;
  signal \dout__1_n_96\ : STD_LOGIC;
  signal \dout__1_n_97\ : STD_LOGIC;
  signal \dout__1_n_98\ : STD_LOGIC;
  signal \dout__1_n_99\ : STD_LOGIC;
  signal dout_n_100 : STD_LOGIC;
  signal dout_n_101 : STD_LOGIC;
  signal dout_n_102 : STD_LOGIC;
  signal dout_n_103 : STD_LOGIC;
  signal dout_n_104 : STD_LOGIC;
  signal dout_n_105 : STD_LOGIC;
  signal dout_n_106 : STD_LOGIC;
  signal dout_n_107 : STD_LOGIC;
  signal dout_n_108 : STD_LOGIC;
  signal dout_n_109 : STD_LOGIC;
  signal dout_n_110 : STD_LOGIC;
  signal dout_n_111 : STD_LOGIC;
  signal dout_n_112 : STD_LOGIC;
  signal dout_n_113 : STD_LOGIC;
  signal dout_n_114 : STD_LOGIC;
  signal dout_n_115 : STD_LOGIC;
  signal dout_n_116 : STD_LOGIC;
  signal dout_n_117 : STD_LOGIC;
  signal dout_n_118 : STD_LOGIC;
  signal dout_n_119 : STD_LOGIC;
  signal dout_n_120 : STD_LOGIC;
  signal dout_n_121 : STD_LOGIC;
  signal dout_n_122 : STD_LOGIC;
  signal dout_n_123 : STD_LOGIC;
  signal dout_n_124 : STD_LOGIC;
  signal dout_n_125 : STD_LOGIC;
  signal dout_n_126 : STD_LOGIC;
  signal dout_n_127 : STD_LOGIC;
  signal dout_n_128 : STD_LOGIC;
  signal dout_n_129 : STD_LOGIC;
  signal dout_n_130 : STD_LOGIC;
  signal dout_n_131 : STD_LOGIC;
  signal dout_n_132 : STD_LOGIC;
  signal dout_n_133 : STD_LOGIC;
  signal dout_n_134 : STD_LOGIC;
  signal dout_n_135 : STD_LOGIC;
  signal dout_n_136 : STD_LOGIC;
  signal dout_n_137 : STD_LOGIC;
  signal dout_n_138 : STD_LOGIC;
  signal dout_n_139 : STD_LOGIC;
  signal dout_n_140 : STD_LOGIC;
  signal dout_n_141 : STD_LOGIC;
  signal dout_n_142 : STD_LOGIC;
  signal dout_n_143 : STD_LOGIC;
  signal dout_n_144 : STD_LOGIC;
  signal dout_n_145 : STD_LOGIC;
  signal dout_n_146 : STD_LOGIC;
  signal dout_n_147 : STD_LOGIC;
  signal dout_n_148 : STD_LOGIC;
  signal dout_n_149 : STD_LOGIC;
  signal dout_n_150 : STD_LOGIC;
  signal dout_n_151 : STD_LOGIC;
  signal dout_n_152 : STD_LOGIC;
  signal dout_n_153 : STD_LOGIC;
  signal dout_n_58 : STD_LOGIC;
  signal dout_n_59 : STD_LOGIC;
  signal dout_n_60 : STD_LOGIC;
  signal dout_n_61 : STD_LOGIC;
  signal dout_n_62 : STD_LOGIC;
  signal dout_n_63 : STD_LOGIC;
  signal dout_n_64 : STD_LOGIC;
  signal dout_n_65 : STD_LOGIC;
  signal dout_n_66 : STD_LOGIC;
  signal dout_n_67 : STD_LOGIC;
  signal dout_n_68 : STD_LOGIC;
  signal dout_n_69 : STD_LOGIC;
  signal dout_n_70 : STD_LOGIC;
  signal dout_n_71 : STD_LOGIC;
  signal dout_n_72 : STD_LOGIC;
  signal dout_n_73 : STD_LOGIC;
  signal dout_n_74 : STD_LOGIC;
  signal dout_n_75 : STD_LOGIC;
  signal dout_n_76 : STD_LOGIC;
  signal dout_n_77 : STD_LOGIC;
  signal dout_n_78 : STD_LOGIC;
  signal dout_n_79 : STD_LOGIC;
  signal dout_n_80 : STD_LOGIC;
  signal dout_n_81 : STD_LOGIC;
  signal dout_n_82 : STD_LOGIC;
  signal dout_n_83 : STD_LOGIC;
  signal dout_n_84 : STD_LOGIC;
  signal dout_n_85 : STD_LOGIC;
  signal dout_n_86 : STD_LOGIC;
  signal dout_n_87 : STD_LOGIC;
  signal dout_n_88 : STD_LOGIC;
  signal dout_n_89 : STD_LOGIC;
  signal dout_n_90 : STD_LOGIC;
  signal dout_n_91 : STD_LOGIC;
  signal dout_n_92 : STD_LOGIC;
  signal dout_n_93 : STD_LOGIC;
  signal dout_n_94 : STD_LOGIC;
  signal dout_n_95 : STD_LOGIC;
  signal dout_n_96 : STD_LOGIC;
  signal dout_n_97 : STD_LOGIC;
  signal dout_n_98 : STD_LOGIC;
  signal dout_n_99 : STD_LOGIC;
  signal \mul_ln17_8_reg_870[23]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[23]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[23]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[23]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[23]_i_6_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[23]_i_7_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[23]_i_8_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_6_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_7_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_8_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870[31]_i_9_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \mul_ln17_8_reg_870_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal NLW_dout_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_dout__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_dout__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_dout__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_dout__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout__1_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_dout__1_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_ln17_8_reg_870_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute KEEP_HIERARCHY of \dout__1\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mul_ln17_8_reg_870_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \mul_ln17_8_reg_870_reg[31]_i_1\ : label is 35;
begin
dout: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => filter_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => orig_q0(31),
      B(16) => orig_q0(31),
      B(15) => orig_q0(31),
      B(14 downto 0) => orig_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_dout_OVERFLOW_UNCONNECTED,
      P(47) => dout_n_58,
      P(46) => dout_n_59,
      P(45) => dout_n_60,
      P(44) => dout_n_61,
      P(43) => dout_n_62,
      P(42) => dout_n_63,
      P(41) => dout_n_64,
      P(40) => dout_n_65,
      P(39) => dout_n_66,
      P(38) => dout_n_67,
      P(37) => dout_n_68,
      P(36) => dout_n_69,
      P(35) => dout_n_70,
      P(34) => dout_n_71,
      P(33) => dout_n_72,
      P(32) => dout_n_73,
      P(31) => dout_n_74,
      P(30) => dout_n_75,
      P(29) => dout_n_76,
      P(28) => dout_n_77,
      P(27) => dout_n_78,
      P(26) => dout_n_79,
      P(25) => dout_n_80,
      P(24) => dout_n_81,
      P(23) => dout_n_82,
      P(22) => dout_n_83,
      P(21) => dout_n_84,
      P(20) => dout_n_85,
      P(19) => dout_n_86,
      P(18) => dout_n_87,
      P(17) => dout_n_88,
      P(16) => dout_n_89,
      P(15) => dout_n_90,
      P(14) => dout_n_91,
      P(13) => dout_n_92,
      P(12) => dout_n_93,
      P(11) => dout_n_94,
      P(10) => dout_n_95,
      P(9) => dout_n_96,
      P(8) => dout_n_97,
      P(7) => dout_n_98,
      P(6) => dout_n_99,
      P(5) => dout_n_100,
      P(4) => dout_n_101,
      P(3) => dout_n_102,
      P(2) => dout_n_103,
      P(1) => dout_n_104,
      P(0) => dout_n_105,
      PATTERNBDETECT => NLW_dout_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => dout_n_106,
      PCOUT(46) => dout_n_107,
      PCOUT(45) => dout_n_108,
      PCOUT(44) => dout_n_109,
      PCOUT(43) => dout_n_110,
      PCOUT(42) => dout_n_111,
      PCOUT(41) => dout_n_112,
      PCOUT(40) => dout_n_113,
      PCOUT(39) => dout_n_114,
      PCOUT(38) => dout_n_115,
      PCOUT(37) => dout_n_116,
      PCOUT(36) => dout_n_117,
      PCOUT(35) => dout_n_118,
      PCOUT(34) => dout_n_119,
      PCOUT(33) => dout_n_120,
      PCOUT(32) => dout_n_121,
      PCOUT(31) => dout_n_122,
      PCOUT(30) => dout_n_123,
      PCOUT(29) => dout_n_124,
      PCOUT(28) => dout_n_125,
      PCOUT(27) => dout_n_126,
      PCOUT(26) => dout_n_127,
      PCOUT(25) => dout_n_128,
      PCOUT(24) => dout_n_129,
      PCOUT(23) => dout_n_130,
      PCOUT(22) => dout_n_131,
      PCOUT(21) => dout_n_132,
      PCOUT(20) => dout_n_133,
      PCOUT(19) => dout_n_134,
      PCOUT(18) => dout_n_135,
      PCOUT(17) => dout_n_136,
      PCOUT(16) => dout_n_137,
      PCOUT(15) => dout_n_138,
      PCOUT(14) => dout_n_139,
      PCOUT(13) => dout_n_140,
      PCOUT(12) => dout_n_141,
      PCOUT(11) => dout_n_142,
      PCOUT(10) => dout_n_143,
      PCOUT(9) => dout_n_144,
      PCOUT(8) => dout_n_145,
      PCOUT(7) => dout_n_146,
      PCOUT(6) => dout_n_147,
      PCOUT(5) => dout_n_148,
      PCOUT(4) => dout_n_149,
      PCOUT(3) => dout_n_150,
      PCOUT(2) => dout_n_151,
      PCOUT(1) => dout_n_152,
      PCOUT(0) => dout_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_dout_XOROUT_UNCONNECTED(7 downto 0)
    );
\dout__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => filter_q1(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_dout__0_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__0_n_58\,
      P(46) => \dout__0_n_59\,
      P(45) => \dout__0_n_60\,
      P(44) => \dout__0_n_61\,
      P(43) => \dout__0_n_62\,
      P(42) => \dout__0_n_63\,
      P(41) => \dout__0_n_64\,
      P(40) => \dout__0_n_65\,
      P(39) => \dout__0_n_66\,
      P(38) => \dout__0_n_67\,
      P(37) => \dout__0_n_68\,
      P(36) => \dout__0_n_69\,
      P(35) => \dout__0_n_70\,
      P(34) => \dout__0_n_71\,
      P(33) => \dout__0_n_72\,
      P(32) => \dout__0_n_73\,
      P(31) => \dout__0_n_74\,
      P(30) => \dout__0_n_75\,
      P(29) => \dout__0_n_76\,
      P(28) => \dout__0_n_77\,
      P(27) => \dout__0_n_78\,
      P(26) => \dout__0_n_79\,
      P(25) => \dout__0_n_80\,
      P(24) => \dout__0_n_81\,
      P(23) => \dout__0_n_82\,
      P(22) => \dout__0_n_83\,
      P(21) => \dout__0_n_84\,
      P(20) => \dout__0_n_85\,
      P(19) => \dout__0_n_86\,
      P(18) => \dout__0_n_87\,
      P(17) => \dout__0_n_88\,
      P(16) => \dout__0_n_89\,
      P(15 downto 0) => D(15 downto 0),
      PATTERNBDETECT => \NLW_dout__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \dout__0_n_106\,
      PCOUT(46) => \dout__0_n_107\,
      PCOUT(45) => \dout__0_n_108\,
      PCOUT(44) => \dout__0_n_109\,
      PCOUT(43) => \dout__0_n_110\,
      PCOUT(42) => \dout__0_n_111\,
      PCOUT(41) => \dout__0_n_112\,
      PCOUT(40) => \dout__0_n_113\,
      PCOUT(39) => \dout__0_n_114\,
      PCOUT(38) => \dout__0_n_115\,
      PCOUT(37) => \dout__0_n_116\,
      PCOUT(36) => \dout__0_n_117\,
      PCOUT(35) => \dout__0_n_118\,
      PCOUT(34) => \dout__0_n_119\,
      PCOUT(33) => \dout__0_n_120\,
      PCOUT(32) => \dout__0_n_121\,
      PCOUT(31) => \dout__0_n_122\,
      PCOUT(30) => \dout__0_n_123\,
      PCOUT(29) => \dout__0_n_124\,
      PCOUT(28) => \dout__0_n_125\,
      PCOUT(27) => \dout__0_n_126\,
      PCOUT(26) => \dout__0_n_127\,
      PCOUT(25) => \dout__0_n_128\,
      PCOUT(24) => \dout__0_n_129\,
      PCOUT(23) => \dout__0_n_130\,
      PCOUT(22) => \dout__0_n_131\,
      PCOUT(21) => \dout__0_n_132\,
      PCOUT(20) => \dout__0_n_133\,
      PCOUT(19) => \dout__0_n_134\,
      PCOUT(18) => \dout__0_n_135\,
      PCOUT(17) => \dout__0_n_136\,
      PCOUT(16) => \dout__0_n_137\,
      PCOUT(15) => \dout__0_n_138\,
      PCOUT(14) => \dout__0_n_139\,
      PCOUT(13) => \dout__0_n_140\,
      PCOUT(12) => \dout__0_n_141\,
      PCOUT(11) => \dout__0_n_142\,
      PCOUT(10) => \dout__0_n_143\,
      PCOUT(9) => \dout__0_n_144\,
      PCOUT(8) => \dout__0_n_145\,
      PCOUT(7) => \dout__0_n_146\,
      PCOUT(6) => \dout__0_n_147\,
      PCOUT(5) => \dout__0_n_148\,
      PCOUT(4) => \dout__0_n_149\,
      PCOUT(3) => \dout__0_n_150\,
      PCOUT(2) => \dout__0_n_151\,
      PCOUT(1) => \dout__0_n_152\,
      PCOUT(0) => \dout__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\dout__1\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q1(31),
      B(16) => filter_q1(31),
      B(15) => filter_q1(31),
      B(14 downto 0) => filter_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_dout__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => \NLW_dout__1_OVERFLOW_UNCONNECTED\,
      P(47) => \dout__1_n_58\,
      P(46) => \dout__1_n_59\,
      P(45) => \dout__1_n_60\,
      P(44) => \dout__1_n_61\,
      P(43) => \dout__1_n_62\,
      P(42) => \dout__1_n_63\,
      P(41) => \dout__1_n_64\,
      P(40) => \dout__1_n_65\,
      P(39) => \dout__1_n_66\,
      P(38) => \dout__1_n_67\,
      P(37) => \dout__1_n_68\,
      P(36) => \dout__1_n_69\,
      P(35) => \dout__1_n_70\,
      P(34) => \dout__1_n_71\,
      P(33) => \dout__1_n_72\,
      P(32) => \dout__1_n_73\,
      P(31) => \dout__1_n_74\,
      P(30) => \dout__1_n_75\,
      P(29) => \dout__1_n_76\,
      P(28) => \dout__1_n_77\,
      P(27) => \dout__1_n_78\,
      P(26) => \dout__1_n_79\,
      P(25) => \dout__1_n_80\,
      P(24) => \dout__1_n_81\,
      P(23) => \dout__1_n_82\,
      P(22) => \dout__1_n_83\,
      P(21) => \dout__1_n_84\,
      P(20) => \dout__1_n_85\,
      P(19) => \dout__1_n_86\,
      P(18) => \dout__1_n_87\,
      P(17) => \dout__1_n_88\,
      P(16) => \dout__1_n_89\,
      P(15) => \dout__1_n_90\,
      P(14) => \dout__1_n_91\,
      P(13) => \dout__1_n_92\,
      P(12) => \dout__1_n_93\,
      P(11) => \dout__1_n_94\,
      P(10) => \dout__1_n_95\,
      P(9) => \dout__1_n_96\,
      P(8) => \dout__1_n_97\,
      P(7) => \dout__1_n_98\,
      P(6) => \dout__1_n_99\,
      P(5) => \dout__1_n_100\,
      P(4) => \dout__1_n_101\,
      P(3) => \dout__1_n_102\,
      P(2) => \dout__1_n_103\,
      P(1) => \dout__1_n_104\,
      P(0) => \dout__1_n_105\,
      PATTERNBDETECT => \NLW_dout__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_dout__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \dout__0_n_106\,
      PCIN(46) => \dout__0_n_107\,
      PCIN(45) => \dout__0_n_108\,
      PCIN(44) => \dout__0_n_109\,
      PCIN(43) => \dout__0_n_110\,
      PCIN(42) => \dout__0_n_111\,
      PCIN(41) => \dout__0_n_112\,
      PCIN(40) => \dout__0_n_113\,
      PCIN(39) => \dout__0_n_114\,
      PCIN(38) => \dout__0_n_115\,
      PCIN(37) => \dout__0_n_116\,
      PCIN(36) => \dout__0_n_117\,
      PCIN(35) => \dout__0_n_118\,
      PCIN(34) => \dout__0_n_119\,
      PCIN(33) => \dout__0_n_120\,
      PCIN(32) => \dout__0_n_121\,
      PCIN(31) => \dout__0_n_122\,
      PCIN(30) => \dout__0_n_123\,
      PCIN(29) => \dout__0_n_124\,
      PCIN(28) => \dout__0_n_125\,
      PCIN(27) => \dout__0_n_126\,
      PCIN(26) => \dout__0_n_127\,
      PCIN(25) => \dout__0_n_128\,
      PCIN(24) => \dout__0_n_129\,
      PCIN(23) => \dout__0_n_130\,
      PCIN(22) => \dout__0_n_131\,
      PCIN(21) => \dout__0_n_132\,
      PCIN(20) => \dout__0_n_133\,
      PCIN(19) => \dout__0_n_134\,
      PCIN(18) => \dout__0_n_135\,
      PCIN(17) => \dout__0_n_136\,
      PCIN(16) => \dout__0_n_137\,
      PCIN(15) => \dout__0_n_138\,
      PCIN(14) => \dout__0_n_139\,
      PCIN(13) => \dout__0_n_140\,
      PCIN(12) => \dout__0_n_141\,
      PCIN(11) => \dout__0_n_142\,
      PCIN(10) => \dout__0_n_143\,
      PCIN(9) => \dout__0_n_144\,
      PCIN(8) => \dout__0_n_145\,
      PCIN(7) => \dout__0_n_146\,
      PCIN(6) => \dout__0_n_147\,
      PCIN(5) => \dout__0_n_148\,
      PCIN(4) => \dout__0_n_149\,
      PCIN(3) => \dout__0_n_150\,
      PCIN(2) => \dout__0_n_151\,
      PCIN(1) => \dout__0_n_152\,
      PCIN(0) => \dout__0_n_153\,
      PCOUT(47 downto 0) => \NLW_dout__1_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_dout__1_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_dout__1_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_ln17_8_reg_870[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_99\,
      I1 => dout_n_99,
      O => \mul_ln17_8_reg_870[23]_i_2_n_0\
    );
\mul_ln17_8_reg_870[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_100\,
      I1 => dout_n_100,
      O => \mul_ln17_8_reg_870[23]_i_3_n_0\
    );
\mul_ln17_8_reg_870[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_101\,
      I1 => dout_n_101,
      O => \mul_ln17_8_reg_870[23]_i_4_n_0\
    );
\mul_ln17_8_reg_870[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_102\,
      I1 => dout_n_102,
      O => \mul_ln17_8_reg_870[23]_i_5_n_0\
    );
\mul_ln17_8_reg_870[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_103\,
      I1 => dout_n_103,
      O => \mul_ln17_8_reg_870[23]_i_6_n_0\
    );
\mul_ln17_8_reg_870[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_104\,
      I1 => dout_n_104,
      O => \mul_ln17_8_reg_870[23]_i_7_n_0\
    );
\mul_ln17_8_reg_870[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_105\,
      I1 => dout_n_105,
      O => \mul_ln17_8_reg_870[23]_i_8_n_0\
    );
\mul_ln17_8_reg_870[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_91\,
      I1 => dout_n_91,
      O => \mul_ln17_8_reg_870[31]_i_2_n_0\
    );
\mul_ln17_8_reg_870[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_92\,
      I1 => dout_n_92,
      O => \mul_ln17_8_reg_870[31]_i_3_n_0\
    );
\mul_ln17_8_reg_870[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_93\,
      I1 => dout_n_93,
      O => \mul_ln17_8_reg_870[31]_i_4_n_0\
    );
\mul_ln17_8_reg_870[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_94\,
      I1 => dout_n_94,
      O => \mul_ln17_8_reg_870[31]_i_5_n_0\
    );
\mul_ln17_8_reg_870[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_95\,
      I1 => dout_n_95,
      O => \mul_ln17_8_reg_870[31]_i_6_n_0\
    );
\mul_ln17_8_reg_870[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_96\,
      I1 => dout_n_96,
      O => \mul_ln17_8_reg_870[31]_i_7_n_0\
    );
\mul_ln17_8_reg_870[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_97\,
      I1 => dout_n_97,
      O => \mul_ln17_8_reg_870[31]_i_8_n_0\
    );
\mul_ln17_8_reg_870[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__1_n_98\,
      I1 => dout_n_98,
      O => \mul_ln17_8_reg_870[31]_i_9_n_0\
    );
\mul_ln17_8_reg_870_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \mul_ln17_8_reg_870_reg[23]_i_1_n_0\,
      CO(6) => \mul_ln17_8_reg_870_reg[23]_i_1_n_1\,
      CO(5) => \mul_ln17_8_reg_870_reg[23]_i_1_n_2\,
      CO(4) => \mul_ln17_8_reg_870_reg[23]_i_1_n_3\,
      CO(3) => \mul_ln17_8_reg_870_reg[23]_i_1_n_4\,
      CO(2) => \mul_ln17_8_reg_870_reg[23]_i_1_n_5\,
      CO(1) => \mul_ln17_8_reg_870_reg[23]_i_1_n_6\,
      CO(0) => \mul_ln17_8_reg_870_reg[23]_i_1_n_7\,
      DI(7) => \dout__1_n_99\,
      DI(6) => \dout__1_n_100\,
      DI(5) => \dout__1_n_101\,
      DI(4) => \dout__1_n_102\,
      DI(3) => \dout__1_n_103\,
      DI(2) => \dout__1_n_104\,
      DI(1) => \dout__1_n_105\,
      DI(0) => '0',
      O(7 downto 0) => D(23 downto 16),
      S(7) => \mul_ln17_8_reg_870[23]_i_2_n_0\,
      S(6) => \mul_ln17_8_reg_870[23]_i_3_n_0\,
      S(5) => \mul_ln17_8_reg_870[23]_i_4_n_0\,
      S(4) => \mul_ln17_8_reg_870[23]_i_5_n_0\,
      S(3) => \mul_ln17_8_reg_870[23]_i_6_n_0\,
      S(2) => \mul_ln17_8_reg_870[23]_i_7_n_0\,
      S(1) => \mul_ln17_8_reg_870[23]_i_8_n_0\,
      S(0) => \dout__0_n_89\
    );
\mul_ln17_8_reg_870_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \mul_ln17_8_reg_870_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_mul_ln17_8_reg_870_reg[31]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \mul_ln17_8_reg_870_reg[31]_i_1_n_1\,
      CO(5) => \mul_ln17_8_reg_870_reg[31]_i_1_n_2\,
      CO(4) => \mul_ln17_8_reg_870_reg[31]_i_1_n_3\,
      CO(3) => \mul_ln17_8_reg_870_reg[31]_i_1_n_4\,
      CO(2) => \mul_ln17_8_reg_870_reg[31]_i_1_n_5\,
      CO(1) => \mul_ln17_8_reg_870_reg[31]_i_1_n_6\,
      CO(0) => \mul_ln17_8_reg_870_reg[31]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \dout__1_n_92\,
      DI(5) => \dout__1_n_93\,
      DI(4) => \dout__1_n_94\,
      DI(3) => \dout__1_n_95\,
      DI(2) => \dout__1_n_96\,
      DI(1) => \dout__1_n_97\,
      DI(0) => \dout__1_n_98\,
      O(7 downto 0) => D(31 downto 24),
      S(7) => \mul_ln17_8_reg_870[31]_i_2_n_0\,
      S(6) => \mul_ln17_8_reg_870[31]_i_3_n_0\,
      S(5) => \mul_ln17_8_reg_870[31]_i_4_n_0\,
      S(4) => \mul_ln17_8_reg_870[31]_i_5_n_0\,
      S(3) => \mul_ln17_8_reg_870[31]_i_6_n_0\,
      S(2) => \mul_ln17_8_reg_870[31]_i_7_n_0\,
      S(1) => \mul_ln17_8_reg_870[31]_i_8_n_0\,
      S(0) => \mul_ln17_8_reg_870[31]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2 is
  port (
    orig_ce0 : out STD_LOGIC;
    orig_ce1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    orig_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    sol_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst : in STD_LOGIC;
    \empty_6_reg_737_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_ln10_fu_597_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal add_ln17_3_fu_473_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal add_ln17_3_reg_776 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal add_ln17_3_reg_7760 : STD_LOGIC;
  signal \add_ln17_3_reg_776[7]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln17_3_reg_776[7]_i_6_n_0\ : STD_LOGIC;
  signal add_ln17_6_fu_479_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal add_ln17_6_reg_783 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \add_ln17_6_reg_783[7]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln17_6_reg_783[7]_i_6_n_0\ : STD_LOGIC;
  signal add_ln17_reg_756 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal add_ln18_1_fu_593_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \add_ln18_1_fu_593_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__0_n_7\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_0\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_1\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_2\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_3\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_4\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_5\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_6\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__1_n_7\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__2_n_1\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__2_n_2\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__2_n_3\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__2_n_4\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__2_n_5\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__2_n_6\ : STD_LOGIC;
  signal \add_ln18_1_fu_593_p2_carry__2_n_7\ : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_1_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_2_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_3_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_4_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_5_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_6_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_7_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_i_8_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_0 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_1 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_2 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_3 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_4 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_5 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_6 : STD_LOGIC;
  signal add_ln18_1_fu_593_p2_carry_n_7 : STD_LOGIC;
  signal add_ln18_1_reg_865 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_ln18_1_reg_8650 : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__0_n_9\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__1_n_9\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry__2_n_9\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__0_carry_n_9\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__0_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__1_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry__2_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__188_carry_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__0_n_9\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__1_n_9\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry__2_n_9\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_10_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_11_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_12_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_13_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_14_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_15_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_i_9_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_0\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_1\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_10\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_11\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_12\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_13\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_14\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_15\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_2\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_3\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_4\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_5\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_6\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_7\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_8\ : STD_LOGIC;
  signal \add_ln18_7_fu_644_p2__94_carry_n_9\ : STD_LOGIC;
  signal add_ln18_fu_617_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \add_ln18_fu_617_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__0_n_7\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_0\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_1\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_2\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_3\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_4\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_5\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_6\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__1_n_7\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__2_n_1\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__2_n_2\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__2_n_3\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__2_n_4\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__2_n_5\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__2_n_6\ : STD_LOGIC;
  signal \add_ln18_fu_617_p2_carry__2_n_7\ : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_1_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_2_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_3_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_4_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_5_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_6_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_7_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_i_8_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_0 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_1 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_2 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_3 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_4 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_5 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_6 : STD_LOGIC;
  signal add_ln18_fu_617_p2_carry_n_7 : STD_LOGIC;
  signal add_ln18_reg_875 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_ln8_fu_368_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_sig_allocacmp_r_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal c_fu_84 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal c_fu_840 : STD_LOGIC;
  signal c_fu_8401_out : STD_LOGIC;
  signal \dout__3\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal empty_6_fu_298_p2 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal empty_6_reg_737 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal flow_control_loop_pipe_sequential_init_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_26 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_39 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_51 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_52 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_53 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_59 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_60 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_61 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_62 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_66 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_67 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_68 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_69 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_70 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_82 : STD_LOGIC;
  signal icmp_ln10_reg_746 : STD_LOGIC;
  signal icmp_ln8_fu_362_p2 : STD_LOGIC;
  signal \icmp_ln8_reg_742_reg_n_0_[0]\ : STD_LOGIC;
  signal indvar_flatten_fu_92 : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[0]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[1]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[2]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[3]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[4]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[5]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[6]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[7]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[8]\ : STD_LOGIC;
  signal \indvar_flatten_fu_92_reg_n_0_[9]\ : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_65 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_82 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_83 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_84 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_85 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_86 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_87 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_88 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_89 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_90 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_91 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_92 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_93 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_94 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_95 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_96 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_97 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_0 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_81 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_82 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_83 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_84 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_85 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_86 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_87 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_88 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_89 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_90 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_91 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_92 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_93 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_94 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_95 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_96 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_65 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_81 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_82 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_83 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_84 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_85 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_86 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_87 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_88 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_89 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_90 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_91 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_92 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_93 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_94 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_0 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_80 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_81 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_82 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_83 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_84 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_85 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_86 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_87 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_88 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_89 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_90 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_91 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_92 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U4_n_93 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_0 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U5_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_65 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_81 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_82 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_83 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_84 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_85 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_86 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_87 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_88 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_89 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_90 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_91 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_92 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_93 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_94 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_95 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U6_n_96 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_65 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_81 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_82 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_83 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_84 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_85 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_86 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_87 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_88 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_89 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_90 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_91 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_92 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_93 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_94 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_95 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U7_n_96 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_0 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_12 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_13 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_14 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_15 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_2 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_3 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_31 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_32 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_33 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_34 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_35 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_36 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_37 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_38 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_39 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_4 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_40 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_41 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_42 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_43 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_44 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_45 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_46 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_47 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_48 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_49 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_5 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_50 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_51 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_52 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_53 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_54 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_55 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_56 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_57 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_58 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_59 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_6 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U8_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U9_n_31 : STD_LOGIC;
  signal mul_ln17_1_reg_7950 : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_1_reg_795_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal mul_ln17_1_reg_795_reg_n_100 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_101 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_102 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_103 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_104 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_105 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_58 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_59 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_60 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_61 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_62 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_63 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_64 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_65 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_66 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_67 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_68 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_69 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_70 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_71 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_72 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_73 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_74 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_75 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_76 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_77 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_78 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_79 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_80 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_81 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_82 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_83 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_84 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_85 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_86 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_87 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_88 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_89 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_90 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_91 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_92 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_93 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_94 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_95 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_96 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_97 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_98 : STD_LOGIC;
  signal mul_ln17_1_reg_795_reg_n_99 : STD_LOGIC;
  signal mul_ln17_2_reg_8100 : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_2_reg_810_reg__1\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal mul_ln17_2_reg_810_reg_n_100 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_101 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_102 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_103 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_104 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_105 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_58 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_59 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_60 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_61 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_62 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_63 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_64 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_65 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_66 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_67 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_68 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_69 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_70 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_71 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_72 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_73 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_74 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_75 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_76 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_77 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_78 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_79 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_80 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_81 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_82 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_83 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_84 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_85 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_86 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_87 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_88 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_89 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_90 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_91 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_92 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_93 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_94 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_95 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_96 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_97 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_98 : STD_LOGIC;
  signal mul_ln17_2_reg_810_reg_n_99 : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_3_reg_815_reg__1\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal mul_ln17_3_reg_815_reg_n_100 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_101 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_102 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_103 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_104 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_105 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_58 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_59 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_60 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_61 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_62 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_63 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_64 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_65 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_66 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_67 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_68 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_69 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_70 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_71 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_72 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_73 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_74 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_75 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_76 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_77 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_78 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_79 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_80 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_81 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_82 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_83 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_84 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_85 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_86 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_87 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_88 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_89 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_90 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_91 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_92 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_93 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_94 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_95 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_96 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_97 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_98 : STD_LOGIC;
  signal mul_ln17_3_reg_815_reg_n_99 : STD_LOGIC;
  signal mul_ln17_4_reg_8300 : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_4_reg_830_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal mul_ln17_4_reg_830_reg_n_100 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_101 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_102 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_103 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_104 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_105 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_58 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_59 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_60 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_61 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_62 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_63 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_64 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_65 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_66 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_67 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_68 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_69 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_70 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_71 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_72 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_73 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_74 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_75 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_76 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_77 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_78 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_79 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_80 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_81 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_82 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_83 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_84 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_85 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_86 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_87 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_88 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_89 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_90 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_91 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_92 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_93 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_94 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_95 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_96 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_97 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_98 : STD_LOGIC;
  signal mul_ln17_4_reg_830_reg_n_99 : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_5_reg_835_reg__1\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal mul_ln17_5_reg_835_reg_n_100 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_101 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_102 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_103 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_104 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_105 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_58 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_59 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_60 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_61 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_62 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_63 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_64 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_65 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_66 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_67 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_68 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_69 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_70 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_71 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_72 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_73 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_74 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_75 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_76 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_77 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_78 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_79 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_80 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_81 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_82 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_83 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_84 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_85 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_86 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_87 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_88 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_89 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_90 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_91 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_92 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_93 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_94 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_95 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_96 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_97 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_98 : STD_LOGIC;
  signal mul_ln17_5_reg_835_reg_n_99 : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_6_reg_850_reg__1\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal mul_ln17_6_reg_850_reg_n_100 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_101 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_102 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_103 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_104 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_105 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_58 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_59 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_60 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_61 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_62 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_63 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_64 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_65 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_66 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_67 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_68 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_69 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_70 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_71 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_72 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_73 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_74 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_75 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_76 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_77 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_78 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_79 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_80 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_81 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_82 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_83 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_84 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_85 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_86 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_87 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_88 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_89 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_90 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_91 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_92 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_93 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_94 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_95 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_96 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_97 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_98 : STD_LOGIC;
  signal mul_ln17_6_reg_850_reg_n_99 : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_7_reg_855_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal mul_ln17_7_reg_855_reg_n_100 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_101 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_102 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_103 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_104 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_105 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_58 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_59 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_60 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_61 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_62 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_63 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_64 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_65 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_66 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_67 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_68 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_69 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_70 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_71 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_72 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_73 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_74 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_75 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_76 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_77 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_78 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_79 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_80 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_81 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_82 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_83 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_84 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_85 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_86 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_87 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_88 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_89 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_90 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_91 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_92 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_93 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_94 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_95 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_96 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_97 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_98 : STD_LOGIC;
  signal mul_ln17_7_reg_855_reg_n_99 : STD_LOGIC;
  signal mul_ln17_8_reg_870 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mul_ln17_reg_790_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln17_reg_790_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal mul_ln17_reg_790_reg_n_100 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_101 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_102 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_103 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_104 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_105 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_58 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_59 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_60 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_61 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_62 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_63 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_64 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_65 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_66 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_67 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_68 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_69 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_70 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_71 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_72 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_73 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_74 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_75 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_76 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_77 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_78 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_79 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_80 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_81 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_82 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_83 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_84 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_85 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_86 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_87 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_88 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_89 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_90 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_91 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_92 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_93 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_94 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_95 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_96 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_97 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_98 : STD_LOGIC;
  signal mul_ln17_reg_790_reg_n_99 : STD_LOGIC;
  signal \orig_address0[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \orig_address0[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \orig_address0[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address0[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \orig_address0[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address0[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address0[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address0[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \orig_address0[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \orig_address1[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address1[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address1[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address1[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address1[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \orig_address1[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address1[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address1[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address1[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \orig_address1[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \orig_address1[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \orig_address1[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \orig_address1[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal r_1_reg_732 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_fu_88 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal select_ln8_4_fu_568_p3 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal select_ln8_fu_383_p3 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal select_ln8_reg_751 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^sol_d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_add_ln18_1_fu_593_p2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_add_ln18_7_fu_644_p2__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_add_ln18_7_fu_644_p2__188_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_add_ln18_7_fu_644_p2__94_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_add_ln18_fu_617_p2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_mul_ln17_1_reg_795_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_1_reg_795_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_1_reg_795_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_1_reg_795_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_1_reg_795_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_1_reg_795_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_1_reg_795_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_1_reg_795_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_1_reg_795_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_1_reg_795_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_1_reg_795_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln17_2_reg_810_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_2_reg_810_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_2_reg_810_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_2_reg_810_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_2_reg_810_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_2_reg_810_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_2_reg_810_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_2_reg_810_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_2_reg_810_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_2_reg_810_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_2_reg_810_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln17_3_reg_815_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_3_reg_815_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_3_reg_815_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_3_reg_815_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_3_reg_815_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_3_reg_815_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_3_reg_815_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_3_reg_815_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_3_reg_815_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_3_reg_815_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_3_reg_815_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln17_4_reg_830_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_4_reg_830_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_4_reg_830_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_4_reg_830_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_4_reg_830_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_4_reg_830_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_4_reg_830_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_4_reg_830_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_4_reg_830_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_4_reg_830_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_4_reg_830_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln17_5_reg_835_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_5_reg_835_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_5_reg_835_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_5_reg_835_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_5_reg_835_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_5_reg_835_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_5_reg_835_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_5_reg_835_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_5_reg_835_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_5_reg_835_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_5_reg_835_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln17_6_reg_850_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_6_reg_850_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_6_reg_850_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_6_reg_850_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_6_reg_850_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_6_reg_850_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_6_reg_850_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_6_reg_850_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_6_reg_850_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_6_reg_850_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_6_reg_850_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln17_7_reg_855_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_7_reg_855_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_7_reg_855_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_7_reg_855_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_7_reg_855_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_7_reg_855_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_7_reg_855_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_7_reg_855_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_7_reg_855_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_7_reg_855_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_7_reg_855_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln17_reg_790_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_reg_790_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_reg_790_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_reg_790_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_reg_790_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_reg_790_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln17_reg_790_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln17_reg_790_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln17_reg_790_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln17_reg_790_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln17_reg_790_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of add_ln18_1_fu_593_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_1_fu_593_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_1_fu_593_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_1_fu_593_p2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__188_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__188_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__188_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__188_carry__2\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \add_ln18_7_fu_644_p2__188_carry_i_15\ : label is "lutpair0";
  attribute HLUTNM of \add_ln18_7_fu_644_p2__188_carry_i_7\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__94_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__94_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__94_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_7_fu_644_p2__94_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of add_ln18_fu_617_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_fu_617_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_fu_617_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln18_fu_617_p2_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_2\ : label is "soft_lutpair16";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute SOFT_HLUTNM of \c_fu_84[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \c_fu_84[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \c_fu_84[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \c_fu_84[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \c_fu_84[4]_i_3\ : label is "soft_lutpair17";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of mul_ln17_1_reg_795_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_1_reg_795_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln17_2_reg_810_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_2_reg_810_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln17_3_reg_815_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_3_reg_815_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln17_4_reg_830_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_4_reg_830_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln17_5_reg_835_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_5_reg_835_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln17_6_reg_850_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_6_reg_850_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln17_7_reg_855_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_7_reg_855_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln17_reg_790_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln17_reg_790_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute SOFT_HLUTNM of \orig_address0[3]_INST_0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \orig_address0[3]_INST_0_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \orig_address0[4]_INST_0_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \orig_address0[5]_INST_0_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \orig_address0[5]_INST_0_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \orig_address0[5]_INST_0_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \orig_address0[6]_INST_0_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \orig_address0[6]_INST_0_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \orig_address0[6]_INST_0_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \orig_address0[6]_INST_0_i_9\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \orig_address0[7]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \orig_address0[7]_INST_0_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \orig_address0[7]_INST_0_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \orig_address0[9]_INST_0_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \orig_address1[2]_INST_0_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \orig_address1[3]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \orig_address1[5]_INST_0_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \orig_address1[5]_INST_0_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \orig_address1[6]_INST_0_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \orig_address1[6]_INST_0_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \orig_address1[7]_INST_0_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_fu_88[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_fu_88[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_fu_88[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_fu_88[3]_i_1\ : label is "soft_lutpair29";
begin
  E(0) <= \^e\(0);
  sol_d0(31 downto 0) <= \^sol_d0\(31 downto 0);
\add21_lcssa_lcssa_phi_fu_80_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(0),
      Q => ap_return(0),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(10),
      Q => ap_return(10),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(11),
      Q => ap_return(11),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(12),
      Q => ap_return(12),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(13),
      Q => ap_return(13),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(14),
      Q => ap_return(14),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(15),
      Q => ap_return(15),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(16),
      Q => ap_return(16),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(17),
      Q => ap_return(17),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(18),
      Q => ap_return(18),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(19),
      Q => ap_return(19),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(1),
      Q => ap_return(1),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(20),
      Q => ap_return(20),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(21),
      Q => ap_return(21),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(22),
      Q => ap_return(22),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(23),
      Q => ap_return(23),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(24),
      Q => ap_return(24),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(25),
      Q => ap_return(25),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(26),
      Q => ap_return(26),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(27),
      Q => ap_return(27),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(28),
      Q => ap_return(28),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(29),
      Q => ap_return(29),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(2),
      Q => ap_return(2),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(30),
      Q => ap_return(30),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(31),
      Q => ap_return(31),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(3),
      Q => ap_return(3),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(4),
      Q => ap_return(4),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(5),
      Q => ap_return(5),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(6),
      Q => ap_return(6),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(7),
      Q => ap_return(7),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(8),
      Q => ap_return(8),
      R => '0'
    );
\add21_lcssa_lcssa_phi_fu_80_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^sol_d0\(9),
      Q => ap_return(9),
      R => '0'
    );
\add_ln17_3_reg_776[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA95555555"
    )
        port map (
      I0 => ap_sig_allocacmp_r_1(3),
      I1 => flow_control_loop_pipe_sequential_init_U_n_51,
      I2 => r_fu_88(0),
      I3 => ap_sig_allocacmp_r_1(1),
      I4 => r_fu_88(2),
      I5 => flow_control_loop_pipe_sequential_init_U_n_10,
      O => \add_ln17_3_reg_776[7]_i_5_n_0\
    );
\add_ln17_3_reg_776[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"12222222EDDDDDDD"
    )
        port map (
      I0 => r_fu_88(2),
      I1 => c_fu_8401_out,
      I2 => flow_control_loop_pipe_sequential_init_U_n_51,
      I3 => r_fu_88(0),
      I4 => r_fu_88(1),
      I5 => select_ln8_fu_383_p3(3),
      O => \add_ln17_3_reg_776[7]_i_6_n_0\
    );
\add_ln17_3_reg_776_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(0),
      Q => add_ln17_3_reg_776(0),
      R => '0'
    );
\add_ln17_3_reg_776_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(1),
      Q => add_ln17_3_reg_776(1),
      R => '0'
    );
\add_ln17_3_reg_776_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(2),
      Q => add_ln17_3_reg_776(2),
      R => '0'
    );
\add_ln17_3_reg_776_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(3),
      Q => add_ln17_3_reg_776(3),
      R => '0'
    );
\add_ln17_3_reg_776_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(4),
      Q => add_ln17_3_reg_776(4),
      R => '0'
    );
\add_ln17_3_reg_776_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(5),
      Q => add_ln17_3_reg_776(5),
      R => '0'
    );
\add_ln17_3_reg_776_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(6),
      Q => add_ln17_3_reg_776(6),
      R => '0'
    );
\add_ln17_3_reg_776_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(7),
      Q => add_ln17_3_reg_776(7),
      R => '0'
    );
\add_ln17_3_reg_776_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(8),
      Q => add_ln17_3_reg_776(8),
      R => '0'
    );
\add_ln17_3_reg_776_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_3_fu_473_p2(9),
      Q => add_ln17_3_reg_776(9),
      R => '0'
    );
\add_ln17_6_reg_783[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7D2882D7"
    )
        port map (
      I0 => flow_control_loop_pipe_sequential_init_U_n_51,
      I1 => flow_control_loop_pipe_sequential_init_U_n_52,
      I2 => flow_control_loop_pipe_sequential_init_U_n_82,
      I3 => empty_6_fu_298_p2(3),
      I4 => flow_control_loop_pipe_sequential_init_U_n_10,
      O => \add_ln17_6_reg_783[7]_i_5_n_0\
    );
\add_ln17_6_reg_783[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11221222EEDDEDDD"
    )
        port map (
      I0 => r_fu_88(2),
      I1 => c_fu_8401_out,
      I2 => r_fu_88(0),
      I3 => r_fu_88(1),
      I4 => flow_control_loop_pipe_sequential_init_U_n_51,
      I5 => select_ln8_fu_383_p3(3),
      O => \add_ln17_6_reg_783[7]_i_6_n_0\
    );
\add_ln17_6_reg_783_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(0),
      Q => add_ln17_6_reg_783(0),
      R => '0'
    );
\add_ln17_6_reg_783_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(1),
      Q => add_ln17_6_reg_783(1),
      R => '0'
    );
\add_ln17_6_reg_783_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(2),
      Q => add_ln17_6_reg_783(2),
      R => '0'
    );
\add_ln17_6_reg_783_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(3),
      Q => add_ln17_6_reg_783(3),
      R => '0'
    );
\add_ln17_6_reg_783_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(4),
      Q => add_ln17_6_reg_783(4),
      R => '0'
    );
\add_ln17_6_reg_783_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(5),
      Q => add_ln17_6_reg_783(5),
      R => '0'
    );
\add_ln17_6_reg_783_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(6),
      Q => add_ln17_6_reg_783(6),
      R => '0'
    );
\add_ln17_6_reg_783_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(7),
      Q => add_ln17_6_reg_783(7),
      R => '0'
    );
\add_ln17_6_reg_783_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(8),
      Q => add_ln17_6_reg_783(8),
      R => '0'
    );
\add_ln17_6_reg_783_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => add_ln17_6_fu_479_p2(9),
      Q => add_ln17_6_reg_783(9),
      R => '0'
    );
\add_ln17_reg_756_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_39,
      Q => add_ln17_reg_756(1),
      R => '0'
    );
\add_ln17_reg_756_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_70,
      Q => add_ln17_reg_756(2),
      R => '0'
    );
\add_ln17_reg_756_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_69,
      Q => add_ln17_reg_756(3),
      R => '0'
    );
\add_ln17_reg_756_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_67,
      Q => add_ln17_reg_756(4),
      R => '0'
    );
\add_ln17_reg_756_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_68,
      Q => add_ln17_reg_756(5),
      R => '0'
    );
\add_ln17_reg_756_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_62,
      Q => add_ln17_reg_756(6),
      R => '0'
    );
\add_ln17_reg_756_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_61,
      Q => add_ln17_reg_756(7),
      R => '0'
    );
\add_ln17_reg_756_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_59,
      Q => add_ln17_reg_756(8),
      R => '0'
    );
\add_ln17_reg_756_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_60,
      Q => add_ln17_reg_756(9),
      R => '0'
    );
add_ln18_1_fu_593_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => add_ln18_1_fu_593_p2_carry_n_0,
      CO(6) => add_ln18_1_fu_593_p2_carry_n_1,
      CO(5) => add_ln18_1_fu_593_p2_carry_n_2,
      CO(4) => add_ln18_1_fu_593_p2_carry_n_3,
      CO(3) => add_ln18_1_fu_593_p2_carry_n_4,
      CO(2) => add_ln18_1_fu_593_p2_carry_n_5,
      CO(1) => add_ln18_1_fu_593_p2_carry_n_6,
      CO(0) => add_ln18_1_fu_593_p2_carry_n_7,
      DI(7) => \mul_ln17_5_reg_835_reg[7]__0_n_0\,
      DI(6) => \mul_ln17_5_reg_835_reg[6]__0_n_0\,
      DI(5) => \mul_ln17_5_reg_835_reg[5]__0_n_0\,
      DI(4) => \mul_ln17_5_reg_835_reg[4]__0_n_0\,
      DI(3) => \mul_ln17_5_reg_835_reg[3]__0_n_0\,
      DI(2) => \mul_ln17_5_reg_835_reg[2]__0_n_0\,
      DI(1) => \mul_ln17_5_reg_835_reg[1]__0_n_0\,
      DI(0) => \mul_ln17_5_reg_835_reg[0]__0_n_0\,
      O(7 downto 0) => add_ln18_1_fu_593_p2(7 downto 0),
      S(7) => add_ln18_1_fu_593_p2_carry_i_1_n_0,
      S(6) => add_ln18_1_fu_593_p2_carry_i_2_n_0,
      S(5) => add_ln18_1_fu_593_p2_carry_i_3_n_0,
      S(4) => add_ln18_1_fu_593_p2_carry_i_4_n_0,
      S(3) => add_ln18_1_fu_593_p2_carry_i_5_n_0,
      S(2) => add_ln18_1_fu_593_p2_carry_i_6_n_0,
      S(1) => add_ln18_1_fu_593_p2_carry_i_7_n_0,
      S(0) => add_ln18_1_fu_593_p2_carry_i_8_n_0
    );
\add_ln18_1_fu_593_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => add_ln18_1_fu_593_p2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \add_ln18_1_fu_593_p2_carry__0_n_0\,
      CO(6) => \add_ln18_1_fu_593_p2_carry__0_n_1\,
      CO(5) => \add_ln18_1_fu_593_p2_carry__0_n_2\,
      CO(4) => \add_ln18_1_fu_593_p2_carry__0_n_3\,
      CO(3) => \add_ln18_1_fu_593_p2_carry__0_n_4\,
      CO(2) => \add_ln18_1_fu_593_p2_carry__0_n_5\,
      CO(1) => \add_ln18_1_fu_593_p2_carry__0_n_6\,
      CO(0) => \add_ln18_1_fu_593_p2_carry__0_n_7\,
      DI(7) => \mul_ln17_5_reg_835_reg[15]__0_n_0\,
      DI(6) => \mul_ln17_5_reg_835_reg[14]__0_n_0\,
      DI(5) => \mul_ln17_5_reg_835_reg[13]__0_n_0\,
      DI(4) => \mul_ln17_5_reg_835_reg[12]__0_n_0\,
      DI(3) => \mul_ln17_5_reg_835_reg[11]__0_n_0\,
      DI(2) => \mul_ln17_5_reg_835_reg[10]__0_n_0\,
      DI(1) => \mul_ln17_5_reg_835_reg[9]__0_n_0\,
      DI(0) => \mul_ln17_5_reg_835_reg[8]__0_n_0\,
      O(7 downto 0) => add_ln18_1_fu_593_p2(15 downto 8),
      S(7) => \add_ln18_1_fu_593_p2_carry__0_i_1_n_0\,
      S(6) => \add_ln18_1_fu_593_p2_carry__0_i_2_n_0\,
      S(5) => \add_ln18_1_fu_593_p2_carry__0_i_3_n_0\,
      S(4) => \add_ln18_1_fu_593_p2_carry__0_i_4_n_0\,
      S(3) => \add_ln18_1_fu_593_p2_carry__0_i_5_n_0\,
      S(2) => \add_ln18_1_fu_593_p2_carry__0_i_6_n_0\,
      S(1) => \add_ln18_1_fu_593_p2_carry__0_i_7_n_0\,
      S(0) => \add_ln18_1_fu_593_p2_carry__0_i_8_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[15]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[15]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_1_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[14]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[14]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_2_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[13]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[13]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_3_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[12]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[12]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_4_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[11]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[11]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_5_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[10]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[10]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_6_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[9]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[9]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_7_n_0\
    );
\add_ln18_1_fu_593_p2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[8]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[8]__0_n_0\,
      O => \add_ln18_1_fu_593_p2_carry__0_i_8_n_0\
    );
\add_ln18_1_fu_593_p2_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_1_fu_593_p2_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_1_fu_593_p2_carry__1_n_0\,
      CO(6) => \add_ln18_1_fu_593_p2_carry__1_n_1\,
      CO(5) => \add_ln18_1_fu_593_p2_carry__1_n_2\,
      CO(4) => \add_ln18_1_fu_593_p2_carry__1_n_3\,
      CO(3) => \add_ln18_1_fu_593_p2_carry__1_n_4\,
      CO(2) => \add_ln18_1_fu_593_p2_carry__1_n_5\,
      CO(1) => \add_ln18_1_fu_593_p2_carry__1_n_6\,
      CO(0) => \add_ln18_1_fu_593_p2_carry__1_n_7\,
      DI(7 downto 0) => \mul_ln17_5_reg_835_reg__1\(23 downto 16),
      O(7 downto 0) => add_ln18_1_fu_593_p2(23 downto 16),
      S(7) => mul_32s_32s_32_1_1_U6_n_81,
      S(6) => mul_32s_32s_32_1_1_U6_n_82,
      S(5) => mul_32s_32s_32_1_1_U6_n_83,
      S(4) => mul_32s_32s_32_1_1_U6_n_84,
      S(3) => mul_32s_32s_32_1_1_U6_n_85,
      S(2) => mul_32s_32s_32_1_1_U6_n_86,
      S(1) => mul_32s_32s_32_1_1_U6_n_87,
      S(0) => mul_32s_32s_32_1_1_U6_n_88
    );
\add_ln18_1_fu_593_p2_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_1_fu_593_p2_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_add_ln18_1_fu_593_p2_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \add_ln18_1_fu_593_p2_carry__2_n_1\,
      CO(5) => \add_ln18_1_fu_593_p2_carry__2_n_2\,
      CO(4) => \add_ln18_1_fu_593_p2_carry__2_n_3\,
      CO(3) => \add_ln18_1_fu_593_p2_carry__2_n_4\,
      CO(2) => \add_ln18_1_fu_593_p2_carry__2_n_5\,
      CO(1) => \add_ln18_1_fu_593_p2_carry__2_n_6\,
      CO(0) => \add_ln18_1_fu_593_p2_carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \mul_ln17_5_reg_835_reg__1\(30 downto 24),
      O(7 downto 0) => add_ln18_1_fu_593_p2(31 downto 24),
      S(7) => mul_32s_32s_32_1_1_U6_n_89,
      S(6) => mul_32s_32s_32_1_1_U6_n_90,
      S(5) => mul_32s_32s_32_1_1_U6_n_91,
      S(4) => mul_32s_32s_32_1_1_U6_n_92,
      S(3) => mul_32s_32s_32_1_1_U6_n_93,
      S(2) => mul_32s_32s_32_1_1_U6_n_94,
      S(1) => mul_32s_32s_32_1_1_U6_n_95,
      S(0) => mul_32s_32s_32_1_1_U6_n_96
    );
add_ln18_1_fu_593_p2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[7]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[7]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_1_n_0
    );
add_ln18_1_fu_593_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[6]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[6]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_2_n_0
    );
add_ln18_1_fu_593_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[5]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[5]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_3_n_0
    );
add_ln18_1_fu_593_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[4]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[4]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_4_n_0
    );
add_ln18_1_fu_593_p2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[3]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[3]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_5_n_0
    );
add_ln18_1_fu_593_p2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[2]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[2]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_6_n_0
    );
add_ln18_1_fu_593_p2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[1]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[1]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_7_n_0
    );
add_ln18_1_fu_593_p2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_5_reg_835_reg[0]__0_n_0\,
      I1 => \mul_ln17_4_reg_830_reg[0]__0_n_0\,
      O => add_ln18_1_fu_593_p2_carry_i_8_n_0
    );
\add_ln18_1_reg_865_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(0),
      Q => add_ln18_1_reg_865(0),
      R => '0'
    );
\add_ln18_1_reg_865_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(10),
      Q => add_ln18_1_reg_865(10),
      R => '0'
    );
\add_ln18_1_reg_865_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(11),
      Q => add_ln18_1_reg_865(11),
      R => '0'
    );
\add_ln18_1_reg_865_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(12),
      Q => add_ln18_1_reg_865(12),
      R => '0'
    );
\add_ln18_1_reg_865_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(13),
      Q => add_ln18_1_reg_865(13),
      R => '0'
    );
\add_ln18_1_reg_865_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(14),
      Q => add_ln18_1_reg_865(14),
      R => '0'
    );
\add_ln18_1_reg_865_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(15),
      Q => add_ln18_1_reg_865(15),
      R => '0'
    );
\add_ln18_1_reg_865_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(16),
      Q => add_ln18_1_reg_865(16),
      R => '0'
    );
\add_ln18_1_reg_865_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(17),
      Q => add_ln18_1_reg_865(17),
      R => '0'
    );
\add_ln18_1_reg_865_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(18),
      Q => add_ln18_1_reg_865(18),
      R => '0'
    );
\add_ln18_1_reg_865_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(19),
      Q => add_ln18_1_reg_865(19),
      R => '0'
    );
\add_ln18_1_reg_865_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(1),
      Q => add_ln18_1_reg_865(1),
      R => '0'
    );
\add_ln18_1_reg_865_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(20),
      Q => add_ln18_1_reg_865(20),
      R => '0'
    );
\add_ln18_1_reg_865_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(21),
      Q => add_ln18_1_reg_865(21),
      R => '0'
    );
\add_ln18_1_reg_865_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(22),
      Q => add_ln18_1_reg_865(22),
      R => '0'
    );
\add_ln18_1_reg_865_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(23),
      Q => add_ln18_1_reg_865(23),
      R => '0'
    );
\add_ln18_1_reg_865_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(24),
      Q => add_ln18_1_reg_865(24),
      R => '0'
    );
\add_ln18_1_reg_865_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(25),
      Q => add_ln18_1_reg_865(25),
      R => '0'
    );
\add_ln18_1_reg_865_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(26),
      Q => add_ln18_1_reg_865(26),
      R => '0'
    );
\add_ln18_1_reg_865_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(27),
      Q => add_ln18_1_reg_865(27),
      R => '0'
    );
\add_ln18_1_reg_865_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(28),
      Q => add_ln18_1_reg_865(28),
      R => '0'
    );
\add_ln18_1_reg_865_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(29),
      Q => add_ln18_1_reg_865(29),
      R => '0'
    );
\add_ln18_1_reg_865_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(2),
      Q => add_ln18_1_reg_865(2),
      R => '0'
    );
\add_ln18_1_reg_865_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(30),
      Q => add_ln18_1_reg_865(30),
      R => '0'
    );
\add_ln18_1_reg_865_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(31),
      Q => add_ln18_1_reg_865(31),
      R => '0'
    );
\add_ln18_1_reg_865_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(3),
      Q => add_ln18_1_reg_865(3),
      R => '0'
    );
\add_ln18_1_reg_865_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(4),
      Q => add_ln18_1_reg_865(4),
      R => '0'
    );
\add_ln18_1_reg_865_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(5),
      Q => add_ln18_1_reg_865(5),
      R => '0'
    );
\add_ln18_1_reg_865_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(6),
      Q => add_ln18_1_reg_865(6),
      R => '0'
    );
\add_ln18_1_reg_865_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(7),
      Q => add_ln18_1_reg_865(7),
      R => '0'
    );
\add_ln18_1_reg_865_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(8),
      Q => add_ln18_1_reg_865(8),
      R => '0'
    );
\add_ln18_1_reg_865_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => add_ln18_1_fu_593_p2(9),
      Q => add_ln18_1_reg_865(9),
      R => '0'
    );
\add_ln18_7_fu_644_p2__0_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__0_carry_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__0_carry_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__0_carry_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__0_carry_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__0_carry_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__0_carry_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__0_carry_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__0_carry_n_7\,
      DI(7) => \add_ln18_7_fu_644_p2__0_carry_i_1_n_0\,
      DI(6) => \add_ln18_7_fu_644_p2__0_carry_i_2_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__0_carry_i_3_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__0_carry_i_4_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__0_carry_i_5_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__0_carry_i_6_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__0_carry_i_7_n_0\,
      DI(0) => '0',
      O(7) => \add_ln18_7_fu_644_p2__0_carry_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__0_carry_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__0_carry_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__0_carry_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__0_carry_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__0_carry_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__0_carry_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__0_carry_n_15\,
      S(7) => \add_ln18_7_fu_644_p2__0_carry_i_8_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__0_carry_i_9_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__0_carry_i_10_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__0_carry_i_11_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__0_carry_i_12_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__0_carry_i_13_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__0_carry_i_14_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__0_carry_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__0_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__0_carry__0_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__0_carry__0_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__0_carry__0_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__0_carry__0_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__0_carry__0_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__0_carry__0_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__0_carry__0_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__0_carry__0_n_7\,
      DI(7) => \add_ln18_7_fu_644_p2__0_carry__0_i_1_n_0\,
      DI(6) => \add_ln18_7_fu_644_p2__0_carry__0_i_2_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__0_carry__0_i_3_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__0_carry__0_i_4_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__0_carry__0_i_5_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__0_carry__0_i_6_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__0_carry__0_i_7_n_0\,
      DI(0) => \add_ln18_7_fu_644_p2__0_carry__0_i_8_n_0\,
      O(7) => \add_ln18_7_fu_644_p2__0_carry__0_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__0_carry__0_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__0_carry__0_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__0_carry__0_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__0_carry__0_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__0_carry__0_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__0_carry__0_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__0_carry__0_n_15\,
      S(7) => \add_ln18_7_fu_644_p2__0_carry__0_i_9_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__0_carry__0_i_10_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__0_carry__0_i_11_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__0_carry__0_i_12_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__0_carry__0_i_13_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__0_carry__0_i_14_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__0_carry__0_i_15_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__0_carry__0_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[14]__0_n_0\,
      I1 => add_ln18_1_reg_865(14),
      I2 => \mul_ln17_2_reg_810_reg[14]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[13]__0_n_0\,
      I1 => add_ln18_1_reg_865(13),
      I2 => \mul_ln17_reg_790_reg[13]__0_n_0\,
      I3 => add_ln18_1_reg_865(14),
      I4 => \mul_ln17_reg_790_reg[14]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[14]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[12]__0_n_0\,
      I1 => add_ln18_1_reg_865(12),
      I2 => \mul_ln17_reg_790_reg[12]__0_n_0\,
      I3 => add_ln18_1_reg_865(13),
      I4 => \mul_ln17_reg_790_reg[13]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[13]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[11]__0_n_0\,
      I1 => add_ln18_1_reg_865(11),
      I2 => \mul_ln17_reg_790_reg[11]__0_n_0\,
      I3 => add_ln18_1_reg_865(12),
      I4 => \mul_ln17_reg_790_reg[12]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[12]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[10]__0_n_0\,
      I1 => add_ln18_1_reg_865(10),
      I2 => \mul_ln17_reg_790_reg[10]__0_n_0\,
      I3 => add_ln18_1_reg_865(11),
      I4 => \mul_ln17_reg_790_reg[11]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[11]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[9]__0_n_0\,
      I1 => add_ln18_1_reg_865(9),
      I2 => \mul_ln17_reg_790_reg[9]__0_n_0\,
      I3 => add_ln18_1_reg_865(10),
      I4 => \mul_ln17_reg_790_reg[10]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[10]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[8]__0_n_0\,
      I1 => add_ln18_1_reg_865(8),
      I2 => \mul_ln17_reg_790_reg[8]__0_n_0\,
      I3 => add_ln18_1_reg_865(9),
      I4 => \mul_ln17_reg_790_reg[9]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[9]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[7]__0_n_0\,
      I1 => add_ln18_1_reg_865(7),
      I2 => \mul_ln17_reg_790_reg[7]__0_n_0\,
      I3 => add_ln18_1_reg_865(8),
      I4 => \mul_ln17_reg_790_reg[8]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[8]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[13]__0_n_0\,
      I1 => add_ln18_1_reg_865(13),
      I2 => \mul_ln17_2_reg_810_reg[13]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[12]__0_n_0\,
      I1 => add_ln18_1_reg_865(12),
      I2 => \mul_ln17_2_reg_810_reg[12]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[11]__0_n_0\,
      I1 => add_ln18_1_reg_865(11),
      I2 => \mul_ln17_2_reg_810_reg[11]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[10]__0_n_0\,
      I1 => add_ln18_1_reg_865(10),
      I2 => \mul_ln17_2_reg_810_reg[10]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[9]__0_n_0\,
      I1 => add_ln18_1_reg_865(9),
      I2 => \mul_ln17_2_reg_810_reg[9]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[8]__0_n_0\,
      I1 => add_ln18_1_reg_865(8),
      I2 => \mul_ln17_2_reg_810_reg[8]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[7]__0_n_0\,
      I1 => add_ln18_1_reg_865(7),
      I2 => \mul_ln17_2_reg_810_reg[7]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[14]__0_n_0\,
      I1 => add_ln18_1_reg_865(14),
      I2 => \mul_ln17_reg_790_reg[14]__0_n_0\,
      I3 => add_ln18_1_reg_865(15),
      I4 => \mul_ln17_reg_790_reg[15]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[15]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__0_i_9_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__0_carry__1_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__0_carry__1_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__0_carry__1_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__0_carry__1_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__0_carry__1_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__0_carry__1_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__0_carry__1_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__0_carry__1_n_7\,
      DI(7) => mul_32s_32s_32_1_1_U1_n_91,
      DI(6) => mul_32s_32s_32_1_1_U1_n_92,
      DI(5) => mul_32s_32s_32_1_1_U1_n_93,
      DI(4) => mul_32s_32s_32_1_1_U1_n_94,
      DI(3) => mul_32s_32s_32_1_1_U1_n_95,
      DI(2) => mul_32s_32s_32_1_1_U1_n_96,
      DI(1) => mul_32s_32s_32_1_1_U1_n_97,
      DI(0) => \add_ln18_7_fu_644_p2__0_carry__1_i_8_n_0\,
      O(7) => \add_ln18_7_fu_644_p2__0_carry__1_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__0_carry__1_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__0_carry__1_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__0_carry__1_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__0_carry__1_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__0_carry__1_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__0_carry__1_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__0_carry__1_n_15\,
      S(7) => mul_32s_32s_32_1_1_U3_n_81,
      S(6) => mul_32s_32s_32_1_1_U3_n_82,
      S(5) => mul_32s_32s_32_1_1_U3_n_83,
      S(4) => mul_32s_32s_32_1_1_U3_n_84,
      S(3) => mul_32s_32s_32_1_1_U3_n_85,
      S(2) => mul_32s_32s_32_1_1_U3_n_86,
      S(1) => mul_32s_32s_32_1_1_U3_n_87,
      S(0) => mul_32s_32s_32_1_1_U1_n_82
    );
\add_ln18_7_fu_644_p2__0_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[15]__0_n_0\,
      I1 => add_ln18_1_reg_865(15),
      I2 => \mul_ln17_2_reg_810_reg[15]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry__1_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_add_ln18_7_fu_644_p2__0_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \add_ln18_7_fu_644_p2__0_carry__2_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__0_carry__2_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__0_carry__2_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__0_carry__2_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__0_carry__2_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__0_carry__2_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__0_carry__2_n_7\,
      DI(7) => '0',
      DI(6) => mul_32s_32s_32_1_1_U1_n_84,
      DI(5) => mul_32s_32s_32_1_1_U1_n_85,
      DI(4) => mul_32s_32s_32_1_1_U1_n_86,
      DI(3) => mul_32s_32s_32_1_1_U1_n_87,
      DI(2) => mul_32s_32s_32_1_1_U1_n_88,
      DI(1) => mul_32s_32s_32_1_1_U1_n_89,
      DI(0) => mul_32s_32s_32_1_1_U1_n_90,
      O(7) => \add_ln18_7_fu_644_p2__0_carry__2_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__0_carry__2_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__0_carry__2_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__0_carry__2_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__0_carry__2_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__0_carry__2_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__0_carry__2_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__0_carry__2_n_15\,
      S(7) => mul_32s_32s_32_1_1_U3_n_88,
      S(6) => mul_32s_32s_32_1_1_U1_n_83,
      S(5) => mul_32s_32s_32_1_1_U3_n_89,
      S(4) => mul_32s_32s_32_1_1_U3_n_90,
      S(3) => mul_32s_32s_32_1_1_U3_n_91,
      S(2) => mul_32s_32s_32_1_1_U3_n_92,
      S(1) => mul_32s_32s_32_1_1_U3_n_93,
      S(0) => mul_32s_32s_32_1_1_U3_n_94
    );
\add_ln18_7_fu_644_p2__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[6]__0_n_0\,
      I1 => add_ln18_1_reg_865(6),
      I2 => \mul_ln17_2_reg_810_reg[6]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[4]__0_n_0\,
      I1 => add_ln18_1_reg_865(4),
      I2 => \mul_ln17_reg_790_reg[4]__0_n_0\,
      I3 => add_ln18_1_reg_865(5),
      I4 => \mul_ln17_reg_790_reg[5]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[5]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[3]__0_n_0\,
      I1 => add_ln18_1_reg_865(3),
      I2 => \mul_ln17_reg_790_reg[3]__0_n_0\,
      I3 => add_ln18_1_reg_865(4),
      I4 => \mul_ln17_reg_790_reg[4]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[4]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[2]__0_n_0\,
      I1 => add_ln18_1_reg_865(2),
      I2 => \mul_ln17_reg_790_reg[2]__0_n_0\,
      I3 => add_ln18_1_reg_865(3),
      I4 => \mul_ln17_reg_790_reg[3]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[3]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[1]__0_n_0\,
      I1 => add_ln18_1_reg_865(1),
      I2 => \mul_ln17_reg_790_reg[1]__0_n_0\,
      I3 => add_ln18_1_reg_865(2),
      I4 => \mul_ln17_reg_790_reg[2]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[2]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[0]__0_n_0\,
      I1 => add_ln18_1_reg_865(0),
      I2 => \mul_ln17_reg_790_reg[0]__0_n_0\,
      I3 => add_ln18_1_reg_865(1),
      I4 => \mul_ln17_reg_790_reg[1]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[1]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[0]__0_n_0\,
      I1 => \mul_ln17_reg_790_reg[0]__0_n_0\,
      I2 => add_ln18_1_reg_865(0),
      O => \add_ln18_7_fu_644_p2__0_carry_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[5]__0_n_0\,
      I1 => add_ln18_1_reg_865(5),
      I2 => \mul_ln17_2_reg_810_reg[5]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[4]__0_n_0\,
      I1 => add_ln18_1_reg_865(4),
      I2 => \mul_ln17_2_reg_810_reg[4]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[3]__0_n_0\,
      I1 => add_ln18_1_reg_865(3),
      I2 => \mul_ln17_2_reg_810_reg[3]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[2]__0_n_0\,
      I1 => add_ln18_1_reg_865(2),
      I2 => \mul_ln17_2_reg_810_reg[2]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[1]__0_n_0\,
      I1 => add_ln18_1_reg_865(1),
      I2 => \mul_ln17_2_reg_810_reg[1]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_reg_790_reg[0]__0_n_0\,
      I1 => add_ln18_1_reg_865(0),
      I2 => \mul_ln17_2_reg_810_reg[0]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[6]__0_n_0\,
      I1 => add_ln18_1_reg_865(6),
      I2 => \mul_ln17_reg_790_reg[6]__0_n_0\,
      I3 => add_ln18_1_reg_865(7),
      I4 => \mul_ln17_reg_790_reg[7]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[7]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__0_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_2_reg_810_reg[5]__0_n_0\,
      I1 => add_ln18_1_reg_865(5),
      I2 => \mul_ln17_reg_790_reg[5]__0_n_0\,
      I3 => add_ln18_1_reg_865(6),
      I4 => \mul_ln17_reg_790_reg[6]__0_n_0\,
      I5 => \mul_ln17_2_reg_810_reg[6]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__0_carry_i_9_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__188_carry_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__188_carry_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__188_carry_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__188_carry_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__188_carry_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__188_carry_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__188_carry_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__188_carry_n_7\,
      DI(7) => \add_ln18_7_fu_644_p2__188_carry_i_1_n_0\,
      DI(6) => \add_ln18_7_fu_644_p2__188_carry_i_2_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__188_carry_i_3_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__188_carry_i_4_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__188_carry_i_5_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__188_carry_i_6_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__188_carry_i_7_n_0\,
      DI(0) => '0',
      O(7 downto 0) => \^sol_d0\(7 downto 0),
      S(7) => \add_ln18_7_fu_644_p2__188_carry_i_8_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__188_carry_i_9_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__188_carry_i_10_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__188_carry_i_11_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__188_carry_i_12_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__188_carry_i_13_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__188_carry_i_14_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__188_carry_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__188_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__188_carry__0_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__188_carry__0_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__188_carry__0_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__188_carry__0_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__188_carry__0_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__188_carry__0_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__188_carry__0_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__188_carry__0_n_7\,
      DI(7) => \add_ln18_7_fu_644_p2__188_carry__0_i_1_n_0\,
      DI(6) => \add_ln18_7_fu_644_p2__188_carry__0_i_2_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__188_carry__0_i_3_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__188_carry__0_i_4_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__188_carry__0_i_5_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__188_carry__0_i_6_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__188_carry__0_i_7_n_0\,
      DI(0) => \add_ln18_7_fu_644_p2__188_carry__0_i_8_n_0\,
      O(7 downto 0) => \^sol_d0\(15 downto 8),
      S(7) => \add_ln18_7_fu_644_p2__188_carry__0_i_9_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__188_carry__0_i_10_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__188_carry__0_i_11_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__188_carry__0_i_12_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__188_carry__0_i_13_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__188_carry__0_i_14_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__188_carry__0_i_15_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__188_carry__0_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_9\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_9\,
      I2 => add_ln18_reg_875(14),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(13),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_10\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_10\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_9\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_9\,
      I5 => add_ln18_reg_875(14),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(12),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_11\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_11\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_10\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_10\,
      I5 => add_ln18_reg_875(13),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(11),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_12\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_12\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_11\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_11\,
      I5 => add_ln18_reg_875(12),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(10),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_13\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_13\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_12\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_12\,
      I5 => add_ln18_reg_875(11),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(9),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_14\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_14\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_13\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_13\,
      I5 => add_ln18_reg_875(10),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(8),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_15\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_15\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_14\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_14\,
      I5 => add_ln18_reg_875(9),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(7),
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_8\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_8\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_15\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_15\,
      I5 => add_ln18_reg_875(8),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_10\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_10\,
      I2 => add_ln18_reg_875(13),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_11\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_11\,
      I2 => add_ln18_reg_875(12),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_12\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_12\,
      I2 => add_ln18_reg_875(11),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_13\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_13\,
      I2 => add_ln18_reg_875(10),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_14\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_14\,
      I2 => add_ln18_reg_875(9),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_15\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_15\,
      I2 => add_ln18_reg_875(8),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_8\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_8\,
      I2 => add_ln18_reg_875(7),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(14),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_9\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_9\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__0_n_8\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__0_n_8\,
      I5 => add_ln18_reg_875(15),
      O => \add_ln18_7_fu_644_p2__188_carry__0_i_9_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__188_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__188_carry__1_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__188_carry__1_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__188_carry__1_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__188_carry__1_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__188_carry__1_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__188_carry__1_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__188_carry__1_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__188_carry__1_n_7\,
      DI(7) => \add_ln18_7_fu_644_p2__188_carry__1_i_1_n_0\,
      DI(6) => \add_ln18_7_fu_644_p2__188_carry__1_i_2_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__188_carry__1_i_3_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__188_carry__1_i_4_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__188_carry__1_i_5_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__188_carry__1_i_6_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__188_carry__1_i_7_n_0\,
      DI(0) => \add_ln18_7_fu_644_p2__188_carry__1_i_8_n_0\,
      O(7 downto 0) => \^sol_d0\(23 downto 16),
      S(7) => \add_ln18_7_fu_644_p2__188_carry__1_i_9_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__188_carry__1_i_10_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__188_carry__1_i_11_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__188_carry__1_i_12_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__188_carry__1_i_13_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__188_carry__1_i_14_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__188_carry__1_i_15_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__188_carry__1_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_9\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_9\,
      I2 => add_ln18_reg_875(22),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(21),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_10\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_10\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_9\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_9\,
      I5 => add_ln18_reg_875(22),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(20),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_11\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_11\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_10\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_10\,
      I5 => add_ln18_reg_875(21),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(19),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_12\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_12\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_11\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_11\,
      I5 => add_ln18_reg_875(20),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(18),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_13\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_13\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_12\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_12\,
      I5 => add_ln18_reg_875(19),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(17),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_14\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_14\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_13\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_13\,
      I5 => add_ln18_reg_875(18),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(16),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_15\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_15\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_14\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_14\,
      I5 => add_ln18_reg_875(17),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(15),
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_8\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__0_n_8\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_15\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_15\,
      I5 => add_ln18_reg_875(16),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_10\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_10\,
      I2 => add_ln18_reg_875(21),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_11\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_11\,
      I2 => add_ln18_reg_875(20),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_12\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_12\,
      I2 => add_ln18_reg_875(19),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_13\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_13\,
      I2 => add_ln18_reg_875(18),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_14\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_14\,
      I2 => add_ln18_reg_875(17),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_15\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_15\,
      I2 => add_ln18_reg_875(16),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__0_n_8\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__0_n_8\,
      I2 => add_ln18_reg_875(15),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(22),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_9\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_9\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__1_n_8\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__1_n_8\,
      I5 => add_ln18_reg_875(23),
      O => \add_ln18_7_fu_644_p2__188_carry__1_i_9_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__188_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_add_ln18_7_fu_644_p2__188_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \add_ln18_7_fu_644_p2__188_carry__2_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__188_carry__2_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__188_carry__2_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__188_carry__2_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__188_carry__2_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__188_carry__2_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__188_carry__2_n_7\,
      DI(7) => '0',
      DI(6) => \add_ln18_7_fu_644_p2__188_carry__2_i_1_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__188_carry__2_i_2_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__188_carry__2_i_3_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__188_carry__2_i_4_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__188_carry__2_i_5_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__188_carry__2_i_6_n_0\,
      DI(0) => \add_ln18_7_fu_644_p2__188_carry__2_i_7_n_0\,
      O(7 downto 0) => \^sol_d0\(31 downto 24),
      S(7) => \add_ln18_7_fu_644_p2__188_carry__2_i_8_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__188_carry__2_i_9_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__188_carry__2_i_10_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__188_carry__2_i_11_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__188_carry__2_i_12_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__188_carry__2_i_13_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__188_carry__2_i_14_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__188_carry__2_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__2_n_10\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_10\,
      I2 => add_ln18_reg_875(29),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(28),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_11\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__2_n_11\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_10\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_10\,
      I5 => add_ln18_reg_875(29),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(27),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_12\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__2_n_12\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_11\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_11\,
      I5 => add_ln18_reg_875(28),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(26),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_13\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__2_n_13\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_12\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_12\,
      I5 => add_ln18_reg_875(27),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(25),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_14\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__2_n_14\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_13\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_13\,
      I5 => add_ln18_reg_875(26),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(24),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_15\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__2_n_15\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_14\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_14\,
      I5 => add_ln18_reg_875(25),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(23),
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_8\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__1_n_8\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_15\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_15\,
      I5 => add_ln18_reg_875(24),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__2_n_11\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_11\,
      I2 => add_ln18_reg_875(28),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__2_n_12\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_12\,
      I2 => add_ln18_reg_875(27),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__2_n_13\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_13\,
      I2 => add_ln18_reg_875(26),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__2_n_14\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_14\,
      I2 => add_ln18_reg_875(25),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__2_n_15\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_15\,
      I2 => add_ln18_reg_875(24),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry__1_n_8\,
      I1 => \add_ln18_7_fu_644_p2__0_carry__1_n_8\,
      I2 => add_ln18_reg_875(23),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(30),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_9\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__2_n_9\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_8\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_8\,
      I5 => add_ln18_reg_875(31),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(29),
      I1 => \add_ln18_7_fu_644_p2__0_carry__2_n_10\,
      I2 => \add_ln18_7_fu_644_p2__94_carry__2_n_10\,
      I3 => \add_ln18_7_fu_644_p2__0_carry__2_n_9\,
      I4 => \add_ln18_7_fu_644_p2__94_carry__2_n_9\,
      I5 => add_ln18_reg_875(30),
      O => \add_ln18_7_fu_644_p2__188_carry__2_i_9_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_9\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_9\,
      I2 => add_ln18_reg_875(6),
      O => \add_ln18_7_fu_644_p2__188_carry_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(4),
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_11\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_11\,
      I3 => \add_ln18_7_fu_644_p2__0_carry_n_10\,
      I4 => \add_ln18_7_fu_644_p2__94_carry_n_10\,
      I5 => add_ln18_reg_875(5),
      O => \add_ln18_7_fu_644_p2__188_carry_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(3),
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_12\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_12\,
      I3 => \add_ln18_7_fu_644_p2__0_carry_n_11\,
      I4 => \add_ln18_7_fu_644_p2__94_carry_n_11\,
      I5 => add_ln18_reg_875(4),
      O => \add_ln18_7_fu_644_p2__188_carry_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(2),
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_13\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_13\,
      I3 => \add_ln18_7_fu_644_p2__0_carry_n_12\,
      I4 => \add_ln18_7_fu_644_p2__94_carry_n_12\,
      I5 => add_ln18_reg_875(3),
      O => \add_ln18_7_fu_644_p2__188_carry_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(1),
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_14\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_14\,
      I3 => \add_ln18_7_fu_644_p2__0_carry_n_13\,
      I4 => \add_ln18_7_fu_644_p2__94_carry_n_13\,
      I5 => add_ln18_reg_875(2),
      O => \add_ln18_7_fu_644_p2__188_carry_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__188_carry_i_7_n_0\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_14\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_14\,
      I3 => add_ln18_reg_875(1),
      O => \add_ln18_7_fu_644_p2__188_carry_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_15\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_15\,
      I2 => add_ln18_reg_875(0),
      O => \add_ln18_7_fu_644_p2__188_carry_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_10\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_10\,
      I2 => add_ln18_reg_875(5),
      O => \add_ln18_7_fu_644_p2__188_carry_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_11\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_11\,
      I2 => add_ln18_reg_875(4),
      O => \add_ln18_7_fu_644_p2__188_carry_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_12\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_12\,
      I2 => add_ln18_reg_875(3),
      O => \add_ln18_7_fu_644_p2__188_carry_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_13\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_13\,
      I2 => add_ln18_reg_875(2),
      O => \add_ln18_7_fu_644_p2__188_carry_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_14\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_14\,
      I2 => add_ln18_reg_875(1),
      O => \add_ln18_7_fu_644_p2__188_carry_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln18_7_fu_644_p2__94_carry_n_15\,
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_15\,
      I2 => add_ln18_reg_875(0),
      O => \add_ln18_7_fu_644_p2__188_carry_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(6),
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_9\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_9\,
      I3 => \add_ln18_7_fu_644_p2__0_carry_n_8\,
      I4 => \add_ln18_7_fu_644_p2__94_carry_n_8\,
      I5 => add_ln18_reg_875(7),
      O => \add_ln18_7_fu_644_p2__188_carry_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__188_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln18_reg_875(5),
      I1 => \add_ln18_7_fu_644_p2__0_carry_n_10\,
      I2 => \add_ln18_7_fu_644_p2__94_carry_n_10\,
      I3 => \add_ln18_7_fu_644_p2__0_carry_n_9\,
      I4 => \add_ln18_7_fu_644_p2__94_carry_n_9\,
      I5 => add_ln18_reg_875(6),
      O => \add_ln18_7_fu_644_p2__188_carry_i_9_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__94_carry_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__94_carry_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__94_carry_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__94_carry_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__94_carry_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__94_carry_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__94_carry_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__94_carry_n_7\,
      DI(7) => \add_ln18_7_fu_644_p2__94_carry_i_1_n_0\,
      DI(6) => \add_ln18_7_fu_644_p2__94_carry_i_2_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__94_carry_i_3_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__94_carry_i_4_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__94_carry_i_5_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__94_carry_i_6_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__94_carry_i_7_n_0\,
      DI(0) => '0',
      O(7) => \add_ln18_7_fu_644_p2__94_carry_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__94_carry_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__94_carry_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__94_carry_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__94_carry_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__94_carry_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__94_carry_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__94_carry_n_15\,
      S(7) => \add_ln18_7_fu_644_p2__94_carry_i_8_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__94_carry_i_9_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__94_carry_i_10_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__94_carry_i_11_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__94_carry_i_12_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__94_carry_i_13_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__94_carry_i_14_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__94_carry_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__94_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__94_carry__0_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__94_carry__0_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__94_carry__0_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__94_carry__0_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__94_carry__0_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__94_carry__0_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__94_carry__0_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__94_carry__0_n_7\,
      DI(7) => \add_ln18_7_fu_644_p2__94_carry__0_i_1_n_0\,
      DI(6) => \add_ln18_7_fu_644_p2__94_carry__0_i_2_n_0\,
      DI(5) => \add_ln18_7_fu_644_p2__94_carry__0_i_3_n_0\,
      DI(4) => \add_ln18_7_fu_644_p2__94_carry__0_i_4_n_0\,
      DI(3) => \add_ln18_7_fu_644_p2__94_carry__0_i_5_n_0\,
      DI(2) => \add_ln18_7_fu_644_p2__94_carry__0_i_6_n_0\,
      DI(1) => \add_ln18_7_fu_644_p2__94_carry__0_i_7_n_0\,
      DI(0) => \add_ln18_7_fu_644_p2__94_carry__0_i_8_n_0\,
      O(7) => \add_ln18_7_fu_644_p2__94_carry__0_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__94_carry__0_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__94_carry__0_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__94_carry__0_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__94_carry__0_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__94_carry__0_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__94_carry__0_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__94_carry__0_n_15\,
      S(7) => \add_ln18_7_fu_644_p2__94_carry__0_i_9_n_0\,
      S(6) => \add_ln18_7_fu_644_p2__94_carry__0_i_10_n_0\,
      S(5) => \add_ln18_7_fu_644_p2__94_carry__0_i_11_n_0\,
      S(4) => \add_ln18_7_fu_644_p2__94_carry__0_i_12_n_0\,
      S(3) => \add_ln18_7_fu_644_p2__94_carry__0_i_13_n_0\,
      S(2) => \add_ln18_7_fu_644_p2__94_carry__0_i_14_n_0\,
      S(1) => \add_ln18_7_fu_644_p2__94_carry__0_i_15_n_0\,
      S(0) => \add_ln18_7_fu_644_p2__94_carry__0_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[14]__0_n_0\,
      I1 => mul_ln17_8_reg_870(14),
      I2 => \mul_ln17_3_reg_815_reg[14]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[13]__0_n_0\,
      I1 => mul_ln17_8_reg_870(13),
      I2 => \mul_ln17_1_reg_795_reg[13]__0_n_0\,
      I3 => mul_ln17_8_reg_870(14),
      I4 => \mul_ln17_1_reg_795_reg[14]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[14]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[12]__0_n_0\,
      I1 => mul_ln17_8_reg_870(12),
      I2 => \mul_ln17_1_reg_795_reg[12]__0_n_0\,
      I3 => mul_ln17_8_reg_870(13),
      I4 => \mul_ln17_1_reg_795_reg[13]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[13]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[11]__0_n_0\,
      I1 => mul_ln17_8_reg_870(11),
      I2 => \mul_ln17_1_reg_795_reg[11]__0_n_0\,
      I3 => mul_ln17_8_reg_870(12),
      I4 => \mul_ln17_1_reg_795_reg[12]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[12]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[10]__0_n_0\,
      I1 => mul_ln17_8_reg_870(10),
      I2 => \mul_ln17_1_reg_795_reg[10]__0_n_0\,
      I3 => mul_ln17_8_reg_870(11),
      I4 => \mul_ln17_1_reg_795_reg[11]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[11]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[9]__0_n_0\,
      I1 => mul_ln17_8_reg_870(9),
      I2 => \mul_ln17_1_reg_795_reg[9]__0_n_0\,
      I3 => mul_ln17_8_reg_870(10),
      I4 => \mul_ln17_1_reg_795_reg[10]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[10]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[8]__0_n_0\,
      I1 => mul_ln17_8_reg_870(8),
      I2 => \mul_ln17_1_reg_795_reg[8]__0_n_0\,
      I3 => mul_ln17_8_reg_870(9),
      I4 => \mul_ln17_1_reg_795_reg[9]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[9]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[7]__0_n_0\,
      I1 => mul_ln17_8_reg_870(7),
      I2 => \mul_ln17_1_reg_795_reg[7]__0_n_0\,
      I3 => mul_ln17_8_reg_870(8),
      I4 => \mul_ln17_1_reg_795_reg[8]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[8]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_16_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[13]__0_n_0\,
      I1 => mul_ln17_8_reg_870(13),
      I2 => \mul_ln17_3_reg_815_reg[13]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[12]__0_n_0\,
      I1 => mul_ln17_8_reg_870(12),
      I2 => \mul_ln17_3_reg_815_reg[12]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[11]__0_n_0\,
      I1 => mul_ln17_8_reg_870(11),
      I2 => \mul_ln17_3_reg_815_reg[11]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[10]__0_n_0\,
      I1 => mul_ln17_8_reg_870(10),
      I2 => \mul_ln17_3_reg_815_reg[10]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[9]__0_n_0\,
      I1 => mul_ln17_8_reg_870(9),
      I2 => \mul_ln17_3_reg_815_reg[9]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[8]__0_n_0\,
      I1 => mul_ln17_8_reg_870(8),
      I2 => \mul_ln17_3_reg_815_reg[8]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[7]__0_n_0\,
      I1 => mul_ln17_8_reg_870(7),
      I2 => \mul_ln17_3_reg_815_reg[7]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[14]__0_n_0\,
      I1 => mul_ln17_8_reg_870(14),
      I2 => \mul_ln17_1_reg_795_reg[14]__0_n_0\,
      I3 => mul_ln17_8_reg_870(15),
      I4 => \mul_ln17_1_reg_795_reg[15]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[15]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__0_i_9_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__94_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_7_fu_644_p2__94_carry__1_n_0\,
      CO(6) => \add_ln18_7_fu_644_p2__94_carry__1_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__94_carry__1_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__94_carry__1_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__94_carry__1_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__94_carry__1_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__94_carry__1_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__94_carry__1_n_7\,
      DI(7) => mul_32s_32s_32_1_1_U2_n_90,
      DI(6) => mul_32s_32s_32_1_1_U2_n_91,
      DI(5) => mul_32s_32s_32_1_1_U2_n_92,
      DI(4) => mul_32s_32s_32_1_1_U2_n_93,
      DI(3) => mul_32s_32s_32_1_1_U2_n_94,
      DI(2) => mul_32s_32s_32_1_1_U2_n_95,
      DI(1) => mul_32s_32s_32_1_1_U2_n_96,
      DI(0) => \add_ln18_7_fu_644_p2__94_carry__1_i_8_n_0\,
      O(7) => \add_ln18_7_fu_644_p2__94_carry__1_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__94_carry__1_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__94_carry__1_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__94_carry__1_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__94_carry__1_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__94_carry__1_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__94_carry__1_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__94_carry__1_n_15\,
      S(7) => mul_32s_32s_32_1_1_U4_n_80,
      S(6) => mul_32s_32s_32_1_1_U4_n_81,
      S(5) => mul_32s_32s_32_1_1_U4_n_82,
      S(4) => mul_32s_32s_32_1_1_U4_n_83,
      S(3) => mul_32s_32s_32_1_1_U4_n_84,
      S(2) => mul_32s_32s_32_1_1_U4_n_85,
      S(1) => mul_32s_32s_32_1_1_U4_n_86,
      S(0) => mul_32s_32s_32_1_1_U2_n_81
    );
\add_ln18_7_fu_644_p2__94_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[15]__0_n_0\,
      I1 => mul_ln17_8_reg_870(15),
      I2 => \mul_ln17_3_reg_815_reg[15]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry__1_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_7_fu_644_p2__94_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_add_ln18_7_fu_644_p2__94_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \add_ln18_7_fu_644_p2__94_carry__2_n_1\,
      CO(5) => \add_ln18_7_fu_644_p2__94_carry__2_n_2\,
      CO(4) => \add_ln18_7_fu_644_p2__94_carry__2_n_3\,
      CO(3) => \add_ln18_7_fu_644_p2__94_carry__2_n_4\,
      CO(2) => \add_ln18_7_fu_644_p2__94_carry__2_n_5\,
      CO(1) => \add_ln18_7_fu_644_p2__94_carry__2_n_6\,
      CO(0) => \add_ln18_7_fu_644_p2__94_carry__2_n_7\,
      DI(7) => '0',
      DI(6) => mul_32s_32s_32_1_1_U2_n_83,
      DI(5) => mul_32s_32s_32_1_1_U2_n_84,
      DI(4) => mul_32s_32s_32_1_1_U2_n_85,
      DI(3) => mul_32s_32s_32_1_1_U2_n_86,
      DI(2) => mul_32s_32s_32_1_1_U2_n_87,
      DI(1) => mul_32s_32s_32_1_1_U2_n_88,
      DI(0) => mul_32s_32s_32_1_1_U2_n_89,
      O(7) => \add_ln18_7_fu_644_p2__94_carry__2_n_8\,
      O(6) => \add_ln18_7_fu_644_p2__94_carry__2_n_9\,
      O(5) => \add_ln18_7_fu_644_p2__94_carry__2_n_10\,
      O(4) => \add_ln18_7_fu_644_p2__94_carry__2_n_11\,
      O(3) => \add_ln18_7_fu_644_p2__94_carry__2_n_12\,
      O(2) => \add_ln18_7_fu_644_p2__94_carry__2_n_13\,
      O(1) => \add_ln18_7_fu_644_p2__94_carry__2_n_14\,
      O(0) => \add_ln18_7_fu_644_p2__94_carry__2_n_15\,
      S(7) => mul_32s_32s_32_1_1_U4_n_87,
      S(6) => mul_32s_32s_32_1_1_U2_n_82,
      S(5) => mul_32s_32s_32_1_1_U4_n_88,
      S(4) => mul_32s_32s_32_1_1_U4_n_89,
      S(3) => mul_32s_32s_32_1_1_U4_n_90,
      S(2) => mul_32s_32s_32_1_1_U4_n_91,
      S(1) => mul_32s_32s_32_1_1_U4_n_92,
      S(0) => mul_32s_32s_32_1_1_U4_n_93
    );
\add_ln18_7_fu_644_p2__94_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[6]__0_n_0\,
      I1 => mul_ln17_8_reg_870(6),
      I2 => \mul_ln17_3_reg_815_reg[6]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_1_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[4]__0_n_0\,
      I1 => mul_ln17_8_reg_870(4),
      I2 => \mul_ln17_1_reg_795_reg[4]__0_n_0\,
      I3 => mul_ln17_8_reg_870(5),
      I4 => \mul_ln17_1_reg_795_reg[5]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[5]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_10_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[3]__0_n_0\,
      I1 => mul_ln17_8_reg_870(3),
      I2 => \mul_ln17_1_reg_795_reg[3]__0_n_0\,
      I3 => mul_ln17_8_reg_870(4),
      I4 => \mul_ln17_1_reg_795_reg[4]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[4]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_11_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[2]__0_n_0\,
      I1 => mul_ln17_8_reg_870(2),
      I2 => \mul_ln17_1_reg_795_reg[2]__0_n_0\,
      I3 => mul_ln17_8_reg_870(3),
      I4 => \mul_ln17_1_reg_795_reg[3]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[3]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_12_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[1]__0_n_0\,
      I1 => mul_ln17_8_reg_870(1),
      I2 => \mul_ln17_1_reg_795_reg[1]__0_n_0\,
      I3 => mul_ln17_8_reg_870(2),
      I4 => \mul_ln17_1_reg_795_reg[2]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[2]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_13_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[0]__0_n_0\,
      I1 => mul_ln17_8_reg_870(0),
      I2 => \mul_ln17_1_reg_795_reg[0]__0_n_0\,
      I3 => mul_ln17_8_reg_870(1),
      I4 => \mul_ln17_1_reg_795_reg[1]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[1]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_14_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[0]__0_n_0\,
      I1 => \mul_ln17_1_reg_795_reg[0]__0_n_0\,
      I2 => mul_ln17_8_reg_870(0),
      O => \add_ln18_7_fu_644_p2__94_carry_i_15_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[5]__0_n_0\,
      I1 => mul_ln17_8_reg_870(5),
      I2 => \mul_ln17_3_reg_815_reg[5]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_2_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[4]__0_n_0\,
      I1 => mul_ln17_8_reg_870(4),
      I2 => \mul_ln17_3_reg_815_reg[4]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_3_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[3]__0_n_0\,
      I1 => mul_ln17_8_reg_870(3),
      I2 => \mul_ln17_3_reg_815_reg[3]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_4_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[2]__0_n_0\,
      I1 => mul_ln17_8_reg_870(2),
      I2 => \mul_ln17_3_reg_815_reg[2]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_5_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[1]__0_n_0\,
      I1 => mul_ln17_8_reg_870(1),
      I2 => \mul_ln17_3_reg_815_reg[1]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_6_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \mul_ln17_1_reg_795_reg[0]__0_n_0\,
      I1 => mul_ln17_8_reg_870(0),
      I2 => \mul_ln17_3_reg_815_reg[0]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_7_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[6]__0_n_0\,
      I1 => mul_ln17_8_reg_870(6),
      I2 => \mul_ln17_1_reg_795_reg[6]__0_n_0\,
      I3 => mul_ln17_8_reg_870(7),
      I4 => \mul_ln17_1_reg_795_reg[7]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[7]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_8_n_0\
    );
\add_ln18_7_fu_644_p2__94_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \mul_ln17_3_reg_815_reg[5]__0_n_0\,
      I1 => mul_ln17_8_reg_870(5),
      I2 => \mul_ln17_1_reg_795_reg[5]__0_n_0\,
      I3 => mul_ln17_8_reg_870(6),
      I4 => \mul_ln17_1_reg_795_reg[6]__0_n_0\,
      I5 => \mul_ln17_3_reg_815_reg[6]__0_n_0\,
      O => \add_ln18_7_fu_644_p2__94_carry_i_9_n_0\
    );
add_ln18_fu_617_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => add_ln18_fu_617_p2_carry_n_0,
      CO(6) => add_ln18_fu_617_p2_carry_n_1,
      CO(5) => add_ln18_fu_617_p2_carry_n_2,
      CO(4) => add_ln18_fu_617_p2_carry_n_3,
      CO(3) => add_ln18_fu_617_p2_carry_n_4,
      CO(2) => add_ln18_fu_617_p2_carry_n_5,
      CO(1) => add_ln18_fu_617_p2_carry_n_6,
      CO(0) => add_ln18_fu_617_p2_carry_n_7,
      DI(7) => \mul_ln17_6_reg_850_reg[7]__0_n_0\,
      DI(6) => \mul_ln17_6_reg_850_reg[6]__0_n_0\,
      DI(5) => \mul_ln17_6_reg_850_reg[5]__0_n_0\,
      DI(4) => \mul_ln17_6_reg_850_reg[4]__0_n_0\,
      DI(3) => \mul_ln17_6_reg_850_reg[3]__0_n_0\,
      DI(2) => \mul_ln17_6_reg_850_reg[2]__0_n_0\,
      DI(1) => \mul_ln17_6_reg_850_reg[1]__0_n_0\,
      DI(0) => \mul_ln17_6_reg_850_reg[0]__0_n_0\,
      O(7 downto 0) => add_ln18_fu_617_p2(7 downto 0),
      S(7) => add_ln18_fu_617_p2_carry_i_1_n_0,
      S(6) => add_ln18_fu_617_p2_carry_i_2_n_0,
      S(5) => add_ln18_fu_617_p2_carry_i_3_n_0,
      S(4) => add_ln18_fu_617_p2_carry_i_4_n_0,
      S(3) => add_ln18_fu_617_p2_carry_i_5_n_0,
      S(2) => add_ln18_fu_617_p2_carry_i_6_n_0,
      S(1) => add_ln18_fu_617_p2_carry_i_7_n_0,
      S(0) => add_ln18_fu_617_p2_carry_i_8_n_0
    );
\add_ln18_fu_617_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => add_ln18_fu_617_p2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \add_ln18_fu_617_p2_carry__0_n_0\,
      CO(6) => \add_ln18_fu_617_p2_carry__0_n_1\,
      CO(5) => \add_ln18_fu_617_p2_carry__0_n_2\,
      CO(4) => \add_ln18_fu_617_p2_carry__0_n_3\,
      CO(3) => \add_ln18_fu_617_p2_carry__0_n_4\,
      CO(2) => \add_ln18_fu_617_p2_carry__0_n_5\,
      CO(1) => \add_ln18_fu_617_p2_carry__0_n_6\,
      CO(0) => \add_ln18_fu_617_p2_carry__0_n_7\,
      DI(7) => \mul_ln17_6_reg_850_reg[15]__0_n_0\,
      DI(6) => \mul_ln17_6_reg_850_reg[14]__0_n_0\,
      DI(5) => \mul_ln17_6_reg_850_reg[13]__0_n_0\,
      DI(4) => \mul_ln17_6_reg_850_reg[12]__0_n_0\,
      DI(3) => \mul_ln17_6_reg_850_reg[11]__0_n_0\,
      DI(2) => \mul_ln17_6_reg_850_reg[10]__0_n_0\,
      DI(1) => \mul_ln17_6_reg_850_reg[9]__0_n_0\,
      DI(0) => \mul_ln17_6_reg_850_reg[8]__0_n_0\,
      O(7 downto 0) => add_ln18_fu_617_p2(15 downto 8),
      S(7) => \add_ln18_fu_617_p2_carry__0_i_1_n_0\,
      S(6) => \add_ln18_fu_617_p2_carry__0_i_2_n_0\,
      S(5) => \add_ln18_fu_617_p2_carry__0_i_3_n_0\,
      S(4) => \add_ln18_fu_617_p2_carry__0_i_4_n_0\,
      S(3) => \add_ln18_fu_617_p2_carry__0_i_5_n_0\,
      S(2) => \add_ln18_fu_617_p2_carry__0_i_6_n_0\,
      S(1) => \add_ln18_fu_617_p2_carry__0_i_7_n_0\,
      S(0) => \add_ln18_fu_617_p2_carry__0_i_8_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[15]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[15]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_1_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[14]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[14]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_2_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[13]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[13]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_3_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[12]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[12]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_4_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[11]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[11]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_5_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[10]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[10]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_6_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[9]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[9]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_7_n_0\
    );
\add_ln18_fu_617_p2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[8]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[8]__0_n_0\,
      O => \add_ln18_fu_617_p2_carry__0_i_8_n_0\
    );
\add_ln18_fu_617_p2_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_fu_617_p2_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \add_ln18_fu_617_p2_carry__1_n_0\,
      CO(6) => \add_ln18_fu_617_p2_carry__1_n_1\,
      CO(5) => \add_ln18_fu_617_p2_carry__1_n_2\,
      CO(4) => \add_ln18_fu_617_p2_carry__1_n_3\,
      CO(3) => \add_ln18_fu_617_p2_carry__1_n_4\,
      CO(2) => \add_ln18_fu_617_p2_carry__1_n_5\,
      CO(1) => \add_ln18_fu_617_p2_carry__1_n_6\,
      CO(0) => \add_ln18_fu_617_p2_carry__1_n_7\,
      DI(7 downto 0) => \mul_ln17_6_reg_850_reg__1\(23 downto 16),
      O(7 downto 0) => add_ln18_fu_617_p2(23 downto 16),
      S(7) => mul_32s_32s_32_1_1_U7_n_81,
      S(6) => mul_32s_32s_32_1_1_U7_n_82,
      S(5) => mul_32s_32s_32_1_1_U7_n_83,
      S(4) => mul_32s_32s_32_1_1_U7_n_84,
      S(3) => mul_32s_32s_32_1_1_U7_n_85,
      S(2) => mul_32s_32s_32_1_1_U7_n_86,
      S(1) => mul_32s_32s_32_1_1_U7_n_87,
      S(0) => mul_32s_32s_32_1_1_U7_n_88
    );
\add_ln18_fu_617_p2_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln18_fu_617_p2_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_add_ln18_fu_617_p2_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \add_ln18_fu_617_p2_carry__2_n_1\,
      CO(5) => \add_ln18_fu_617_p2_carry__2_n_2\,
      CO(4) => \add_ln18_fu_617_p2_carry__2_n_3\,
      CO(3) => \add_ln18_fu_617_p2_carry__2_n_4\,
      CO(2) => \add_ln18_fu_617_p2_carry__2_n_5\,
      CO(1) => \add_ln18_fu_617_p2_carry__2_n_6\,
      CO(0) => \add_ln18_fu_617_p2_carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \mul_ln17_6_reg_850_reg__1\(30 downto 24),
      O(7 downto 0) => add_ln18_fu_617_p2(31 downto 24),
      S(7) => mul_32s_32s_32_1_1_U7_n_89,
      S(6) => mul_32s_32s_32_1_1_U7_n_90,
      S(5) => mul_32s_32s_32_1_1_U7_n_91,
      S(4) => mul_32s_32s_32_1_1_U7_n_92,
      S(3) => mul_32s_32s_32_1_1_U7_n_93,
      S(2) => mul_32s_32s_32_1_1_U7_n_94,
      S(1) => mul_32s_32s_32_1_1_U7_n_95,
      S(0) => mul_32s_32s_32_1_1_U7_n_96
    );
add_ln18_fu_617_p2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[7]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[7]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_1_n_0
    );
add_ln18_fu_617_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[6]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[6]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_2_n_0
    );
add_ln18_fu_617_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[5]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[5]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_3_n_0
    );
add_ln18_fu_617_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[4]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[4]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_4_n_0
    );
add_ln18_fu_617_p2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[3]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[3]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_5_n_0
    );
add_ln18_fu_617_p2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[2]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[2]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_6_n_0
    );
add_ln18_fu_617_p2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[1]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[1]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_7_n_0
    );
add_ln18_fu_617_p2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mul_ln17_6_reg_850_reg[0]__0_n_0\,
      I1 => \mul_ln17_7_reg_855_reg[0]__0_n_0\,
      O => add_ln18_fu_617_p2_carry_i_8_n_0
    );
\add_ln18_reg_875_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(0),
      Q => add_ln18_reg_875(0),
      R => '0'
    );
\add_ln18_reg_875_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(10),
      Q => add_ln18_reg_875(10),
      R => '0'
    );
\add_ln18_reg_875_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(11),
      Q => add_ln18_reg_875(11),
      R => '0'
    );
\add_ln18_reg_875_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(12),
      Q => add_ln18_reg_875(12),
      R => '0'
    );
\add_ln18_reg_875_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(13),
      Q => add_ln18_reg_875(13),
      R => '0'
    );
\add_ln18_reg_875_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(14),
      Q => add_ln18_reg_875(14),
      R => '0'
    );
\add_ln18_reg_875_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(15),
      Q => add_ln18_reg_875(15),
      R => '0'
    );
\add_ln18_reg_875_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(16),
      Q => add_ln18_reg_875(16),
      R => '0'
    );
\add_ln18_reg_875_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(17),
      Q => add_ln18_reg_875(17),
      R => '0'
    );
\add_ln18_reg_875_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(18),
      Q => add_ln18_reg_875(18),
      R => '0'
    );
\add_ln18_reg_875_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(19),
      Q => add_ln18_reg_875(19),
      R => '0'
    );
\add_ln18_reg_875_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(1),
      Q => add_ln18_reg_875(1),
      R => '0'
    );
\add_ln18_reg_875_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(20),
      Q => add_ln18_reg_875(20),
      R => '0'
    );
\add_ln18_reg_875_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(21),
      Q => add_ln18_reg_875(21),
      R => '0'
    );
\add_ln18_reg_875_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(22),
      Q => add_ln18_reg_875(22),
      R => '0'
    );
\add_ln18_reg_875_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(23),
      Q => add_ln18_reg_875(23),
      R => '0'
    );
\add_ln18_reg_875_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(24),
      Q => add_ln18_reg_875(24),
      R => '0'
    );
\add_ln18_reg_875_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(25),
      Q => add_ln18_reg_875(25),
      R => '0'
    );
\add_ln18_reg_875_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(26),
      Q => add_ln18_reg_875(26),
      R => '0'
    );
\add_ln18_reg_875_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(27),
      Q => add_ln18_reg_875(27),
      R => '0'
    );
\add_ln18_reg_875_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(28),
      Q => add_ln18_reg_875(28),
      R => '0'
    );
\add_ln18_reg_875_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(29),
      Q => add_ln18_reg_875(29),
      R => '0'
    );
\add_ln18_reg_875_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(2),
      Q => add_ln18_reg_875(2),
      R => '0'
    );
\add_ln18_reg_875_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(30),
      Q => add_ln18_reg_875(30),
      R => '0'
    );
\add_ln18_reg_875_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(31),
      Q => add_ln18_reg_875(31),
      R => '0'
    );
\add_ln18_reg_875_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(3),
      Q => add_ln18_reg_875(3),
      R => '0'
    );
\add_ln18_reg_875_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(4),
      Q => add_ln18_reg_875(4),
      R => '0'
    );
\add_ln18_reg_875_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(5),
      Q => add_ln18_reg_875(5),
      R => '0'
    );
\add_ln18_reg_875_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(6),
      Q => add_ln18_reg_875(6),
      R => '0'
    );
\add_ln18_reg_875_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(7),
      Q => add_ln18_reg_875(7),
      R => '0'
    );
\add_ln18_reg_875_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(8),
      Q => add_ln18_reg_875(8),
      R => '0'
    );
\add_ln18_reg_875_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln18_fu_617_p2(9),
      Q => add_ln18_reg_875(9),
      R => '0'
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAAE"
    )
        port map (
      I0 => ap_done_reg1,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \empty_6_reg_737_reg[1]_0\,
      I4 => ap_CS_fsm_pp0_stage4,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => ap_CS_fsm_pp0_stage4,
      I2 => ap_CS_fsm_pp0_stage1,
      I3 => ap_CS_fsm_pp0_stage2,
      I4 => \empty_6_reg_737_reg[1]_0\,
      I5 => ap_enable_reg_pp0_iter1,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4700FF00"
    )
        port map (
      I0 => \empty_6_reg_737_reg[1]_0\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage1,
      I4 => \icmp_ln8_reg_742_reg_n_0_[0]\,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => \icmp_ln8_reg_742_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp0_stage1,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => \empty_6_reg_737_reg[1]_0\,
      O => ap_done_reg1
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_pp0_stage0,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage1,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage2,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage2,
      Q => ap_CS_fsm_pp0_stage3,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage3,
      Q => ap_CS_fsm_pp0_stage4,
      R => ap_rst
    );
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070000000700"
    )
        port map (
      I0 => \icmp_ln8_reg_742_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp0_stage1,
      I2 => ap_rst,
      I3 => ap_enable_reg_pp0_iter0_reg,
      I4 => ap_CS_fsm_pp0_stage0,
      I5 => \empty_6_reg_737_reg[1]_0\,
      O => ap_enable_reg_pp0_iter0_reg_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_reg_i_1_n_0,
      Q => ap_enable_reg_pp0_iter0_reg,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101510"
    )
        port map (
      I0 => ap_rst,
      I1 => flow_control_loop_pipe_sequential_init_U_n_26,
      I2 => ap_CS_fsm_pp0_stage4,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_CS_fsm_pp0_stage1,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
\c_fu_84[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_ln17_3_reg_776(0),
      O => add_ln10_fu_597_p2(0)
    );
\c_fu_84[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln17_3_reg_776(0),
      I1 => select_ln8_reg_751(1),
      O => add_ln10_fu_597_p2(1)
    );
\c_fu_84[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => select_ln8_reg_751(2),
      I1 => select_ln8_reg_751(1),
      I2 => add_ln17_3_reg_776(0),
      O => add_ln10_fu_597_p2(2)
    );
\c_fu_84[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => select_ln8_reg_751(3),
      I1 => add_ln17_3_reg_776(0),
      I2 => select_ln8_reg_751(1),
      I3 => select_ln8_reg_751(2),
      O => add_ln10_fu_597_p2(3)
    );
\c_fu_84[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \icmp_ln8_reg_742_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp0_stage4,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => \empty_6_reg_737_reg[1]_0\,
      O => c_fu_840
    );
\c_fu_84[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => select_ln8_reg_751(4),
      I1 => select_ln8_reg_751(2),
      I2 => select_ln8_reg_751(1),
      I3 => add_ln17_3_reg_776(0),
      I4 => select_ln8_reg_751(3),
      O => add_ln10_fu_597_p2(4)
    );
\c_fu_84_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => add_ln10_fu_597_p2(0),
      Q => c_fu_84(0),
      R => c_fu_8401_out
    );
\c_fu_84_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => add_ln10_fu_597_p2(1),
      Q => c_fu_84(1),
      R => c_fu_8401_out
    );
\c_fu_84_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => add_ln10_fu_597_p2(2),
      Q => c_fu_84(2),
      R => c_fu_8401_out
    );
\c_fu_84_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => add_ln10_fu_597_p2(3),
      Q => c_fu_84(3),
      R => c_fu_8401_out
    );
\c_fu_84_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => add_ln10_fu_597_p2(4),
      Q => c_fu_84(4),
      R => c_fu_8401_out
    );
\empty_6_reg_737_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => flow_control_loop_pipe_sequential_init_U_n_53,
      Q => empty_6_reg_737(0),
      R => '0'
    );
\empty_6_reg_737_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => flow_control_loop_pipe_sequential_init_U_n_66,
      Q => empty_6_reg_737(1),
      R => '0'
    );
\empty_6_reg_737_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => empty_6_fu_298_p2(2),
      Q => empty_6_reg_737(2),
      R => '0'
    );
\empty_6_reg_737_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => empty_6_fu_298_p2(3),
      Q => empty_6_reg_737(3),
      R => '0'
    );
\empty_6_reg_737_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => empty_6_fu_298_p2(4),
      Q => empty_6_reg_737(4),
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_flow_control_loop_pipe_sequential_init
     port map (
      D(9 downto 0) => add_ln17_6_fu_479_p2(9 downto 0),
      Q(4) => ap_CS_fsm_pp0_stage4,
      Q(3) => ap_CS_fsm_pp0_stage3,
      Q(2) => ap_CS_fsm_pp0_stage2,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => ap_CS_fsm_pp0_stage0,
      S(1) => \add_ln17_6_reg_783[7]_i_5_n_0\,
      S(0) => \add_ln17_6_reg_783[7]_i_6_n_0\,
      add_ln17_3_fu_473_p2(9 downto 0) => add_ln17_3_fu_473_p2(9 downto 0),
      add_ln17_3_reg_776(4 downto 0) => add_ln17_3_reg_776(4 downto 0),
      add_ln17_3_reg_7760 => add_ln17_3_reg_7760,
      \add_ln17_3_reg_776_reg[7]\(1) => \add_ln17_3_reg_776[7]_i_5_n_0\,
      \add_ln17_3_reg_776_reg[7]\(0) => \add_ln17_3_reg_776[7]_i_6_n_0\,
      add_ln17_reg_756(2 downto 0) => add_ln17_reg_756(3 downto 1),
      \add_ln17_reg_756_reg[9]\ => \orig_address0[9]_INST_0_i_10_n_0\,
      add_ln8_fu_368_p2(9 downto 0) => add_ln8_fu_368_p2(9 downto 0),
      \ap_CS_fsm_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_53,
      \ap_CS_fsm_reg[6]\(1 downto 0) => D(1 downto 0),
      \ap_CS_fsm_reg[7]\(1 downto 0) => Q(5 downto 4),
      ap_clk => ap_clk,
      ap_done_cache_reg_0 => \icmp_ln8_reg_742_reg_n_0_[0]\,
      ap_done_reg1 => ap_done_reg1,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_rst => ap_rst,
      c_fu_8401_out => c_fu_8401_out,
      \c_fu_84_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_10,
      \c_fu_84_reg[1]\ => flow_control_loop_pipe_sequential_init_U_n_68,
      \c_fu_84_reg[1]_0\ => flow_control_loop_pipe_sequential_init_U_n_69,
      \c_fu_84_reg[1]_1\ => flow_control_loop_pipe_sequential_init_U_n_70,
      \c_fu_84_reg[2]\ => flow_control_loop_pipe_sequential_init_U_n_51,
      \empty_6_reg_737_reg[1]\ => \empty_6_reg_737_reg[1]_0\,
      \empty_6_reg_737_reg[4]\(4 downto 0) => r_fu_88(4 downto 0),
      grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_26,
      \icmp_ln10_reg_746_reg[0]\(4 downto 0) => c_fu_84(4 downto 0),
      icmp_ln8_fu_362_p2 => icmp_ln8_fu_362_p2,
      \icmp_ln8_reg_742_reg[0]\ => \indvar_flatten_fu_92_reg_n_0_[5]\,
      \icmp_ln8_reg_742_reg[0]_0\ => \indvar_flatten_fu_92_reg_n_0_[1]\,
      \icmp_ln8_reg_742_reg[0]_1\ => \indvar_flatten_fu_92_reg_n_0_[0]\,
      indvar_flatten_fu_92 => indvar_flatten_fu_92,
      \indvar_flatten_fu_92_reg[3]\ => \indvar_flatten_fu_92_reg_n_0_[3]\,
      \indvar_flatten_fu_92_reg[3]_0\ => \indvar_flatten_fu_92_reg_n_0_[2]\,
      \indvar_flatten_fu_92_reg[4]\ => \indvar_flatten_fu_92_reg_n_0_[4]\,
      \indvar_flatten_fu_92_reg[9]\ => \indvar_flatten_fu_92_reg_n_0_[9]\,
      \indvar_flatten_fu_92_reg[9]_0\ => \indvar_flatten_fu_92_reg_n_0_[7]\,
      \indvar_flatten_fu_92_reg[9]_1\ => \indvar_flatten_fu_92_reg_n_0_[6]\,
      \indvar_flatten_fu_92_reg[9]_2\ => \indvar_flatten_fu_92_reg_n_0_[8]\,
      orig_address0(9 downto 0) => orig_address0(9 downto 0),
      \orig_address0[2]_0\ => \orig_address0[2]_INST_0_i_2_n_0\,
      \orig_address0[3]_0\ => \orig_address0[3]_INST_0_i_4_n_0\,
      \orig_address0[4]_0\ => \orig_address0[4]_INST_0_i_3_n_0\,
      \orig_address0[4]_1\ => \orig_address0[4]_INST_0_i_5_n_0\,
      \orig_address0[5]_0\ => \orig_address0[5]_INST_0_i_4_n_0\,
      \orig_address0[5]_1\ => \orig_address0[5]_INST_0_i_5_n_0\,
      \orig_address0[6]_0\ => \orig_address0[6]_INST_0_i_4_n_0\,
      \orig_address0[6]_1\ => \orig_address0[6]_INST_0_i_5_n_0\,
      \orig_address0[7]_0\ => \orig_address0[7]_INST_0_i_4_n_0\,
      \orig_address0[7]_1\ => \orig_address0[7]_INST_0_i_5_n_0\,
      \orig_address0[8]_0\ => \orig_address0[8]_INST_0_i_2_n_0\,
      \orig_address0[8]_1\ => \orig_address0[8]_INST_0_i_3_n_0\,
      \orig_address0[9]_0\ => \orig_address0[9]_INST_0_i_5_n_0\,
      \orig_address0[9]_1\ => \orig_address0[9]_INST_0_i_6_n_0\,
      orig_address0_2_sp_1 => \orig_address0[3]_INST_0_i_2_n_0\,
      orig_address0_3_sp_1 => \orig_address0[3]_INST_0_i_1_n_0\,
      orig_address0_4_sp_1 => \orig_address0[4]_INST_0_i_2_n_0\,
      orig_address0_5_sp_1 => \orig_address0[5]_INST_0_i_1_n_0\,
      orig_address0_6_sp_1 => \orig_address0[6]_INST_0_i_1_n_0\,
      orig_address0_7_sp_1 => \orig_address0[7]_INST_0_i_1_n_0\,
      orig_address0_8_sp_1 => \orig_address0[8]_INST_0_i_1_n_0\,
      orig_address0_9_sp_1 => \orig_address0[9]_INST_0_i_1_n_0\,
      orig_address1(9 downto 0) => orig_address1(9 downto 0),
      \orig_address1[4]_0\ => \orig_address1[4]_INST_0_i_2_n_0\,
      \orig_address1[9]\(9 downto 0) => add_ln17_6_reg_783(9 downto 0),
      \orig_address1[9]_0\ => \orig_address1[9]_INST_0_i_1_n_0\,
      \orig_address1[9]_1\ => \orig_address1[9]_INST_0_i_2_n_0\,
      orig_address1_2_sp_1 => \orig_address1[2]_INST_0_i_2_n_0\,
      orig_address1_3_sp_1 => \orig_address1[3]_INST_0_i_1_n_0\,
      orig_address1_4_sp_1 => \orig_address1[4]_INST_0_i_1_n_0\,
      orig_address1_5_sp_1 => \orig_address1[5]_INST_0_i_1_n_0\,
      orig_address1_6_sp_1 => \orig_address1[6]_INST_0_i_1_n_0\,
      orig_address1_7_sp_1 => \orig_address1[7]_INST_0_i_1_n_0\,
      orig_address1_8_sp_1 => \orig_address1[8]_INST_0_i_1_n_0\,
      \r_fu_88_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_39,
      \r_fu_88_reg[0]_0\(3 downto 1) => empty_6_fu_298_p2(4 downto 2),
      \r_fu_88_reg[0]_0\(0) => flow_control_loop_pipe_sequential_init_U_n_66,
      \r_fu_88_reg[0]_1\ => flow_control_loop_pipe_sequential_init_U_n_82,
      \r_fu_88_reg[2]\ => flow_control_loop_pipe_sequential_init_U_n_61,
      \r_fu_88_reg[3]\ => flow_control_loop_pipe_sequential_init_U_n_52,
      \r_fu_88_reg[3]_0\ => flow_control_loop_pipe_sequential_init_U_n_59,
      \r_fu_88_reg[3]_1\ => flow_control_loop_pipe_sequential_init_U_n_60,
      \r_fu_88_reg[3]_2\ => flow_control_loop_pipe_sequential_init_U_n_67,
      \r_fu_88_reg[4]\(4 downto 0) => ap_sig_allocacmp_r_1(4 downto 0),
      \r_fu_88_reg[4]_0\ => flow_control_loop_pipe_sequential_init_U_n_62,
      select_ln8_fu_383_p3(2 downto 0) => select_ln8_fu_383_p3(3 downto 1)
    );
grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEEEEEEEEEEEEE"
    )
        port map (
      I0 => Q(4),
      I1 => \empty_6_reg_737_reg[1]_0\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_enable_reg_pp0_iter0_reg,
      I4 => ap_CS_fsm_pp0_stage1,
      I5 => \icmp_ln8_reg_742_reg_n_0_[0]\,
      O => \ap_CS_fsm_reg[5]\
    );
\icmp_ln10_reg_746_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_51,
      Q => icmp_ln10_reg_746,
      R => '0'
    );
\icmp_ln8_reg_742_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => icmp_ln8_fu_362_p2,
      Q => \icmp_ln8_reg_742_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(0),
      Q => \indvar_flatten_fu_92_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(1),
      Q => \indvar_flatten_fu_92_reg_n_0_[1]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(2),
      Q => \indvar_flatten_fu_92_reg_n_0_[2]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(3),
      Q => \indvar_flatten_fu_92_reg_n_0_[3]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(4),
      Q => \indvar_flatten_fu_92_reg_n_0_[4]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(5),
      Q => \indvar_flatten_fu_92_reg_n_0_[5]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(6),
      Q => \indvar_flatten_fu_92_reg_n_0_[6]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(7),
      Q => \indvar_flatten_fu_92_reg_n_0_[7]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(8),
      Q => \indvar_flatten_fu_92_reg_n_0_[8]\,
      R => '0'
    );
\indvar_flatten_fu_92_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_fu_92,
      D => add_ln8_fu_368_p2(9),
      Q => \indvar_flatten_fu_92_reg_n_0_[9]\,
      R => '0'
    );
mul_32s_32s_32_1_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1
     port map (
      CEP => mul_ln17_1_reg_7950,
      D(16) => mul_32s_32s_32_1_1_U1_n_1,
      D(15) => mul_32s_32s_32_1_1_U1_n_2,
      D(14) => mul_32s_32s_32_1_1_U1_n_3,
      D(13) => mul_32s_32s_32_1_1_U1_n_4,
      D(12) => mul_32s_32s_32_1_1_U1_n_5,
      D(11) => mul_32s_32s_32_1_1_U1_n_6,
      D(10) => mul_32s_32s_32_1_1_U1_n_7,
      D(9) => mul_32s_32s_32_1_1_U1_n_8,
      D(8) => mul_32s_32s_32_1_1_U1_n_9,
      D(7) => mul_32s_32s_32_1_1_U1_n_10,
      D(6) => mul_32s_32s_32_1_1_U1_n_11,
      D(5) => mul_32s_32s_32_1_1_U1_n_12,
      D(4) => mul_32s_32s_32_1_1_U1_n_13,
      D(3) => mul_32s_32s_32_1_1_U1_n_14,
      D(2) => mul_32s_32s_32_1_1_U1_n_15,
      D(1) => mul_32s_32s_32_1_1_U1_n_16,
      D(0) => mul_32s_32s_32_1_1_U1_n_17,
      DI(6) => mul_32s_32s_32_1_1_U1_n_84,
      DI(5) => mul_32s_32s_32_1_1_U1_n_85,
      DI(4) => mul_32s_32s_32_1_1_U1_n_86,
      DI(3) => mul_32s_32s_32_1_1_U1_n_87,
      DI(2) => mul_32s_32s_32_1_1_U1_n_88,
      DI(1) => mul_32s_32s_32_1_1_U1_n_89,
      DI(0) => mul_32s_32s_32_1_1_U1_n_90,
      P(14) => mul_ln17_reg_790_reg_n_91,
      P(13) => mul_ln17_reg_790_reg_n_92,
      P(12) => mul_ln17_reg_790_reg_n_93,
      P(11) => mul_ln17_reg_790_reg_n_94,
      P(10) => mul_ln17_reg_790_reg_n_95,
      P(9) => mul_ln17_reg_790_reg_n_96,
      P(8) => mul_ln17_reg_790_reg_n_97,
      P(7) => mul_ln17_reg_790_reg_n_98,
      P(6) => mul_ln17_reg_790_reg_n_99,
      P(5) => mul_ln17_reg_790_reg_n_100,
      P(4) => mul_ln17_reg_790_reg_n_101,
      P(3) => mul_ln17_reg_790_reg_n_102,
      P(2) => mul_ln17_reg_790_reg_n_103,
      P(1) => mul_ln17_reg_790_reg_n_104,
      P(0) => mul_ln17_reg_790_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U1_n_18,
      PCOUT(46) => mul_32s_32s_32_1_1_U1_n_19,
      PCOUT(45) => mul_32s_32s_32_1_1_U1_n_20,
      PCOUT(44) => mul_32s_32s_32_1_1_U1_n_21,
      PCOUT(43) => mul_32s_32s_32_1_1_U1_n_22,
      PCOUT(42) => mul_32s_32s_32_1_1_U1_n_23,
      PCOUT(41) => mul_32s_32s_32_1_1_U1_n_24,
      PCOUT(40) => mul_32s_32s_32_1_1_U1_n_25,
      PCOUT(39) => mul_32s_32s_32_1_1_U1_n_26,
      PCOUT(38) => mul_32s_32s_32_1_1_U1_n_27,
      PCOUT(37) => mul_32s_32s_32_1_1_U1_n_28,
      PCOUT(36) => mul_32s_32s_32_1_1_U1_n_29,
      PCOUT(35) => mul_32s_32s_32_1_1_U1_n_30,
      PCOUT(34) => mul_32s_32s_32_1_1_U1_n_31,
      PCOUT(33) => mul_32s_32s_32_1_1_U1_n_32,
      PCOUT(32) => mul_32s_32s_32_1_1_U1_n_33,
      PCOUT(31) => mul_32s_32s_32_1_1_U1_n_34,
      PCOUT(30) => mul_32s_32s_32_1_1_U1_n_35,
      PCOUT(29) => mul_32s_32s_32_1_1_U1_n_36,
      PCOUT(28) => mul_32s_32s_32_1_1_U1_n_37,
      PCOUT(27) => mul_32s_32s_32_1_1_U1_n_38,
      PCOUT(26) => mul_32s_32s_32_1_1_U1_n_39,
      PCOUT(25) => mul_32s_32s_32_1_1_U1_n_40,
      PCOUT(24) => mul_32s_32s_32_1_1_U1_n_41,
      PCOUT(23) => mul_32s_32s_32_1_1_U1_n_42,
      PCOUT(22) => mul_32s_32s_32_1_1_U1_n_43,
      PCOUT(21) => mul_32s_32s_32_1_1_U1_n_44,
      PCOUT(20) => mul_32s_32s_32_1_1_U1_n_45,
      PCOUT(19) => mul_32s_32s_32_1_1_U1_n_46,
      PCOUT(18) => mul_32s_32s_32_1_1_U1_n_47,
      PCOUT(17) => mul_32s_32s_32_1_1_U1_n_48,
      PCOUT(16) => mul_32s_32s_32_1_1_U1_n_49,
      PCOUT(15) => mul_32s_32s_32_1_1_U1_n_50,
      PCOUT(14) => mul_32s_32s_32_1_1_U1_n_51,
      PCOUT(13) => mul_32s_32s_32_1_1_U1_n_52,
      PCOUT(12) => mul_32s_32s_32_1_1_U1_n_53,
      PCOUT(11) => mul_32s_32s_32_1_1_U1_n_54,
      PCOUT(10) => mul_32s_32s_32_1_1_U1_n_55,
      PCOUT(9) => mul_32s_32s_32_1_1_U1_n_56,
      PCOUT(8) => mul_32s_32s_32_1_1_U1_n_57,
      PCOUT(7) => mul_32s_32s_32_1_1_U1_n_58,
      PCOUT(6) => mul_32s_32s_32_1_1_U1_n_59,
      PCOUT(5) => mul_32s_32s_32_1_1_U1_n_60,
      PCOUT(4) => mul_32s_32s_32_1_1_U1_n_61,
      PCOUT(3) => mul_32s_32s_32_1_1_U1_n_62,
      PCOUT(2) => mul_32s_32s_32_1_1_U1_n_63,
      PCOUT(1) => mul_32s_32s_32_1_1_U1_n_64,
      PCOUT(0) => mul_32s_32s_32_1_1_U1_n_65,
      Q(0) => Q(0),
      S(0) => mul_32s_32s_32_1_1_U1_n_82,
      \add_ln18_1_reg_865_reg[22]\(6) => mul_32s_32s_32_1_1_U1_n_91,
      \add_ln18_1_reg_865_reg[22]\(5) => mul_32s_32s_32_1_1_U1_n_92,
      \add_ln18_1_reg_865_reg[22]\(4) => mul_32s_32s_32_1_1_U1_n_93,
      \add_ln18_1_reg_865_reg[22]\(3) => mul_32s_32s_32_1_1_U1_n_94,
      \add_ln18_1_reg_865_reg[22]\(2) => mul_32s_32s_32_1_1_U1_n_95,
      \add_ln18_1_reg_865_reg[22]\(1) => mul_32s_32s_32_1_1_U1_n_96,
      \add_ln18_1_reg_865_reg[22]\(0) => mul_32s_32s_32_1_1_U1_n_97,
      \add_ln18_1_reg_865_reg[30]\(0) => mul_32s_32s_32_1_1_U1_n_83,
      \add_ln18_7_fu_644_p2__0_carry__1\(0) => \mul_ln17_2_reg_810_reg[15]__0_n_0\,
      \add_ln18_7_fu_644_p2__0_carry__1_i_15\(1) => \mul_ln17_reg_790_reg[16]__0_n_0\,
      \add_ln18_7_fu_644_p2__0_carry__1_i_15\(0) => \mul_ln17_reg_790_reg[15]__0_n_0\,
      \add_ln18_7_fu_644_p2__0_carry__2\(15 downto 0) => add_ln18_1_reg_865(30 downto 15),
      ap_clk => ap_clk,
      filter_q0(16 downto 0) => filter_q0(16 downto 0),
      \mul_ln17_2_reg_810_reg__1\(14 downto 0) => \mul_ln17_2_reg_810_reg__1\(30 downto 16),
      \mul_ln17_reg_790_reg[0]__0\(0) => ap_CS_fsm_pp0_stage1,
      \mul_ln17_reg_790_reg[0]__0_0\ => \icmp_ln8_reg_742_reg_n_0_[0]\,
      \mul_ln17_reg_790_reg__1\(15 downto 0) => \mul_ln17_reg_790_reg__1\(31 downto 16),
      orig_q1(31 downto 0) => orig_q1(31 downto 0)
    );
mul_32s_32s_32_1_1_U2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_0
     port map (
      CEP => mul_ln17_1_reg_7950,
      D(16) => mul_32s_32s_32_1_1_U2_n_0,
      D(15) => mul_32s_32s_32_1_1_U2_n_1,
      D(14) => mul_32s_32s_32_1_1_U2_n_2,
      D(13) => mul_32s_32s_32_1_1_U2_n_3,
      D(12) => mul_32s_32s_32_1_1_U2_n_4,
      D(11) => mul_32s_32s_32_1_1_U2_n_5,
      D(10) => mul_32s_32s_32_1_1_U2_n_6,
      D(9) => mul_32s_32s_32_1_1_U2_n_7,
      D(8) => mul_32s_32s_32_1_1_U2_n_8,
      D(7) => mul_32s_32s_32_1_1_U2_n_9,
      D(6) => mul_32s_32s_32_1_1_U2_n_10,
      D(5) => mul_32s_32s_32_1_1_U2_n_11,
      D(4) => mul_32s_32s_32_1_1_U2_n_12,
      D(3) => mul_32s_32s_32_1_1_U2_n_13,
      D(2) => mul_32s_32s_32_1_1_U2_n_14,
      D(1) => mul_32s_32s_32_1_1_U2_n_15,
      D(0) => mul_32s_32s_32_1_1_U2_n_16,
      DI(6) => mul_32s_32s_32_1_1_U2_n_83,
      DI(5) => mul_32s_32s_32_1_1_U2_n_84,
      DI(4) => mul_32s_32s_32_1_1_U2_n_85,
      DI(3) => mul_32s_32s_32_1_1_U2_n_86,
      DI(2) => mul_32s_32s_32_1_1_U2_n_87,
      DI(1) => mul_32s_32s_32_1_1_U2_n_88,
      DI(0) => mul_32s_32s_32_1_1_U2_n_89,
      P(14) => mul_ln17_1_reg_795_reg_n_91,
      P(13) => mul_ln17_1_reg_795_reg_n_92,
      P(12) => mul_ln17_1_reg_795_reg_n_93,
      P(11) => mul_ln17_1_reg_795_reg_n_94,
      P(10) => mul_ln17_1_reg_795_reg_n_95,
      P(9) => mul_ln17_1_reg_795_reg_n_96,
      P(8) => mul_ln17_1_reg_795_reg_n_97,
      P(7) => mul_ln17_1_reg_795_reg_n_98,
      P(6) => mul_ln17_1_reg_795_reg_n_99,
      P(5) => mul_ln17_1_reg_795_reg_n_100,
      P(4) => mul_ln17_1_reg_795_reg_n_101,
      P(3) => mul_ln17_1_reg_795_reg_n_102,
      P(2) => mul_ln17_1_reg_795_reg_n_103,
      P(1) => mul_ln17_1_reg_795_reg_n_104,
      P(0) => mul_ln17_1_reg_795_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U2_n_17,
      PCOUT(46) => mul_32s_32s_32_1_1_U2_n_18,
      PCOUT(45) => mul_32s_32s_32_1_1_U2_n_19,
      PCOUT(44) => mul_32s_32s_32_1_1_U2_n_20,
      PCOUT(43) => mul_32s_32s_32_1_1_U2_n_21,
      PCOUT(42) => mul_32s_32s_32_1_1_U2_n_22,
      PCOUT(41) => mul_32s_32s_32_1_1_U2_n_23,
      PCOUT(40) => mul_32s_32s_32_1_1_U2_n_24,
      PCOUT(39) => mul_32s_32s_32_1_1_U2_n_25,
      PCOUT(38) => mul_32s_32s_32_1_1_U2_n_26,
      PCOUT(37) => mul_32s_32s_32_1_1_U2_n_27,
      PCOUT(36) => mul_32s_32s_32_1_1_U2_n_28,
      PCOUT(35) => mul_32s_32s_32_1_1_U2_n_29,
      PCOUT(34) => mul_32s_32s_32_1_1_U2_n_30,
      PCOUT(33) => mul_32s_32s_32_1_1_U2_n_31,
      PCOUT(32) => mul_32s_32s_32_1_1_U2_n_32,
      PCOUT(31) => mul_32s_32s_32_1_1_U2_n_33,
      PCOUT(30) => mul_32s_32s_32_1_1_U2_n_34,
      PCOUT(29) => mul_32s_32s_32_1_1_U2_n_35,
      PCOUT(28) => mul_32s_32s_32_1_1_U2_n_36,
      PCOUT(27) => mul_32s_32s_32_1_1_U2_n_37,
      PCOUT(26) => mul_32s_32s_32_1_1_U2_n_38,
      PCOUT(25) => mul_32s_32s_32_1_1_U2_n_39,
      PCOUT(24) => mul_32s_32s_32_1_1_U2_n_40,
      PCOUT(23) => mul_32s_32s_32_1_1_U2_n_41,
      PCOUT(22) => mul_32s_32s_32_1_1_U2_n_42,
      PCOUT(21) => mul_32s_32s_32_1_1_U2_n_43,
      PCOUT(20) => mul_32s_32s_32_1_1_U2_n_44,
      PCOUT(19) => mul_32s_32s_32_1_1_U2_n_45,
      PCOUT(18) => mul_32s_32s_32_1_1_U2_n_46,
      PCOUT(17) => mul_32s_32s_32_1_1_U2_n_47,
      PCOUT(16) => mul_32s_32s_32_1_1_U2_n_48,
      PCOUT(15) => mul_32s_32s_32_1_1_U2_n_49,
      PCOUT(14) => mul_32s_32s_32_1_1_U2_n_50,
      PCOUT(13) => mul_32s_32s_32_1_1_U2_n_51,
      PCOUT(12) => mul_32s_32s_32_1_1_U2_n_52,
      PCOUT(11) => mul_32s_32s_32_1_1_U2_n_53,
      PCOUT(10) => mul_32s_32s_32_1_1_U2_n_54,
      PCOUT(9) => mul_32s_32s_32_1_1_U2_n_55,
      PCOUT(8) => mul_32s_32s_32_1_1_U2_n_56,
      PCOUT(7) => mul_32s_32s_32_1_1_U2_n_57,
      PCOUT(6) => mul_32s_32s_32_1_1_U2_n_58,
      PCOUT(5) => mul_32s_32s_32_1_1_U2_n_59,
      PCOUT(4) => mul_32s_32s_32_1_1_U2_n_60,
      PCOUT(3) => mul_32s_32s_32_1_1_U2_n_61,
      PCOUT(2) => mul_32s_32s_32_1_1_U2_n_62,
      PCOUT(1) => mul_32s_32s_32_1_1_U2_n_63,
      PCOUT(0) => mul_32s_32s_32_1_1_U2_n_64,
      Q(0) => Q(1),
      S(0) => mul_32s_32s_32_1_1_U2_n_81,
      \add_ln18_7_fu_644_p2__94_carry__1\(0) => \mul_ln17_3_reg_815_reg[15]__0_n_0\,
      \add_ln18_7_fu_644_p2__94_carry__1_i_15\(1) => \mul_ln17_1_reg_795_reg[16]__0_n_0\,
      \add_ln18_7_fu_644_p2__94_carry__1_i_15\(0) => \mul_ln17_1_reg_795_reg[15]__0_n_0\,
      \add_ln18_7_fu_644_p2__94_carry__2\(15 downto 0) => mul_ln17_8_reg_870(30 downto 15),
      ap_clk => ap_clk,
      filter_q1(16 downto 0) => filter_q1(16 downto 0),
      \mul_ln17_1_reg_795_reg__1\(15 downto 0) => \mul_ln17_1_reg_795_reg__1\(31 downto 16),
      \mul_ln17_3_reg_815_reg__1\(14 downto 0) => \mul_ln17_3_reg_815_reg__1\(30 downto 16),
      \mul_ln17_8_reg_870_reg[22]\(6) => mul_32s_32s_32_1_1_U2_n_90,
      \mul_ln17_8_reg_870_reg[22]\(5) => mul_32s_32s_32_1_1_U2_n_91,
      \mul_ln17_8_reg_870_reg[22]\(4) => mul_32s_32s_32_1_1_U2_n_92,
      \mul_ln17_8_reg_870_reg[22]\(3) => mul_32s_32s_32_1_1_U2_n_93,
      \mul_ln17_8_reg_870_reg[22]\(2) => mul_32s_32s_32_1_1_U2_n_94,
      \mul_ln17_8_reg_870_reg[22]\(1) => mul_32s_32s_32_1_1_U2_n_95,
      \mul_ln17_8_reg_870_reg[22]\(0) => mul_32s_32s_32_1_1_U2_n_96,
      \mul_ln17_8_reg_870_reg[30]\(0) => mul_32s_32s_32_1_1_U2_n_82,
      orig_q0(31 downto 0) => orig_q0(31 downto 0)
    );
mul_32s_32s_32_1_1_U3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_1
     port map (
      CEP => mul_ln17_2_reg_8100,
      D(16) => mul_32s_32s_32_1_1_U3_n_1,
      D(15) => mul_32s_32s_32_1_1_U3_n_2,
      D(14) => mul_32s_32s_32_1_1_U3_n_3,
      D(13) => mul_32s_32s_32_1_1_U3_n_4,
      D(12) => mul_32s_32s_32_1_1_U3_n_5,
      D(11) => mul_32s_32s_32_1_1_U3_n_6,
      D(10) => mul_32s_32s_32_1_1_U3_n_7,
      D(9) => mul_32s_32s_32_1_1_U3_n_8,
      D(8) => mul_32s_32s_32_1_1_U3_n_9,
      D(7) => mul_32s_32s_32_1_1_U3_n_10,
      D(6) => mul_32s_32s_32_1_1_U3_n_11,
      D(5) => mul_32s_32s_32_1_1_U3_n_12,
      D(4) => mul_32s_32s_32_1_1_U3_n_13,
      D(3) => mul_32s_32s_32_1_1_U3_n_14,
      D(2) => mul_32s_32s_32_1_1_U3_n_15,
      D(1) => mul_32s_32s_32_1_1_U3_n_16,
      D(0) => mul_32s_32s_32_1_1_U3_n_17,
      P(14) => mul_ln17_2_reg_810_reg_n_91,
      P(13) => mul_ln17_2_reg_810_reg_n_92,
      P(12) => mul_ln17_2_reg_810_reg_n_93,
      P(11) => mul_ln17_2_reg_810_reg_n_94,
      P(10) => mul_ln17_2_reg_810_reg_n_95,
      P(9) => mul_ln17_2_reg_810_reg_n_96,
      P(8) => mul_ln17_2_reg_810_reg_n_97,
      P(7) => mul_ln17_2_reg_810_reg_n_98,
      P(6) => mul_ln17_2_reg_810_reg_n_99,
      P(5) => mul_ln17_2_reg_810_reg_n_100,
      P(4) => mul_ln17_2_reg_810_reg_n_101,
      P(3) => mul_ln17_2_reg_810_reg_n_102,
      P(2) => mul_ln17_2_reg_810_reg_n_103,
      P(1) => mul_ln17_2_reg_810_reg_n_104,
      P(0) => mul_ln17_2_reg_810_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U3_n_18,
      PCOUT(46) => mul_32s_32s_32_1_1_U3_n_19,
      PCOUT(45) => mul_32s_32s_32_1_1_U3_n_20,
      PCOUT(44) => mul_32s_32s_32_1_1_U3_n_21,
      PCOUT(43) => mul_32s_32s_32_1_1_U3_n_22,
      PCOUT(42) => mul_32s_32s_32_1_1_U3_n_23,
      PCOUT(41) => mul_32s_32s_32_1_1_U3_n_24,
      PCOUT(40) => mul_32s_32s_32_1_1_U3_n_25,
      PCOUT(39) => mul_32s_32s_32_1_1_U3_n_26,
      PCOUT(38) => mul_32s_32s_32_1_1_U3_n_27,
      PCOUT(37) => mul_32s_32s_32_1_1_U3_n_28,
      PCOUT(36) => mul_32s_32s_32_1_1_U3_n_29,
      PCOUT(35) => mul_32s_32s_32_1_1_U3_n_30,
      PCOUT(34) => mul_32s_32s_32_1_1_U3_n_31,
      PCOUT(33) => mul_32s_32s_32_1_1_U3_n_32,
      PCOUT(32) => mul_32s_32s_32_1_1_U3_n_33,
      PCOUT(31) => mul_32s_32s_32_1_1_U3_n_34,
      PCOUT(30) => mul_32s_32s_32_1_1_U3_n_35,
      PCOUT(29) => mul_32s_32s_32_1_1_U3_n_36,
      PCOUT(28) => mul_32s_32s_32_1_1_U3_n_37,
      PCOUT(27) => mul_32s_32s_32_1_1_U3_n_38,
      PCOUT(26) => mul_32s_32s_32_1_1_U3_n_39,
      PCOUT(25) => mul_32s_32s_32_1_1_U3_n_40,
      PCOUT(24) => mul_32s_32s_32_1_1_U3_n_41,
      PCOUT(23) => mul_32s_32s_32_1_1_U3_n_42,
      PCOUT(22) => mul_32s_32s_32_1_1_U3_n_43,
      PCOUT(21) => mul_32s_32s_32_1_1_U3_n_44,
      PCOUT(20) => mul_32s_32s_32_1_1_U3_n_45,
      PCOUT(19) => mul_32s_32s_32_1_1_U3_n_46,
      PCOUT(18) => mul_32s_32s_32_1_1_U3_n_47,
      PCOUT(17) => mul_32s_32s_32_1_1_U3_n_48,
      PCOUT(16) => mul_32s_32s_32_1_1_U3_n_49,
      PCOUT(15) => mul_32s_32s_32_1_1_U3_n_50,
      PCOUT(14) => mul_32s_32s_32_1_1_U3_n_51,
      PCOUT(13) => mul_32s_32s_32_1_1_U3_n_52,
      PCOUT(12) => mul_32s_32s_32_1_1_U3_n_53,
      PCOUT(11) => mul_32s_32s_32_1_1_U3_n_54,
      PCOUT(10) => mul_32s_32s_32_1_1_U3_n_55,
      PCOUT(9) => mul_32s_32s_32_1_1_U3_n_56,
      PCOUT(8) => mul_32s_32s_32_1_1_U3_n_57,
      PCOUT(7) => mul_32s_32s_32_1_1_U3_n_58,
      PCOUT(6) => mul_32s_32s_32_1_1_U3_n_59,
      PCOUT(5) => mul_32s_32s_32_1_1_U3_n_60,
      PCOUT(4) => mul_32s_32s_32_1_1_U3_n_61,
      PCOUT(3) => mul_32s_32s_32_1_1_U3_n_62,
      PCOUT(2) => mul_32s_32s_32_1_1_U3_n_63,
      PCOUT(1) => mul_32s_32s_32_1_1_U3_n_64,
      PCOUT(0) => mul_32s_32s_32_1_1_U3_n_65,
      Q(0) => Q(1),
      S(6) => mul_32s_32s_32_1_1_U3_n_81,
      S(5) => mul_32s_32s_32_1_1_U3_n_82,
      S(4) => mul_32s_32s_32_1_1_U3_n_83,
      S(3) => mul_32s_32s_32_1_1_U3_n_84,
      S(2) => mul_32s_32s_32_1_1_U3_n_85,
      S(1) => mul_32s_32s_32_1_1_U3_n_86,
      S(0) => mul_32s_32s_32_1_1_U3_n_87,
      \add_ln18_1_reg_865_reg[30]\(6) => mul_32s_32s_32_1_1_U3_n_88,
      \add_ln18_1_reg_865_reg[30]\(5) => mul_32s_32s_32_1_1_U3_n_89,
      \add_ln18_1_reg_865_reg[30]\(4) => mul_32s_32s_32_1_1_U3_n_90,
      \add_ln18_1_reg_865_reg[30]\(3) => mul_32s_32s_32_1_1_U3_n_91,
      \add_ln18_1_reg_865_reg[30]\(2) => mul_32s_32s_32_1_1_U3_n_92,
      \add_ln18_1_reg_865_reg[30]\(1) => mul_32s_32s_32_1_1_U3_n_93,
      \add_ln18_1_reg_865_reg[30]\(0) => mul_32s_32s_32_1_1_U3_n_94,
      \add_ln18_7_fu_644_p2__0_carry__1_i_7\(0) => \mul_ln17_2_reg_810_reg[16]__0_n_0\,
      \add_ln18_7_fu_644_p2__0_carry__2\(15 downto 0) => add_ln18_1_reg_865(31 downto 16),
      ap_clk => ap_clk,
      filter_q0(16 downto 0) => filter_q0(16 downto 0),
      \mul_ln17_2_reg_810_reg[0]__0\(0) => ap_CS_fsm_pp0_stage2,
      \mul_ln17_2_reg_810_reg[0]__0_0\ => \icmp_ln8_reg_742_reg_n_0_[0]\,
      \mul_ln17_2_reg_810_reg[16]__0\(14 downto 0) => \mul_ln17_2_reg_810_reg__1\(30 downto 16),
      \mul_ln17_reg_790_reg__1\(15 downto 0) => \mul_ln17_reg_790_reg__1\(31 downto 16),
      orig_q1(31 downto 0) => orig_q1(31 downto 0)
    );
mul_32s_32s_32_1_1_U4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_2
     port map (
      CEP => mul_ln17_2_reg_8100,
      D(16) => mul_32s_32s_32_1_1_U4_n_0,
      D(15) => mul_32s_32s_32_1_1_U4_n_1,
      D(14) => mul_32s_32s_32_1_1_U4_n_2,
      D(13) => mul_32s_32s_32_1_1_U4_n_3,
      D(12) => mul_32s_32s_32_1_1_U4_n_4,
      D(11) => mul_32s_32s_32_1_1_U4_n_5,
      D(10) => mul_32s_32s_32_1_1_U4_n_6,
      D(9) => mul_32s_32s_32_1_1_U4_n_7,
      D(8) => mul_32s_32s_32_1_1_U4_n_8,
      D(7) => mul_32s_32s_32_1_1_U4_n_9,
      D(6) => mul_32s_32s_32_1_1_U4_n_10,
      D(5) => mul_32s_32s_32_1_1_U4_n_11,
      D(4) => mul_32s_32s_32_1_1_U4_n_12,
      D(3) => mul_32s_32s_32_1_1_U4_n_13,
      D(2) => mul_32s_32s_32_1_1_U4_n_14,
      D(1) => mul_32s_32s_32_1_1_U4_n_15,
      D(0) => mul_32s_32s_32_1_1_U4_n_16,
      P(14) => mul_ln17_3_reg_815_reg_n_91,
      P(13) => mul_ln17_3_reg_815_reg_n_92,
      P(12) => mul_ln17_3_reg_815_reg_n_93,
      P(11) => mul_ln17_3_reg_815_reg_n_94,
      P(10) => mul_ln17_3_reg_815_reg_n_95,
      P(9) => mul_ln17_3_reg_815_reg_n_96,
      P(8) => mul_ln17_3_reg_815_reg_n_97,
      P(7) => mul_ln17_3_reg_815_reg_n_98,
      P(6) => mul_ln17_3_reg_815_reg_n_99,
      P(5) => mul_ln17_3_reg_815_reg_n_100,
      P(4) => mul_ln17_3_reg_815_reg_n_101,
      P(3) => mul_ln17_3_reg_815_reg_n_102,
      P(2) => mul_ln17_3_reg_815_reg_n_103,
      P(1) => mul_ln17_3_reg_815_reg_n_104,
      P(0) => mul_ln17_3_reg_815_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U4_n_17,
      PCOUT(46) => mul_32s_32s_32_1_1_U4_n_18,
      PCOUT(45) => mul_32s_32s_32_1_1_U4_n_19,
      PCOUT(44) => mul_32s_32s_32_1_1_U4_n_20,
      PCOUT(43) => mul_32s_32s_32_1_1_U4_n_21,
      PCOUT(42) => mul_32s_32s_32_1_1_U4_n_22,
      PCOUT(41) => mul_32s_32s_32_1_1_U4_n_23,
      PCOUT(40) => mul_32s_32s_32_1_1_U4_n_24,
      PCOUT(39) => mul_32s_32s_32_1_1_U4_n_25,
      PCOUT(38) => mul_32s_32s_32_1_1_U4_n_26,
      PCOUT(37) => mul_32s_32s_32_1_1_U4_n_27,
      PCOUT(36) => mul_32s_32s_32_1_1_U4_n_28,
      PCOUT(35) => mul_32s_32s_32_1_1_U4_n_29,
      PCOUT(34) => mul_32s_32s_32_1_1_U4_n_30,
      PCOUT(33) => mul_32s_32s_32_1_1_U4_n_31,
      PCOUT(32) => mul_32s_32s_32_1_1_U4_n_32,
      PCOUT(31) => mul_32s_32s_32_1_1_U4_n_33,
      PCOUT(30) => mul_32s_32s_32_1_1_U4_n_34,
      PCOUT(29) => mul_32s_32s_32_1_1_U4_n_35,
      PCOUT(28) => mul_32s_32s_32_1_1_U4_n_36,
      PCOUT(27) => mul_32s_32s_32_1_1_U4_n_37,
      PCOUT(26) => mul_32s_32s_32_1_1_U4_n_38,
      PCOUT(25) => mul_32s_32s_32_1_1_U4_n_39,
      PCOUT(24) => mul_32s_32s_32_1_1_U4_n_40,
      PCOUT(23) => mul_32s_32s_32_1_1_U4_n_41,
      PCOUT(22) => mul_32s_32s_32_1_1_U4_n_42,
      PCOUT(21) => mul_32s_32s_32_1_1_U4_n_43,
      PCOUT(20) => mul_32s_32s_32_1_1_U4_n_44,
      PCOUT(19) => mul_32s_32s_32_1_1_U4_n_45,
      PCOUT(18) => mul_32s_32s_32_1_1_U4_n_46,
      PCOUT(17) => mul_32s_32s_32_1_1_U4_n_47,
      PCOUT(16) => mul_32s_32s_32_1_1_U4_n_48,
      PCOUT(15) => mul_32s_32s_32_1_1_U4_n_49,
      PCOUT(14) => mul_32s_32s_32_1_1_U4_n_50,
      PCOUT(13) => mul_32s_32s_32_1_1_U4_n_51,
      PCOUT(12) => mul_32s_32s_32_1_1_U4_n_52,
      PCOUT(11) => mul_32s_32s_32_1_1_U4_n_53,
      PCOUT(10) => mul_32s_32s_32_1_1_U4_n_54,
      PCOUT(9) => mul_32s_32s_32_1_1_U4_n_55,
      PCOUT(8) => mul_32s_32s_32_1_1_U4_n_56,
      PCOUT(7) => mul_32s_32s_32_1_1_U4_n_57,
      PCOUT(6) => mul_32s_32s_32_1_1_U4_n_58,
      PCOUT(5) => mul_32s_32s_32_1_1_U4_n_59,
      PCOUT(4) => mul_32s_32s_32_1_1_U4_n_60,
      PCOUT(3) => mul_32s_32s_32_1_1_U4_n_61,
      PCOUT(2) => mul_32s_32s_32_1_1_U4_n_62,
      PCOUT(1) => mul_32s_32s_32_1_1_U4_n_63,
      PCOUT(0) => mul_32s_32s_32_1_1_U4_n_64,
      Q(0) => Q(2),
      S(6) => mul_32s_32s_32_1_1_U4_n_80,
      S(5) => mul_32s_32s_32_1_1_U4_n_81,
      S(4) => mul_32s_32s_32_1_1_U4_n_82,
      S(3) => mul_32s_32s_32_1_1_U4_n_83,
      S(2) => mul_32s_32s_32_1_1_U4_n_84,
      S(1) => mul_32s_32s_32_1_1_U4_n_85,
      S(0) => mul_32s_32s_32_1_1_U4_n_86,
      \add_ln18_7_fu_644_p2__94_carry__1_i_7\(0) => \mul_ln17_3_reg_815_reg[16]__0_n_0\,
      \add_ln18_7_fu_644_p2__94_carry__2\(15 downto 0) => mul_ln17_8_reg_870(31 downto 16),
      ap_clk => ap_clk,
      filter_q0(16 downto 0) => filter_q0(16 downto 0),
      \mul_ln17_1_reg_795_reg__1\(15 downto 0) => \mul_ln17_1_reg_795_reg__1\(31 downto 16),
      \mul_ln17_3_reg_815_reg[16]__0\(14 downto 0) => \mul_ln17_3_reg_815_reg__1\(30 downto 16),
      \mul_ln17_8_reg_870_reg[30]\(6) => mul_32s_32s_32_1_1_U4_n_87,
      \mul_ln17_8_reg_870_reg[30]\(5) => mul_32s_32s_32_1_1_U4_n_88,
      \mul_ln17_8_reg_870_reg[30]\(4) => mul_32s_32s_32_1_1_U4_n_89,
      \mul_ln17_8_reg_870_reg[30]\(3) => mul_32s_32s_32_1_1_U4_n_90,
      \mul_ln17_8_reg_870_reg[30]\(2) => mul_32s_32s_32_1_1_U4_n_91,
      \mul_ln17_8_reg_870_reg[30]\(1) => mul_32s_32s_32_1_1_U4_n_92,
      \mul_ln17_8_reg_870_reg[30]\(0) => mul_32s_32s_32_1_1_U4_n_93,
      orig_q0(31 downto 0) => orig_q0(31 downto 0)
    );
mul_32s_32s_32_1_1_U5: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_3
     port map (
      CEP => mul_ln17_4_reg_8300,
      D(16) => mul_32s_32s_32_1_1_U5_n_0,
      D(15) => mul_32s_32s_32_1_1_U5_n_1,
      D(14) => mul_32s_32s_32_1_1_U5_n_2,
      D(13) => mul_32s_32s_32_1_1_U5_n_3,
      D(12) => mul_32s_32s_32_1_1_U5_n_4,
      D(11) => mul_32s_32s_32_1_1_U5_n_5,
      D(10) => mul_32s_32s_32_1_1_U5_n_6,
      D(9) => mul_32s_32s_32_1_1_U5_n_7,
      D(8) => mul_32s_32s_32_1_1_U5_n_8,
      D(7) => mul_32s_32s_32_1_1_U5_n_9,
      D(6) => mul_32s_32s_32_1_1_U5_n_10,
      D(5) => mul_32s_32s_32_1_1_U5_n_11,
      D(4) => mul_32s_32s_32_1_1_U5_n_12,
      D(3) => mul_32s_32s_32_1_1_U5_n_13,
      D(2) => mul_32s_32s_32_1_1_U5_n_14,
      D(1) => mul_32s_32s_32_1_1_U5_n_15,
      D(0) => mul_32s_32s_32_1_1_U5_n_16,
      P(14) => mul_ln17_4_reg_830_reg_n_91,
      P(13) => mul_ln17_4_reg_830_reg_n_92,
      P(12) => mul_ln17_4_reg_830_reg_n_93,
      P(11) => mul_ln17_4_reg_830_reg_n_94,
      P(10) => mul_ln17_4_reg_830_reg_n_95,
      P(9) => mul_ln17_4_reg_830_reg_n_96,
      P(8) => mul_ln17_4_reg_830_reg_n_97,
      P(7) => mul_ln17_4_reg_830_reg_n_98,
      P(6) => mul_ln17_4_reg_830_reg_n_99,
      P(5) => mul_ln17_4_reg_830_reg_n_100,
      P(4) => mul_ln17_4_reg_830_reg_n_101,
      P(3) => mul_ln17_4_reg_830_reg_n_102,
      P(2) => mul_ln17_4_reg_830_reg_n_103,
      P(1) => mul_ln17_4_reg_830_reg_n_104,
      P(0) => mul_ln17_4_reg_830_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U5_n_17,
      PCOUT(46) => mul_32s_32s_32_1_1_U5_n_18,
      PCOUT(45) => mul_32s_32s_32_1_1_U5_n_19,
      PCOUT(44) => mul_32s_32s_32_1_1_U5_n_20,
      PCOUT(43) => mul_32s_32s_32_1_1_U5_n_21,
      PCOUT(42) => mul_32s_32s_32_1_1_U5_n_22,
      PCOUT(41) => mul_32s_32s_32_1_1_U5_n_23,
      PCOUT(40) => mul_32s_32s_32_1_1_U5_n_24,
      PCOUT(39) => mul_32s_32s_32_1_1_U5_n_25,
      PCOUT(38) => mul_32s_32s_32_1_1_U5_n_26,
      PCOUT(37) => mul_32s_32s_32_1_1_U5_n_27,
      PCOUT(36) => mul_32s_32s_32_1_1_U5_n_28,
      PCOUT(35) => mul_32s_32s_32_1_1_U5_n_29,
      PCOUT(34) => mul_32s_32s_32_1_1_U5_n_30,
      PCOUT(33) => mul_32s_32s_32_1_1_U5_n_31,
      PCOUT(32) => mul_32s_32s_32_1_1_U5_n_32,
      PCOUT(31) => mul_32s_32s_32_1_1_U5_n_33,
      PCOUT(30) => mul_32s_32s_32_1_1_U5_n_34,
      PCOUT(29) => mul_32s_32s_32_1_1_U5_n_35,
      PCOUT(28) => mul_32s_32s_32_1_1_U5_n_36,
      PCOUT(27) => mul_32s_32s_32_1_1_U5_n_37,
      PCOUT(26) => mul_32s_32s_32_1_1_U5_n_38,
      PCOUT(25) => mul_32s_32s_32_1_1_U5_n_39,
      PCOUT(24) => mul_32s_32s_32_1_1_U5_n_40,
      PCOUT(23) => mul_32s_32s_32_1_1_U5_n_41,
      PCOUT(22) => mul_32s_32s_32_1_1_U5_n_42,
      PCOUT(21) => mul_32s_32s_32_1_1_U5_n_43,
      PCOUT(20) => mul_32s_32s_32_1_1_U5_n_44,
      PCOUT(19) => mul_32s_32s_32_1_1_U5_n_45,
      PCOUT(18) => mul_32s_32s_32_1_1_U5_n_46,
      PCOUT(17) => mul_32s_32s_32_1_1_U5_n_47,
      PCOUT(16) => mul_32s_32s_32_1_1_U5_n_48,
      PCOUT(15) => mul_32s_32s_32_1_1_U5_n_49,
      PCOUT(14) => mul_32s_32s_32_1_1_U5_n_50,
      PCOUT(13) => mul_32s_32s_32_1_1_U5_n_51,
      PCOUT(12) => mul_32s_32s_32_1_1_U5_n_52,
      PCOUT(11) => mul_32s_32s_32_1_1_U5_n_53,
      PCOUT(10) => mul_32s_32s_32_1_1_U5_n_54,
      PCOUT(9) => mul_32s_32s_32_1_1_U5_n_55,
      PCOUT(8) => mul_32s_32s_32_1_1_U5_n_56,
      PCOUT(7) => mul_32s_32s_32_1_1_U5_n_57,
      PCOUT(6) => mul_32s_32s_32_1_1_U5_n_58,
      PCOUT(5) => mul_32s_32s_32_1_1_U5_n_59,
      PCOUT(4) => mul_32s_32s_32_1_1_U5_n_60,
      PCOUT(3) => mul_32s_32s_32_1_1_U5_n_61,
      PCOUT(2) => mul_32s_32s_32_1_1_U5_n_62,
      PCOUT(1) => mul_32s_32s_32_1_1_U5_n_63,
      PCOUT(0) => mul_32s_32s_32_1_1_U5_n_64,
      Q(0) => Q(2),
      \add_ln18_1_fu_593_p2_carry__1_i_8\(0) => \mul_ln17_4_reg_830_reg[16]__0_n_0\,
      ap_clk => ap_clk,
      filter_q1(16 downto 0) => filter_q1(16 downto 0),
      \mul_ln17_4_reg_830_reg__1\(15 downto 0) => \mul_ln17_4_reg_830_reg__1\(31 downto 16),
      orig_q1(31 downto 0) => orig_q1(31 downto 0)
    );
mul_32s_32s_32_1_1_U6: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_4
     port map (
      CEP => mul_ln17_4_reg_8300,
      D(16) => mul_32s_32s_32_1_1_U6_n_1,
      D(15) => mul_32s_32s_32_1_1_U6_n_2,
      D(14) => mul_32s_32s_32_1_1_U6_n_3,
      D(13) => mul_32s_32s_32_1_1_U6_n_4,
      D(12) => mul_32s_32s_32_1_1_U6_n_5,
      D(11) => mul_32s_32s_32_1_1_U6_n_6,
      D(10) => mul_32s_32s_32_1_1_U6_n_7,
      D(9) => mul_32s_32s_32_1_1_U6_n_8,
      D(8) => mul_32s_32s_32_1_1_U6_n_9,
      D(7) => mul_32s_32s_32_1_1_U6_n_10,
      D(6) => mul_32s_32s_32_1_1_U6_n_11,
      D(5) => mul_32s_32s_32_1_1_U6_n_12,
      D(4) => mul_32s_32s_32_1_1_U6_n_13,
      D(3) => mul_32s_32s_32_1_1_U6_n_14,
      D(2) => mul_32s_32s_32_1_1_U6_n_15,
      D(1) => mul_32s_32s_32_1_1_U6_n_16,
      D(0) => mul_32s_32s_32_1_1_U6_n_17,
      P(14) => mul_ln17_5_reg_835_reg_n_91,
      P(13) => mul_ln17_5_reg_835_reg_n_92,
      P(12) => mul_ln17_5_reg_835_reg_n_93,
      P(11) => mul_ln17_5_reg_835_reg_n_94,
      P(10) => mul_ln17_5_reg_835_reg_n_95,
      P(9) => mul_ln17_5_reg_835_reg_n_96,
      P(8) => mul_ln17_5_reg_835_reg_n_97,
      P(7) => mul_ln17_5_reg_835_reg_n_98,
      P(6) => mul_ln17_5_reg_835_reg_n_99,
      P(5) => mul_ln17_5_reg_835_reg_n_100,
      P(4) => mul_ln17_5_reg_835_reg_n_101,
      P(3) => mul_ln17_5_reg_835_reg_n_102,
      P(2) => mul_ln17_5_reg_835_reg_n_103,
      P(1) => mul_ln17_5_reg_835_reg_n_104,
      P(0) => mul_ln17_5_reg_835_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U6_n_18,
      PCOUT(46) => mul_32s_32s_32_1_1_U6_n_19,
      PCOUT(45) => mul_32s_32s_32_1_1_U6_n_20,
      PCOUT(44) => mul_32s_32s_32_1_1_U6_n_21,
      PCOUT(43) => mul_32s_32s_32_1_1_U6_n_22,
      PCOUT(42) => mul_32s_32s_32_1_1_U6_n_23,
      PCOUT(41) => mul_32s_32s_32_1_1_U6_n_24,
      PCOUT(40) => mul_32s_32s_32_1_1_U6_n_25,
      PCOUT(39) => mul_32s_32s_32_1_1_U6_n_26,
      PCOUT(38) => mul_32s_32s_32_1_1_U6_n_27,
      PCOUT(37) => mul_32s_32s_32_1_1_U6_n_28,
      PCOUT(36) => mul_32s_32s_32_1_1_U6_n_29,
      PCOUT(35) => mul_32s_32s_32_1_1_U6_n_30,
      PCOUT(34) => mul_32s_32s_32_1_1_U6_n_31,
      PCOUT(33) => mul_32s_32s_32_1_1_U6_n_32,
      PCOUT(32) => mul_32s_32s_32_1_1_U6_n_33,
      PCOUT(31) => mul_32s_32s_32_1_1_U6_n_34,
      PCOUT(30) => mul_32s_32s_32_1_1_U6_n_35,
      PCOUT(29) => mul_32s_32s_32_1_1_U6_n_36,
      PCOUT(28) => mul_32s_32s_32_1_1_U6_n_37,
      PCOUT(27) => mul_32s_32s_32_1_1_U6_n_38,
      PCOUT(26) => mul_32s_32s_32_1_1_U6_n_39,
      PCOUT(25) => mul_32s_32s_32_1_1_U6_n_40,
      PCOUT(24) => mul_32s_32s_32_1_1_U6_n_41,
      PCOUT(23) => mul_32s_32s_32_1_1_U6_n_42,
      PCOUT(22) => mul_32s_32s_32_1_1_U6_n_43,
      PCOUT(21) => mul_32s_32s_32_1_1_U6_n_44,
      PCOUT(20) => mul_32s_32s_32_1_1_U6_n_45,
      PCOUT(19) => mul_32s_32s_32_1_1_U6_n_46,
      PCOUT(18) => mul_32s_32s_32_1_1_U6_n_47,
      PCOUT(17) => mul_32s_32s_32_1_1_U6_n_48,
      PCOUT(16) => mul_32s_32s_32_1_1_U6_n_49,
      PCOUT(15) => mul_32s_32s_32_1_1_U6_n_50,
      PCOUT(14) => mul_32s_32s_32_1_1_U6_n_51,
      PCOUT(13) => mul_32s_32s_32_1_1_U6_n_52,
      PCOUT(12) => mul_32s_32s_32_1_1_U6_n_53,
      PCOUT(11) => mul_32s_32s_32_1_1_U6_n_54,
      PCOUT(10) => mul_32s_32s_32_1_1_U6_n_55,
      PCOUT(9) => mul_32s_32s_32_1_1_U6_n_56,
      PCOUT(8) => mul_32s_32s_32_1_1_U6_n_57,
      PCOUT(7) => mul_32s_32s_32_1_1_U6_n_58,
      PCOUT(6) => mul_32s_32s_32_1_1_U6_n_59,
      PCOUT(5) => mul_32s_32s_32_1_1_U6_n_60,
      PCOUT(4) => mul_32s_32s_32_1_1_U6_n_61,
      PCOUT(3) => mul_32s_32s_32_1_1_U6_n_62,
      PCOUT(2) => mul_32s_32s_32_1_1_U6_n_63,
      PCOUT(1) => mul_32s_32s_32_1_1_U6_n_64,
      PCOUT(0) => mul_32s_32s_32_1_1_U6_n_65,
      Q(0) => Q(3),
      S(7) => mul_32s_32s_32_1_1_U6_n_81,
      S(6) => mul_32s_32s_32_1_1_U6_n_82,
      S(5) => mul_32s_32s_32_1_1_U6_n_83,
      S(4) => mul_32s_32s_32_1_1_U6_n_84,
      S(3) => mul_32s_32s_32_1_1_U6_n_85,
      S(2) => mul_32s_32s_32_1_1_U6_n_86,
      S(1) => mul_32s_32s_32_1_1_U6_n_87,
      S(0) => mul_32s_32s_32_1_1_U6_n_88,
      \add_ln18_1_reg_865_reg[23]\(0) => \mul_ln17_5_reg_835_reg[16]__0_n_0\,
      ap_clk => ap_clk,
      \dout_carry__0_0\(7) => mul_32s_32s_32_1_1_U6_n_89,
      \dout_carry__0_0\(6) => mul_32s_32s_32_1_1_U6_n_90,
      \dout_carry__0_0\(5) => mul_32s_32s_32_1_1_U6_n_91,
      \dout_carry__0_0\(4) => mul_32s_32s_32_1_1_U6_n_92,
      \dout_carry__0_0\(3) => mul_32s_32s_32_1_1_U6_n_93,
      \dout_carry__0_0\(2) => mul_32s_32s_32_1_1_U6_n_94,
      \dout_carry__0_0\(1) => mul_32s_32s_32_1_1_U6_n_95,
      \dout_carry__0_0\(0) => mul_32s_32s_32_1_1_U6_n_96,
      filter_q0(16 downto 0) => filter_q0(16 downto 0),
      \mul_ln17_4_reg_830_reg__1\(15 downto 0) => \mul_ln17_4_reg_830_reg__1\(31 downto 16),
      \mul_ln17_5_reg_835_reg[0]__0\(0) => ap_CS_fsm_pp0_stage3,
      \mul_ln17_5_reg_835_reg[0]__0_0\ => \icmp_ln8_reg_742_reg_n_0_[0]\,
      \mul_ln17_5_reg_835_reg[16]__0\(14 downto 0) => \mul_ln17_5_reg_835_reg__1\(30 downto 16),
      orig_q0(31 downto 0) => orig_q0(31 downto 0)
    );
mul_32s_32s_32_1_1_U7: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_5
     port map (
      CEP => add_ln18_1_reg_8650,
      D(16) => mul_32s_32s_32_1_1_U7_n_1,
      D(15) => mul_32s_32s_32_1_1_U7_n_2,
      D(14) => mul_32s_32s_32_1_1_U7_n_3,
      D(13) => mul_32s_32s_32_1_1_U7_n_4,
      D(12) => mul_32s_32s_32_1_1_U7_n_5,
      D(11) => mul_32s_32s_32_1_1_U7_n_6,
      D(10) => mul_32s_32s_32_1_1_U7_n_7,
      D(9) => mul_32s_32s_32_1_1_U7_n_8,
      D(8) => mul_32s_32s_32_1_1_U7_n_9,
      D(7) => mul_32s_32s_32_1_1_U7_n_10,
      D(6) => mul_32s_32s_32_1_1_U7_n_11,
      D(5) => mul_32s_32s_32_1_1_U7_n_12,
      D(4) => mul_32s_32s_32_1_1_U7_n_13,
      D(3) => mul_32s_32s_32_1_1_U7_n_14,
      D(2) => mul_32s_32s_32_1_1_U7_n_15,
      D(1) => mul_32s_32s_32_1_1_U7_n_16,
      D(0) => mul_32s_32s_32_1_1_U7_n_17,
      P(14) => mul_ln17_6_reg_850_reg_n_91,
      P(13) => mul_ln17_6_reg_850_reg_n_92,
      P(12) => mul_ln17_6_reg_850_reg_n_93,
      P(11) => mul_ln17_6_reg_850_reg_n_94,
      P(10) => mul_ln17_6_reg_850_reg_n_95,
      P(9) => mul_ln17_6_reg_850_reg_n_96,
      P(8) => mul_ln17_6_reg_850_reg_n_97,
      P(7) => mul_ln17_6_reg_850_reg_n_98,
      P(6) => mul_ln17_6_reg_850_reg_n_99,
      P(5) => mul_ln17_6_reg_850_reg_n_100,
      P(4) => mul_ln17_6_reg_850_reg_n_101,
      P(3) => mul_ln17_6_reg_850_reg_n_102,
      P(2) => mul_ln17_6_reg_850_reg_n_103,
      P(1) => mul_ln17_6_reg_850_reg_n_104,
      P(0) => mul_ln17_6_reg_850_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U7_n_18,
      PCOUT(46) => mul_32s_32s_32_1_1_U7_n_19,
      PCOUT(45) => mul_32s_32s_32_1_1_U7_n_20,
      PCOUT(44) => mul_32s_32s_32_1_1_U7_n_21,
      PCOUT(43) => mul_32s_32s_32_1_1_U7_n_22,
      PCOUT(42) => mul_32s_32s_32_1_1_U7_n_23,
      PCOUT(41) => mul_32s_32s_32_1_1_U7_n_24,
      PCOUT(40) => mul_32s_32s_32_1_1_U7_n_25,
      PCOUT(39) => mul_32s_32s_32_1_1_U7_n_26,
      PCOUT(38) => mul_32s_32s_32_1_1_U7_n_27,
      PCOUT(37) => mul_32s_32s_32_1_1_U7_n_28,
      PCOUT(36) => mul_32s_32s_32_1_1_U7_n_29,
      PCOUT(35) => mul_32s_32s_32_1_1_U7_n_30,
      PCOUT(34) => mul_32s_32s_32_1_1_U7_n_31,
      PCOUT(33) => mul_32s_32s_32_1_1_U7_n_32,
      PCOUT(32) => mul_32s_32s_32_1_1_U7_n_33,
      PCOUT(31) => mul_32s_32s_32_1_1_U7_n_34,
      PCOUT(30) => mul_32s_32s_32_1_1_U7_n_35,
      PCOUT(29) => mul_32s_32s_32_1_1_U7_n_36,
      PCOUT(28) => mul_32s_32s_32_1_1_U7_n_37,
      PCOUT(27) => mul_32s_32s_32_1_1_U7_n_38,
      PCOUT(26) => mul_32s_32s_32_1_1_U7_n_39,
      PCOUT(25) => mul_32s_32s_32_1_1_U7_n_40,
      PCOUT(24) => mul_32s_32s_32_1_1_U7_n_41,
      PCOUT(23) => mul_32s_32s_32_1_1_U7_n_42,
      PCOUT(22) => mul_32s_32s_32_1_1_U7_n_43,
      PCOUT(21) => mul_32s_32s_32_1_1_U7_n_44,
      PCOUT(20) => mul_32s_32s_32_1_1_U7_n_45,
      PCOUT(19) => mul_32s_32s_32_1_1_U7_n_46,
      PCOUT(18) => mul_32s_32s_32_1_1_U7_n_47,
      PCOUT(17) => mul_32s_32s_32_1_1_U7_n_48,
      PCOUT(16) => mul_32s_32s_32_1_1_U7_n_49,
      PCOUT(15) => mul_32s_32s_32_1_1_U7_n_50,
      PCOUT(14) => mul_32s_32s_32_1_1_U7_n_51,
      PCOUT(13) => mul_32s_32s_32_1_1_U7_n_52,
      PCOUT(12) => mul_32s_32s_32_1_1_U7_n_53,
      PCOUT(11) => mul_32s_32s_32_1_1_U7_n_54,
      PCOUT(10) => mul_32s_32s_32_1_1_U7_n_55,
      PCOUT(9) => mul_32s_32s_32_1_1_U7_n_56,
      PCOUT(8) => mul_32s_32s_32_1_1_U7_n_57,
      PCOUT(7) => mul_32s_32s_32_1_1_U7_n_58,
      PCOUT(6) => mul_32s_32s_32_1_1_U7_n_59,
      PCOUT(5) => mul_32s_32s_32_1_1_U7_n_60,
      PCOUT(4) => mul_32s_32s_32_1_1_U7_n_61,
      PCOUT(3) => mul_32s_32s_32_1_1_U7_n_62,
      PCOUT(2) => mul_32s_32s_32_1_1_U7_n_63,
      PCOUT(1) => mul_32s_32s_32_1_1_U7_n_64,
      PCOUT(0) => mul_32s_32s_32_1_1_U7_n_65,
      Q(0) => Q(3),
      S(7) => mul_32s_32s_32_1_1_U7_n_81,
      S(6) => mul_32s_32s_32_1_1_U7_n_82,
      S(5) => mul_32s_32s_32_1_1_U7_n_83,
      S(4) => mul_32s_32s_32_1_1_U7_n_84,
      S(3) => mul_32s_32s_32_1_1_U7_n_85,
      S(2) => mul_32s_32s_32_1_1_U7_n_86,
      S(1) => mul_32s_32s_32_1_1_U7_n_87,
      S(0) => mul_32s_32s_32_1_1_U7_n_88,
      \add_ln18_1_reg_865_reg[0]\(0) => ap_CS_fsm_pp0_stage4,
      \add_ln18_1_reg_865_reg[0]_0\ => \icmp_ln8_reg_742_reg_n_0_[0]\,
      \add_ln18_reg_875_reg[23]\(0) => \mul_ln17_6_reg_850_reg[16]__0_n_0\,
      ap_clk => ap_clk,
      \dout_carry__0_0\(7) => mul_32s_32s_32_1_1_U7_n_89,
      \dout_carry__0_0\(6) => mul_32s_32s_32_1_1_U7_n_90,
      \dout_carry__0_0\(5) => mul_32s_32s_32_1_1_U7_n_91,
      \dout_carry__0_0\(4) => mul_32s_32s_32_1_1_U7_n_92,
      \dout_carry__0_0\(3) => mul_32s_32s_32_1_1_U7_n_93,
      \dout_carry__0_0\(2) => mul_32s_32s_32_1_1_U7_n_94,
      \dout_carry__0_0\(1) => mul_32s_32s_32_1_1_U7_n_95,
      \dout_carry__0_0\(0) => mul_32s_32s_32_1_1_U7_n_96,
      filter_q1(16 downto 0) => filter_q1(16 downto 0),
      \mul_ln17_6_reg_850_reg[16]__0\(14 downto 0) => \mul_ln17_6_reg_850_reg__1\(30 downto 16),
      \mul_ln17_7_reg_855_reg__1\(15 downto 0) => \mul_ln17_7_reg_855_reg__1\(31 downto 16),
      orig_q1(31 downto 0) => orig_q1(31 downto 0)
    );
mul_32s_32s_32_1_1_U8: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_6
     port map (
      CEP => add_ln18_1_reg_8650,
      D(16) => mul_32s_32s_32_1_1_U8_n_0,
      D(15) => mul_32s_32s_32_1_1_U8_n_1,
      D(14) => mul_32s_32s_32_1_1_U8_n_2,
      D(13) => mul_32s_32s_32_1_1_U8_n_3,
      D(12) => mul_32s_32s_32_1_1_U8_n_4,
      D(11) => mul_32s_32s_32_1_1_U8_n_5,
      D(10) => mul_32s_32s_32_1_1_U8_n_6,
      D(9) => mul_32s_32s_32_1_1_U8_n_7,
      D(8) => mul_32s_32s_32_1_1_U8_n_8,
      D(7) => mul_32s_32s_32_1_1_U8_n_9,
      D(6) => mul_32s_32s_32_1_1_U8_n_10,
      D(5) => mul_32s_32s_32_1_1_U8_n_11,
      D(4) => mul_32s_32s_32_1_1_U8_n_12,
      D(3) => mul_32s_32s_32_1_1_U8_n_13,
      D(2) => mul_32s_32s_32_1_1_U8_n_14,
      D(1) => mul_32s_32s_32_1_1_U8_n_15,
      D(0) => mul_32s_32s_32_1_1_U8_n_16,
      P(14) => mul_ln17_7_reg_855_reg_n_91,
      P(13) => mul_ln17_7_reg_855_reg_n_92,
      P(12) => mul_ln17_7_reg_855_reg_n_93,
      P(11) => mul_ln17_7_reg_855_reg_n_94,
      P(10) => mul_ln17_7_reg_855_reg_n_95,
      P(9) => mul_ln17_7_reg_855_reg_n_96,
      P(8) => mul_ln17_7_reg_855_reg_n_97,
      P(7) => mul_ln17_7_reg_855_reg_n_98,
      P(6) => mul_ln17_7_reg_855_reg_n_99,
      P(5) => mul_ln17_7_reg_855_reg_n_100,
      P(4) => mul_ln17_7_reg_855_reg_n_101,
      P(3) => mul_ln17_7_reg_855_reg_n_102,
      P(2) => mul_ln17_7_reg_855_reg_n_103,
      P(1) => mul_ln17_7_reg_855_reg_n_104,
      P(0) => mul_ln17_7_reg_855_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U8_n_17,
      PCOUT(46) => mul_32s_32s_32_1_1_U8_n_18,
      PCOUT(45) => mul_32s_32s_32_1_1_U8_n_19,
      PCOUT(44) => mul_32s_32s_32_1_1_U8_n_20,
      PCOUT(43) => mul_32s_32s_32_1_1_U8_n_21,
      PCOUT(42) => mul_32s_32s_32_1_1_U8_n_22,
      PCOUT(41) => mul_32s_32s_32_1_1_U8_n_23,
      PCOUT(40) => mul_32s_32s_32_1_1_U8_n_24,
      PCOUT(39) => mul_32s_32s_32_1_1_U8_n_25,
      PCOUT(38) => mul_32s_32s_32_1_1_U8_n_26,
      PCOUT(37) => mul_32s_32s_32_1_1_U8_n_27,
      PCOUT(36) => mul_32s_32s_32_1_1_U8_n_28,
      PCOUT(35) => mul_32s_32s_32_1_1_U8_n_29,
      PCOUT(34) => mul_32s_32s_32_1_1_U8_n_30,
      PCOUT(33) => mul_32s_32s_32_1_1_U8_n_31,
      PCOUT(32) => mul_32s_32s_32_1_1_U8_n_32,
      PCOUT(31) => mul_32s_32s_32_1_1_U8_n_33,
      PCOUT(30) => mul_32s_32s_32_1_1_U8_n_34,
      PCOUT(29) => mul_32s_32s_32_1_1_U8_n_35,
      PCOUT(28) => mul_32s_32s_32_1_1_U8_n_36,
      PCOUT(27) => mul_32s_32s_32_1_1_U8_n_37,
      PCOUT(26) => mul_32s_32s_32_1_1_U8_n_38,
      PCOUT(25) => mul_32s_32s_32_1_1_U8_n_39,
      PCOUT(24) => mul_32s_32s_32_1_1_U8_n_40,
      PCOUT(23) => mul_32s_32s_32_1_1_U8_n_41,
      PCOUT(22) => mul_32s_32s_32_1_1_U8_n_42,
      PCOUT(21) => mul_32s_32s_32_1_1_U8_n_43,
      PCOUT(20) => mul_32s_32s_32_1_1_U8_n_44,
      PCOUT(19) => mul_32s_32s_32_1_1_U8_n_45,
      PCOUT(18) => mul_32s_32s_32_1_1_U8_n_46,
      PCOUT(17) => mul_32s_32s_32_1_1_U8_n_47,
      PCOUT(16) => mul_32s_32s_32_1_1_U8_n_48,
      PCOUT(15) => mul_32s_32s_32_1_1_U8_n_49,
      PCOUT(14) => mul_32s_32s_32_1_1_U8_n_50,
      PCOUT(13) => mul_32s_32s_32_1_1_U8_n_51,
      PCOUT(12) => mul_32s_32s_32_1_1_U8_n_52,
      PCOUT(11) => mul_32s_32s_32_1_1_U8_n_53,
      PCOUT(10) => mul_32s_32s_32_1_1_U8_n_54,
      PCOUT(9) => mul_32s_32s_32_1_1_U8_n_55,
      PCOUT(8) => mul_32s_32s_32_1_1_U8_n_56,
      PCOUT(7) => mul_32s_32s_32_1_1_U8_n_57,
      PCOUT(6) => mul_32s_32s_32_1_1_U8_n_58,
      PCOUT(5) => mul_32s_32s_32_1_1_U8_n_59,
      PCOUT(4) => mul_32s_32s_32_1_1_U8_n_60,
      PCOUT(3) => mul_32s_32s_32_1_1_U8_n_61,
      PCOUT(2) => mul_32s_32s_32_1_1_U8_n_62,
      PCOUT(1) => mul_32s_32s_32_1_1_U8_n_63,
      PCOUT(0) => mul_32s_32s_32_1_1_U8_n_64,
      Q(0) => Q(4),
      \add_ln18_fu_617_p2_carry__1_i_8\(0) => \mul_ln17_7_reg_855_reg[16]__0_n_0\,
      ap_clk => ap_clk,
      filter_q0(16 downto 0) => filter_q0(16 downto 0),
      \mul_ln17_7_reg_855_reg__1\(15 downto 0) => \mul_ln17_7_reg_855_reg__1\(31 downto 16),
      orig_q0(31 downto 0) => orig_q0(31 downto 0)
    );
mul_32s_32s_32_1_1_U9: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_7
     port map (
      D(31 downto 16) => \dout__3\(31 downto 16),
      D(15) => mul_32s_32s_32_1_1_U9_n_16,
      D(14) => mul_32s_32s_32_1_1_U9_n_17,
      D(13) => mul_32s_32s_32_1_1_U9_n_18,
      D(12) => mul_32s_32s_32_1_1_U9_n_19,
      D(11) => mul_32s_32s_32_1_1_U9_n_20,
      D(10) => mul_32s_32s_32_1_1_U9_n_21,
      D(9) => mul_32s_32s_32_1_1_U9_n_22,
      D(8) => mul_32s_32s_32_1_1_U9_n_23,
      D(7) => mul_32s_32s_32_1_1_U9_n_24,
      D(6) => mul_32s_32s_32_1_1_U9_n_25,
      D(5) => mul_32s_32s_32_1_1_U9_n_26,
      D(4) => mul_32s_32s_32_1_1_U9_n_27,
      D(3) => mul_32s_32s_32_1_1_U9_n_28,
      D(2) => mul_32s_32s_32_1_1_U9_n_29,
      D(1) => mul_32s_32s_32_1_1_U9_n_30,
      D(0) => mul_32s_32s_32_1_1_U9_n_31,
      Q(0) => Q(4),
      ap_clk => ap_clk,
      filter_q1(31 downto 0) => filter_q1(31 downto 0),
      orig_q0(31 downto 0) => orig_q0(31 downto 0)
    );
mul_ln17_1_reg_795_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_1_reg_795_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q1(31),
      B(16) => filter_q1(31),
      B(15) => filter_q1(31),
      B(14 downto 0) => filter_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_1_reg_795_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_1_reg_795_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_1_reg_795_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln17_1_reg_7950,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_1_reg_795_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_1_reg_795_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_1_reg_795_reg_n_58,
      P(46) => mul_ln17_1_reg_795_reg_n_59,
      P(45) => mul_ln17_1_reg_795_reg_n_60,
      P(44) => mul_ln17_1_reg_795_reg_n_61,
      P(43) => mul_ln17_1_reg_795_reg_n_62,
      P(42) => mul_ln17_1_reg_795_reg_n_63,
      P(41) => mul_ln17_1_reg_795_reg_n_64,
      P(40) => mul_ln17_1_reg_795_reg_n_65,
      P(39) => mul_ln17_1_reg_795_reg_n_66,
      P(38) => mul_ln17_1_reg_795_reg_n_67,
      P(37) => mul_ln17_1_reg_795_reg_n_68,
      P(36) => mul_ln17_1_reg_795_reg_n_69,
      P(35) => mul_ln17_1_reg_795_reg_n_70,
      P(34) => mul_ln17_1_reg_795_reg_n_71,
      P(33) => mul_ln17_1_reg_795_reg_n_72,
      P(32) => mul_ln17_1_reg_795_reg_n_73,
      P(31) => mul_ln17_1_reg_795_reg_n_74,
      P(30) => mul_ln17_1_reg_795_reg_n_75,
      P(29) => mul_ln17_1_reg_795_reg_n_76,
      P(28) => mul_ln17_1_reg_795_reg_n_77,
      P(27) => mul_ln17_1_reg_795_reg_n_78,
      P(26) => mul_ln17_1_reg_795_reg_n_79,
      P(25) => mul_ln17_1_reg_795_reg_n_80,
      P(24) => mul_ln17_1_reg_795_reg_n_81,
      P(23) => mul_ln17_1_reg_795_reg_n_82,
      P(22) => mul_ln17_1_reg_795_reg_n_83,
      P(21) => mul_ln17_1_reg_795_reg_n_84,
      P(20) => mul_ln17_1_reg_795_reg_n_85,
      P(19) => mul_ln17_1_reg_795_reg_n_86,
      P(18) => mul_ln17_1_reg_795_reg_n_87,
      P(17) => mul_ln17_1_reg_795_reg_n_88,
      P(16) => mul_ln17_1_reg_795_reg_n_89,
      P(15) => mul_ln17_1_reg_795_reg_n_90,
      P(14) => mul_ln17_1_reg_795_reg_n_91,
      P(13) => mul_ln17_1_reg_795_reg_n_92,
      P(12) => mul_ln17_1_reg_795_reg_n_93,
      P(11) => mul_ln17_1_reg_795_reg_n_94,
      P(10) => mul_ln17_1_reg_795_reg_n_95,
      P(9) => mul_ln17_1_reg_795_reg_n_96,
      P(8) => mul_ln17_1_reg_795_reg_n_97,
      P(7) => mul_ln17_1_reg_795_reg_n_98,
      P(6) => mul_ln17_1_reg_795_reg_n_99,
      P(5) => mul_ln17_1_reg_795_reg_n_100,
      P(4) => mul_ln17_1_reg_795_reg_n_101,
      P(3) => mul_ln17_1_reg_795_reg_n_102,
      P(2) => mul_ln17_1_reg_795_reg_n_103,
      P(1) => mul_ln17_1_reg_795_reg_n_104,
      P(0) => mul_ln17_1_reg_795_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_1_reg_795_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_1_reg_795_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U2_n_17,
      PCIN(46) => mul_32s_32s_32_1_1_U2_n_18,
      PCIN(45) => mul_32s_32s_32_1_1_U2_n_19,
      PCIN(44) => mul_32s_32s_32_1_1_U2_n_20,
      PCIN(43) => mul_32s_32s_32_1_1_U2_n_21,
      PCIN(42) => mul_32s_32s_32_1_1_U2_n_22,
      PCIN(41) => mul_32s_32s_32_1_1_U2_n_23,
      PCIN(40) => mul_32s_32s_32_1_1_U2_n_24,
      PCIN(39) => mul_32s_32s_32_1_1_U2_n_25,
      PCIN(38) => mul_32s_32s_32_1_1_U2_n_26,
      PCIN(37) => mul_32s_32s_32_1_1_U2_n_27,
      PCIN(36) => mul_32s_32s_32_1_1_U2_n_28,
      PCIN(35) => mul_32s_32s_32_1_1_U2_n_29,
      PCIN(34) => mul_32s_32s_32_1_1_U2_n_30,
      PCIN(33) => mul_32s_32s_32_1_1_U2_n_31,
      PCIN(32) => mul_32s_32s_32_1_1_U2_n_32,
      PCIN(31) => mul_32s_32s_32_1_1_U2_n_33,
      PCIN(30) => mul_32s_32s_32_1_1_U2_n_34,
      PCIN(29) => mul_32s_32s_32_1_1_U2_n_35,
      PCIN(28) => mul_32s_32s_32_1_1_U2_n_36,
      PCIN(27) => mul_32s_32s_32_1_1_U2_n_37,
      PCIN(26) => mul_32s_32s_32_1_1_U2_n_38,
      PCIN(25) => mul_32s_32s_32_1_1_U2_n_39,
      PCIN(24) => mul_32s_32s_32_1_1_U2_n_40,
      PCIN(23) => mul_32s_32s_32_1_1_U2_n_41,
      PCIN(22) => mul_32s_32s_32_1_1_U2_n_42,
      PCIN(21) => mul_32s_32s_32_1_1_U2_n_43,
      PCIN(20) => mul_32s_32s_32_1_1_U2_n_44,
      PCIN(19) => mul_32s_32s_32_1_1_U2_n_45,
      PCIN(18) => mul_32s_32s_32_1_1_U2_n_46,
      PCIN(17) => mul_32s_32s_32_1_1_U2_n_47,
      PCIN(16) => mul_32s_32s_32_1_1_U2_n_48,
      PCIN(15) => mul_32s_32s_32_1_1_U2_n_49,
      PCIN(14) => mul_32s_32s_32_1_1_U2_n_50,
      PCIN(13) => mul_32s_32s_32_1_1_U2_n_51,
      PCIN(12) => mul_32s_32s_32_1_1_U2_n_52,
      PCIN(11) => mul_32s_32s_32_1_1_U2_n_53,
      PCIN(10) => mul_32s_32s_32_1_1_U2_n_54,
      PCIN(9) => mul_32s_32s_32_1_1_U2_n_55,
      PCIN(8) => mul_32s_32s_32_1_1_U2_n_56,
      PCIN(7) => mul_32s_32s_32_1_1_U2_n_57,
      PCIN(6) => mul_32s_32s_32_1_1_U2_n_58,
      PCIN(5) => mul_32s_32s_32_1_1_U2_n_59,
      PCIN(4) => mul_32s_32s_32_1_1_U2_n_60,
      PCIN(3) => mul_32s_32s_32_1_1_U2_n_61,
      PCIN(2) => mul_32s_32s_32_1_1_U2_n_62,
      PCIN(1) => mul_32s_32s_32_1_1_U2_n_63,
      PCIN(0) => mul_32s_32s_32_1_1_U2_n_64,
      PCOUT(47 downto 0) => NLW_mul_ln17_1_reg_795_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_1_reg_795_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_1_reg_795_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_1_reg_795_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_16,
      Q => \mul_ln17_1_reg_795_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_6,
      Q => \mul_ln17_1_reg_795_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_5,
      Q => \mul_ln17_1_reg_795_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_4,
      Q => \mul_ln17_1_reg_795_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_3,
      Q => \mul_ln17_1_reg_795_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_2,
      Q => \mul_ln17_1_reg_795_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_1,
      Q => \mul_ln17_1_reg_795_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_0,
      Q => \mul_ln17_1_reg_795_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_15,
      Q => \mul_ln17_1_reg_795_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_14,
      Q => \mul_ln17_1_reg_795_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_13,
      Q => \mul_ln17_1_reg_795_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_12,
      Q => \mul_ln17_1_reg_795_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_11,
      Q => \mul_ln17_1_reg_795_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_10,
      Q => \mul_ln17_1_reg_795_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_9,
      Q => \mul_ln17_1_reg_795_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_8,
      Q => \mul_ln17_1_reg_795_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_1_reg_795_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U2_n_7,
      Q => \mul_ln17_1_reg_795_reg[9]__0_n_0\,
      R => '0'
    );
mul_ln17_2_reg_810_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_2_reg_810_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q0(31),
      B(16) => filter_q0(31),
      B(15) => filter_q0(31),
      B(14 downto 0) => filter_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_2_reg_810_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_2_reg_810_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_2_reg_810_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln17_2_reg_8100,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_2_reg_810_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_2_reg_810_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_2_reg_810_reg_n_58,
      P(46) => mul_ln17_2_reg_810_reg_n_59,
      P(45) => mul_ln17_2_reg_810_reg_n_60,
      P(44) => mul_ln17_2_reg_810_reg_n_61,
      P(43) => mul_ln17_2_reg_810_reg_n_62,
      P(42) => mul_ln17_2_reg_810_reg_n_63,
      P(41) => mul_ln17_2_reg_810_reg_n_64,
      P(40) => mul_ln17_2_reg_810_reg_n_65,
      P(39) => mul_ln17_2_reg_810_reg_n_66,
      P(38) => mul_ln17_2_reg_810_reg_n_67,
      P(37) => mul_ln17_2_reg_810_reg_n_68,
      P(36) => mul_ln17_2_reg_810_reg_n_69,
      P(35) => mul_ln17_2_reg_810_reg_n_70,
      P(34) => mul_ln17_2_reg_810_reg_n_71,
      P(33) => mul_ln17_2_reg_810_reg_n_72,
      P(32) => mul_ln17_2_reg_810_reg_n_73,
      P(31) => mul_ln17_2_reg_810_reg_n_74,
      P(30) => mul_ln17_2_reg_810_reg_n_75,
      P(29) => mul_ln17_2_reg_810_reg_n_76,
      P(28) => mul_ln17_2_reg_810_reg_n_77,
      P(27) => mul_ln17_2_reg_810_reg_n_78,
      P(26) => mul_ln17_2_reg_810_reg_n_79,
      P(25) => mul_ln17_2_reg_810_reg_n_80,
      P(24) => mul_ln17_2_reg_810_reg_n_81,
      P(23) => mul_ln17_2_reg_810_reg_n_82,
      P(22) => mul_ln17_2_reg_810_reg_n_83,
      P(21) => mul_ln17_2_reg_810_reg_n_84,
      P(20) => mul_ln17_2_reg_810_reg_n_85,
      P(19) => mul_ln17_2_reg_810_reg_n_86,
      P(18) => mul_ln17_2_reg_810_reg_n_87,
      P(17) => mul_ln17_2_reg_810_reg_n_88,
      P(16) => mul_ln17_2_reg_810_reg_n_89,
      P(15) => mul_ln17_2_reg_810_reg_n_90,
      P(14) => mul_ln17_2_reg_810_reg_n_91,
      P(13) => mul_ln17_2_reg_810_reg_n_92,
      P(12) => mul_ln17_2_reg_810_reg_n_93,
      P(11) => mul_ln17_2_reg_810_reg_n_94,
      P(10) => mul_ln17_2_reg_810_reg_n_95,
      P(9) => mul_ln17_2_reg_810_reg_n_96,
      P(8) => mul_ln17_2_reg_810_reg_n_97,
      P(7) => mul_ln17_2_reg_810_reg_n_98,
      P(6) => mul_ln17_2_reg_810_reg_n_99,
      P(5) => mul_ln17_2_reg_810_reg_n_100,
      P(4) => mul_ln17_2_reg_810_reg_n_101,
      P(3) => mul_ln17_2_reg_810_reg_n_102,
      P(2) => mul_ln17_2_reg_810_reg_n_103,
      P(1) => mul_ln17_2_reg_810_reg_n_104,
      P(0) => mul_ln17_2_reg_810_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_2_reg_810_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_2_reg_810_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U3_n_18,
      PCIN(46) => mul_32s_32s_32_1_1_U3_n_19,
      PCIN(45) => mul_32s_32s_32_1_1_U3_n_20,
      PCIN(44) => mul_32s_32s_32_1_1_U3_n_21,
      PCIN(43) => mul_32s_32s_32_1_1_U3_n_22,
      PCIN(42) => mul_32s_32s_32_1_1_U3_n_23,
      PCIN(41) => mul_32s_32s_32_1_1_U3_n_24,
      PCIN(40) => mul_32s_32s_32_1_1_U3_n_25,
      PCIN(39) => mul_32s_32s_32_1_1_U3_n_26,
      PCIN(38) => mul_32s_32s_32_1_1_U3_n_27,
      PCIN(37) => mul_32s_32s_32_1_1_U3_n_28,
      PCIN(36) => mul_32s_32s_32_1_1_U3_n_29,
      PCIN(35) => mul_32s_32s_32_1_1_U3_n_30,
      PCIN(34) => mul_32s_32s_32_1_1_U3_n_31,
      PCIN(33) => mul_32s_32s_32_1_1_U3_n_32,
      PCIN(32) => mul_32s_32s_32_1_1_U3_n_33,
      PCIN(31) => mul_32s_32s_32_1_1_U3_n_34,
      PCIN(30) => mul_32s_32s_32_1_1_U3_n_35,
      PCIN(29) => mul_32s_32s_32_1_1_U3_n_36,
      PCIN(28) => mul_32s_32s_32_1_1_U3_n_37,
      PCIN(27) => mul_32s_32s_32_1_1_U3_n_38,
      PCIN(26) => mul_32s_32s_32_1_1_U3_n_39,
      PCIN(25) => mul_32s_32s_32_1_1_U3_n_40,
      PCIN(24) => mul_32s_32s_32_1_1_U3_n_41,
      PCIN(23) => mul_32s_32s_32_1_1_U3_n_42,
      PCIN(22) => mul_32s_32s_32_1_1_U3_n_43,
      PCIN(21) => mul_32s_32s_32_1_1_U3_n_44,
      PCIN(20) => mul_32s_32s_32_1_1_U3_n_45,
      PCIN(19) => mul_32s_32s_32_1_1_U3_n_46,
      PCIN(18) => mul_32s_32s_32_1_1_U3_n_47,
      PCIN(17) => mul_32s_32s_32_1_1_U3_n_48,
      PCIN(16) => mul_32s_32s_32_1_1_U3_n_49,
      PCIN(15) => mul_32s_32s_32_1_1_U3_n_50,
      PCIN(14) => mul_32s_32s_32_1_1_U3_n_51,
      PCIN(13) => mul_32s_32s_32_1_1_U3_n_52,
      PCIN(12) => mul_32s_32s_32_1_1_U3_n_53,
      PCIN(11) => mul_32s_32s_32_1_1_U3_n_54,
      PCIN(10) => mul_32s_32s_32_1_1_U3_n_55,
      PCIN(9) => mul_32s_32s_32_1_1_U3_n_56,
      PCIN(8) => mul_32s_32s_32_1_1_U3_n_57,
      PCIN(7) => mul_32s_32s_32_1_1_U3_n_58,
      PCIN(6) => mul_32s_32s_32_1_1_U3_n_59,
      PCIN(5) => mul_32s_32s_32_1_1_U3_n_60,
      PCIN(4) => mul_32s_32s_32_1_1_U3_n_61,
      PCIN(3) => mul_32s_32s_32_1_1_U3_n_62,
      PCIN(2) => mul_32s_32s_32_1_1_U3_n_63,
      PCIN(1) => mul_32s_32s_32_1_1_U3_n_64,
      PCIN(0) => mul_32s_32s_32_1_1_U3_n_65,
      PCOUT(47 downto 0) => NLW_mul_ln17_2_reg_810_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_2_reg_810_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_2_reg_810_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_2_reg_810_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_17,
      Q => \mul_ln17_2_reg_810_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_7,
      Q => \mul_ln17_2_reg_810_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_6,
      Q => \mul_ln17_2_reg_810_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_5,
      Q => \mul_ln17_2_reg_810_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_4,
      Q => \mul_ln17_2_reg_810_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_3,
      Q => \mul_ln17_2_reg_810_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_2,
      Q => \mul_ln17_2_reg_810_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_1,
      Q => \mul_ln17_2_reg_810_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_16,
      Q => \mul_ln17_2_reg_810_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_15,
      Q => \mul_ln17_2_reg_810_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_14,
      Q => \mul_ln17_2_reg_810_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_13,
      Q => \mul_ln17_2_reg_810_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_12,
      Q => \mul_ln17_2_reg_810_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_11,
      Q => \mul_ln17_2_reg_810_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_10,
      Q => \mul_ln17_2_reg_810_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_9,
      Q => \mul_ln17_2_reg_810_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_2_reg_810_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U3_n_8,
      Q => \mul_ln17_2_reg_810_reg[9]__0_n_0\,
      R => '0'
    );
mul_ln17_3_reg_815_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_3_reg_815_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q0(31),
      B(16) => filter_q0(31),
      B(15) => filter_q0(31),
      B(14 downto 0) => filter_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_3_reg_815_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_3_reg_815_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_3_reg_815_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(2),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln17_2_reg_8100,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_3_reg_815_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_3_reg_815_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_3_reg_815_reg_n_58,
      P(46) => mul_ln17_3_reg_815_reg_n_59,
      P(45) => mul_ln17_3_reg_815_reg_n_60,
      P(44) => mul_ln17_3_reg_815_reg_n_61,
      P(43) => mul_ln17_3_reg_815_reg_n_62,
      P(42) => mul_ln17_3_reg_815_reg_n_63,
      P(41) => mul_ln17_3_reg_815_reg_n_64,
      P(40) => mul_ln17_3_reg_815_reg_n_65,
      P(39) => mul_ln17_3_reg_815_reg_n_66,
      P(38) => mul_ln17_3_reg_815_reg_n_67,
      P(37) => mul_ln17_3_reg_815_reg_n_68,
      P(36) => mul_ln17_3_reg_815_reg_n_69,
      P(35) => mul_ln17_3_reg_815_reg_n_70,
      P(34) => mul_ln17_3_reg_815_reg_n_71,
      P(33) => mul_ln17_3_reg_815_reg_n_72,
      P(32) => mul_ln17_3_reg_815_reg_n_73,
      P(31) => mul_ln17_3_reg_815_reg_n_74,
      P(30) => mul_ln17_3_reg_815_reg_n_75,
      P(29) => mul_ln17_3_reg_815_reg_n_76,
      P(28) => mul_ln17_3_reg_815_reg_n_77,
      P(27) => mul_ln17_3_reg_815_reg_n_78,
      P(26) => mul_ln17_3_reg_815_reg_n_79,
      P(25) => mul_ln17_3_reg_815_reg_n_80,
      P(24) => mul_ln17_3_reg_815_reg_n_81,
      P(23) => mul_ln17_3_reg_815_reg_n_82,
      P(22) => mul_ln17_3_reg_815_reg_n_83,
      P(21) => mul_ln17_3_reg_815_reg_n_84,
      P(20) => mul_ln17_3_reg_815_reg_n_85,
      P(19) => mul_ln17_3_reg_815_reg_n_86,
      P(18) => mul_ln17_3_reg_815_reg_n_87,
      P(17) => mul_ln17_3_reg_815_reg_n_88,
      P(16) => mul_ln17_3_reg_815_reg_n_89,
      P(15) => mul_ln17_3_reg_815_reg_n_90,
      P(14) => mul_ln17_3_reg_815_reg_n_91,
      P(13) => mul_ln17_3_reg_815_reg_n_92,
      P(12) => mul_ln17_3_reg_815_reg_n_93,
      P(11) => mul_ln17_3_reg_815_reg_n_94,
      P(10) => mul_ln17_3_reg_815_reg_n_95,
      P(9) => mul_ln17_3_reg_815_reg_n_96,
      P(8) => mul_ln17_3_reg_815_reg_n_97,
      P(7) => mul_ln17_3_reg_815_reg_n_98,
      P(6) => mul_ln17_3_reg_815_reg_n_99,
      P(5) => mul_ln17_3_reg_815_reg_n_100,
      P(4) => mul_ln17_3_reg_815_reg_n_101,
      P(3) => mul_ln17_3_reg_815_reg_n_102,
      P(2) => mul_ln17_3_reg_815_reg_n_103,
      P(1) => mul_ln17_3_reg_815_reg_n_104,
      P(0) => mul_ln17_3_reg_815_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_3_reg_815_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_3_reg_815_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U4_n_17,
      PCIN(46) => mul_32s_32s_32_1_1_U4_n_18,
      PCIN(45) => mul_32s_32s_32_1_1_U4_n_19,
      PCIN(44) => mul_32s_32s_32_1_1_U4_n_20,
      PCIN(43) => mul_32s_32s_32_1_1_U4_n_21,
      PCIN(42) => mul_32s_32s_32_1_1_U4_n_22,
      PCIN(41) => mul_32s_32s_32_1_1_U4_n_23,
      PCIN(40) => mul_32s_32s_32_1_1_U4_n_24,
      PCIN(39) => mul_32s_32s_32_1_1_U4_n_25,
      PCIN(38) => mul_32s_32s_32_1_1_U4_n_26,
      PCIN(37) => mul_32s_32s_32_1_1_U4_n_27,
      PCIN(36) => mul_32s_32s_32_1_1_U4_n_28,
      PCIN(35) => mul_32s_32s_32_1_1_U4_n_29,
      PCIN(34) => mul_32s_32s_32_1_1_U4_n_30,
      PCIN(33) => mul_32s_32s_32_1_1_U4_n_31,
      PCIN(32) => mul_32s_32s_32_1_1_U4_n_32,
      PCIN(31) => mul_32s_32s_32_1_1_U4_n_33,
      PCIN(30) => mul_32s_32s_32_1_1_U4_n_34,
      PCIN(29) => mul_32s_32s_32_1_1_U4_n_35,
      PCIN(28) => mul_32s_32s_32_1_1_U4_n_36,
      PCIN(27) => mul_32s_32s_32_1_1_U4_n_37,
      PCIN(26) => mul_32s_32s_32_1_1_U4_n_38,
      PCIN(25) => mul_32s_32s_32_1_1_U4_n_39,
      PCIN(24) => mul_32s_32s_32_1_1_U4_n_40,
      PCIN(23) => mul_32s_32s_32_1_1_U4_n_41,
      PCIN(22) => mul_32s_32s_32_1_1_U4_n_42,
      PCIN(21) => mul_32s_32s_32_1_1_U4_n_43,
      PCIN(20) => mul_32s_32s_32_1_1_U4_n_44,
      PCIN(19) => mul_32s_32s_32_1_1_U4_n_45,
      PCIN(18) => mul_32s_32s_32_1_1_U4_n_46,
      PCIN(17) => mul_32s_32s_32_1_1_U4_n_47,
      PCIN(16) => mul_32s_32s_32_1_1_U4_n_48,
      PCIN(15) => mul_32s_32s_32_1_1_U4_n_49,
      PCIN(14) => mul_32s_32s_32_1_1_U4_n_50,
      PCIN(13) => mul_32s_32s_32_1_1_U4_n_51,
      PCIN(12) => mul_32s_32s_32_1_1_U4_n_52,
      PCIN(11) => mul_32s_32s_32_1_1_U4_n_53,
      PCIN(10) => mul_32s_32s_32_1_1_U4_n_54,
      PCIN(9) => mul_32s_32s_32_1_1_U4_n_55,
      PCIN(8) => mul_32s_32s_32_1_1_U4_n_56,
      PCIN(7) => mul_32s_32s_32_1_1_U4_n_57,
      PCIN(6) => mul_32s_32s_32_1_1_U4_n_58,
      PCIN(5) => mul_32s_32s_32_1_1_U4_n_59,
      PCIN(4) => mul_32s_32s_32_1_1_U4_n_60,
      PCIN(3) => mul_32s_32s_32_1_1_U4_n_61,
      PCIN(2) => mul_32s_32s_32_1_1_U4_n_62,
      PCIN(1) => mul_32s_32s_32_1_1_U4_n_63,
      PCIN(0) => mul_32s_32s_32_1_1_U4_n_64,
      PCOUT(47 downto 0) => NLW_mul_ln17_3_reg_815_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_3_reg_815_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_3_reg_815_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_3_reg_815_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_16,
      Q => \mul_ln17_3_reg_815_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_6,
      Q => \mul_ln17_3_reg_815_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_5,
      Q => \mul_ln17_3_reg_815_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_4,
      Q => \mul_ln17_3_reg_815_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_3,
      Q => \mul_ln17_3_reg_815_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_2,
      Q => \mul_ln17_3_reg_815_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_1,
      Q => \mul_ln17_3_reg_815_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_0,
      Q => \mul_ln17_3_reg_815_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_15,
      Q => \mul_ln17_3_reg_815_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_14,
      Q => \mul_ln17_3_reg_815_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_13,
      Q => \mul_ln17_3_reg_815_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_12,
      Q => \mul_ln17_3_reg_815_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_11,
      Q => \mul_ln17_3_reg_815_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_10,
      Q => \mul_ln17_3_reg_815_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_9,
      Q => \mul_ln17_3_reg_815_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_8,
      Q => \mul_ln17_3_reg_815_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_3_reg_815_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_2_reg_8100,
      D => mul_32s_32s_32_1_1_U4_n_7,
      Q => \mul_ln17_3_reg_815_reg[9]__0_n_0\,
      R => '0'
    );
mul_ln17_4_reg_830_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_4_reg_830_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q1(31),
      B(16) => filter_q1(31),
      B(15) => filter_q1(31),
      B(14 downto 0) => filter_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_4_reg_830_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_4_reg_830_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_4_reg_830_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(2),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln17_4_reg_8300,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_4_reg_830_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_4_reg_830_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_4_reg_830_reg_n_58,
      P(46) => mul_ln17_4_reg_830_reg_n_59,
      P(45) => mul_ln17_4_reg_830_reg_n_60,
      P(44) => mul_ln17_4_reg_830_reg_n_61,
      P(43) => mul_ln17_4_reg_830_reg_n_62,
      P(42) => mul_ln17_4_reg_830_reg_n_63,
      P(41) => mul_ln17_4_reg_830_reg_n_64,
      P(40) => mul_ln17_4_reg_830_reg_n_65,
      P(39) => mul_ln17_4_reg_830_reg_n_66,
      P(38) => mul_ln17_4_reg_830_reg_n_67,
      P(37) => mul_ln17_4_reg_830_reg_n_68,
      P(36) => mul_ln17_4_reg_830_reg_n_69,
      P(35) => mul_ln17_4_reg_830_reg_n_70,
      P(34) => mul_ln17_4_reg_830_reg_n_71,
      P(33) => mul_ln17_4_reg_830_reg_n_72,
      P(32) => mul_ln17_4_reg_830_reg_n_73,
      P(31) => mul_ln17_4_reg_830_reg_n_74,
      P(30) => mul_ln17_4_reg_830_reg_n_75,
      P(29) => mul_ln17_4_reg_830_reg_n_76,
      P(28) => mul_ln17_4_reg_830_reg_n_77,
      P(27) => mul_ln17_4_reg_830_reg_n_78,
      P(26) => mul_ln17_4_reg_830_reg_n_79,
      P(25) => mul_ln17_4_reg_830_reg_n_80,
      P(24) => mul_ln17_4_reg_830_reg_n_81,
      P(23) => mul_ln17_4_reg_830_reg_n_82,
      P(22) => mul_ln17_4_reg_830_reg_n_83,
      P(21) => mul_ln17_4_reg_830_reg_n_84,
      P(20) => mul_ln17_4_reg_830_reg_n_85,
      P(19) => mul_ln17_4_reg_830_reg_n_86,
      P(18) => mul_ln17_4_reg_830_reg_n_87,
      P(17) => mul_ln17_4_reg_830_reg_n_88,
      P(16) => mul_ln17_4_reg_830_reg_n_89,
      P(15) => mul_ln17_4_reg_830_reg_n_90,
      P(14) => mul_ln17_4_reg_830_reg_n_91,
      P(13) => mul_ln17_4_reg_830_reg_n_92,
      P(12) => mul_ln17_4_reg_830_reg_n_93,
      P(11) => mul_ln17_4_reg_830_reg_n_94,
      P(10) => mul_ln17_4_reg_830_reg_n_95,
      P(9) => mul_ln17_4_reg_830_reg_n_96,
      P(8) => mul_ln17_4_reg_830_reg_n_97,
      P(7) => mul_ln17_4_reg_830_reg_n_98,
      P(6) => mul_ln17_4_reg_830_reg_n_99,
      P(5) => mul_ln17_4_reg_830_reg_n_100,
      P(4) => mul_ln17_4_reg_830_reg_n_101,
      P(3) => mul_ln17_4_reg_830_reg_n_102,
      P(2) => mul_ln17_4_reg_830_reg_n_103,
      P(1) => mul_ln17_4_reg_830_reg_n_104,
      P(0) => mul_ln17_4_reg_830_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_4_reg_830_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_4_reg_830_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U5_n_17,
      PCIN(46) => mul_32s_32s_32_1_1_U5_n_18,
      PCIN(45) => mul_32s_32s_32_1_1_U5_n_19,
      PCIN(44) => mul_32s_32s_32_1_1_U5_n_20,
      PCIN(43) => mul_32s_32s_32_1_1_U5_n_21,
      PCIN(42) => mul_32s_32s_32_1_1_U5_n_22,
      PCIN(41) => mul_32s_32s_32_1_1_U5_n_23,
      PCIN(40) => mul_32s_32s_32_1_1_U5_n_24,
      PCIN(39) => mul_32s_32s_32_1_1_U5_n_25,
      PCIN(38) => mul_32s_32s_32_1_1_U5_n_26,
      PCIN(37) => mul_32s_32s_32_1_1_U5_n_27,
      PCIN(36) => mul_32s_32s_32_1_1_U5_n_28,
      PCIN(35) => mul_32s_32s_32_1_1_U5_n_29,
      PCIN(34) => mul_32s_32s_32_1_1_U5_n_30,
      PCIN(33) => mul_32s_32s_32_1_1_U5_n_31,
      PCIN(32) => mul_32s_32s_32_1_1_U5_n_32,
      PCIN(31) => mul_32s_32s_32_1_1_U5_n_33,
      PCIN(30) => mul_32s_32s_32_1_1_U5_n_34,
      PCIN(29) => mul_32s_32s_32_1_1_U5_n_35,
      PCIN(28) => mul_32s_32s_32_1_1_U5_n_36,
      PCIN(27) => mul_32s_32s_32_1_1_U5_n_37,
      PCIN(26) => mul_32s_32s_32_1_1_U5_n_38,
      PCIN(25) => mul_32s_32s_32_1_1_U5_n_39,
      PCIN(24) => mul_32s_32s_32_1_1_U5_n_40,
      PCIN(23) => mul_32s_32s_32_1_1_U5_n_41,
      PCIN(22) => mul_32s_32s_32_1_1_U5_n_42,
      PCIN(21) => mul_32s_32s_32_1_1_U5_n_43,
      PCIN(20) => mul_32s_32s_32_1_1_U5_n_44,
      PCIN(19) => mul_32s_32s_32_1_1_U5_n_45,
      PCIN(18) => mul_32s_32s_32_1_1_U5_n_46,
      PCIN(17) => mul_32s_32s_32_1_1_U5_n_47,
      PCIN(16) => mul_32s_32s_32_1_1_U5_n_48,
      PCIN(15) => mul_32s_32s_32_1_1_U5_n_49,
      PCIN(14) => mul_32s_32s_32_1_1_U5_n_50,
      PCIN(13) => mul_32s_32s_32_1_1_U5_n_51,
      PCIN(12) => mul_32s_32s_32_1_1_U5_n_52,
      PCIN(11) => mul_32s_32s_32_1_1_U5_n_53,
      PCIN(10) => mul_32s_32s_32_1_1_U5_n_54,
      PCIN(9) => mul_32s_32s_32_1_1_U5_n_55,
      PCIN(8) => mul_32s_32s_32_1_1_U5_n_56,
      PCIN(7) => mul_32s_32s_32_1_1_U5_n_57,
      PCIN(6) => mul_32s_32s_32_1_1_U5_n_58,
      PCIN(5) => mul_32s_32s_32_1_1_U5_n_59,
      PCIN(4) => mul_32s_32s_32_1_1_U5_n_60,
      PCIN(3) => mul_32s_32s_32_1_1_U5_n_61,
      PCIN(2) => mul_32s_32s_32_1_1_U5_n_62,
      PCIN(1) => mul_32s_32s_32_1_1_U5_n_63,
      PCIN(0) => mul_32s_32s_32_1_1_U5_n_64,
      PCOUT(47 downto 0) => NLW_mul_ln17_4_reg_830_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_4_reg_830_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_4_reg_830_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_4_reg_830_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_16,
      Q => \mul_ln17_4_reg_830_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_6,
      Q => \mul_ln17_4_reg_830_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_5,
      Q => \mul_ln17_4_reg_830_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_4,
      Q => \mul_ln17_4_reg_830_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_3,
      Q => \mul_ln17_4_reg_830_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_2,
      Q => \mul_ln17_4_reg_830_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_1,
      Q => \mul_ln17_4_reg_830_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_0,
      Q => \mul_ln17_4_reg_830_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_15,
      Q => \mul_ln17_4_reg_830_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_14,
      Q => \mul_ln17_4_reg_830_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_13,
      Q => \mul_ln17_4_reg_830_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_12,
      Q => \mul_ln17_4_reg_830_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_11,
      Q => \mul_ln17_4_reg_830_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_10,
      Q => \mul_ln17_4_reg_830_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_9,
      Q => \mul_ln17_4_reg_830_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_8,
      Q => \mul_ln17_4_reg_830_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_4_reg_830_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U5_n_7,
      Q => \mul_ln17_4_reg_830_reg[9]__0_n_0\,
      R => '0'
    );
mul_ln17_5_reg_835_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_5_reg_835_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q0(31),
      B(16) => filter_q0(31),
      B(15) => filter_q0(31),
      B(14 downto 0) => filter_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_5_reg_835_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_5_reg_835_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_5_reg_835_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(3),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln17_4_reg_8300,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_5_reg_835_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_5_reg_835_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_5_reg_835_reg_n_58,
      P(46) => mul_ln17_5_reg_835_reg_n_59,
      P(45) => mul_ln17_5_reg_835_reg_n_60,
      P(44) => mul_ln17_5_reg_835_reg_n_61,
      P(43) => mul_ln17_5_reg_835_reg_n_62,
      P(42) => mul_ln17_5_reg_835_reg_n_63,
      P(41) => mul_ln17_5_reg_835_reg_n_64,
      P(40) => mul_ln17_5_reg_835_reg_n_65,
      P(39) => mul_ln17_5_reg_835_reg_n_66,
      P(38) => mul_ln17_5_reg_835_reg_n_67,
      P(37) => mul_ln17_5_reg_835_reg_n_68,
      P(36) => mul_ln17_5_reg_835_reg_n_69,
      P(35) => mul_ln17_5_reg_835_reg_n_70,
      P(34) => mul_ln17_5_reg_835_reg_n_71,
      P(33) => mul_ln17_5_reg_835_reg_n_72,
      P(32) => mul_ln17_5_reg_835_reg_n_73,
      P(31) => mul_ln17_5_reg_835_reg_n_74,
      P(30) => mul_ln17_5_reg_835_reg_n_75,
      P(29) => mul_ln17_5_reg_835_reg_n_76,
      P(28) => mul_ln17_5_reg_835_reg_n_77,
      P(27) => mul_ln17_5_reg_835_reg_n_78,
      P(26) => mul_ln17_5_reg_835_reg_n_79,
      P(25) => mul_ln17_5_reg_835_reg_n_80,
      P(24) => mul_ln17_5_reg_835_reg_n_81,
      P(23) => mul_ln17_5_reg_835_reg_n_82,
      P(22) => mul_ln17_5_reg_835_reg_n_83,
      P(21) => mul_ln17_5_reg_835_reg_n_84,
      P(20) => mul_ln17_5_reg_835_reg_n_85,
      P(19) => mul_ln17_5_reg_835_reg_n_86,
      P(18) => mul_ln17_5_reg_835_reg_n_87,
      P(17) => mul_ln17_5_reg_835_reg_n_88,
      P(16) => mul_ln17_5_reg_835_reg_n_89,
      P(15) => mul_ln17_5_reg_835_reg_n_90,
      P(14) => mul_ln17_5_reg_835_reg_n_91,
      P(13) => mul_ln17_5_reg_835_reg_n_92,
      P(12) => mul_ln17_5_reg_835_reg_n_93,
      P(11) => mul_ln17_5_reg_835_reg_n_94,
      P(10) => mul_ln17_5_reg_835_reg_n_95,
      P(9) => mul_ln17_5_reg_835_reg_n_96,
      P(8) => mul_ln17_5_reg_835_reg_n_97,
      P(7) => mul_ln17_5_reg_835_reg_n_98,
      P(6) => mul_ln17_5_reg_835_reg_n_99,
      P(5) => mul_ln17_5_reg_835_reg_n_100,
      P(4) => mul_ln17_5_reg_835_reg_n_101,
      P(3) => mul_ln17_5_reg_835_reg_n_102,
      P(2) => mul_ln17_5_reg_835_reg_n_103,
      P(1) => mul_ln17_5_reg_835_reg_n_104,
      P(0) => mul_ln17_5_reg_835_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_5_reg_835_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_5_reg_835_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U6_n_18,
      PCIN(46) => mul_32s_32s_32_1_1_U6_n_19,
      PCIN(45) => mul_32s_32s_32_1_1_U6_n_20,
      PCIN(44) => mul_32s_32s_32_1_1_U6_n_21,
      PCIN(43) => mul_32s_32s_32_1_1_U6_n_22,
      PCIN(42) => mul_32s_32s_32_1_1_U6_n_23,
      PCIN(41) => mul_32s_32s_32_1_1_U6_n_24,
      PCIN(40) => mul_32s_32s_32_1_1_U6_n_25,
      PCIN(39) => mul_32s_32s_32_1_1_U6_n_26,
      PCIN(38) => mul_32s_32s_32_1_1_U6_n_27,
      PCIN(37) => mul_32s_32s_32_1_1_U6_n_28,
      PCIN(36) => mul_32s_32s_32_1_1_U6_n_29,
      PCIN(35) => mul_32s_32s_32_1_1_U6_n_30,
      PCIN(34) => mul_32s_32s_32_1_1_U6_n_31,
      PCIN(33) => mul_32s_32s_32_1_1_U6_n_32,
      PCIN(32) => mul_32s_32s_32_1_1_U6_n_33,
      PCIN(31) => mul_32s_32s_32_1_1_U6_n_34,
      PCIN(30) => mul_32s_32s_32_1_1_U6_n_35,
      PCIN(29) => mul_32s_32s_32_1_1_U6_n_36,
      PCIN(28) => mul_32s_32s_32_1_1_U6_n_37,
      PCIN(27) => mul_32s_32s_32_1_1_U6_n_38,
      PCIN(26) => mul_32s_32s_32_1_1_U6_n_39,
      PCIN(25) => mul_32s_32s_32_1_1_U6_n_40,
      PCIN(24) => mul_32s_32s_32_1_1_U6_n_41,
      PCIN(23) => mul_32s_32s_32_1_1_U6_n_42,
      PCIN(22) => mul_32s_32s_32_1_1_U6_n_43,
      PCIN(21) => mul_32s_32s_32_1_1_U6_n_44,
      PCIN(20) => mul_32s_32s_32_1_1_U6_n_45,
      PCIN(19) => mul_32s_32s_32_1_1_U6_n_46,
      PCIN(18) => mul_32s_32s_32_1_1_U6_n_47,
      PCIN(17) => mul_32s_32s_32_1_1_U6_n_48,
      PCIN(16) => mul_32s_32s_32_1_1_U6_n_49,
      PCIN(15) => mul_32s_32s_32_1_1_U6_n_50,
      PCIN(14) => mul_32s_32s_32_1_1_U6_n_51,
      PCIN(13) => mul_32s_32s_32_1_1_U6_n_52,
      PCIN(12) => mul_32s_32s_32_1_1_U6_n_53,
      PCIN(11) => mul_32s_32s_32_1_1_U6_n_54,
      PCIN(10) => mul_32s_32s_32_1_1_U6_n_55,
      PCIN(9) => mul_32s_32s_32_1_1_U6_n_56,
      PCIN(8) => mul_32s_32s_32_1_1_U6_n_57,
      PCIN(7) => mul_32s_32s_32_1_1_U6_n_58,
      PCIN(6) => mul_32s_32s_32_1_1_U6_n_59,
      PCIN(5) => mul_32s_32s_32_1_1_U6_n_60,
      PCIN(4) => mul_32s_32s_32_1_1_U6_n_61,
      PCIN(3) => mul_32s_32s_32_1_1_U6_n_62,
      PCIN(2) => mul_32s_32s_32_1_1_U6_n_63,
      PCIN(1) => mul_32s_32s_32_1_1_U6_n_64,
      PCIN(0) => mul_32s_32s_32_1_1_U6_n_65,
      PCOUT(47 downto 0) => NLW_mul_ln17_5_reg_835_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_5_reg_835_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_5_reg_835_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_5_reg_835_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_17,
      Q => \mul_ln17_5_reg_835_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_7,
      Q => \mul_ln17_5_reg_835_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_6,
      Q => \mul_ln17_5_reg_835_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_5,
      Q => \mul_ln17_5_reg_835_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_4,
      Q => \mul_ln17_5_reg_835_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_3,
      Q => \mul_ln17_5_reg_835_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_2,
      Q => \mul_ln17_5_reg_835_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_1,
      Q => \mul_ln17_5_reg_835_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_16,
      Q => \mul_ln17_5_reg_835_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_15,
      Q => \mul_ln17_5_reg_835_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_14,
      Q => \mul_ln17_5_reg_835_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_13,
      Q => \mul_ln17_5_reg_835_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_12,
      Q => \mul_ln17_5_reg_835_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_11,
      Q => \mul_ln17_5_reg_835_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_10,
      Q => \mul_ln17_5_reg_835_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_9,
      Q => \mul_ln17_5_reg_835_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_5_reg_835_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_4_reg_8300,
      D => mul_32s_32s_32_1_1_U6_n_8,
      Q => \mul_ln17_5_reg_835_reg[9]__0_n_0\,
      R => '0'
    );
mul_ln17_6_reg_850_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_6_reg_850_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q1(31),
      B(16) => filter_q1(31),
      B(15) => filter_q1(31),
      B(14 downto 0) => filter_q1(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_6_reg_850_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_6_reg_850_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_6_reg_850_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(3),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => add_ln18_1_reg_8650,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_6_reg_850_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_6_reg_850_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_6_reg_850_reg_n_58,
      P(46) => mul_ln17_6_reg_850_reg_n_59,
      P(45) => mul_ln17_6_reg_850_reg_n_60,
      P(44) => mul_ln17_6_reg_850_reg_n_61,
      P(43) => mul_ln17_6_reg_850_reg_n_62,
      P(42) => mul_ln17_6_reg_850_reg_n_63,
      P(41) => mul_ln17_6_reg_850_reg_n_64,
      P(40) => mul_ln17_6_reg_850_reg_n_65,
      P(39) => mul_ln17_6_reg_850_reg_n_66,
      P(38) => mul_ln17_6_reg_850_reg_n_67,
      P(37) => mul_ln17_6_reg_850_reg_n_68,
      P(36) => mul_ln17_6_reg_850_reg_n_69,
      P(35) => mul_ln17_6_reg_850_reg_n_70,
      P(34) => mul_ln17_6_reg_850_reg_n_71,
      P(33) => mul_ln17_6_reg_850_reg_n_72,
      P(32) => mul_ln17_6_reg_850_reg_n_73,
      P(31) => mul_ln17_6_reg_850_reg_n_74,
      P(30) => mul_ln17_6_reg_850_reg_n_75,
      P(29) => mul_ln17_6_reg_850_reg_n_76,
      P(28) => mul_ln17_6_reg_850_reg_n_77,
      P(27) => mul_ln17_6_reg_850_reg_n_78,
      P(26) => mul_ln17_6_reg_850_reg_n_79,
      P(25) => mul_ln17_6_reg_850_reg_n_80,
      P(24) => mul_ln17_6_reg_850_reg_n_81,
      P(23) => mul_ln17_6_reg_850_reg_n_82,
      P(22) => mul_ln17_6_reg_850_reg_n_83,
      P(21) => mul_ln17_6_reg_850_reg_n_84,
      P(20) => mul_ln17_6_reg_850_reg_n_85,
      P(19) => mul_ln17_6_reg_850_reg_n_86,
      P(18) => mul_ln17_6_reg_850_reg_n_87,
      P(17) => mul_ln17_6_reg_850_reg_n_88,
      P(16) => mul_ln17_6_reg_850_reg_n_89,
      P(15) => mul_ln17_6_reg_850_reg_n_90,
      P(14) => mul_ln17_6_reg_850_reg_n_91,
      P(13) => mul_ln17_6_reg_850_reg_n_92,
      P(12) => mul_ln17_6_reg_850_reg_n_93,
      P(11) => mul_ln17_6_reg_850_reg_n_94,
      P(10) => mul_ln17_6_reg_850_reg_n_95,
      P(9) => mul_ln17_6_reg_850_reg_n_96,
      P(8) => mul_ln17_6_reg_850_reg_n_97,
      P(7) => mul_ln17_6_reg_850_reg_n_98,
      P(6) => mul_ln17_6_reg_850_reg_n_99,
      P(5) => mul_ln17_6_reg_850_reg_n_100,
      P(4) => mul_ln17_6_reg_850_reg_n_101,
      P(3) => mul_ln17_6_reg_850_reg_n_102,
      P(2) => mul_ln17_6_reg_850_reg_n_103,
      P(1) => mul_ln17_6_reg_850_reg_n_104,
      P(0) => mul_ln17_6_reg_850_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_6_reg_850_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_6_reg_850_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U7_n_18,
      PCIN(46) => mul_32s_32s_32_1_1_U7_n_19,
      PCIN(45) => mul_32s_32s_32_1_1_U7_n_20,
      PCIN(44) => mul_32s_32s_32_1_1_U7_n_21,
      PCIN(43) => mul_32s_32s_32_1_1_U7_n_22,
      PCIN(42) => mul_32s_32s_32_1_1_U7_n_23,
      PCIN(41) => mul_32s_32s_32_1_1_U7_n_24,
      PCIN(40) => mul_32s_32s_32_1_1_U7_n_25,
      PCIN(39) => mul_32s_32s_32_1_1_U7_n_26,
      PCIN(38) => mul_32s_32s_32_1_1_U7_n_27,
      PCIN(37) => mul_32s_32s_32_1_1_U7_n_28,
      PCIN(36) => mul_32s_32s_32_1_1_U7_n_29,
      PCIN(35) => mul_32s_32s_32_1_1_U7_n_30,
      PCIN(34) => mul_32s_32s_32_1_1_U7_n_31,
      PCIN(33) => mul_32s_32s_32_1_1_U7_n_32,
      PCIN(32) => mul_32s_32s_32_1_1_U7_n_33,
      PCIN(31) => mul_32s_32s_32_1_1_U7_n_34,
      PCIN(30) => mul_32s_32s_32_1_1_U7_n_35,
      PCIN(29) => mul_32s_32s_32_1_1_U7_n_36,
      PCIN(28) => mul_32s_32s_32_1_1_U7_n_37,
      PCIN(27) => mul_32s_32s_32_1_1_U7_n_38,
      PCIN(26) => mul_32s_32s_32_1_1_U7_n_39,
      PCIN(25) => mul_32s_32s_32_1_1_U7_n_40,
      PCIN(24) => mul_32s_32s_32_1_1_U7_n_41,
      PCIN(23) => mul_32s_32s_32_1_1_U7_n_42,
      PCIN(22) => mul_32s_32s_32_1_1_U7_n_43,
      PCIN(21) => mul_32s_32s_32_1_1_U7_n_44,
      PCIN(20) => mul_32s_32s_32_1_1_U7_n_45,
      PCIN(19) => mul_32s_32s_32_1_1_U7_n_46,
      PCIN(18) => mul_32s_32s_32_1_1_U7_n_47,
      PCIN(17) => mul_32s_32s_32_1_1_U7_n_48,
      PCIN(16) => mul_32s_32s_32_1_1_U7_n_49,
      PCIN(15) => mul_32s_32s_32_1_1_U7_n_50,
      PCIN(14) => mul_32s_32s_32_1_1_U7_n_51,
      PCIN(13) => mul_32s_32s_32_1_1_U7_n_52,
      PCIN(12) => mul_32s_32s_32_1_1_U7_n_53,
      PCIN(11) => mul_32s_32s_32_1_1_U7_n_54,
      PCIN(10) => mul_32s_32s_32_1_1_U7_n_55,
      PCIN(9) => mul_32s_32s_32_1_1_U7_n_56,
      PCIN(8) => mul_32s_32s_32_1_1_U7_n_57,
      PCIN(7) => mul_32s_32s_32_1_1_U7_n_58,
      PCIN(6) => mul_32s_32s_32_1_1_U7_n_59,
      PCIN(5) => mul_32s_32s_32_1_1_U7_n_60,
      PCIN(4) => mul_32s_32s_32_1_1_U7_n_61,
      PCIN(3) => mul_32s_32s_32_1_1_U7_n_62,
      PCIN(2) => mul_32s_32s_32_1_1_U7_n_63,
      PCIN(1) => mul_32s_32s_32_1_1_U7_n_64,
      PCIN(0) => mul_32s_32s_32_1_1_U7_n_65,
      PCOUT(47 downto 0) => NLW_mul_ln17_6_reg_850_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_6_reg_850_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_6_reg_850_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_6_reg_850_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_17,
      Q => \mul_ln17_6_reg_850_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_7,
      Q => \mul_ln17_6_reg_850_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_6,
      Q => \mul_ln17_6_reg_850_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_5,
      Q => \mul_ln17_6_reg_850_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_4,
      Q => \mul_ln17_6_reg_850_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_3,
      Q => \mul_ln17_6_reg_850_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_2,
      Q => \mul_ln17_6_reg_850_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_1,
      Q => \mul_ln17_6_reg_850_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_16,
      Q => \mul_ln17_6_reg_850_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_15,
      Q => \mul_ln17_6_reg_850_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_14,
      Q => \mul_ln17_6_reg_850_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_13,
      Q => \mul_ln17_6_reg_850_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_12,
      Q => \mul_ln17_6_reg_850_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_11,
      Q => \mul_ln17_6_reg_850_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_10,
      Q => \mul_ln17_6_reg_850_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_9,
      Q => \mul_ln17_6_reg_850_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_6_reg_850_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U7_n_8,
      Q => \mul_ln17_6_reg_850_reg[9]__0_n_0\,
      R => '0'
    );
mul_ln17_7_reg_855_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_7_reg_855_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q0(31),
      B(16) => filter_q0(31),
      B(15) => filter_q0(31),
      B(14 downto 0) => filter_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_7_reg_855_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_7_reg_855_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_7_reg_855_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(4),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => add_ln18_1_reg_8650,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_7_reg_855_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_7_reg_855_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_7_reg_855_reg_n_58,
      P(46) => mul_ln17_7_reg_855_reg_n_59,
      P(45) => mul_ln17_7_reg_855_reg_n_60,
      P(44) => mul_ln17_7_reg_855_reg_n_61,
      P(43) => mul_ln17_7_reg_855_reg_n_62,
      P(42) => mul_ln17_7_reg_855_reg_n_63,
      P(41) => mul_ln17_7_reg_855_reg_n_64,
      P(40) => mul_ln17_7_reg_855_reg_n_65,
      P(39) => mul_ln17_7_reg_855_reg_n_66,
      P(38) => mul_ln17_7_reg_855_reg_n_67,
      P(37) => mul_ln17_7_reg_855_reg_n_68,
      P(36) => mul_ln17_7_reg_855_reg_n_69,
      P(35) => mul_ln17_7_reg_855_reg_n_70,
      P(34) => mul_ln17_7_reg_855_reg_n_71,
      P(33) => mul_ln17_7_reg_855_reg_n_72,
      P(32) => mul_ln17_7_reg_855_reg_n_73,
      P(31) => mul_ln17_7_reg_855_reg_n_74,
      P(30) => mul_ln17_7_reg_855_reg_n_75,
      P(29) => mul_ln17_7_reg_855_reg_n_76,
      P(28) => mul_ln17_7_reg_855_reg_n_77,
      P(27) => mul_ln17_7_reg_855_reg_n_78,
      P(26) => mul_ln17_7_reg_855_reg_n_79,
      P(25) => mul_ln17_7_reg_855_reg_n_80,
      P(24) => mul_ln17_7_reg_855_reg_n_81,
      P(23) => mul_ln17_7_reg_855_reg_n_82,
      P(22) => mul_ln17_7_reg_855_reg_n_83,
      P(21) => mul_ln17_7_reg_855_reg_n_84,
      P(20) => mul_ln17_7_reg_855_reg_n_85,
      P(19) => mul_ln17_7_reg_855_reg_n_86,
      P(18) => mul_ln17_7_reg_855_reg_n_87,
      P(17) => mul_ln17_7_reg_855_reg_n_88,
      P(16) => mul_ln17_7_reg_855_reg_n_89,
      P(15) => mul_ln17_7_reg_855_reg_n_90,
      P(14) => mul_ln17_7_reg_855_reg_n_91,
      P(13) => mul_ln17_7_reg_855_reg_n_92,
      P(12) => mul_ln17_7_reg_855_reg_n_93,
      P(11) => mul_ln17_7_reg_855_reg_n_94,
      P(10) => mul_ln17_7_reg_855_reg_n_95,
      P(9) => mul_ln17_7_reg_855_reg_n_96,
      P(8) => mul_ln17_7_reg_855_reg_n_97,
      P(7) => mul_ln17_7_reg_855_reg_n_98,
      P(6) => mul_ln17_7_reg_855_reg_n_99,
      P(5) => mul_ln17_7_reg_855_reg_n_100,
      P(4) => mul_ln17_7_reg_855_reg_n_101,
      P(3) => mul_ln17_7_reg_855_reg_n_102,
      P(2) => mul_ln17_7_reg_855_reg_n_103,
      P(1) => mul_ln17_7_reg_855_reg_n_104,
      P(0) => mul_ln17_7_reg_855_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_7_reg_855_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_7_reg_855_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U8_n_17,
      PCIN(46) => mul_32s_32s_32_1_1_U8_n_18,
      PCIN(45) => mul_32s_32s_32_1_1_U8_n_19,
      PCIN(44) => mul_32s_32s_32_1_1_U8_n_20,
      PCIN(43) => mul_32s_32s_32_1_1_U8_n_21,
      PCIN(42) => mul_32s_32s_32_1_1_U8_n_22,
      PCIN(41) => mul_32s_32s_32_1_1_U8_n_23,
      PCIN(40) => mul_32s_32s_32_1_1_U8_n_24,
      PCIN(39) => mul_32s_32s_32_1_1_U8_n_25,
      PCIN(38) => mul_32s_32s_32_1_1_U8_n_26,
      PCIN(37) => mul_32s_32s_32_1_1_U8_n_27,
      PCIN(36) => mul_32s_32s_32_1_1_U8_n_28,
      PCIN(35) => mul_32s_32s_32_1_1_U8_n_29,
      PCIN(34) => mul_32s_32s_32_1_1_U8_n_30,
      PCIN(33) => mul_32s_32s_32_1_1_U8_n_31,
      PCIN(32) => mul_32s_32s_32_1_1_U8_n_32,
      PCIN(31) => mul_32s_32s_32_1_1_U8_n_33,
      PCIN(30) => mul_32s_32s_32_1_1_U8_n_34,
      PCIN(29) => mul_32s_32s_32_1_1_U8_n_35,
      PCIN(28) => mul_32s_32s_32_1_1_U8_n_36,
      PCIN(27) => mul_32s_32s_32_1_1_U8_n_37,
      PCIN(26) => mul_32s_32s_32_1_1_U8_n_38,
      PCIN(25) => mul_32s_32s_32_1_1_U8_n_39,
      PCIN(24) => mul_32s_32s_32_1_1_U8_n_40,
      PCIN(23) => mul_32s_32s_32_1_1_U8_n_41,
      PCIN(22) => mul_32s_32s_32_1_1_U8_n_42,
      PCIN(21) => mul_32s_32s_32_1_1_U8_n_43,
      PCIN(20) => mul_32s_32s_32_1_1_U8_n_44,
      PCIN(19) => mul_32s_32s_32_1_1_U8_n_45,
      PCIN(18) => mul_32s_32s_32_1_1_U8_n_46,
      PCIN(17) => mul_32s_32s_32_1_1_U8_n_47,
      PCIN(16) => mul_32s_32s_32_1_1_U8_n_48,
      PCIN(15) => mul_32s_32s_32_1_1_U8_n_49,
      PCIN(14) => mul_32s_32s_32_1_1_U8_n_50,
      PCIN(13) => mul_32s_32s_32_1_1_U8_n_51,
      PCIN(12) => mul_32s_32s_32_1_1_U8_n_52,
      PCIN(11) => mul_32s_32s_32_1_1_U8_n_53,
      PCIN(10) => mul_32s_32s_32_1_1_U8_n_54,
      PCIN(9) => mul_32s_32s_32_1_1_U8_n_55,
      PCIN(8) => mul_32s_32s_32_1_1_U8_n_56,
      PCIN(7) => mul_32s_32s_32_1_1_U8_n_57,
      PCIN(6) => mul_32s_32s_32_1_1_U8_n_58,
      PCIN(5) => mul_32s_32s_32_1_1_U8_n_59,
      PCIN(4) => mul_32s_32s_32_1_1_U8_n_60,
      PCIN(3) => mul_32s_32s_32_1_1_U8_n_61,
      PCIN(2) => mul_32s_32s_32_1_1_U8_n_62,
      PCIN(1) => mul_32s_32s_32_1_1_U8_n_63,
      PCIN(0) => mul_32s_32s_32_1_1_U8_n_64,
      PCOUT(47 downto 0) => NLW_mul_ln17_7_reg_855_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_7_reg_855_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_7_reg_855_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_7_reg_855_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_16,
      Q => \mul_ln17_7_reg_855_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_6,
      Q => \mul_ln17_7_reg_855_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_5,
      Q => \mul_ln17_7_reg_855_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_4,
      Q => \mul_ln17_7_reg_855_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_3,
      Q => \mul_ln17_7_reg_855_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_2,
      Q => \mul_ln17_7_reg_855_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_1,
      Q => \mul_ln17_7_reg_855_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_0,
      Q => \mul_ln17_7_reg_855_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_15,
      Q => \mul_ln17_7_reg_855_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_14,
      Q => \mul_ln17_7_reg_855_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_13,
      Q => \mul_ln17_7_reg_855_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_12,
      Q => \mul_ln17_7_reg_855_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_11,
      Q => \mul_ln17_7_reg_855_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_10,
      Q => \mul_ln17_7_reg_855_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_9,
      Q => \mul_ln17_7_reg_855_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_8,
      Q => \mul_ln17_7_reg_855_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_7_reg_855_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln18_1_reg_8650,
      D => mul_32s_32s_32_1_1_U8_n_7,
      Q => \mul_ln17_7_reg_855_reg[9]__0_n_0\,
      R => '0'
    );
\mul_ln17_8_reg_870_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_31,
      Q => mul_ln17_8_reg_870(0),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_21,
      Q => mul_ln17_8_reg_870(10),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_20,
      Q => mul_ln17_8_reg_870(11),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_19,
      Q => mul_ln17_8_reg_870(12),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_18,
      Q => mul_ln17_8_reg_870(13),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_17,
      Q => mul_ln17_8_reg_870(14),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_16,
      Q => mul_ln17_8_reg_870(15),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(16),
      Q => mul_ln17_8_reg_870(16),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(17),
      Q => mul_ln17_8_reg_870(17),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(18),
      Q => mul_ln17_8_reg_870(18),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(19),
      Q => mul_ln17_8_reg_870(19),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_30,
      Q => mul_ln17_8_reg_870(1),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(20),
      Q => mul_ln17_8_reg_870(20),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(21),
      Q => mul_ln17_8_reg_870(21),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(22),
      Q => mul_ln17_8_reg_870(22),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(23),
      Q => mul_ln17_8_reg_870(23),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(24),
      Q => mul_ln17_8_reg_870(24),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(25),
      Q => mul_ln17_8_reg_870(25),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(26),
      Q => mul_ln17_8_reg_870(26),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(27),
      Q => mul_ln17_8_reg_870(27),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(28),
      Q => mul_ln17_8_reg_870(28),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(29),
      Q => mul_ln17_8_reg_870(29),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_29,
      Q => mul_ln17_8_reg_870(2),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(30),
      Q => mul_ln17_8_reg_870(30),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => \dout__3\(31),
      Q => mul_ln17_8_reg_870(31),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_28,
      Q => mul_ln17_8_reg_870(3),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_27,
      Q => mul_ln17_8_reg_870(4),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_26,
      Q => mul_ln17_8_reg_870(5),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_25,
      Q => mul_ln17_8_reg_870(6),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_24,
      Q => mul_ln17_8_reg_870(7),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_23,
      Q => mul_ln17_8_reg_870(8),
      R => '0'
    );
\mul_ln17_8_reg_870_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => mul_32s_32s_32_1_1_U9_n_22,
      Q => mul_ln17_8_reg_870(9),
      R => '0'
    );
mul_ln17_reg_790_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => orig_q1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln17_reg_790_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => filter_q0(31),
      B(16) => filter_q0(31),
      B(15) => filter_q0(31),
      B(14 downto 0) => filter_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln17_reg_790_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln17_reg_790_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln17_reg_790_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln17_1_reg_7950,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln17_reg_790_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln17_reg_790_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln17_reg_790_reg_n_58,
      P(46) => mul_ln17_reg_790_reg_n_59,
      P(45) => mul_ln17_reg_790_reg_n_60,
      P(44) => mul_ln17_reg_790_reg_n_61,
      P(43) => mul_ln17_reg_790_reg_n_62,
      P(42) => mul_ln17_reg_790_reg_n_63,
      P(41) => mul_ln17_reg_790_reg_n_64,
      P(40) => mul_ln17_reg_790_reg_n_65,
      P(39) => mul_ln17_reg_790_reg_n_66,
      P(38) => mul_ln17_reg_790_reg_n_67,
      P(37) => mul_ln17_reg_790_reg_n_68,
      P(36) => mul_ln17_reg_790_reg_n_69,
      P(35) => mul_ln17_reg_790_reg_n_70,
      P(34) => mul_ln17_reg_790_reg_n_71,
      P(33) => mul_ln17_reg_790_reg_n_72,
      P(32) => mul_ln17_reg_790_reg_n_73,
      P(31) => mul_ln17_reg_790_reg_n_74,
      P(30) => mul_ln17_reg_790_reg_n_75,
      P(29) => mul_ln17_reg_790_reg_n_76,
      P(28) => mul_ln17_reg_790_reg_n_77,
      P(27) => mul_ln17_reg_790_reg_n_78,
      P(26) => mul_ln17_reg_790_reg_n_79,
      P(25) => mul_ln17_reg_790_reg_n_80,
      P(24) => mul_ln17_reg_790_reg_n_81,
      P(23) => mul_ln17_reg_790_reg_n_82,
      P(22) => mul_ln17_reg_790_reg_n_83,
      P(21) => mul_ln17_reg_790_reg_n_84,
      P(20) => mul_ln17_reg_790_reg_n_85,
      P(19) => mul_ln17_reg_790_reg_n_86,
      P(18) => mul_ln17_reg_790_reg_n_87,
      P(17) => mul_ln17_reg_790_reg_n_88,
      P(16) => mul_ln17_reg_790_reg_n_89,
      P(15) => mul_ln17_reg_790_reg_n_90,
      P(14) => mul_ln17_reg_790_reg_n_91,
      P(13) => mul_ln17_reg_790_reg_n_92,
      P(12) => mul_ln17_reg_790_reg_n_93,
      P(11) => mul_ln17_reg_790_reg_n_94,
      P(10) => mul_ln17_reg_790_reg_n_95,
      P(9) => mul_ln17_reg_790_reg_n_96,
      P(8) => mul_ln17_reg_790_reg_n_97,
      P(7) => mul_ln17_reg_790_reg_n_98,
      P(6) => mul_ln17_reg_790_reg_n_99,
      P(5) => mul_ln17_reg_790_reg_n_100,
      P(4) => mul_ln17_reg_790_reg_n_101,
      P(3) => mul_ln17_reg_790_reg_n_102,
      P(2) => mul_ln17_reg_790_reg_n_103,
      P(1) => mul_ln17_reg_790_reg_n_104,
      P(0) => mul_ln17_reg_790_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln17_reg_790_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln17_reg_790_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U1_n_18,
      PCIN(46) => mul_32s_32s_32_1_1_U1_n_19,
      PCIN(45) => mul_32s_32s_32_1_1_U1_n_20,
      PCIN(44) => mul_32s_32s_32_1_1_U1_n_21,
      PCIN(43) => mul_32s_32s_32_1_1_U1_n_22,
      PCIN(42) => mul_32s_32s_32_1_1_U1_n_23,
      PCIN(41) => mul_32s_32s_32_1_1_U1_n_24,
      PCIN(40) => mul_32s_32s_32_1_1_U1_n_25,
      PCIN(39) => mul_32s_32s_32_1_1_U1_n_26,
      PCIN(38) => mul_32s_32s_32_1_1_U1_n_27,
      PCIN(37) => mul_32s_32s_32_1_1_U1_n_28,
      PCIN(36) => mul_32s_32s_32_1_1_U1_n_29,
      PCIN(35) => mul_32s_32s_32_1_1_U1_n_30,
      PCIN(34) => mul_32s_32s_32_1_1_U1_n_31,
      PCIN(33) => mul_32s_32s_32_1_1_U1_n_32,
      PCIN(32) => mul_32s_32s_32_1_1_U1_n_33,
      PCIN(31) => mul_32s_32s_32_1_1_U1_n_34,
      PCIN(30) => mul_32s_32s_32_1_1_U1_n_35,
      PCIN(29) => mul_32s_32s_32_1_1_U1_n_36,
      PCIN(28) => mul_32s_32s_32_1_1_U1_n_37,
      PCIN(27) => mul_32s_32s_32_1_1_U1_n_38,
      PCIN(26) => mul_32s_32s_32_1_1_U1_n_39,
      PCIN(25) => mul_32s_32s_32_1_1_U1_n_40,
      PCIN(24) => mul_32s_32s_32_1_1_U1_n_41,
      PCIN(23) => mul_32s_32s_32_1_1_U1_n_42,
      PCIN(22) => mul_32s_32s_32_1_1_U1_n_43,
      PCIN(21) => mul_32s_32s_32_1_1_U1_n_44,
      PCIN(20) => mul_32s_32s_32_1_1_U1_n_45,
      PCIN(19) => mul_32s_32s_32_1_1_U1_n_46,
      PCIN(18) => mul_32s_32s_32_1_1_U1_n_47,
      PCIN(17) => mul_32s_32s_32_1_1_U1_n_48,
      PCIN(16) => mul_32s_32s_32_1_1_U1_n_49,
      PCIN(15) => mul_32s_32s_32_1_1_U1_n_50,
      PCIN(14) => mul_32s_32s_32_1_1_U1_n_51,
      PCIN(13) => mul_32s_32s_32_1_1_U1_n_52,
      PCIN(12) => mul_32s_32s_32_1_1_U1_n_53,
      PCIN(11) => mul_32s_32s_32_1_1_U1_n_54,
      PCIN(10) => mul_32s_32s_32_1_1_U1_n_55,
      PCIN(9) => mul_32s_32s_32_1_1_U1_n_56,
      PCIN(8) => mul_32s_32s_32_1_1_U1_n_57,
      PCIN(7) => mul_32s_32s_32_1_1_U1_n_58,
      PCIN(6) => mul_32s_32s_32_1_1_U1_n_59,
      PCIN(5) => mul_32s_32s_32_1_1_U1_n_60,
      PCIN(4) => mul_32s_32s_32_1_1_U1_n_61,
      PCIN(3) => mul_32s_32s_32_1_1_U1_n_62,
      PCIN(2) => mul_32s_32s_32_1_1_U1_n_63,
      PCIN(1) => mul_32s_32s_32_1_1_U1_n_64,
      PCIN(0) => mul_32s_32s_32_1_1_U1_n_65,
      PCOUT(47 downto 0) => NLW_mul_ln17_reg_790_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln17_reg_790_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln17_reg_790_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln17_reg_790_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_17,
      Q => \mul_ln17_reg_790_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_7,
      Q => \mul_ln17_reg_790_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_6,
      Q => \mul_ln17_reg_790_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_5,
      Q => \mul_ln17_reg_790_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_4,
      Q => \mul_ln17_reg_790_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_3,
      Q => \mul_ln17_reg_790_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_2,
      Q => \mul_ln17_reg_790_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_1,
      Q => \mul_ln17_reg_790_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_16,
      Q => \mul_ln17_reg_790_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_15,
      Q => \mul_ln17_reg_790_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_14,
      Q => \mul_ln17_reg_790_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_13,
      Q => \mul_ln17_reg_790_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_12,
      Q => \mul_ln17_reg_790_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_11,
      Q => \mul_ln17_reg_790_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_10,
      Q => \mul_ln17_reg_790_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_9,
      Q => \mul_ln17_reg_790_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln17_reg_790_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln17_1_reg_7950,
      D => mul_32s_32s_32_1_1_U1_n_8,
      Q => \mul_ln17_reg_790_reg[9]__0_n_0\,
      R => '0'
    );
\orig_address0[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF04C80"
    )
        port map (
      I0 => add_ln17_6_reg_783(0),
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => add_ln17_6_reg_783(1),
      I3 => add_ln17_6_reg_783(2),
      I4 => ap_CS_fsm_pp0_stage4,
      O => \orig_address0[2]_INST_0_i_2_n_0\
    );
\orig_address0[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_ln17_3_reg_776(1),
      I1 => add_ln17_3_reg_776(2),
      O => \orig_address0[3]_INST_0_i_1_n_0\
    );
\orig_address0[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage4,
      I1 => ap_CS_fsm_pp0_stage3,
      O => \orig_address0[3]_INST_0_i_2_n_0\
    );
\orig_address0[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE04AE0E0E0E0E0"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage4,
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => add_ln17_6_reg_783(3),
      I3 => add_ln17_6_reg_783(2),
      I4 => add_ln17_6_reg_783(0),
      I5 => add_ln17_6_reg_783(1),
      O => \orig_address0[3]_INST_0_i_4_n_0\
    );
\orig_address0[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => add_ln17_6_reg_783(2),
      I1 => add_ln17_6_reg_783(1),
      I2 => add_ln17_6_reg_783(3),
      O => \orig_address0[4]_INST_0_i_2_n_0\
    );
\orig_address0[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => add_ln17_6_reg_783(1),
      I1 => add_ln17_6_reg_783(0),
      I2 => add_ln17_6_reg_783(2),
      I3 => add_ln17_6_reg_783(3),
      O => \orig_address0[4]_INST_0_i_3_n_0\
    );
\orig_address0[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95550000FFFFFFFF"
    )
        port map (
      I0 => add_ln17_3_reg_776(4),
      I1 => add_ln17_3_reg_776(1),
      I2 => add_ln17_3_reg_776(2),
      I3 => add_ln17_3_reg_776(3),
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => \orig_address0[3]_INST_0_i_2_n_0\,
      O => \orig_address0[4]_INST_0_i_5_n_0\
    );
\orig_address0[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95550000FFFFFFFF"
    )
        port map (
      I0 => add_ln17_3_reg_776(5),
      I1 => add_ln17_3_reg_776(4),
      I2 => add_ln17_3_reg_776(3),
      I3 => \orig_address0[3]_INST_0_i_1_n_0\,
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => \orig_address0[3]_INST_0_i_2_n_0\,
      O => \orig_address0[5]_INST_0_i_1_n_0\
    );
\orig_address0[5]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => add_ln17_3_reg_776(5),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_CS_fsm_pp0_stage1,
      O => \orig_address0[5]_INST_0_i_4_n_0\
    );
\orig_address0[5]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"663C6600"
    )
        port map (
      I0 => \orig_address0[5]_INST_0_i_7_n_0\,
      I1 => add_ln17_6_reg_783(5),
      I2 => \orig_address0[5]_INST_0_i_8_n_0\,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => ap_CS_fsm_pp0_stage3,
      O => \orig_address0[5]_INST_0_i_5_n_0\
    );
\orig_address0[5]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => add_ln17_6_reg_783(3),
      I1 => add_ln17_6_reg_783(1),
      I2 => add_ln17_6_reg_783(2),
      I3 => add_ln17_6_reg_783(4),
      O => \orig_address0[5]_INST_0_i_7_n_0\
    );
\orig_address0[5]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => add_ln17_6_reg_783(3),
      I1 => add_ln17_6_reg_783(2),
      I2 => add_ln17_6_reg_783(0),
      I3 => add_ln17_6_reg_783(1),
      I4 => add_ln17_6_reg_783(4),
      O => \orig_address0[5]_INST_0_i_8_n_0\
    );
\orig_address0[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF90"
    )
        port map (
      I0 => add_ln17_3_reg_776(6),
      I1 => \orig_address0[6]_INST_0_i_6_n_0\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_CS_fsm_pp0_stage3,
      I4 => ap_CS_fsm_pp0_stage4,
      O => \orig_address0[6]_INST_0_i_1_n_0\
    );
\orig_address0[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => add_ln17_6_reg_783(4),
      I1 => add_ln17_6_reg_783(1),
      I2 => add_ln17_6_reg_783(0),
      I3 => add_ln17_6_reg_783(2),
      I4 => add_ln17_6_reg_783(3),
      I5 => add_ln17_6_reg_783(5),
      O => \orig_address0[6]_INST_0_i_10_n_0\
    );
\orig_address0[6]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => add_ln17_3_reg_776(6),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_CS_fsm_pp0_stage1,
      O => \orig_address0[6]_INST_0_i_4_n_0\
    );
\orig_address0[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D87288"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage4,
      I1 => \orig_address0[6]_INST_0_i_9_n_0\,
      I2 => ap_CS_fsm_pp0_stage3,
      I3 => add_ln17_6_reg_783(6),
      I4 => \orig_address0[6]_INST_0_i_10_n_0\,
      O => \orig_address0[6]_INST_0_i_5_n_0\
    );
\orig_address0[6]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => add_ln17_3_reg_776(5),
      I1 => add_ln17_3_reg_776(4),
      I2 => add_ln17_3_reg_776(3),
      I3 => add_ln17_3_reg_776(2),
      I4 => add_ln17_3_reg_776(1),
      O => \orig_address0[6]_INST_0_i_6_n_0\
    );
\orig_address0[6]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => add_ln17_6_reg_783(4),
      I1 => add_ln17_6_reg_783(2),
      I2 => add_ln17_6_reg_783(1),
      I3 => add_ln17_6_reg_783(3),
      I4 => add_ln17_6_reg_783(5),
      O => \orig_address0[6]_INST_0_i_9_n_0\
    );
\orig_address0[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEFEEE"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage4,
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => \orig_address0[8]_INST_0_i_4_n_0\,
      I3 => ap_CS_fsm_pp0_stage2,
      I4 => add_ln17_3_reg_776(7),
      O => \orig_address0[7]_INST_0_i_1_n_0\
    );
\orig_address0[7]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => add_ln17_3_reg_776(7),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_CS_fsm_pp0_stage1,
      O => \orig_address0[7]_INST_0_i_4_n_0\
    );
\orig_address0[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C7F3C003C703C00"
    )
        port map (
      I0 => add_ln17_6_reg_783(0),
      I1 => \orig_address0[8]_INST_0_i_5_n_0\,
      I2 => add_ln17_6_reg_783(7),
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => ap_CS_fsm_pp0_stage3,
      I5 => \orig_address0[7]_INST_0_i_8_n_0\,
      O => \orig_address0[7]_INST_0_i_5_n_0\
    );
\orig_address0[7]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \orig_address0[6]_INST_0_i_10_n_0\,
      I1 => add_ln17_6_reg_783(6),
      O => \orig_address0[7]_INST_0_i_8_n_0\
    );
\orig_address0[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6500"
    )
        port map (
      I0 => add_ln17_3_reg_776(8),
      I1 => \orig_address0[8]_INST_0_i_4_n_0\,
      I2 => add_ln17_3_reg_776(7),
      I3 => ap_CS_fsm_pp0_stage2,
      I4 => ap_CS_fsm_pp0_stage3,
      I5 => ap_CS_fsm_pp0_stage4,
      O => \orig_address0[8]_INST_0_i_1_n_0\
    );
\orig_address0[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => add_ln17_3_reg_776(8),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_CS_fsm_pp0_stage1,
      O => \orig_address0[8]_INST_0_i_2_n_0\
    );
\orig_address0[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA6AAA5AAA0000"
    )
        port map (
      I0 => add_ln17_6_reg_783(8),
      I1 => add_ln17_6_reg_783(0),
      I2 => \orig_address0[8]_INST_0_i_5_n_0\,
      I3 => add_ln17_6_reg_783(7),
      I4 => ap_CS_fsm_pp0_stage4,
      I5 => ap_CS_fsm_pp0_stage3,
      O => \orig_address0[8]_INST_0_i_3_n_0\
    );
\orig_address0[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => add_ln17_3_reg_776(6),
      I1 => add_ln17_3_reg_776(1),
      I2 => add_ln17_3_reg_776(2),
      I3 => add_ln17_3_reg_776(3),
      I4 => add_ln17_3_reg_776(4),
      I5 => add_ln17_3_reg_776(5),
      O => \orig_address0[8]_INST_0_i_4_n_0\
    );
\orig_address0[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => add_ln17_6_reg_783(5),
      I1 => add_ln17_6_reg_783(3),
      I2 => add_ln17_6_reg_783(1),
      I3 => add_ln17_6_reg_783(2),
      I4 => add_ln17_6_reg_783(4),
      I5 => add_ln17_6_reg_783(6),
      O => \orig_address0[8]_INST_0_i_5_n_0\
    );
\orig_address0[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3332222FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => add_ln17_3_reg_776(9),
      I2 => add_ln17_3_reg_776(8),
      I3 => \orig_address0[9]_INST_0_i_7_n_0\,
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => \orig_address0[3]_INST_0_i_2_n_0\,
      O => \orig_address0[9]_INST_0_i_1_n_0\
    );
\orig_address0[9]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => c_fu_84(0),
      I1 => c_fu_84(1),
      I2 => c_fu_84(4),
      I3 => c_fu_84(3),
      I4 => c_fu_84(2),
      O => \orig_address0[9]_INST_0_i_10_n_0\
    );
\orig_address0[9]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \orig_address0[8]_INST_0_i_5_n_0\,
      I1 => add_ln17_6_reg_783(7),
      O => \orig_address0[9]_INST_0_i_14_n_0\
    );
\orig_address0[9]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => ap_CS_fsm_pp0_stage2,
      O => \orig_address0[9]_INST_0_i_5_n_0\
    );
\orig_address0[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777770F088888000"
    )
        port map (
      I0 => add_ln17_6_reg_783(8),
      I1 => \orig_address0[9]_INST_0_i_14_n_0\,
      I2 => ap_CS_fsm_pp0_stage3,
      I3 => add_ln17_6_reg_783(0),
      I4 => ap_CS_fsm_pp0_stage4,
      I5 => add_ln17_6_reg_783(9),
      O => \orig_address0[9]_INST_0_i_6_n_0\
    );
\orig_address0[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => add_ln17_3_reg_776(7),
      I1 => add_ln17_3_reg_776(5),
      I2 => add_ln17_3_reg_776(4),
      I3 => add_ln17_3_reg_776(3),
      I4 => \orig_address0[3]_INST_0_i_1_n_0\,
      I5 => add_ln17_3_reg_776(6),
      O => \orig_address0[9]_INST_0_i_7_n_0\
    );
\orig_address1[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_ln17_3_reg_776(0),
      I1 => add_ln17_3_reg_776(1),
      O => \orig_address1[2]_INST_0_i_2_n_0\
    );
\orig_address1[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => add_ln17_3_reg_776(0),
      I1 => add_ln17_3_reg_776(2),
      I2 => add_ln17_3_reg_776(1),
      O => \orig_address1[3]_INST_0_i_1_n_0\
    );
\orig_address1[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage2,
      I1 => add_ln17_3_reg_776(4),
      I2 => add_ln17_3_reg_776(3),
      I3 => add_ln17_3_reg_776(1),
      I4 => add_ln17_3_reg_776(2),
      I5 => add_ln17_3_reg_776(0),
      O => \orig_address1[4]_INST_0_i_1_n_0\
    );
\orig_address1[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => add_ln17_reg_756(2),
      I3 => add_ln17_reg_756(1),
      I4 => add_ln17_reg_756(3),
      I5 => add_ln17_reg_756(4),
      O => \orig_address1[4]_INST_0_i_2_n_0\
    );
\orig_address1[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF60"
    )
        port map (
      I0 => \orig_address1[5]_INST_0_i_3_n_0\,
      I1 => add_ln17_3_reg_776(5),
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => \orig_address1[5]_INST_0_i_4_n_0\,
      I4 => ap_CS_fsm_pp0_stage3,
      O => \orig_address1[5]_INST_0_i_1_n_0\
    );
\orig_address1[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => add_ln17_3_reg_776(0),
      I1 => add_ln17_3_reg_776(2),
      I2 => add_ln17_3_reg_776(1),
      I3 => add_ln17_3_reg_776(3),
      I4 => add_ln17_3_reg_776(4),
      O => \orig_address1[5]_INST_0_i_3_n_0\
    );
\orig_address1[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \orig_address1[5]_INST_0_i_6_n_0\,
      I1 => add_ln17_reg_756(4),
      I2 => add_ln17_reg_756(3),
      I3 => add_ln17_reg_756(1),
      I4 => add_ln17_reg_756(2),
      I5 => add_ln17_reg_756(5),
      O => \orig_address1[5]_INST_0_i_4_n_0\
    );
\orig_address1[5]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => ap_CS_fsm_pp0_stage2,
      O => \orig_address1[5]_INST_0_i_6_n_0\
    );
\orig_address1[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF60"
    )
        port map (
      I0 => \orig_address1[9]_INST_0_i_4_n_0\,
      I1 => add_ln17_3_reg_776(6),
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => \orig_address1[6]_INST_0_i_3_n_0\,
      O => \orig_address1[6]_INST_0_i_1_n_0\
    );
\orig_address1[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABEAAAA"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => add_ln17_reg_756(6),
      I2 => \orig_address1[6]_INST_0_i_4_n_0\,
      I3 => ap_CS_fsm_pp0_stage2,
      I4 => ap_CS_fsm_pp0_stage1,
      O => \orig_address1[6]_INST_0_i_3_n_0\
    );
\orig_address1[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => add_ln17_reg_756(5),
      I1 => add_ln17_reg_756(2),
      I2 => add_ln17_reg_756(1),
      I3 => add_ln17_reg_756(3),
      I4 => add_ln17_reg_756(4),
      O => \orig_address1[6]_INST_0_i_4_n_0\
    );
\orig_address1[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7800"
    )
        port map (
      I0 => add_ln17_3_reg_776(6),
      I1 => \orig_address1[9]_INST_0_i_4_n_0\,
      I2 => add_ln17_3_reg_776(7),
      I3 => ap_CS_fsm_pp0_stage2,
      I4 => \orig_address1[7]_INST_0_i_3_n_0\,
      O => \orig_address1[7]_INST_0_i_1_n_0\
    );
\orig_address1[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABEAAAA"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => add_ln17_reg_756(7),
      I2 => \orig_address1[9]_INST_0_i_5_n_0\,
      I3 => ap_CS_fsm_pp0_stage2,
      I4 => ap_CS_fsm_pp0_stage1,
      O => \orig_address1[7]_INST_0_i_3_n_0\
    );
\orig_address1[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAA0000"
    )
        port map (
      I0 => add_ln17_3_reg_776(8),
      I1 => add_ln17_3_reg_776(7),
      I2 => \orig_address1[9]_INST_0_i_4_n_0\,
      I3 => add_ln17_3_reg_776(6),
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => \orig_address1[8]_INST_0_i_3_n_0\,
      O => \orig_address1[8]_INST_0_i_1_n_0\
    );
\orig_address1[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABEEEAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => add_ln17_reg_756(8),
      I2 => \orig_address1[9]_INST_0_i_5_n_0\,
      I3 => add_ln17_reg_756(7),
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => ap_CS_fsm_pp0_stage1,
      O => \orig_address1[8]_INST_0_i_3_n_0\
    );
\orig_address1[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage2,
      I1 => add_ln17_3_reg_776(9),
      I2 => add_ln17_3_reg_776(8),
      I3 => add_ln17_3_reg_776(7),
      I4 => \orig_address1[9]_INST_0_i_4_n_0\,
      I5 => add_ln17_3_reg_776(6),
      O => \orig_address1[9]_INST_0_i_1_n_0\
    );
\orig_address1[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => add_ln17_reg_756(9),
      I1 => add_ln17_reg_756(7),
      I2 => \orig_address1[9]_INST_0_i_5_n_0\,
      I3 => add_ln17_reg_756(8),
      I4 => ap_CS_fsm_pp0_stage1,
      I5 => ap_CS_fsm_pp0_stage2,
      O => \orig_address1[9]_INST_0_i_2_n_0\
    );
\orig_address1[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => add_ln17_3_reg_776(5),
      I1 => add_ln17_3_reg_776(4),
      I2 => add_ln17_3_reg_776(3),
      I3 => add_ln17_3_reg_776(1),
      I4 => add_ln17_3_reg_776(2),
      I5 => add_ln17_3_reg_776(0),
      O => \orig_address1[9]_INST_0_i_4_n_0\
    );
\orig_address1[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => add_ln17_reg_756(6),
      I1 => add_ln17_reg_756(4),
      I2 => add_ln17_reg_756(3),
      I3 => add_ln17_reg_756(1),
      I4 => add_ln17_reg_756(2),
      I5 => add_ln17_reg_756(5),
      O => \orig_address1[9]_INST_0_i_5_n_0\
    );
orig_ce0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCECFC30302030"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage4,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => \orig_address0[9]_INST_0_i_5_n_0\,
      I4 => ap_CS_fsm_pp0_stage3,
      I5 => \empty_6_reg_737_reg[1]_0\,
      O => orig_ce0
    );
orig_ce1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFC0000"
    )
        port map (
      I0 => \empty_6_reg_737_reg[1]_0\,
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_CS_fsm_pp0_stage1,
      I4 => ap_enable_reg_pp0_iter0_reg,
      I5 => ap_CS_fsm_pp0_stage0,
      O => orig_ce1
    );
\r_1_reg_732_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => ap_sig_allocacmp_r_1(0),
      Q => r_1_reg_732(0),
      R => '0'
    );
\r_1_reg_732_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => ap_sig_allocacmp_r_1(1),
      Q => r_1_reg_732(1),
      R => '0'
    );
\r_1_reg_732_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => ap_sig_allocacmp_r_1(2),
      Q => r_1_reg_732(2),
      R => '0'
    );
\r_1_reg_732_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => ap_sig_allocacmp_r_1(3),
      Q => r_1_reg_732(3),
      R => '0'
    );
\r_1_reg_732_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => ap_sig_allocacmp_r_1(4),
      Q => r_1_reg_732(4),
      R => '0'
    );
\r_fu_88[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => empty_6_reg_737(0),
      I1 => icmp_ln10_reg_746,
      I2 => r_1_reg_732(0),
      O => select_ln8_4_fu_568_p3(0)
    );
\r_fu_88[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => empty_6_reg_737(1),
      I1 => icmp_ln10_reg_746,
      I2 => r_1_reg_732(1),
      O => select_ln8_4_fu_568_p3(1)
    );
\r_fu_88[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => empty_6_reg_737(2),
      I1 => icmp_ln10_reg_746,
      I2 => r_1_reg_732(2),
      O => select_ln8_4_fu_568_p3(2)
    );
\r_fu_88[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => empty_6_reg_737(3),
      I1 => icmp_ln10_reg_746,
      I2 => r_1_reg_732(3),
      O => select_ln8_4_fu_568_p3(3)
    );
\r_fu_88[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => empty_6_reg_737(4),
      I1 => icmp_ln10_reg_746,
      I2 => r_1_reg_732(4),
      O => select_ln8_4_fu_568_p3(4)
    );
\r_fu_88_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => select_ln8_4_fu_568_p3(0),
      Q => r_fu_88(0),
      R => c_fu_8401_out
    );
\r_fu_88_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => select_ln8_4_fu_568_p3(1),
      Q => r_fu_88(1),
      R => c_fu_8401_out
    );
\r_fu_88_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => select_ln8_4_fu_568_p3(2),
      Q => r_fu_88(2),
      R => c_fu_8401_out
    );
\r_fu_88_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => select_ln8_4_fu_568_p3(3),
      Q => r_fu_88(3),
      R => c_fu_8401_out
    );
\r_fu_88_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => c_fu_840,
      D => select_ln8_4_fu_568_p3(4),
      Q => r_fu_88(4),
      R => c_fu_8401_out
    );
\select_ln8_reg_751_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => select_ln8_fu_383_p3(1),
      Q => select_ln8_reg_751(1),
      R => '0'
    );
\select_ln8_reg_751_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => select_ln8_fu_383_p3(2),
      Q => select_ln8_reg_751(2),
      R => '0'
    );
\select_ln8_reg_751_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => select_ln8_fu_383_p3(3),
      Q => select_ln8_reg_751(3),
      R => '0'
    );
\select_ln8_reg_751_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln17_3_reg_7760,
      D => flow_control_loop_pipe_sequential_init_U_n_10,
      Q => select_ln8_reg_751(4),
      R => '0'
    );
sol_we0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => ap_enable_reg_pp0_iter1,
      O => \^e\(0)
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_3_reg_776(0),
      Q => sol_address0(0),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(1),
      Q => sol_address0(1),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(2),
      Q => sol_address0(2),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(3),
      Q => sol_address0(3),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(4),
      Q => sol_address0(4),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(5),
      Q => sol_address0(5),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(6),
      Q => sol_address0(6),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(7),
      Q => sol_address0(7),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(8),
      Q => sol_address0(8),
      R => '0'
    );
\zext_ln17_4_reg_761_pp0_iter1_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln17_reg_756(9),
      Q => sol_address0(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    orig_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_ce0 : out STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_ce1 : out STD_LOGIC;
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sol_ce0 : out STD_LOGIC;
    sol_we0 : out STD_LOGIC;
    sol_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_ce0 : out STD_LOGIC;
    filter_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_ce1 : out STD_LOGIC;
    filter_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ap_done\ : STD_LOGIC;
  signal \^filter_address0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^filter_address1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg_n_0 : STD_LOGIC;
  signal grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_n_25 : STD_LOGIC;
  signal \^sol_ce0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair32";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \filter_address0[0]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \filter_address0[1]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \filter_address0[2]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \filter_address1[0]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \filter_address1[1]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \filter_address1[2]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of filter_ce1_INST_0 : label is "soft_lutpair33";
begin
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
  filter_address0(3) <= \<const0>\;
  filter_address0(2 downto 0) <= \^filter_address0\(2 downto 0);
  filter_address1(3 downto 0) <= \^filter_address1\(3 downto 0);
  sol_ce0 <= \^sol_ce0\;
  sol_we0 <= \^sol_ce0\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^ap_done\,
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_2_n_0\,
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_CS_fsm_state7,
      I4 => \^ap_done\,
      I5 => ap_CS_fsm_state6,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state4,
      I2 => \^filter_address1\(3),
      I3 => ap_CS_fsm_state2,
      O => \ap_CS_fsm[1]_i_2_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state2,
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state3,
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state4,
      Q => \^filter_address1\(3),
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^filter_address1\(3),
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => \^ap_done\,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
\filter_address0[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \^filter_address1\(3),
      I2 => ap_CS_fsm_state3,
      O => \^filter_address0\(0)
    );
\filter_address0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0FE"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_CS_fsm_state3,
      I2 => \^filter_address1\(3),
      I3 => ap_CS_fsm_state4,
      O => \^filter_address0\(1)
    );
\filter_address0[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \^filter_address1\(3),
      O => \^filter_address0\(2)
    );
\filter_address1[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \^filter_address1\(3),
      I2 => ap_CS_fsm_state4,
      O => \^filter_address1\(0)
    );
\filter_address1[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \^filter_address1\(3),
      O => \^filter_address1\(1)
    );
\filter_address1[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^filter_address1\(3),
      I1 => ap_CS_fsm_state3,
      I2 => ap_CS_fsm_state4,
      O => \^filter_address1\(2)
    );
filter_ce0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => ap_CS_fsm_state2,
      I3 => \^filter_address1\(3),
      I4 => ap_CS_fsm_state4,
      I5 => ap_CS_fsm_state3,
      O => filter_ce0
    );
filter_ce1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \^filter_address1\(3),
      I2 => ap_CS_fsm_state4,
      I3 => ap_CS_fsm_state3,
      O => filter_ce1
    );
grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2
     port map (
      D(1 downto 0) => ap_NS_fsm(7 downto 6),
      E(0) => \^sol_ce0\,
      Q(5) => ap_CS_fsm_state7,
      Q(4) => ap_CS_fsm_state6,
      Q(3) => \^filter_address1\(3),
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => ap_CS_fsm_state2,
      \ap_CS_fsm_reg[5]\ => grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_n_25,
      ap_clk => ap_clk,
      ap_return(31 downto 0) => ap_return(31 downto 0),
      ap_rst => ap_rst,
      \empty_6_reg_737_reg[1]_0\ => grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg_n_0,
      filter_q0(31 downto 0) => filter_q0(31 downto 0),
      filter_q1(31 downto 0) => filter_q1(31 downto 0),
      orig_address0(9 downto 0) => orig_address0(9 downto 0),
      orig_address1(9 downto 0) => orig_address1(9 downto 0),
      orig_ce0 => orig_ce0,
      orig_ce1 => orig_ce1,
      orig_q0(31 downto 0) => orig_q0(31 downto 0),
      orig_q1(31 downto 0) => orig_q1(31 downto 0),
      sol_address0(9 downto 0) => sol_address0(9 downto 0),
      sol_d0(31 downto 0) => sol_d0(31 downto 0)
    );
grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_n_25,
      Q => grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg_n_0,
      R => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    orig_ce0 : out STD_LOGIC;
    orig_ce1 : out STD_LOGIC;
    sol_ce0 : out STD_LOGIC;
    sol_we0 : out STD_LOGIC;
    filter_ce0 : out STD_LOGIC;
    filter_ce1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sol_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,stencil_2d,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "stencil_2d,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^filter_address0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_filter_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute sdx_kernel : string;
  attribute sdx_kernel of U0 : label is "true";
  attribute sdx_kernel_synth_inst : string;
  attribute sdx_kernel_synth_inst of U0 : label is "U0";
  attribute sdx_kernel_type : string;
  attribute sdx_kernel_type of U0 : label is "hls";
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute x_interface_info of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute x_interface_info of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute x_interface_info of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute x_interface_info of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute x_interface_parameter of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute x_interface_info of ap_return : signal is "xilinx.com:signal:data:1.0 ap_return DATA";
  attribute x_interface_parameter of ap_return : signal is "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
  attribute x_interface_info of filter_address0 : signal is "xilinx.com:signal:data:1.0 filter_address0 DATA";
  attribute x_interface_parameter of filter_address0 : signal is "XIL_INTERFACENAME filter_address0, LAYERED_METADATA undef";
  attribute x_interface_info of filter_address1 : signal is "xilinx.com:signal:data:1.0 filter_address1 DATA";
  attribute x_interface_parameter of filter_address1 : signal is "XIL_INTERFACENAME filter_address1, LAYERED_METADATA undef";
  attribute x_interface_info of filter_q0 : signal is "xilinx.com:signal:data:1.0 filter_q0 DATA";
  attribute x_interface_parameter of filter_q0 : signal is "XIL_INTERFACENAME filter_q0, LAYERED_METADATA undef";
  attribute x_interface_info of filter_q1 : signal is "xilinx.com:signal:data:1.0 filter_q1 DATA";
  attribute x_interface_parameter of filter_q1 : signal is "XIL_INTERFACENAME filter_q1, LAYERED_METADATA undef";
  attribute x_interface_info of orig_address0 : signal is "xilinx.com:signal:data:1.0 orig_address0 DATA";
  attribute x_interface_parameter of orig_address0 : signal is "XIL_INTERFACENAME orig_address0, LAYERED_METADATA undef";
  attribute x_interface_info of orig_address1 : signal is "xilinx.com:signal:data:1.0 orig_address1 DATA";
  attribute x_interface_parameter of orig_address1 : signal is "XIL_INTERFACENAME orig_address1, LAYERED_METADATA undef";
  attribute x_interface_info of orig_q0 : signal is "xilinx.com:signal:data:1.0 orig_q0 DATA";
  attribute x_interface_parameter of orig_q0 : signal is "XIL_INTERFACENAME orig_q0, LAYERED_METADATA undef";
  attribute x_interface_info of orig_q1 : signal is "xilinx.com:signal:data:1.0 orig_q1 DATA";
  attribute x_interface_parameter of orig_q1 : signal is "XIL_INTERFACENAME orig_q1, LAYERED_METADATA undef";
  attribute x_interface_info of sol_address0 : signal is "xilinx.com:signal:data:1.0 sol_address0 DATA";
  attribute x_interface_parameter of sol_address0 : signal is "XIL_INTERFACENAME sol_address0, LAYERED_METADATA undef";
  attribute x_interface_info of sol_d0 : signal is "xilinx.com:signal:data:1.0 sol_d0 DATA";
  attribute x_interface_parameter of sol_d0 : signal is "XIL_INTERFACENAME sol_d0, LAYERED_METADATA undef";
begin
  filter_address0(3) <= \<const0>\;
  filter_address0(2 downto 0) <= \^filter_address0\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return(31 downto 0) => ap_return(31 downto 0),
      ap_rst => ap_rst,
      ap_start => ap_start,
      filter_address0(3) => NLW_U0_filter_address0_UNCONNECTED(3),
      filter_address0(2 downto 0) => \^filter_address0\(2 downto 0),
      filter_address1(3 downto 0) => filter_address1(3 downto 0),
      filter_ce0 => filter_ce0,
      filter_ce1 => filter_ce1,
      filter_q0(31 downto 0) => filter_q0(31 downto 0),
      filter_q1(31 downto 0) => filter_q1(31 downto 0),
      orig_address0(9 downto 0) => orig_address0(9 downto 0),
      orig_address1(9 downto 0) => orig_address1(9 downto 0),
      orig_ce0 => orig_ce0,
      orig_ce1 => orig_ce1,
      orig_q0(31 downto 0) => orig_q0(31 downto 0),
      orig_q1(31 downto 0) => orig_q1(31 downto 0),
      sol_address0(9 downto 0) => sol_address0(9 downto 0),
      sol_ce0 => sol_ce0,
      sol_d0(31 downto 0) => sol_d0(31 downto 0),
      sol_we0 => sol_we0
    );
end STRUCTURE;
