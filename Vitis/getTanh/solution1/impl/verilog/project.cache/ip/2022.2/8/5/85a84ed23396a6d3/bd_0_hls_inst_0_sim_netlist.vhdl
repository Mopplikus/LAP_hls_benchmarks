-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Apr  5 22:35:49 2023
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_flow_control_loop_pipe is
  port (
    ap_loop_init_reg_0 : out STD_LOGIC;
    reuse_addr_reg_fu_48 : out STD_LOGIC;
    ap_enable_reg_pp0_iter0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_sig_allocacmp_i_11 : out STD_LOGIC;
    addr_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC;
    ap_start_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reuse_addr_reg_fu_48_reg[32]\ : in STD_LOGIC;
    ap_loop_init_reg_1 : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \i_fu_60_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \i_fu_60_reg[0]\ : in STD_LOGIC;
    \i_fu_60_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_flow_control_loop_pipe;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_flow_control_loop_pipe is
  signal \^ap_enable_reg_pp0_iter0\ : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal \^ap_sig_allocacmp_i_11\ : STD_LOGIC;
  signal \i_fu_60[7]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_60[9]_i_4_n_0\ : STD_LOGIC;
  signal \i_fu_60[9]_i_7_n_0\ : STD_LOGIC;
  signal icmp_ln6_fu_108_p2 : STD_LOGIC;
  signal \^reuse_addr_reg_fu_48\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_address0[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_address0[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_address0[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr_address0[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr_address0[4]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr_address0[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr_address0[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr_address0[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_address0[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_address0[9]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_loop_init_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_fu_60[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_60[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_60[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_60[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_60[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \icmp_ln6_reg_234[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reuse_addr_reg_fu_48[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reuse_addr_reg_fu_48[32]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[31]_i_1\ : label is "soft_lutpair0";
begin
  ap_enable_reg_pp0_iter0 <= \^ap_enable_reg_pp0_iter0\;
  ap_sig_allocacmp_i_11 <= \^ap_sig_allocacmp_i_11\;
  reuse_addr_reg_fu_48 <= \^reuse_addr_reg_fu_48\;
\addr_address0[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(0),
      I1 => Q(0),
      I2 => ap_loop_init,
      I3 => ap_start,
      O => addr_address0(0)
    );
\addr_address0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(1),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(1)
    );
\addr_address0[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(2),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(2)
    );
\addr_address0[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(3),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(3)
    );
\addr_address0[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(4),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(4)
    );
\addr_address0[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(5),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(5)
    );
\addr_address0[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(6),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(6)
    );
\addr_address0[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(7),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(7)
    );
\addr_address0[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(8),
      I1 => Q(0),
      I2 => ap_loop_init,
      I3 => ap_start,
      O => addr_address0(8)
    );
\addr_address0[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(9),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => addr_address0(9)
    );
ap_loop_init_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF8F8F0F0"
    )
        port map (
      I0 => Q(2),
      I1 => ap_loop_init_reg_1,
      I2 => ap_rst,
      I3 => Q(3),
      I4 => \^ap_enable_reg_pp0_iter0\,
      I5 => ap_loop_init,
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => ap_start,
      I2 => Q(0),
      O => \^ap_enable_reg_pp0_iter0\
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => ap_loop_init,
      R => '0'
    );
\i_fu_60[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \i_fu_60_reg[9]\(0),
      I2 => icmp_ln6_fu_108_p2,
      O => D(0)
    );
\i_fu_60[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(0),
      I1 => \i_fu_60_reg[9]\(1),
      I2 => ap_loop_init,
      O => D(1)
    );
\i_fu_60[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(0),
      I1 => \i_fu_60_reg[9]\(1),
      I2 => \i_fu_60_reg[9]\(2),
      I3 => ap_loop_init,
      O => D(2)
    );
\i_fu_60[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000013332000"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(0),
      I1 => \^ap_sig_allocacmp_i_11\,
      I2 => \i_fu_60_reg[9]\(1),
      I3 => \i_fu_60_reg[9]\(2),
      I4 => \i_fu_60_reg[9]\(3),
      I5 => icmp_ln6_fu_108_p2,
      O => D(3)
    );
\i_fu_60[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060A0A0A0A0A0A0A"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(4),
      I1 => \i_fu_60_reg[9]\(0),
      I2 => \^ap_sig_allocacmp_i_11\,
      I3 => \i_fu_60_reg[9]\(1),
      I4 => \i_fu_60_reg[9]\(2),
      I5 => \i_fu_60_reg[9]\(3),
      O => D(4)
    );
\i_fu_60[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0059"
    )
        port map (
      I0 => \i_fu_60[7]_i_2_n_0\,
      I1 => \i_fu_60_reg[9]\(5),
      I2 => ap_loop_init,
      I3 => icmp_ln6_fu_108_p2,
      O => D(5)
    );
\i_fu_60[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0004"
    )
        port map (
      I0 => \i_fu_60[7]_i_2_n_0\,
      I1 => \i_fu_60_reg[9]\(5),
      I2 => \^ap_sig_allocacmp_i_11\,
      I3 => icmp_ln6_fu_108_p2,
      I4 => \i_fu_60_reg[9]\(6),
      O => D(6)
    );
\i_fu_60[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051550400"
    )
        port map (
      I0 => \^ap_sig_allocacmp_i_11\,
      I1 => \i_fu_60_reg[9]\(5),
      I2 => \i_fu_60[7]_i_2_n_0\,
      I3 => \i_fu_60_reg[9]\(6),
      I4 => \i_fu_60_reg[9]\(7),
      I5 => icmp_ln6_fu_108_p2,
      O => D(7)
    );
\i_fu_60[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(0),
      I1 => \^ap_sig_allocacmp_i_11\,
      I2 => \i_fu_60_reg[9]\(1),
      I3 => \i_fu_60_reg[9]\(2),
      I4 => \i_fu_60_reg[9]\(3),
      I5 => \i_fu_60_reg[9]\(4),
      O => \i_fu_60[7]_i_2_n_0\
    );
\i_fu_60[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B04"
    )
        port map (
      I0 => \i_fu_60[9]_i_4_n_0\,
      I1 => \i_fu_60_reg[9]\(7),
      I2 => \^ap_sig_allocacmp_i_11\,
      I3 => \i_fu_60_reg[9]\(8),
      I4 => icmp_ln6_fu_108_p2,
      O => D(8)
    );
\i_fu_60[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => icmp_ln6_fu_108_p2,
      I1 => ap_loop_init,
      I2 => Q(0),
      I3 => ap_start,
      O => E(0)
    );
\i_fu_60[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D0F0200"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(7),
      I1 => \i_fu_60[9]_i_4_n_0\,
      I2 => \^ap_sig_allocacmp_i_11\,
      I3 => \i_fu_60_reg[9]\(8),
      I4 => \i_fu_60_reg[9]\(9),
      I5 => icmp_ln6_fu_108_p2,
      O => D(9)
    );
\i_fu_60[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(5),
      I1 => \i_fu_60_reg[9]\(1),
      I2 => \i_fu_60_reg[9]\(0),
      I3 => \^ap_sig_allocacmp_i_11\,
      I4 => \i_fu_60_reg[0]\,
      I5 => \i_fu_60_reg[0]_0\,
      O => icmp_ln6_fu_108_p2
    );
\i_fu_60[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^ap_sig_allocacmp_i_11\,
      I1 => \i_fu_60_reg[9]\(5),
      I2 => \i_fu_60[9]_i_7_n_0\,
      I3 => \i_fu_60_reg[9]\(3),
      I4 => \i_fu_60_reg[9]\(4),
      I5 => \i_fu_60_reg[9]\(6),
      O => \i_fu_60[9]_i_4_n_0\
    );
\i_fu_60[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555FFFFFFFFFFFF"
    )
        port map (
      I0 => \i_fu_60_reg[9]\(0),
      I1 => Q(0),
      I2 => ap_loop_init,
      I3 => ap_start,
      I4 => \i_fu_60_reg[9]\(1),
      I5 => \i_fu_60_reg[9]\(2),
      O => \i_fu_60[9]_i_7_n_0\
    );
\icmp_ln6_reg_234[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => icmp_ln6_fu_108_p2,
      I1 => Q(0),
      I2 => ap_loop_init_reg_1,
      O => \ap_CS_fsm_reg[0]\
    );
\reuse_addr_reg_fu_48[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_start,
      I1 => ap_loop_init,
      I2 => Q(0),
      O => ap_start_0
    );
\reuse_addr_reg_fu_48[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F02002020000"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_reg_1,
      I2 => Q(0),
      I3 => ap_loop_init,
      I4 => ap_enable_reg_pp0_iter0_reg,
      I5 => ap_start,
      O => \^reuse_addr_reg_fu_48\
    );
\reuse_addr_reg_fu_48[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ap_loop_init,
      I1 => Q(0),
      I2 => \^reuse_addr_reg_fu_48\,
      I3 => \reuse_addr_reg_fu_48_reg[32]\,
      O => ap_loop_init_reg_0
    );
\reuse_reg_fu_52[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_start,
      I1 => ap_loop_init,
      I2 => Q(0),
      O => \^ap_sig_allocacmp_i_11\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1 is
  port (
    CEA2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    add_ln13_fu_169_p2 : out STD_LOGIC_VECTOR ( 22 downto 0 );
    ap_clk : in STD_LOGIC;
    beta_fu_152_p3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_A_B_DATA_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_A_B_DATA_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \mul_ln13_reg_266_reg[0]__0\ : in STD_LOGIC;
    addr_cmp_reg_248 : in STD_LOGIC;
    \mul_ln13_reg_266_reg[0]__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \mul_ln13_reg_266_reg[0]__0_1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1 is
  signal \^a\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^cea2\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_cs_fsm_reg[2]\ : STD_LOGIC;
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
  signal \dout_i_3__0_n_0\ : STD_LOGIC;
  signal \dout_i_3__0_n_1\ : STD_LOGIC;
  signal \dout_i_3__0_n_2\ : STD_LOGIC;
  signal \dout_i_3__0_n_3\ : STD_LOGIC;
  signal \dout_i_3__0_n_4\ : STD_LOGIC;
  signal \dout_i_3__0_n_5\ : STD_LOGIC;
  signal \dout_i_3__0_n_6\ : STD_LOGIC;
  signal \dout_i_3__0_n_7\ : STD_LOGIC;
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
  signal mul_ln13_1_reg_276_reg_i_1_n_2 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_1_n_3 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_1_n_4 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_1_n_5 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_1_n_6 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_1_n_7 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_0 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_1 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_2 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_3 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_4 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_5 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_6 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_i_2_n_7 : STD_LOGIC;
  signal \mul_ln13_reg_266_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
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
  signal NLW_mul_ln13_1_reg_276_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_mul_ln13_1_reg_276_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dout_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout_i_2__1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \dout_i_3__0\ : label is 35;
  attribute ADDER_THRESHOLD of mul_ln13_1_reg_276_reg_i_1 : label is 35;
  attribute ADDER_THRESHOLD of mul_ln13_1_reg_276_reg_i_2 : label is 35;
begin
  A(15 downto 0) <= \^a\(15 downto 0);
  CEA2 <= \^cea2\;
  E(0) <= \^e\(0);
  \ap_CS_fsm_reg[2]\ <= \^ap_cs_fsm_reg[2]\;
A_we0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_ln13_reg_266_reg[0]__0_0\(0),
      I1 => ap_enable_reg_pp0_iter1,
      O => \^ap_cs_fsm_reg[2]\
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
      A(16) => beta_fu_152_p3(0),
      A(15 downto 0) => \^a\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => beta_fu_152_p3(15),
      B(16) => beta_fu_152_p3(15),
      B(15) => beta_fu_152_p3(15),
      B(14 downto 0) => beta_fu_152_p3(15 downto 1),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^cea2\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^cea2\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^e\(0),
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
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
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
      A(16) => beta_fu_152_p3(0),
      A(15 downto 0) => \^a\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => beta_fu_152_p3(0),
      B(15 downto 0) => \^a\(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => \^cea2\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^cea2\,
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
      O(7 downto 0) => \mul_ln13_reg_266_reg__1\(23 downto 16),
      S(7) => \dout_carry_i_1__0_n_0\,
      S(6) => \dout_carry_i_2__0_n_0\,
      S(5) => \dout_carry_i_3__0_n_0\,
      S(4) => \dout_carry_i_4__0_n_0\,
      S(3) => \dout_carry_i_5__0_n_0\,
      S(2) => \dout_carry_i_6__0_n_0\,
      S(1) => \dout_carry_i_7__0_n_0\,
      S(0) => Q(7)
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
      O(7 downto 0) => \mul_ln13_reg_266_reg__1\(31 downto 24),
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
      I0 => \mul_ln13_reg_266_reg[0]__0_0\(0),
      I1 => \mul_ln13_reg_266_reg[0]__0_1\,
      O => \^cea2\
    );
dout_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(15),
      I1 => DSP_A_B_DATA_INST(15),
      I2 => DSP_A_B_DATA_INST_0(15),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(15)
    );
dout_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(14),
      I1 => DSP_A_B_DATA_INST(14),
      I2 => DSP_A_B_DATA_INST_0(14),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(14)
    );
dout_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(13),
      I1 => DSP_A_B_DATA_INST(13),
      I2 => DSP_A_B_DATA_INST_0(13),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(13)
    );
dout_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(12),
      I1 => DSP_A_B_DATA_INST(12),
      I2 => DSP_A_B_DATA_INST_0(12),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(12)
    );
dout_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(11),
      I1 => DSP_A_B_DATA_INST(11),
      I2 => DSP_A_B_DATA_INST_0(11),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(11)
    );
dout_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(10),
      I1 => DSP_A_B_DATA_INST(10),
      I2 => DSP_A_B_DATA_INST_0(10),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(10)
    );
dout_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(9),
      I1 => DSP_A_B_DATA_INST(9),
      I2 => DSP_A_B_DATA_INST_0(9),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(9)
    );
dout_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(8),
      I1 => DSP_A_B_DATA_INST(8),
      I2 => DSP_A_B_DATA_INST_0(8),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(8)
    );
dout_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(7),
      I1 => DSP_A_B_DATA_INST(7),
      I2 => DSP_A_B_DATA_INST_0(7),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(7)
    );
dout_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(6),
      I1 => DSP_A_B_DATA_INST(6),
      I2 => DSP_A_B_DATA_INST_0(6),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(6)
    );
dout_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(5),
      I1 => DSP_A_B_DATA_INST(5),
      I2 => DSP_A_B_DATA_INST_0(5),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(5)
    );
\dout_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \mul_ln13_reg_266_reg[0]__0_1\,
      I1 => \mul_ln13_reg_266_reg[0]__0_0\(1),
      I2 => \mul_ln13_reg_266_reg[0]__0\,
      O => \^e\(0)
    );
dout_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(4),
      I1 => DSP_A_B_DATA_INST(4),
      I2 => DSP_A_B_DATA_INST_0(4),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(4)
    );
dout_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(3),
      I1 => DSP_A_B_DATA_INST(3),
      I2 => DSP_A_B_DATA_INST_0(3),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(3)
    );
dout_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(2),
      I1 => DSP_A_B_DATA_INST(2),
      I2 => DSP_A_B_DATA_INST_0(2),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(2)
    );
dout_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(1),
      I1 => DSP_A_B_DATA_INST(1),
      I2 => DSP_A_B_DATA_INST_0(1),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(1)
    );
dout_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(0),
      I1 => DSP_A_B_DATA_INST(0),
      I2 => DSP_A_B_DATA_INST_0(0),
      I3 => \mul_ln13_reg_266_reg[0]__0\,
      I4 => \^ap_cs_fsm_reg[2]\,
      I5 => addr_cmp_reg_248,
      O => \^a\(0)
    );
\dout_i_3__0\: unisim.vcomponents.CARRY8
     port map (
      CI => CO(0),
      CI_TOP => '0',
      CO(7) => \dout_i_3__0_n_0\,
      CO(6) => \dout_i_3__0_n_1\,
      CO(5) => \dout_i_3__0_n_2\,
      CO(4) => \dout_i_3__0_n_3\,
      CO(3) => \dout_i_3__0_n_4\,
      CO(2) => \dout_i_3__0_n_5\,
      CO(1) => \dout_i_3__0_n_6\,
      CO(0) => \dout_i_3__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => add_ln13_fu_169_p2(7 downto 0),
      S(7) => \mul_ln13_reg_266_reg__1\(16),
      S(6 downto 0) => Q(6 downto 0)
    );
mul_ln13_1_reg_276_reg_i_1: unisim.vcomponents.CARRY8
     port map (
      CI => mul_ln13_1_reg_276_reg_i_2_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => NLW_mul_ln13_1_reg_276_reg_i_1_CO_UNCONNECTED(7 downto 6),
      CO(5) => mul_ln13_1_reg_276_reg_i_1_n_2,
      CO(4) => mul_ln13_1_reg_276_reg_i_1_n_3,
      CO(3) => mul_ln13_1_reg_276_reg_i_1_n_4,
      CO(2) => mul_ln13_1_reg_276_reg_i_1_n_5,
      CO(1) => mul_ln13_1_reg_276_reg_i_1_n_6,
      CO(0) => mul_ln13_1_reg_276_reg_i_1_n_7,
      DI(7 downto 0) => B"00000000",
      O(7) => NLW_mul_ln13_1_reg_276_reg_i_1_O_UNCONNECTED(7),
      O(6 downto 0) => add_ln13_fu_169_p2(22 downto 16),
      S(7) => '0',
      S(6 downto 0) => \mul_ln13_reg_266_reg__1\(31 downto 25)
    );
mul_ln13_1_reg_276_reg_i_2: unisim.vcomponents.CARRY8
     port map (
      CI => \dout_i_3__0_n_0\,
      CI_TOP => '0',
      CO(7) => mul_ln13_1_reg_276_reg_i_2_n_0,
      CO(6) => mul_ln13_1_reg_276_reg_i_2_n_1,
      CO(5) => mul_ln13_1_reg_276_reg_i_2_n_2,
      CO(4) => mul_ln13_1_reg_276_reg_i_2_n_3,
      CO(3) => mul_ln13_1_reg_276_reg_i_2_n_4,
      CO(2) => mul_ln13_1_reg_276_reg_i_2_n_5,
      CO(1) => mul_ln13_1_reg_276_reg_i_2_n_6,
      CO(0) => mul_ln13_1_reg_276_reg_i_2_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => add_ln13_fu_169_p2(15 downto 8),
      S(7 downto 0) => \mul_ln13_reg_266_reg__1\(24 downto 17)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_0 is
  port (
    CEB2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    add_ln13_1_fu_178_p2 : out STD_LOGIC_VECTOR ( 22 downto 0 );
    CEA2 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    beta_fu_152_p3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \mul_ln13_1_reg_276_reg[0]__0\ : in STD_LOGIC;
    \mul_ln13_1_reg_276_reg[0]__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mul_ln13_1_reg_276_reg[0]__0_1\ : in STD_LOGIC;
    DSP_A_B_DATA_INST : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DSP_A_B_DATA_INST_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_0 : entity is "getTanh_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_0 is
  signal \^ceb2\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_ln13_fu_169_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
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
  signal \dout_i_3__1_n_0\ : STD_LOGIC;
  signal \dout_i_3__1_n_1\ : STD_LOGIC;
  signal \dout_i_3__1_n_2\ : STD_LOGIC;
  signal \dout_i_3__1_n_3\ : STD_LOGIC;
  signal \dout_i_3__1_n_4\ : STD_LOGIC;
  signal \dout_i_3__1_n_5\ : STD_LOGIC;
  signal \dout_i_3__1_n_6\ : STD_LOGIC;
  signal \dout_i_3__1_n_7\ : STD_LOGIC;
  signal \dout_i_4__0_n_1\ : STD_LOGIC;
  signal \dout_i_4__0_n_2\ : STD_LOGIC;
  signal \dout_i_4__0_n_3\ : STD_LOGIC;
  signal \dout_i_4__0_n_4\ : STD_LOGIC;
  signal \dout_i_4__0_n_5\ : STD_LOGIC;
  signal \dout_i_4__0_n_6\ : STD_LOGIC;
  signal \dout_i_4__0_n_7\ : STD_LOGIC;
  signal \dout_i_6__0_n_0\ : STD_LOGIC;
  signal \dout_i_7__0_n_0\ : STD_LOGIC;
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
  signal \mul_ln13_1_reg_276_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal result_reg_286_reg_i_1_n_2 : STD_LOGIC;
  signal result_reg_286_reg_i_1_n_3 : STD_LOGIC;
  signal result_reg_286_reg_i_1_n_4 : STD_LOGIC;
  signal result_reg_286_reg_i_1_n_5 : STD_LOGIC;
  signal result_reg_286_reg_i_1_n_6 : STD_LOGIC;
  signal result_reg_286_reg_i_1_n_7 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_0 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_1 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_2 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_3 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_4 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_5 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_6 : STD_LOGIC;
  signal result_reg_286_reg_i_2_n_7 : STD_LOGIC;
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
  signal NLW_result_reg_286_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_result_reg_286_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout_i_2__0\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD of \dout_i_3__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dout_i_4__0\ : label is 35;
  attribute ADDER_THRESHOLD of result_reg_286_reg_i_1 : label is 35;
  attribute ADDER_THRESHOLD of result_reg_286_reg_i_2 : label is 35;
begin
  CEB2 <= \^ceb2\;
  E(0) <= \^e\(0);
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
      A(16 downto 9) => DSP_ALU_INST(7 downto 0),
      A(8 downto 0) => add_ln13_fu_169_p2(8 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => beta_fu_152_p3(31),
      B(16) => beta_fu_152_p3(31),
      B(15) => beta_fu_152_p3(31),
      B(14 downto 0) => beta_fu_152_p3(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^ceb2\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => CEA2,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^e\(0),
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
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
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
      A(16 downto 0) => beta_fu_152_p3(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 9) => DSP_ALU_INST(7 downto 0),
      B(8 downto 0) => add_ln13_fu_169_p2(8 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => CEA2,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^ceb2\,
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
      O(7 downto 0) => \mul_ln13_1_reg_276_reg__1\(23 downto 16),
      S(7) => \dout_carry_i_1__1_n_0\,
      S(6) => \dout_carry_i_2__1_n_0\,
      S(5) => \dout_carry_i_3__1_n_0\,
      S(4) => \dout_carry_i_4__1_n_0\,
      S(3) => \dout_carry_i_5__1_n_0\,
      S(2) => \dout_carry_i_6__1_n_0\,
      S(1) => \dout_carry_i_7__1_n_0\,
      S(0) => Q(7)
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
      O(7 downto 0) => \mul_ln13_1_reg_276_reg__1\(31 downto 24),
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
\dout_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \mul_ln13_1_reg_276_reg[0]__0\,
      I1 => \mul_ln13_1_reg_276_reg[0]__0_0\(0),
      I2 => \mul_ln13_1_reg_276_reg[0]__0_1\,
      O => \^ceb2\
    );
\dout_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \mul_ln13_1_reg_276_reg[0]__0\,
      I1 => \mul_ln13_1_reg_276_reg[0]__0_0\(1),
      I2 => \mul_ln13_1_reg_276_reg[0]__0_1\,
      O => \^e\(0)
    );
\dout_i_3__1\: unisim.vcomponents.CARRY8
     port map (
      CI => DSP_A_B_DATA_INST_0(0),
      CI_TOP => '0',
      CO(7) => \dout_i_3__1_n_0\,
      CO(6) => \dout_i_3__1_n_1\,
      CO(5) => \dout_i_3__1_n_2\,
      CO(4) => \dout_i_3__1_n_3\,
      CO(3) => \dout_i_3__1_n_4\,
      CO(2) => \dout_i_3__1_n_5\,
      CO(1) => \dout_i_3__1_n_6\,
      CO(0) => \dout_i_3__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => add_ln13_1_fu_178_p2(7 downto 0),
      S(7) => \mul_ln13_1_reg_276_reg__1\(16),
      S(6 downto 0) => Q(6 downto 0)
    );
\dout_i_4__0\: unisim.vcomponents.CARRY8
     port map (
      CI => DSP_A_B_DATA_INST(0),
      CI_TOP => '0',
      CO(7) => CO(0),
      CO(6) => \dout_i_4__0_n_1\,
      CO(5) => \dout_i_4__0_n_2\,
      CO(4) => \dout_i_4__0_n_3\,
      CO(3) => \dout_i_4__0_n_4\,
      CO(2) => \dout_i_4__0_n_5\,
      CO(1) => \dout_i_4__0_n_6\,
      CO(0) => \dout_i_4__0_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => DSP_A_B_DATA_INST(4),
      DI(2 downto 1) => B"00",
      DI(0) => DSP_A_B_DATA_INST(1),
      O(7 downto 0) => add_ln13_fu_169_p2(8 downto 1),
      S(7 downto 4) => DSP_A_B_DATA_INST(8 downto 5),
      S(3) => \dout_i_6__0_n_0\,
      S(2 downto 1) => DSP_A_B_DATA_INST(3 downto 2),
      S(0) => \dout_i_7__0_n_0\
    );
\dout_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DSP_A_B_DATA_INST(0),
      O => add_ln13_fu_169_p2(0)
    );
\dout_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DSP_A_B_DATA_INST(4),
      O => \dout_i_6__0_n_0\
    );
\dout_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DSP_A_B_DATA_INST(1),
      O => \dout_i_7__0_n_0\
    );
result_reg_286_reg_i_1: unisim.vcomponents.CARRY8
     port map (
      CI => result_reg_286_reg_i_2_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => NLW_result_reg_286_reg_i_1_CO_UNCONNECTED(7 downto 6),
      CO(5) => result_reg_286_reg_i_1_n_2,
      CO(4) => result_reg_286_reg_i_1_n_3,
      CO(3) => result_reg_286_reg_i_1_n_4,
      CO(2) => result_reg_286_reg_i_1_n_5,
      CO(1) => result_reg_286_reg_i_1_n_6,
      CO(0) => result_reg_286_reg_i_1_n_7,
      DI(7 downto 0) => B"00000000",
      O(7) => NLW_result_reg_286_reg_i_1_O_UNCONNECTED(7),
      O(6 downto 0) => add_ln13_1_fu_178_p2(22 downto 16),
      S(7) => '0',
      S(6 downto 0) => \mul_ln13_1_reg_276_reg__1\(31 downto 25)
    );
result_reg_286_reg_i_2: unisim.vcomponents.CARRY8
     port map (
      CI => \dout_i_3__1_n_0\,
      CI_TOP => '0',
      CO(7) => result_reg_286_reg_i_2_n_0,
      CO(6) => result_reg_286_reg_i_2_n_1,
      CO(5) => result_reg_286_reg_i_2_n_2,
      CO(4) => result_reg_286_reg_i_2_n_3,
      CO(3) => result_reg_286_reg_i_2_n_4,
      CO(2) => result_reg_286_reg_i_2_n_5,
      CO(1) => result_reg_286_reg_i_2_n_6,
      CO(0) => result_reg_286_reg_i_2_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => add_ln13_1_fu_178_p2(15 downto 8),
      S(7 downto 0) => \mul_ln13_1_reg_276_reg__1\(24 downto 17)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_1 is
  port (
    CEB2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    beta_fu_152_p3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \icmp_ln10_reg_261_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_return : out STD_LOGIC_VECTOR ( 15 downto 0 );
    A_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \mul_ln13_1_reg_276_reg[0]__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    CEA2 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln10_reg_261_reg[0]_0\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \reuse_reg_fu_52_reg[31]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \result_2_fu_56_reg[31]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \icmp_ln10_reg_261_reg[0]_i_2_0\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_1\ : in STD_LOGIC;
    addr_cmp_reg_248 : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_2\ : in STD_LOGIC;
    A_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_A_B_DATA_INST : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_3\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_4\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_5\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_6\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_7\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_8\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_9\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_10\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_11\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_12\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_13\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_14\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_15\ : in STD_LOGIC;
    \icmp_ln10_reg_261_reg[0]_i_2_16\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    DSP_A_B_DATA_INST_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \icmp_ln10_reg_261_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_1 : entity is "getTanh_mul_32s_32s_32_1_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_1 is
  signal \^ceb2\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_ln13_1_fu_178_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^beta_fu_152_p3\ : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \dout_i_4__1_n_1\ : STD_LOGIC;
  signal \dout_i_4__1_n_2\ : STD_LOGIC;
  signal \dout_i_4__1_n_3\ : STD_LOGIC;
  signal \dout_i_4__1_n_4\ : STD_LOGIC;
  signal \dout_i_4__1_n_5\ : STD_LOGIC;
  signal \dout_i_4__1_n_6\ : STD_LOGIC;
  signal \dout_i_4__1_n_7\ : STD_LOGIC;
  signal \dout_i_6__1_n_0\ : STD_LOGIC;
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
  signal icmp_ln10_fu_159_p2 : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_10_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_11_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_12_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_13_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_14_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_15_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_16_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_17_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_18_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_19_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_6_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_7_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_8_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_9_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \result_reg_286_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
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
  signal \NLW_icmp_ln10_reg_261_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_d0[16]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \A_d0[17]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \A_d0[18]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \A_d0[19]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \A_d0[20]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \A_d0[21]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \A_d0[22]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \A_d0[23]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \A_d0[24]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \A_d0[25]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \A_d0[26]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \A_d0[27]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \A_d0[28]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \A_d0[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \A_d0[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \A_d0[31]_INST_0\ : label is "soft_lutpair16";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dout : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \dout__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \dout__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of dout_i_2 : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD of \dout_i_4__1\ : label is 35;
  attribute SOFT_HLUTNM of \icmp_ln10_reg_261[0]_i_1\ : label is "soft_lutpair28";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \icmp_ln10_reg_261_reg[0]_i_2\ : label is 14;
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[16]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[18]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[19]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[23]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[25]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[28]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[31]_i_2\ : label is "soft_lutpair16";
begin
  CEB2 <= \^ceb2\;
  E(0) <= \^e\(0);
  beta_fu_152_p3(15 downto 0) <= \^beta_fu_152_p3\(15 downto 0);
\A_d0[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(16),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(0)
    );
\A_d0[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(17),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(1)
    );
\A_d0[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(18),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(2)
    );
\A_d0[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(19),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(3)
    );
\A_d0[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(20),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(4)
    );
\A_d0[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(21),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(5)
    );
\A_d0[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(22),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(6)
    );
\A_d0[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(23),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(7)
    );
\A_d0[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(24),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(8)
    );
\A_d0[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(25),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(9)
    );
\A_d0[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(26),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(10)
    );
\A_d0[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(27),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(11)
    );
\A_d0[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(28),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(12)
    );
\A_d0[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(29),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(13)
    );
\A_d0[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(30),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(14)
    );
\A_d0[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg__1\(31),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => A_d0(15)
    );
\ap_return[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(16),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(0),
      O => ap_return(0)
    );
\ap_return[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(17),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(1),
      O => ap_return(1)
    );
\ap_return[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(18),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(2),
      O => ap_return(2)
    );
\ap_return[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(19),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(3),
      O => ap_return(3)
    );
\ap_return[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(20),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(4),
      O => ap_return(4)
    );
\ap_return[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(21),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(5),
      O => ap_return(5)
    );
\ap_return[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(22),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(6),
      O => ap_return(6)
    );
\ap_return[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(23),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(7),
      O => ap_return(7)
    );
\ap_return[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(24),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(8),
      O => ap_return(8)
    );
\ap_return[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(25),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(9),
      O => ap_return(9)
    );
\ap_return[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(26),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(10),
      O => ap_return(10)
    );
\ap_return[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(27),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(11),
      O => ap_return(11)
    );
\ap_return[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(28),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(12),
      O => ap_return(12)
    );
\ap_return[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(29),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(13),
      O => ap_return(13)
    );
\ap_return[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(30),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(14),
      O => ap_return(14)
    );
\ap_return[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(31),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \result_2_fu_56_reg[31]\(15),
      O => ap_return(15)
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
      A(16 downto 9) => DSP_ALU_INST(7 downto 0),
      A(8 downto 0) => add_ln13_1_fu_178_p2(8 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \^beta_fu_152_p3\(15),
      B(16) => \^beta_fu_152_p3\(15),
      B(15) => \^beta_fu_152_p3\(15),
      B(14 downto 0) => \^beta_fu_152_p3\(15 downto 1),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^ceb2\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => CEA2,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^e\(0),
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
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
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
      A(16) => \^beta_fu_152_p3\(0),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 9) => DSP_ALU_INST(7 downto 0),
      B(8 downto 0) => add_ln13_1_fu_178_p2(8 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_dout__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_dout__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_dout__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => CEA2,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^ceb2\,
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
      O(7 downto 0) => \result_reg_286_reg__1\(23 downto 16),
      S(7) => dout_carry_i_1_n_0,
      S(6) => dout_carry_i_2_n_0,
      S(5) => dout_carry_i_3_n_0,
      S(4) => dout_carry_i_4_n_0,
      S(3) => dout_carry_i_5_n_0,
      S(2) => dout_carry_i_6_n_0,
      S(1) => dout_carry_i_7_n_0,
      S(0) => Q(0)
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
      O(7 downto 0) => \result_reg_286_reg__1\(31 downto 24),
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
      I0 => dout_n_91,
      I1 => P(14),
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
dout_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(8),
      I1 => \reuse_reg_fu_52_reg[31]\(8),
      I2 => \result_reg_286_reg__1\(24),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(8)
    );
dout_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(7),
      I1 => \reuse_reg_fu_52_reg[31]\(7),
      I2 => \result_reg_286_reg__1\(23),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(7)
    );
dout_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(6),
      I1 => \reuse_reg_fu_52_reg[31]\(6),
      I2 => \result_reg_286_reg__1\(22),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(6)
    );
dout_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(5),
      I1 => \reuse_reg_fu_52_reg[31]\(5),
      I2 => \result_reg_286_reg__1\(21),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(5)
    );
dout_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(4),
      I1 => \reuse_reg_fu_52_reg[31]\(4),
      I2 => \result_reg_286_reg__1\(20),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(4)
    );
dout_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(3),
      I1 => \reuse_reg_fu_52_reg[31]\(3),
      I2 => \result_reg_286_reg__1\(19),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(3)
    );
dout_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(2),
      I1 => \reuse_reg_fu_52_reg[31]\(2),
      I2 => \result_reg_286_reg__1\(18),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(2)
    );
dout_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(1),
      I1 => \reuse_reg_fu_52_reg[31]\(1),
      I2 => \result_reg_286_reg__1\(17),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(1)
    );
dout_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(0),
      I1 => \reuse_reg_fu_52_reg[31]\(0),
      I2 => \result_reg_286_reg__1\(16),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(0)
    );
\dout_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_1\(0),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => \^ceb2\
    );
dout_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_1\(1),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      O => \^e\(0)
    );
dout_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(15),
      I1 => \reuse_reg_fu_52_reg[31]\(15),
      I2 => \result_reg_286_reg__1\(31),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(15)
    );
dout_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(14),
      I1 => \reuse_reg_fu_52_reg[31]\(14),
      I2 => \result_reg_286_reg__1\(30),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(14)
    );
\dout_i_4__1\: unisim.vcomponents.CARRY8
     port map (
      CI => DSP_A_B_DATA_INST_0(0),
      CI_TOP => '0',
      CO(7) => \mul_ln13_1_reg_276_reg[0]__0\(0),
      CO(6) => \dout_i_4__1_n_1\,
      CO(5) => \dout_i_4__1_n_2\,
      CO(4) => \dout_i_4__1_n_3\,
      CO(3) => \dout_i_4__1_n_4\,
      CO(2) => \dout_i_4__1_n_5\,
      CO(1) => \dout_i_4__1_n_6\,
      CO(0) => \dout_i_4__1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => DSP_A_B_DATA_INST_0(1),
      O(7 downto 0) => add_ln13_1_fu_178_p2(8 downto 1),
      S(7 downto 1) => DSP_A_B_DATA_INST_0(8 downto 2),
      S(0) => \dout_i_6__1_n_0\
    );
dout_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(13),
      I1 => \reuse_reg_fu_52_reg[31]\(13),
      I2 => \result_reg_286_reg__1\(29),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(13)
    );
\dout_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DSP_A_B_DATA_INST_0(0),
      O => add_ln13_1_fu_178_p2(0)
    );
dout_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(12),
      I1 => \reuse_reg_fu_52_reg[31]\(12),
      I2 => \result_reg_286_reg__1\(28),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(12)
    );
\dout_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DSP_A_B_DATA_INST_0(1),
      O => \dout_i_6__1_n_0\
    );
dout_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(11),
      I1 => \reuse_reg_fu_52_reg[31]\(11),
      I2 => \result_reg_286_reg__1\(27),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(11)
    );
dout_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(10),
      I1 => \reuse_reg_fu_52_reg[31]\(10),
      I2 => \result_reg_286_reg__1\(26),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(10)
    );
dout_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCCCAAAAAAAA"
    )
        port map (
      I0 => A_q0(9),
      I1 => \reuse_reg_fu_52_reg[31]\(9),
      I2 => \result_reg_286_reg__1\(25),
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      I4 => DSP_A_B_DATA_INST,
      I5 => addr_cmp_reg_248,
      O => \^beta_fu_152_p3\(9)
    );
\icmp_ln10_reg_261[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => icmp_ln10_fu_159_p2,
      I1 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I2 => \icmp_ln10_reg_261_reg[0]_2\,
      I3 => \icmp_ln10_reg_261_reg[0]_0\,
      O => \ap_CS_fsm_reg[2]\
    );
\icmp_ln10_reg_261[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(19),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_4\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(18),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_3\,
      O => \icmp_ln10_reg_261[0]_i_10_n_0\
    );
\icmp_ln10_reg_261[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(17),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_2\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(16),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_0\,
      O => \icmp_ln10_reg_261[0]_i_11_n_0\
    );
\icmp_ln10_reg_261[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003331333"
    )
        port map (
      I0 => \result_reg_286_reg__1\(31),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_16\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(30),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_15\,
      O => \icmp_ln10_reg_261[0]_i_12_n_0\
    );
\icmp_ln10_reg_261[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000055500001555"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_i_2_13\,
      I1 => \result_reg_286_reg__1\(28),
      I2 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I3 => addr_cmp_reg_248,
      I4 => \icmp_ln10_reg_261_reg[0]_i_2_14\,
      I5 => \result_reg_286_reg__1\(29),
      O => \icmp_ln10_reg_261[0]_i_13_n_0\
    );
\icmp_ln10_reg_261[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000055500001555"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_i_2_11\,
      I1 => \result_reg_286_reg__1\(26),
      I2 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I3 => addr_cmp_reg_248,
      I4 => \icmp_ln10_reg_261_reg[0]_i_2_12\,
      I5 => \result_reg_286_reg__1\(27),
      O => \icmp_ln10_reg_261[0]_i_14_n_0\
    );
\icmp_ln10_reg_261[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000055500001555"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_i_2_9\,
      I1 => \result_reg_286_reg__1\(24),
      I2 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I3 => addr_cmp_reg_248,
      I4 => \icmp_ln10_reg_261_reg[0]_i_2_10\,
      I5 => \result_reg_286_reg__1\(25),
      O => \icmp_ln10_reg_261[0]_i_15_n_0\
    );
\icmp_ln10_reg_261[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000055500001555"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_i_2_7\,
      I1 => \result_reg_286_reg__1\(22),
      I2 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I3 => addr_cmp_reg_248,
      I4 => \icmp_ln10_reg_261_reg[0]_i_2_8\,
      I5 => \result_reg_286_reg__1\(23),
      O => \icmp_ln10_reg_261[0]_i_16_n_0\
    );
\icmp_ln10_reg_261[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000055500001555"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_i_2_5\,
      I1 => \result_reg_286_reg__1\(20),
      I2 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I3 => addr_cmp_reg_248,
      I4 => \icmp_ln10_reg_261_reg[0]_i_2_6\,
      I5 => \result_reg_286_reg__1\(21),
      O => \icmp_ln10_reg_261[0]_i_17_n_0\
    );
\icmp_ln10_reg_261[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000055500001555"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_i_2_3\,
      I1 => \result_reg_286_reg__1\(18),
      I2 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I3 => addr_cmp_reg_248,
      I4 => \icmp_ln10_reg_261_reg[0]_i_2_4\,
      I5 => \result_reg_286_reg__1\(19),
      O => \icmp_ln10_reg_261[0]_i_18_n_0\
    );
\icmp_ln10_reg_261[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000055500001555"
    )
        port map (
      I0 => \icmp_ln10_reg_261_reg[0]_i_2_0\,
      I1 => \result_reg_286_reg__1\(16),
      I2 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I3 => addr_cmp_reg_248,
      I4 => \icmp_ln10_reg_261_reg[0]_i_2_2\,
      I5 => \result_reg_286_reg__1\(17),
      O => \icmp_ln10_reg_261[0]_i_19_n_0\
    );
\icmp_ln10_reg_261[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000CCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(30),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_15\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(31),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_16\,
      O => \icmp_ln10_reg_261[0]_i_4_n_0\
    );
\icmp_ln10_reg_261[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(29),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_14\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(28),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_13\,
      O => \icmp_ln10_reg_261[0]_i_5_n_0\
    );
\icmp_ln10_reg_261[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(27),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_12\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(26),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_11\,
      O => \icmp_ln10_reg_261[0]_i_6_n_0\
    );
\icmp_ln10_reg_261[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(25),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_10\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(24),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_9\,
      O => \icmp_ln10_reg_261[0]_i_7_n_0\
    );
\icmp_ln10_reg_261[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(23),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_8\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(22),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_7\,
      O => \icmp_ln10_reg_261[0]_i_8_n_0\
    );
\icmp_ln10_reg_261[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCECCC"
    )
        port map (
      I0 => \result_reg_286_reg__1\(21),
      I1 => \icmp_ln10_reg_261_reg[0]_i_2_6\,
      I2 => addr_cmp_reg_248,
      I3 => \icmp_ln10_reg_261_reg[0]_i_2_1\,
      I4 => \result_reg_286_reg__1\(20),
      I5 => \icmp_ln10_reg_261_reg[0]_i_2_5\,
      O => \icmp_ln10_reg_261[0]_i_9_n_0\
    );
\icmp_ln10_reg_261_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => CO(0),
      CI_TOP => '0',
      CO(7) => icmp_ln10_fu_159_p2,
      CO(6) => \icmp_ln10_reg_261_reg[0]_i_2_n_1\,
      CO(5) => \icmp_ln10_reg_261_reg[0]_i_2_n_2\,
      CO(4) => \icmp_ln10_reg_261_reg[0]_i_2_n_3\,
      CO(3) => \icmp_ln10_reg_261_reg[0]_i_2_n_4\,
      CO(2) => \icmp_ln10_reg_261_reg[0]_i_2_n_5\,
      CO(1) => \icmp_ln10_reg_261_reg[0]_i_2_n_6\,
      CO(0) => \icmp_ln10_reg_261_reg[0]_i_2_n_7\,
      DI(7) => \icmp_ln10_reg_261[0]_i_4_n_0\,
      DI(6) => \icmp_ln10_reg_261[0]_i_5_n_0\,
      DI(5) => \icmp_ln10_reg_261[0]_i_6_n_0\,
      DI(4) => \icmp_ln10_reg_261[0]_i_7_n_0\,
      DI(3) => \icmp_ln10_reg_261[0]_i_8_n_0\,
      DI(2) => \icmp_ln10_reg_261[0]_i_9_n_0\,
      DI(1) => \icmp_ln10_reg_261[0]_i_10_n_0\,
      DI(0) => \icmp_ln10_reg_261[0]_i_11_n_0\,
      O(7 downto 0) => \NLW_icmp_ln10_reg_261_reg[0]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \icmp_ln10_reg_261[0]_i_12_n_0\,
      S(6) => \icmp_ln10_reg_261[0]_i_13_n_0\,
      S(5) => \icmp_ln10_reg_261[0]_i_14_n_0\,
      S(4) => \icmp_ln10_reg_261[0]_i_15_n_0\,
      S(3) => \icmp_ln10_reg_261[0]_i_16_n_0\,
      S(2) => \icmp_ln10_reg_261[0]_i_17_n_0\,
      S(1) => \icmp_ln10_reg_261[0]_i_18_n_0\,
      S(0) => \icmp_ln10_reg_261[0]_i_19_n_0\
    );
\reuse_reg_fu_52[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(16),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(0),
      O => \icmp_ln10_reg_261_reg[0]\(0)
    );
\reuse_reg_fu_52[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(17),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(1),
      O => \icmp_ln10_reg_261_reg[0]\(1)
    );
\reuse_reg_fu_52[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(18),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(2),
      O => \icmp_ln10_reg_261_reg[0]\(2)
    );
\reuse_reg_fu_52[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(19),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(3),
      O => \icmp_ln10_reg_261_reg[0]\(3)
    );
\reuse_reg_fu_52[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(20),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(4),
      O => \icmp_ln10_reg_261_reg[0]\(4)
    );
\reuse_reg_fu_52[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(21),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(5),
      O => \icmp_ln10_reg_261_reg[0]\(5)
    );
\reuse_reg_fu_52[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(22),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(6),
      O => \icmp_ln10_reg_261_reg[0]\(6)
    );
\reuse_reg_fu_52[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(23),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(7),
      O => \icmp_ln10_reg_261_reg[0]\(7)
    );
\reuse_reg_fu_52[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(24),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(8),
      O => \icmp_ln10_reg_261_reg[0]\(8)
    );
\reuse_reg_fu_52[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(25),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(9),
      O => \icmp_ln10_reg_261_reg[0]\(9)
    );
\reuse_reg_fu_52[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(26),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(10),
      O => \icmp_ln10_reg_261_reg[0]\(10)
    );
\reuse_reg_fu_52[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(27),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(11),
      O => \icmp_ln10_reg_261_reg[0]\(11)
    );
\reuse_reg_fu_52[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(28),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(12),
      O => \icmp_ln10_reg_261_reg[0]\(12)
    );
\reuse_reg_fu_52[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(29),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(13),
      O => \icmp_ln10_reg_261_reg[0]\(13)
    );
\reuse_reg_fu_52[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(30),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(14),
      O => \icmp_ln10_reg_261_reg[0]\(14)
    );
\reuse_reg_fu_52[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg__1\(31),
      I1 => \icmp_ln10_reg_261_reg[0]_0\,
      I2 => \icmp_ln10_reg_261_reg[0]_1\(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \reuse_reg_fu_52_reg[31]\(15),
      O => \icmp_ln10_reg_261_reg[0]\(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    A_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A_ce0 : out STD_LOGIC;
    A_we0 : out STD_LOGIC;
    A_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    addr_ce0 : out STD_LOGIC;
    addr_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh : entity is "6'b000001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh : entity is "6'b000010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh : entity is "6'b000100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh : entity is "6'b001000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh : entity is "6'b010000";
  attribute ap_ST_fsm_pp0_stage5 : string;
  attribute ap_ST_fsm_pp0_stage5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh : entity is "6'b100000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh is
  signal A_addr_reg_243 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal A_addr_reg_243_pp0_iter1_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^a_we0\ : STD_LOGIC;
  signal add_ln13_1_fu_178_p2 : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal add_ln13_1_reg_2810 : STD_LOGIC;
  signal add_ln13_fu_169_p2 : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal add_ln13_reg_2710 : STD_LOGIC;
  signal addr_cmp_fu_138_p2 : STD_LOGIC;
  signal addr_cmp_reg_248 : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_10_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_11_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_12_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_13_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_14_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_15_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_16_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_17_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_18_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_19_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_20_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_21_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_22_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_23_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_24_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_25_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_5_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_6_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_7_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248[0]_i_8_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_1\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_2\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_3\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_4\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_5\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_6\ : STD_LOGIC;
  signal \addr_cmp_reg_248_reg[0]_i_9_n_7\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage4 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage5 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_condition_113 : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal \^ap_return\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_sig_allocacmp_i_11 : STD_LOGIC;
  signal ap_sig_allocacmp_reuse_reg_load : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal beta_fu_152_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal beta_reg_2530 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_25 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_26 : STD_LOGIC;
  signal i_fu_60 : STD_LOGIC;
  signal \i_fu_60[9]_i_5_n_0\ : STD_LOGIC;
  signal \i_fu_60[9]_i_6_n_0\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_fu_60_reg_n_0_[9]\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_20_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_21_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_22_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_23_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_24_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_25_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_26_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_27_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_28_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_29_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_30_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_31_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_32_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_33_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_34_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_35_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_36_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_37_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_38_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_39_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_40_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_41_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_42_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_43_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_44_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_45_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_46_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_47_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_48_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_49_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_50_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_51_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261[0]_i_52_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \icmp_ln10_reg_261_reg_n_0_[0]\ : STD_LOGIC;
  signal \icmp_ln6_reg_234_reg_n_0_[0]\ : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_19 : STD_LOGIC;
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
  signal mul_32s_32s_32_1_1_U1_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_65 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_66 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_67 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_68 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_69 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_70 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_71 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_72 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_73 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_74 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_75 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_76 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_77 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_78 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_79 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_80 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_81 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_82 : STD_LOGIC;
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
  signal mul_32s_32s_32_1_1_U2_n_65 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_66 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_67 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_7 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U2_n_9 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_131 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_132 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_19 : STD_LOGIC;
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
  signal mul_32s_32s_32_1_1_U3_n_60 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_61 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_62 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_63 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_64 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_65 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_66 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_67 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_68 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_69 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_70 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_71 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_72 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_73 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_74 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_75 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_76 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_77 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_78 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_79 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_80 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_81 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U3_n_82 : STD_LOGIC;
  signal mul_ln13_1_reg_2760 : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_1_reg_276_reg[9]__0_n_0\ : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_100 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_101 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_102 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_103 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_104 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_105 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_58 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_59 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_60 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_61 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_62 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_63 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_64 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_65 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_66 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_67 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_68 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_69 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_70 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_71 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_72 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_73 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_74 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_75 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_76 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_77 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_78 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_79 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_80 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_81 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_82 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_83 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_84 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_85 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_86 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_87 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_88 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_89 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_90 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_91 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_92 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_93 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_94 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_95 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_96 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_97 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_98 : STD_LOGIC;
  signal mul_ln13_1_reg_276_reg_n_99 : STD_LOGIC;
  signal mul_ln13_reg_2660 : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln13_reg_266_reg[9]__0_n_0\ : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_100 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_101 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_102 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_103 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_104 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_105 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_58 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_59 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_60 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_61 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_62 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_63 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_64 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_65 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_66 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_67 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_68 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_69 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_70 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_71 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_72 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_73 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_74 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_75 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_76 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_77 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_78 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_79 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_80 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_81 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_82 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_83 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_84 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_85 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_86 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_87 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_88 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_89 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_90 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_91 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_92 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_93 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_94 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_95 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_96 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_97 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_98 : STD_LOGIC;
  signal mul_ln13_reg_266_reg_n_99 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal result_2_fu_56 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal result_reg_2860 : STD_LOGIC;
  signal \result_reg_286_reg[0]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[10]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[11]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[12]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[13]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[14]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[15]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[16]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[1]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[2]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[3]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[4]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[5]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[6]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[7]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[8]__0_n_0\ : STD_LOGIC;
  signal \result_reg_286_reg[9]__0_n_0\ : STD_LOGIC;
  signal result_reg_286_reg_n_100 : STD_LOGIC;
  signal result_reg_286_reg_n_101 : STD_LOGIC;
  signal result_reg_286_reg_n_102 : STD_LOGIC;
  signal result_reg_286_reg_n_103 : STD_LOGIC;
  signal result_reg_286_reg_n_104 : STD_LOGIC;
  signal result_reg_286_reg_n_105 : STD_LOGIC;
  signal result_reg_286_reg_n_58 : STD_LOGIC;
  signal result_reg_286_reg_n_59 : STD_LOGIC;
  signal result_reg_286_reg_n_60 : STD_LOGIC;
  signal result_reg_286_reg_n_61 : STD_LOGIC;
  signal result_reg_286_reg_n_62 : STD_LOGIC;
  signal result_reg_286_reg_n_63 : STD_LOGIC;
  signal result_reg_286_reg_n_64 : STD_LOGIC;
  signal result_reg_286_reg_n_65 : STD_LOGIC;
  signal result_reg_286_reg_n_66 : STD_LOGIC;
  signal result_reg_286_reg_n_67 : STD_LOGIC;
  signal result_reg_286_reg_n_68 : STD_LOGIC;
  signal result_reg_286_reg_n_69 : STD_LOGIC;
  signal result_reg_286_reg_n_70 : STD_LOGIC;
  signal result_reg_286_reg_n_71 : STD_LOGIC;
  signal result_reg_286_reg_n_72 : STD_LOGIC;
  signal result_reg_286_reg_n_73 : STD_LOGIC;
  signal result_reg_286_reg_n_74 : STD_LOGIC;
  signal result_reg_286_reg_n_75 : STD_LOGIC;
  signal result_reg_286_reg_n_76 : STD_LOGIC;
  signal result_reg_286_reg_n_77 : STD_LOGIC;
  signal result_reg_286_reg_n_78 : STD_LOGIC;
  signal result_reg_286_reg_n_79 : STD_LOGIC;
  signal result_reg_286_reg_n_80 : STD_LOGIC;
  signal result_reg_286_reg_n_81 : STD_LOGIC;
  signal result_reg_286_reg_n_82 : STD_LOGIC;
  signal result_reg_286_reg_n_83 : STD_LOGIC;
  signal result_reg_286_reg_n_84 : STD_LOGIC;
  signal result_reg_286_reg_n_85 : STD_LOGIC;
  signal result_reg_286_reg_n_86 : STD_LOGIC;
  signal result_reg_286_reg_n_87 : STD_LOGIC;
  signal result_reg_286_reg_n_88 : STD_LOGIC;
  signal result_reg_286_reg_n_89 : STD_LOGIC;
  signal result_reg_286_reg_n_90 : STD_LOGIC;
  signal result_reg_286_reg_n_91 : STD_LOGIC;
  signal result_reg_286_reg_n_92 : STD_LOGIC;
  signal result_reg_286_reg_n_93 : STD_LOGIC;
  signal result_reg_286_reg_n_94 : STD_LOGIC;
  signal result_reg_286_reg_n_95 : STD_LOGIC;
  signal result_reg_286_reg_n_96 : STD_LOGIC;
  signal result_reg_286_reg_n_97 : STD_LOGIC;
  signal result_reg_286_reg_n_98 : STD_LOGIC;
  signal result_reg_286_reg_n_99 : STD_LOGIC;
  signal reuse_addr_reg_fu_48 : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[0]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[10]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[11]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[12]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[13]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[14]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[15]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[16]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[17]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[18]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[19]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[1]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[20]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[21]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[22]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[23]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[24]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[25]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[26]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[27]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[28]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[29]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[2]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[30]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[31]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[32]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[3]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[4]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[5]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[6]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[7]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[8]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_48_reg_n_0_[9]\ : STD_LOGIC;
  signal reuse_reg_fu_52 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_addr_cmp_reg_248_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_addr_cmp_reg_248_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_addr_cmp_reg_248_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_addr_cmp_reg_248_reg[0]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_icmp_ln10_reg_261_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln13_1_reg_276_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_1_reg_276_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_1_reg_276_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_1_reg_276_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_1_reg_276_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_1_reg_276_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_1_reg_276_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln13_1_reg_276_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln13_1_reg_276_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln13_1_reg_276_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln13_1_reg_276_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mul_ln13_reg_266_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_reg_266_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_reg_266_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_reg_266_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_reg_266_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_reg_266_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln13_reg_266_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln13_reg_266_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln13_reg_266_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln13_reg_266_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln13_reg_266_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_result_reg_286_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_reg_286_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_reg_286_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_result_reg_286_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_reg_286_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_reg_286_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_result_reg_286_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_result_reg_286_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_result_reg_286_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_result_reg_286_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_result_reg_286_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_address0[9]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \A_d0[0]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \A_d0[10]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \A_d0[11]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \A_d0[12]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \A_d0[13]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \A_d0[14]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \A_d0[15]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \A_d0[1]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \A_d0[2]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \A_d0[3]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \A_d0[4]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \A_d0[5]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \A_d0[6]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \A_d0[7]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \A_d0[8]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \A_d0[9]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair30";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ap_return[1]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \icmp_ln10_reg_261[0]_i_37\ : label is "soft_lutpair31";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \icmp_ln10_reg_261_reg[0]_i_3\ : label is 14;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of mul_ln13_1_reg_276_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mul_ln13_1_reg_276_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of mul_ln13_reg_266_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of mul_ln13_reg_266_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute KEEP_HIERARCHY of result_reg_286_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of result_reg_286_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[12]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[13]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[14]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[15]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \reuse_reg_fu_52[9]_i_1\ : label is "soft_lutpair40";
begin
  A_we0 <= \^a_we0\;
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
  ap_return(31 downto 0) <= \^ap_return\(31 downto 0);
\A_addr_reg_243[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => \icmp_ln6_reg_234_reg_n_0_[0]\,
      O => ap_condition_113
    );
\A_addr_reg_243_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(0),
      Q => A_addr_reg_243_pp0_iter1_reg(0),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(1),
      Q => A_addr_reg_243_pp0_iter1_reg(1),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(2),
      Q => A_addr_reg_243_pp0_iter1_reg(2),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(3),
      Q => A_addr_reg_243_pp0_iter1_reg(3),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(4),
      Q => A_addr_reg_243_pp0_iter1_reg(4),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(5),
      Q => A_addr_reg_243_pp0_iter1_reg(5),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(6),
      Q => A_addr_reg_243_pp0_iter1_reg(6),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(7),
      Q => A_addr_reg_243_pp0_iter1_reg(7),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(8),
      Q => A_addr_reg_243_pp0_iter1_reg(8),
      R => '0'
    );
\A_addr_reg_243_pp0_iter1_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => A_addr_reg_243(9),
      Q => A_addr_reg_243_pp0_iter1_reg(9),
      R => '0'
    );
\A_addr_reg_243_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(0),
      Q => A_addr_reg_243(0),
      R => '0'
    );
\A_addr_reg_243_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(1),
      Q => A_addr_reg_243(1),
      R => '0'
    );
\A_addr_reg_243_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(2),
      Q => A_addr_reg_243(2),
      R => '0'
    );
\A_addr_reg_243_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(3),
      Q => A_addr_reg_243(3),
      R => '0'
    );
\A_addr_reg_243_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(4),
      Q => A_addr_reg_243(4),
      R => '0'
    );
\A_addr_reg_243_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(5),
      Q => A_addr_reg_243(5),
      R => '0'
    );
\A_addr_reg_243_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(6),
      Q => A_addr_reg_243(6),
      R => '0'
    );
\A_addr_reg_243_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(7),
      Q => A_addr_reg_243(7),
      R => '0'
    );
\A_addr_reg_243_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(8),
      Q => A_addr_reg_243(8),
      R => '0'
    );
\A_addr_reg_243_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_q0(9),
      Q => A_addr_reg_243(9),
      R => '0'
    );
\A_address0[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(0),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(0),
      O => A_address0(0)
    );
\A_address0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(1),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(1),
      O => A_address0(1)
    );
\A_address0[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(2),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(2),
      O => A_address0(2)
    );
\A_address0[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(3),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(3),
      O => A_address0(3)
    );
\A_address0[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(4),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(4),
      O => A_address0(4)
    );
\A_address0[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(5),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(5),
      O => A_address0(5)
    );
\A_address0[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(6),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(6),
      O => A_address0(6)
    );
\A_address0[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(7),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(7),
      O => A_address0(7)
    );
\A_address0[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(8),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(8),
      O => A_address0(8)
    );
\A_address0[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_243_pp0_iter1_reg(9),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => addr_q0(9),
      O => A_address0(9)
    );
A_ce0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA088A088A088"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_start,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ap_CS_fsm_pp0_stage2,
      O => A_ce0
    );
\A_d0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \result_reg_286_reg[0]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(0)
    );
\A_d0[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[10]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(10)
    );
\A_d0[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[11]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(11)
    );
\A_d0[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[12]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(12)
    );
\A_d0[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[13]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(13)
    );
\A_d0[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[14]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(14)
    );
\A_d0[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[15]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(15)
    );
\A_d0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[1]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(1)
    );
\A_d0[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[2]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(2)
    );
\A_d0[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[3]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(3)
    );
\A_d0[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[4]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(4)
    );
\A_d0[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[5]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(5)
    );
\A_d0[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[6]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(6)
    );
\A_d0[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[7]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(7)
    );
\A_d0[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[8]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(8)
    );
\A_d0[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_286_reg[9]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => A_d0(9)
    );
addr_ce0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => addr_ce0
    );
\addr_cmp_reg_248[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_10_n_0\
    );
\addr_cmp_reg_248[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_11_n_0\
    );
\addr_cmp_reg_248[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_12_n_0\
    );
\addr_cmp_reg_248[0]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_13_n_0\
    );
\addr_cmp_reg_248[0]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_14_n_0\
    );
\addr_cmp_reg_248[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21000021"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[31]\,
      I1 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      I2 => addr_q0(31),
      I3 => \reuse_addr_reg_fu_48_reg_n_0_[30]\,
      I4 => addr_q0(30),
      O => \addr_cmp_reg_248[0]_i_15_n_0\
    );
\addr_cmp_reg_248[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[28]\,
      I1 => addr_q0(28),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[27]\,
      I3 => addr_q0(27),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[29]\,
      I5 => addr_q0(29),
      O => \addr_cmp_reg_248[0]_i_16_n_0\
    );
\addr_cmp_reg_248[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[26]\,
      I1 => addr_q0(26),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[24]\,
      I3 => addr_q0(24),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[25]\,
      I5 => addr_q0(25),
      O => \addr_cmp_reg_248[0]_i_17_n_0\
    );
\addr_cmp_reg_248[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[23]\,
      I1 => addr_q0(23),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[21]\,
      I3 => addr_q0(21),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[22]\,
      I5 => addr_q0(22),
      O => \addr_cmp_reg_248[0]_i_18_n_0\
    );
\addr_cmp_reg_248[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[19]\,
      I1 => addr_q0(19),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[18]\,
      I3 => addr_q0(18),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[20]\,
      I5 => addr_q0(20),
      O => \addr_cmp_reg_248[0]_i_19_n_0\
    );
\addr_cmp_reg_248[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[16]\,
      I1 => addr_q0(16),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[15]\,
      I3 => addr_q0(15),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[17]\,
      I5 => addr_q0(17),
      O => \addr_cmp_reg_248[0]_i_20_n_0\
    );
\addr_cmp_reg_248[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[13]\,
      I1 => addr_q0(13),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[12]\,
      I3 => addr_q0(12),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[14]\,
      I5 => addr_q0(14),
      O => \addr_cmp_reg_248[0]_i_21_n_0\
    );
\addr_cmp_reg_248[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[10]\,
      I1 => addr_q0(10),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[9]\,
      I3 => addr_q0(9),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[11]\,
      I5 => addr_q0(11),
      O => \addr_cmp_reg_248[0]_i_22_n_0\
    );
\addr_cmp_reg_248[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[7]\,
      I1 => addr_q0(7),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[6]\,
      I3 => addr_q0(6),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[8]\,
      I5 => addr_q0(8),
      O => \addr_cmp_reg_248[0]_i_23_n_0\
    );
\addr_cmp_reg_248[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[5]\,
      I1 => addr_q0(5),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[3]\,
      I3 => addr_q0(3),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[4]\,
      I5 => addr_q0(4),
      O => \addr_cmp_reg_248[0]_i_24_n_0\
    );
\addr_cmp_reg_248[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[1]\,
      I1 => addr_q0(1),
      I2 => \reuse_addr_reg_fu_48_reg_n_0_[0]\,
      I3 => addr_q0(0),
      I4 => \reuse_addr_reg_fu_48_reg_n_0_[2]\,
      I5 => addr_q0(2),
      O => \addr_cmp_reg_248[0]_i_25_n_0\
    );
\addr_cmp_reg_248[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_3_n_0\
    );
\addr_cmp_reg_248[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_4_n_0\
    );
\addr_cmp_reg_248[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_5_n_0\
    );
\addr_cmp_reg_248[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_6_n_0\
    );
\addr_cmp_reg_248[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_7_n_0\
    );
\addr_cmp_reg_248[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      O => \addr_cmp_reg_248[0]_i_8_n_0\
    );
\addr_cmp_reg_248_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_113,
      D => addr_cmp_fu_138_p2,
      Q => addr_cmp_reg_248,
      R => '0'
    );
\addr_cmp_reg_248_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_cmp_reg_248_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_addr_cmp_reg_248_reg[0]_i_1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => addr_cmp_fu_138_p2,
      CO(4) => \addr_cmp_reg_248_reg[0]_i_1_n_3\,
      CO(3) => \addr_cmp_reg_248_reg[0]_i_1_n_4\,
      CO(2) => \addr_cmp_reg_248_reg[0]_i_1_n_5\,
      CO(1) => \addr_cmp_reg_248_reg[0]_i_1_n_6\,
      CO(0) => \addr_cmp_reg_248_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_addr_cmp_reg_248_reg[0]_i_1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => \addr_cmp_reg_248[0]_i_3_n_0\,
      S(4) => \addr_cmp_reg_248[0]_i_4_n_0\,
      S(3) => \addr_cmp_reg_248[0]_i_5_n_0\,
      S(2) => \addr_cmp_reg_248[0]_i_6_n_0\,
      S(1) => \addr_cmp_reg_248[0]_i_7_n_0\,
      S(0) => \addr_cmp_reg_248[0]_i_8_n_0\
    );
\addr_cmp_reg_248_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_cmp_reg_248_reg[0]_i_9_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_cmp_reg_248_reg[0]_i_2_n_0\,
      CO(6) => \addr_cmp_reg_248_reg[0]_i_2_n_1\,
      CO(5) => \addr_cmp_reg_248_reg[0]_i_2_n_2\,
      CO(4) => \addr_cmp_reg_248_reg[0]_i_2_n_3\,
      CO(3) => \addr_cmp_reg_248_reg[0]_i_2_n_4\,
      CO(2) => \addr_cmp_reg_248_reg[0]_i_2_n_5\,
      CO(1) => \addr_cmp_reg_248_reg[0]_i_2_n_6\,
      CO(0) => \addr_cmp_reg_248_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_addr_cmp_reg_248_reg[0]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \addr_cmp_reg_248[0]_i_10_n_0\,
      S(6) => \addr_cmp_reg_248[0]_i_11_n_0\,
      S(5) => \addr_cmp_reg_248[0]_i_12_n_0\,
      S(4) => \addr_cmp_reg_248[0]_i_13_n_0\,
      S(3) => \addr_cmp_reg_248[0]_i_14_n_0\,
      S(2) => \addr_cmp_reg_248[0]_i_15_n_0\,
      S(1) => \addr_cmp_reg_248[0]_i_16_n_0\,
      S(0) => \addr_cmp_reg_248[0]_i_17_n_0\
    );
\addr_cmp_reg_248_reg[0]_i_9\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \addr_cmp_reg_248_reg[0]_i_9_n_0\,
      CO(6) => \addr_cmp_reg_248_reg[0]_i_9_n_1\,
      CO(5) => \addr_cmp_reg_248_reg[0]_i_9_n_2\,
      CO(4) => \addr_cmp_reg_248_reg[0]_i_9_n_3\,
      CO(3) => \addr_cmp_reg_248_reg[0]_i_9_n_4\,
      CO(2) => \addr_cmp_reg_248_reg[0]_i_9_n_5\,
      CO(1) => \addr_cmp_reg_248_reg[0]_i_9_n_6\,
      CO(0) => \addr_cmp_reg_248_reg[0]_i_9_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_addr_cmp_reg_248_reg[0]_i_9_O_UNCONNECTED\(7 downto 0),
      S(7) => \addr_cmp_reg_248[0]_i_18_n_0\,
      S(6) => \addr_cmp_reg_248[0]_i_19_n_0\,
      S(5) => \addr_cmp_reg_248[0]_i_20_n_0\,
      S(4) => \addr_cmp_reg_248[0]_i_21_n_0\,
      S(3) => \addr_cmp_reg_248[0]_i_22_n_0\,
      S(2) => \addr_cmp_reg_248[0]_i_23_n_0\,
      S(1) => \addr_cmp_reg_248[0]_i_24_n_0\,
      S(0) => \addr_cmp_reg_248[0]_i_25_n_0\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAAE"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage5,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_start,
      I4 => \^ap_done\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage4,
      I1 => ap_CS_fsm_pp0_stage5,
      I2 => \ap_CS_fsm[1]_i_2_n_0\,
      I3 => ap_CS_fsm_pp0_stage1,
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => ap_CS_fsm_pp0_stage3,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter1,
      O => \ap_CS_fsm[1]_i_2_n_0\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF0000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => \icmp_ln6_reg_234_reg_n_0_[0]\,
      I4 => ap_CS_fsm_pp0_stage2,
      O => ap_NS_fsm(3)
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
      D => ap_CS_fsm_pp0_stage1,
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
      D => ap_NS_fsm(3),
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
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage4,
      Q => ap_CS_fsm_pp0_stage5,
      R => ap_rst
    );
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000504450445044"
    )
        port map (
      I0 => ap_rst,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_start,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => \icmp_ln6_reg_234_reg_n_0_[0]\,
      I5 => ap_CS_fsm_pp0_stage2,
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
      INIT => X"00404540"
    )
        port map (
      I0 => ap_rst,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_CS_fsm_pp0_stage5,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_CS_fsm_pp0_stage2,
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
ap_idle_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88088000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage2,
      I1 => \icmp_ln6_reg_234_reg_n_0_[0]\,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_start,
      I4 => ap_enable_reg_pp0_iter0_reg,
      O => \^ap_done\
    );
\ap_return[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFE000"
    )
        port map (
      I0 => \result_reg_286_reg[0]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(0),
      O => \^ap_return\(0)
    );
\ap_return[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[10]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(10),
      O => \^ap_return\(10)
    );
\ap_return[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[11]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(11),
      O => \^ap_return\(11)
    );
\ap_return[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[12]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(12),
      O => \^ap_return\(12)
    );
\ap_return[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[13]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(13),
      O => \^ap_return\(13)
    );
\ap_return[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[14]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(14),
      O => \^ap_return\(14)
    );
\ap_return[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[15]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(15),
      O => \^ap_return\(15)
    );
\ap_return[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[1]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(1),
      O => \^ap_return\(1)
    );
\ap_return[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[2]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(2),
      O => \^ap_return\(2)
    );
\ap_return[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[3]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(3),
      O => \^ap_return\(3)
    );
\ap_return[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[4]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(4),
      O => \^ap_return\(4)
    );
\ap_return[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[5]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(5),
      O => \^ap_return\(5)
    );
\ap_return[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[6]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(6),
      O => \^ap_return\(6)
    );
\ap_return[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[7]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(7),
      O => \^ap_return\(7)
    );
\ap_return[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[8]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(8),
      O => \^ap_return\(8)
    );
\ap_return[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[9]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => result_2_fu_56(9),
      O => \^ap_return\(9)
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_flow_control_loop_pipe
     port map (
      D(9 downto 0) => p_0_in(9 downto 0),
      E(0) => i_fu_60,
      Q(3) => ap_CS_fsm_pp0_stage5,
      Q(2) => ap_CS_fsm_pp0_stage2,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      addr_address0(9 downto 0) => addr_address0(9 downto 0),
      \ap_CS_fsm_reg[0]\ => flow_control_loop_pipe_U_n_25,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_loop_init_reg_0 => flow_control_loop_pipe_U_n_0,
      ap_loop_init_reg_1 => \icmp_ln6_reg_234_reg_n_0_[0]\,
      ap_rst => ap_rst,
      ap_sig_allocacmp_i_11 => ap_sig_allocacmp_i_11,
      ap_start => ap_start,
      ap_start_0 => flow_control_loop_pipe_U_n_26,
      \i_fu_60_reg[0]\ => \i_fu_60[9]_i_5_n_0\,
      \i_fu_60_reg[0]_0\ => \i_fu_60[9]_i_6_n_0\,
      \i_fu_60_reg[9]\(9) => \i_fu_60_reg_n_0_[9]\,
      \i_fu_60_reg[9]\(8) => \i_fu_60_reg_n_0_[8]\,
      \i_fu_60_reg[9]\(7) => \i_fu_60_reg_n_0_[7]\,
      \i_fu_60_reg[9]\(6) => \i_fu_60_reg_n_0_[6]\,
      \i_fu_60_reg[9]\(5) => \i_fu_60_reg_n_0_[5]\,
      \i_fu_60_reg[9]\(4) => \i_fu_60_reg_n_0_[4]\,
      \i_fu_60_reg[9]\(3) => \i_fu_60_reg_n_0_[3]\,
      \i_fu_60_reg[9]\(2) => \i_fu_60_reg_n_0_[2]\,
      \i_fu_60_reg[9]\(1) => \i_fu_60_reg_n_0_[1]\,
      \i_fu_60_reg[9]\(0) => \i_fu_60_reg_n_0_[0]\,
      reuse_addr_reg_fu_48 => reuse_addr_reg_fu_48,
      \reuse_addr_reg_fu_48_reg[32]\ => \reuse_addr_reg_fu_48_reg_n_0_[32]\
    );
\i_fu_60[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \i_fu_60_reg_n_0_[9]\,
      I1 => \i_fu_60_reg_n_0_[8]\,
      I2 => \i_fu_60_reg_n_0_[7]\,
      I3 => \i_fu_60_reg_n_0_[6]\,
      O => \i_fu_60[9]_i_5_n_0\
    );
\i_fu_60[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \i_fu_60_reg_n_0_[4]\,
      I1 => \i_fu_60_reg_n_0_[3]\,
      I2 => \i_fu_60_reg_n_0_[2]\,
      O => \i_fu_60[9]_i_6_n_0\
    );
\i_fu_60_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(0),
      Q => \i_fu_60_reg_n_0_[0]\,
      R => '0'
    );
\i_fu_60_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(1),
      Q => \i_fu_60_reg_n_0_[1]\,
      R => '0'
    );
\i_fu_60_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(2),
      Q => \i_fu_60_reg_n_0_[2]\,
      R => '0'
    );
\i_fu_60_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(3),
      Q => \i_fu_60_reg_n_0_[3]\,
      R => '0'
    );
\i_fu_60_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(4),
      Q => \i_fu_60_reg_n_0_[4]\,
      R => '0'
    );
\i_fu_60_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(5),
      Q => \i_fu_60_reg_n_0_[5]\,
      R => '0'
    );
\i_fu_60_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(6),
      Q => \i_fu_60_reg_n_0_[6]\,
      R => '0'
    );
\i_fu_60_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(7),
      Q => \i_fu_60_reg_n_0_[7]\,
      R => '0'
    );
\i_fu_60_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(8),
      Q => \i_fu_60_reg_n_0_[8]\,
      R => '0'
    );
\i_fu_60_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_60,
      D => p_0_in(9),
      Q => \i_fu_60_reg_n_0_[9]\,
      R => '0'
    );
\icmp_ln10_reg_261[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(15),
      I1 => beta_fu_152_p3(14),
      O => \icmp_ln10_reg_261[0]_i_20_n_0\
    );
\icmp_ln10_reg_261[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(13),
      I1 => beta_fu_152_p3(12),
      O => \icmp_ln10_reg_261[0]_i_21_n_0\
    );
\icmp_ln10_reg_261[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(11),
      I1 => beta_fu_152_p3(10),
      O => \icmp_ln10_reg_261[0]_i_22_n_0\
    );
\icmp_ln10_reg_261[0]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(9),
      I1 => beta_fu_152_p3(8),
      O => \icmp_ln10_reg_261[0]_i_23_n_0\
    );
\icmp_ln10_reg_261[0]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(7),
      I1 => beta_fu_152_p3(6),
      O => \icmp_ln10_reg_261[0]_i_24_n_0\
    );
\icmp_ln10_reg_261[0]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(5),
      I1 => beta_fu_152_p3(4),
      O => \icmp_ln10_reg_261[0]_i_25_n_0\
    );
\icmp_ln10_reg_261[0]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(3),
      I1 => beta_fu_152_p3(2),
      O => \icmp_ln10_reg_261[0]_i_26_n_0\
    );
\icmp_ln10_reg_261[0]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beta_fu_152_p3(1),
      I1 => beta_fu_152_p3(0),
      O => \icmp_ln10_reg_261[0]_i_27_n_0\
    );
\icmp_ln10_reg_261[0]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(14),
      I1 => beta_fu_152_p3(15),
      O => \icmp_ln10_reg_261[0]_i_28_n_0\
    );
\icmp_ln10_reg_261[0]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(12),
      I1 => beta_fu_152_p3(13),
      O => \icmp_ln10_reg_261[0]_i_29_n_0\
    );
\icmp_ln10_reg_261[0]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(10),
      I1 => beta_fu_152_p3(11),
      O => \icmp_ln10_reg_261[0]_i_30_n_0\
    );
\icmp_ln10_reg_261[0]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(8),
      I1 => beta_fu_152_p3(9),
      O => \icmp_ln10_reg_261[0]_i_31_n_0\
    );
\icmp_ln10_reg_261[0]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(6),
      I1 => beta_fu_152_p3(7),
      O => \icmp_ln10_reg_261[0]_i_32_n_0\
    );
\icmp_ln10_reg_261[0]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(4),
      I1 => beta_fu_152_p3(5),
      O => \icmp_ln10_reg_261[0]_i_33_n_0\
    );
\icmp_ln10_reg_261[0]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(2),
      I1 => beta_fu_152_p3(3),
      O => \icmp_ln10_reg_261[0]_i_34_n_0\
    );
\icmp_ln10_reg_261[0]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_fu_152_p3(0),
      I1 => beta_fu_152_p3(1),
      O => \icmp_ln10_reg_261[0]_i_35_n_0\
    );
\icmp_ln10_reg_261[0]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(30),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(30),
      O => \icmp_ln10_reg_261[0]_i_36_n_0\
    );
\icmp_ln10_reg_261[0]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      O => \icmp_ln10_reg_261[0]_i_37_n_0\
    );
\icmp_ln10_reg_261[0]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(31),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(31),
      O => \icmp_ln10_reg_261[0]_i_38_n_0\
    );
\icmp_ln10_reg_261[0]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(29),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(29),
      O => \icmp_ln10_reg_261[0]_i_39_n_0\
    );
\icmp_ln10_reg_261[0]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(28),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(28),
      O => \icmp_ln10_reg_261[0]_i_40_n_0\
    );
\icmp_ln10_reg_261[0]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(27),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(27),
      O => \icmp_ln10_reg_261[0]_i_41_n_0\
    );
\icmp_ln10_reg_261[0]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(26),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(26),
      O => \icmp_ln10_reg_261[0]_i_42_n_0\
    );
\icmp_ln10_reg_261[0]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(25),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(25),
      O => \icmp_ln10_reg_261[0]_i_43_n_0\
    );
\icmp_ln10_reg_261[0]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(24),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(24),
      O => \icmp_ln10_reg_261[0]_i_44_n_0\
    );
\icmp_ln10_reg_261[0]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(23),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(23),
      O => \icmp_ln10_reg_261[0]_i_45_n_0\
    );
\icmp_ln10_reg_261[0]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(22),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(22),
      O => \icmp_ln10_reg_261[0]_i_46_n_0\
    );
\icmp_ln10_reg_261[0]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(21),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(21),
      O => \icmp_ln10_reg_261[0]_i_47_n_0\
    );
\icmp_ln10_reg_261[0]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(20),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(20),
      O => \icmp_ln10_reg_261[0]_i_48_n_0\
    );
\icmp_ln10_reg_261[0]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(19),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(19),
      O => \icmp_ln10_reg_261[0]_i_49_n_0\
    );
\icmp_ln10_reg_261[0]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(18),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(18),
      O => \icmp_ln10_reg_261[0]_i_50_n_0\
    );
\icmp_ln10_reg_261[0]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(17),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(17),
      O => \icmp_ln10_reg_261[0]_i_51_n_0\
    );
\icmp_ln10_reg_261[0]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A00"
    )
        port map (
      I0 => reuse_reg_fu_52(16),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => addr_cmp_reg_248,
      I4 => A_q0(16),
      O => \icmp_ln10_reg_261[0]_i_52_n_0\
    );
\icmp_ln10_reg_261_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_1_1_U3_n_132,
      Q => \icmp_ln10_reg_261_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln10_reg_261_reg[0]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \icmp_ln10_reg_261_reg[0]_i_3_n_0\,
      CO(6) => \icmp_ln10_reg_261_reg[0]_i_3_n_1\,
      CO(5) => \icmp_ln10_reg_261_reg[0]_i_3_n_2\,
      CO(4) => \icmp_ln10_reg_261_reg[0]_i_3_n_3\,
      CO(3) => \icmp_ln10_reg_261_reg[0]_i_3_n_4\,
      CO(2) => \icmp_ln10_reg_261_reg[0]_i_3_n_5\,
      CO(1) => \icmp_ln10_reg_261_reg[0]_i_3_n_6\,
      CO(0) => \icmp_ln10_reg_261_reg[0]_i_3_n_7\,
      DI(7) => \icmp_ln10_reg_261[0]_i_20_n_0\,
      DI(6) => \icmp_ln10_reg_261[0]_i_21_n_0\,
      DI(5) => \icmp_ln10_reg_261[0]_i_22_n_0\,
      DI(4) => \icmp_ln10_reg_261[0]_i_23_n_0\,
      DI(3) => \icmp_ln10_reg_261[0]_i_24_n_0\,
      DI(2) => \icmp_ln10_reg_261[0]_i_25_n_0\,
      DI(1) => \icmp_ln10_reg_261[0]_i_26_n_0\,
      DI(0) => \icmp_ln10_reg_261[0]_i_27_n_0\,
      O(7 downto 0) => \NLW_icmp_ln10_reg_261_reg[0]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7) => \icmp_ln10_reg_261[0]_i_28_n_0\,
      S(6) => \icmp_ln10_reg_261[0]_i_29_n_0\,
      S(5) => \icmp_ln10_reg_261[0]_i_30_n_0\,
      S(4) => \icmp_ln10_reg_261[0]_i_31_n_0\,
      S(3) => \icmp_ln10_reg_261[0]_i_32_n_0\,
      S(2) => \icmp_ln10_reg_261[0]_i_33_n_0\,
      S(1) => \icmp_ln10_reg_261[0]_i_34_n_0\,
      S(0) => \icmp_ln10_reg_261[0]_i_35_n_0\
    );
\icmp_ln6_reg_234_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_25,
      Q => \icmp_ln6_reg_234_reg_n_0_[0]\,
      R => '0'
    );
mul_32s_32s_32_1_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1
     port map (
      A(15 downto 0) => beta_fu_152_p3(15 downto 0),
      A_q0(15 downto 0) => A_q0(15 downto 0),
      CEA2 => beta_reg_2530,
      CO(0) => mul_32s_32s_32_1_1_U2_n_67,
      D(16) => mul_32s_32s_32_1_1_U1_n_18,
      D(15) => mul_32s_32s_32_1_1_U1_n_19,
      D(14) => mul_32s_32s_32_1_1_U1_n_20,
      D(13) => mul_32s_32s_32_1_1_U1_n_21,
      D(12) => mul_32s_32s_32_1_1_U1_n_22,
      D(11) => mul_32s_32s_32_1_1_U1_n_23,
      D(10) => mul_32s_32s_32_1_1_U1_n_24,
      D(9) => mul_32s_32s_32_1_1_U1_n_25,
      D(8) => mul_32s_32s_32_1_1_U1_n_26,
      D(7) => mul_32s_32s_32_1_1_U1_n_27,
      D(6) => mul_32s_32s_32_1_1_U1_n_28,
      D(5) => mul_32s_32s_32_1_1_U1_n_29,
      D(4) => mul_32s_32s_32_1_1_U1_n_30,
      D(3) => mul_32s_32s_32_1_1_U1_n_31,
      D(2) => mul_32s_32s_32_1_1_U1_n_32,
      D(1) => mul_32s_32s_32_1_1_U1_n_33,
      D(0) => mul_32s_32s_32_1_1_U1_n_34,
      DSP_A_B_DATA_INST(15 downto 0) => reuse_reg_fu_52(15 downto 0),
      DSP_A_B_DATA_INST_0(15) => \result_reg_286_reg[15]__0_n_0\,
      DSP_A_B_DATA_INST_0(14) => \result_reg_286_reg[14]__0_n_0\,
      DSP_A_B_DATA_INST_0(13) => \result_reg_286_reg[13]__0_n_0\,
      DSP_A_B_DATA_INST_0(12) => \result_reg_286_reg[12]__0_n_0\,
      DSP_A_B_DATA_INST_0(11) => \result_reg_286_reg[11]__0_n_0\,
      DSP_A_B_DATA_INST_0(10) => \result_reg_286_reg[10]__0_n_0\,
      DSP_A_B_DATA_INST_0(9) => \result_reg_286_reg[9]__0_n_0\,
      DSP_A_B_DATA_INST_0(8) => \result_reg_286_reg[8]__0_n_0\,
      DSP_A_B_DATA_INST_0(7) => \result_reg_286_reg[7]__0_n_0\,
      DSP_A_B_DATA_INST_0(6) => \result_reg_286_reg[6]__0_n_0\,
      DSP_A_B_DATA_INST_0(5) => \result_reg_286_reg[5]__0_n_0\,
      DSP_A_B_DATA_INST_0(4) => \result_reg_286_reg[4]__0_n_0\,
      DSP_A_B_DATA_INST_0(3) => \result_reg_286_reg[3]__0_n_0\,
      DSP_A_B_DATA_INST_0(2) => \result_reg_286_reg[2]__0_n_0\,
      DSP_A_B_DATA_INST_0(1) => \result_reg_286_reg[1]__0_n_0\,
      DSP_A_B_DATA_INST_0(0) => \result_reg_286_reg[0]__0_n_0\,
      E(0) => mul_ln13_reg_2660,
      P(14) => mul_ln13_reg_266_reg_n_91,
      P(13) => mul_ln13_reg_266_reg_n_92,
      P(12) => mul_ln13_reg_266_reg_n_93,
      P(11) => mul_ln13_reg_266_reg_n_94,
      P(10) => mul_ln13_reg_266_reg_n_95,
      P(9) => mul_ln13_reg_266_reg_n_96,
      P(8) => mul_ln13_reg_266_reg_n_97,
      P(7) => mul_ln13_reg_266_reg_n_98,
      P(6) => mul_ln13_reg_266_reg_n_99,
      P(5) => mul_ln13_reg_266_reg_n_100,
      P(4) => mul_ln13_reg_266_reg_n_101,
      P(3) => mul_ln13_reg_266_reg_n_102,
      P(2) => mul_ln13_reg_266_reg_n_103,
      P(1) => mul_ln13_reg_266_reg_n_104,
      P(0) => mul_ln13_reg_266_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U1_n_35,
      PCOUT(46) => mul_32s_32s_32_1_1_U1_n_36,
      PCOUT(45) => mul_32s_32s_32_1_1_U1_n_37,
      PCOUT(44) => mul_32s_32s_32_1_1_U1_n_38,
      PCOUT(43) => mul_32s_32s_32_1_1_U1_n_39,
      PCOUT(42) => mul_32s_32s_32_1_1_U1_n_40,
      PCOUT(41) => mul_32s_32s_32_1_1_U1_n_41,
      PCOUT(40) => mul_32s_32s_32_1_1_U1_n_42,
      PCOUT(39) => mul_32s_32s_32_1_1_U1_n_43,
      PCOUT(38) => mul_32s_32s_32_1_1_U1_n_44,
      PCOUT(37) => mul_32s_32s_32_1_1_U1_n_45,
      PCOUT(36) => mul_32s_32s_32_1_1_U1_n_46,
      PCOUT(35) => mul_32s_32s_32_1_1_U1_n_47,
      PCOUT(34) => mul_32s_32s_32_1_1_U1_n_48,
      PCOUT(33) => mul_32s_32s_32_1_1_U1_n_49,
      PCOUT(32) => mul_32s_32s_32_1_1_U1_n_50,
      PCOUT(31) => mul_32s_32s_32_1_1_U1_n_51,
      PCOUT(30) => mul_32s_32s_32_1_1_U1_n_52,
      PCOUT(29) => mul_32s_32s_32_1_1_U1_n_53,
      PCOUT(28) => mul_32s_32s_32_1_1_U1_n_54,
      PCOUT(27) => mul_32s_32s_32_1_1_U1_n_55,
      PCOUT(26) => mul_32s_32s_32_1_1_U1_n_56,
      PCOUT(25) => mul_32s_32s_32_1_1_U1_n_57,
      PCOUT(24) => mul_32s_32s_32_1_1_U1_n_58,
      PCOUT(23) => mul_32s_32s_32_1_1_U1_n_59,
      PCOUT(22) => mul_32s_32s_32_1_1_U1_n_60,
      PCOUT(21) => mul_32s_32s_32_1_1_U1_n_61,
      PCOUT(20) => mul_32s_32s_32_1_1_U1_n_62,
      PCOUT(19) => mul_32s_32s_32_1_1_U1_n_63,
      PCOUT(18) => mul_32s_32s_32_1_1_U1_n_64,
      PCOUT(17) => mul_32s_32s_32_1_1_U1_n_65,
      PCOUT(16) => mul_32s_32s_32_1_1_U1_n_66,
      PCOUT(15) => mul_32s_32s_32_1_1_U1_n_67,
      PCOUT(14) => mul_32s_32s_32_1_1_U1_n_68,
      PCOUT(13) => mul_32s_32s_32_1_1_U1_n_69,
      PCOUT(12) => mul_32s_32s_32_1_1_U1_n_70,
      PCOUT(11) => mul_32s_32s_32_1_1_U1_n_71,
      PCOUT(10) => mul_32s_32s_32_1_1_U1_n_72,
      PCOUT(9) => mul_32s_32s_32_1_1_U1_n_73,
      PCOUT(8) => mul_32s_32s_32_1_1_U1_n_74,
      PCOUT(7) => mul_32s_32s_32_1_1_U1_n_75,
      PCOUT(6) => mul_32s_32s_32_1_1_U1_n_76,
      PCOUT(5) => mul_32s_32s_32_1_1_U1_n_77,
      PCOUT(4) => mul_32s_32s_32_1_1_U1_n_78,
      PCOUT(3) => mul_32s_32s_32_1_1_U1_n_79,
      PCOUT(2) => mul_32s_32s_32_1_1_U1_n_80,
      PCOUT(1) => mul_32s_32s_32_1_1_U1_n_81,
      PCOUT(0) => mul_32s_32s_32_1_1_U1_n_82,
      Q(7) => \mul_ln13_reg_266_reg[16]__0_n_0\,
      Q(6) => \mul_ln13_reg_266_reg[15]__0_n_0\,
      Q(5) => \mul_ln13_reg_266_reg[14]__0_n_0\,
      Q(4) => \mul_ln13_reg_266_reg[13]__0_n_0\,
      Q(3) => \mul_ln13_reg_266_reg[12]__0_n_0\,
      Q(2) => \mul_ln13_reg_266_reg[11]__0_n_0\,
      Q(1) => \mul_ln13_reg_266_reg[10]__0_n_0\,
      Q(0) => \mul_ln13_reg_266_reg[9]__0_n_0\,
      add_ln13_fu_169_p2(22 downto 0) => add_ln13_fu_169_p2(31 downto 9),
      addr_cmp_reg_248 => addr_cmp_reg_248,
      \ap_CS_fsm_reg[2]\ => \^a_we0\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      beta_fu_152_p3(15 downto 0) => beta_fu_152_p3(31 downto 16),
      \mul_ln13_reg_266_reg[0]__0\ => \icmp_ln10_reg_261_reg_n_0_[0]\,
      \mul_ln13_reg_266_reg[0]__0_0\(1) => ap_CS_fsm_pp0_stage3,
      \mul_ln13_reg_266_reg[0]__0_0\(0) => ap_CS_fsm_pp0_stage2,
      \mul_ln13_reg_266_reg[0]__0_1\ => \icmp_ln6_reg_234_reg_n_0_[0]\
    );
mul_32s_32s_32_1_1_U2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_0
     port map (
      CEA2 => beta_reg_2530,
      CEB2 => add_ln13_reg_2710,
      CO(0) => mul_32s_32s_32_1_1_U2_n_67,
      D(16) => mul_32s_32s_32_1_1_U2_n_2,
      D(15) => mul_32s_32s_32_1_1_U2_n_3,
      D(14) => mul_32s_32s_32_1_1_U2_n_4,
      D(13) => mul_32s_32s_32_1_1_U2_n_5,
      D(12) => mul_32s_32s_32_1_1_U2_n_6,
      D(11) => mul_32s_32s_32_1_1_U2_n_7,
      D(10) => mul_32s_32s_32_1_1_U2_n_8,
      D(9) => mul_32s_32s_32_1_1_U2_n_9,
      D(8) => mul_32s_32s_32_1_1_U2_n_10,
      D(7) => mul_32s_32s_32_1_1_U2_n_11,
      D(6) => mul_32s_32s_32_1_1_U2_n_12,
      D(5) => mul_32s_32s_32_1_1_U2_n_13,
      D(4) => mul_32s_32s_32_1_1_U2_n_14,
      D(3) => mul_32s_32s_32_1_1_U2_n_15,
      D(2) => mul_32s_32s_32_1_1_U2_n_16,
      D(1) => mul_32s_32s_32_1_1_U2_n_17,
      D(0) => mul_32s_32s_32_1_1_U2_n_18,
      DSP_ALU_INST(7 downto 0) => add_ln13_fu_169_p2(16 downto 9),
      DSP_A_B_DATA_INST(8) => \mul_ln13_reg_266_reg[8]__0_n_0\,
      DSP_A_B_DATA_INST(7) => \mul_ln13_reg_266_reg[7]__0_n_0\,
      DSP_A_B_DATA_INST(6) => \mul_ln13_reg_266_reg[6]__0_n_0\,
      DSP_A_B_DATA_INST(5) => \mul_ln13_reg_266_reg[5]__0_n_0\,
      DSP_A_B_DATA_INST(4) => \mul_ln13_reg_266_reg[4]__0_n_0\,
      DSP_A_B_DATA_INST(3) => \mul_ln13_reg_266_reg[3]__0_n_0\,
      DSP_A_B_DATA_INST(2) => \mul_ln13_reg_266_reg[2]__0_n_0\,
      DSP_A_B_DATA_INST(1) => \mul_ln13_reg_266_reg[1]__0_n_0\,
      DSP_A_B_DATA_INST(0) => \mul_ln13_reg_266_reg[0]__0_n_0\,
      DSP_A_B_DATA_INST_0(0) => mul_32s_32s_32_1_1_U3_n_131,
      E(0) => mul_ln13_1_reg_2760,
      P(14) => mul_ln13_1_reg_276_reg_n_91,
      P(13) => mul_ln13_1_reg_276_reg_n_92,
      P(12) => mul_ln13_1_reg_276_reg_n_93,
      P(11) => mul_ln13_1_reg_276_reg_n_94,
      P(10) => mul_ln13_1_reg_276_reg_n_95,
      P(9) => mul_ln13_1_reg_276_reg_n_96,
      P(8) => mul_ln13_1_reg_276_reg_n_97,
      P(7) => mul_ln13_1_reg_276_reg_n_98,
      P(6) => mul_ln13_1_reg_276_reg_n_99,
      P(5) => mul_ln13_1_reg_276_reg_n_100,
      P(4) => mul_ln13_1_reg_276_reg_n_101,
      P(3) => mul_ln13_1_reg_276_reg_n_102,
      P(2) => mul_ln13_1_reg_276_reg_n_103,
      P(1) => mul_ln13_1_reg_276_reg_n_104,
      P(0) => mul_ln13_1_reg_276_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U2_n_19,
      PCOUT(46) => mul_32s_32s_32_1_1_U2_n_20,
      PCOUT(45) => mul_32s_32s_32_1_1_U2_n_21,
      PCOUT(44) => mul_32s_32s_32_1_1_U2_n_22,
      PCOUT(43) => mul_32s_32s_32_1_1_U2_n_23,
      PCOUT(42) => mul_32s_32s_32_1_1_U2_n_24,
      PCOUT(41) => mul_32s_32s_32_1_1_U2_n_25,
      PCOUT(40) => mul_32s_32s_32_1_1_U2_n_26,
      PCOUT(39) => mul_32s_32s_32_1_1_U2_n_27,
      PCOUT(38) => mul_32s_32s_32_1_1_U2_n_28,
      PCOUT(37) => mul_32s_32s_32_1_1_U2_n_29,
      PCOUT(36) => mul_32s_32s_32_1_1_U2_n_30,
      PCOUT(35) => mul_32s_32s_32_1_1_U2_n_31,
      PCOUT(34) => mul_32s_32s_32_1_1_U2_n_32,
      PCOUT(33) => mul_32s_32s_32_1_1_U2_n_33,
      PCOUT(32) => mul_32s_32s_32_1_1_U2_n_34,
      PCOUT(31) => mul_32s_32s_32_1_1_U2_n_35,
      PCOUT(30) => mul_32s_32s_32_1_1_U2_n_36,
      PCOUT(29) => mul_32s_32s_32_1_1_U2_n_37,
      PCOUT(28) => mul_32s_32s_32_1_1_U2_n_38,
      PCOUT(27) => mul_32s_32s_32_1_1_U2_n_39,
      PCOUT(26) => mul_32s_32s_32_1_1_U2_n_40,
      PCOUT(25) => mul_32s_32s_32_1_1_U2_n_41,
      PCOUT(24) => mul_32s_32s_32_1_1_U2_n_42,
      PCOUT(23) => mul_32s_32s_32_1_1_U2_n_43,
      PCOUT(22) => mul_32s_32s_32_1_1_U2_n_44,
      PCOUT(21) => mul_32s_32s_32_1_1_U2_n_45,
      PCOUT(20) => mul_32s_32s_32_1_1_U2_n_46,
      PCOUT(19) => mul_32s_32s_32_1_1_U2_n_47,
      PCOUT(18) => mul_32s_32s_32_1_1_U2_n_48,
      PCOUT(17) => mul_32s_32s_32_1_1_U2_n_49,
      PCOUT(16) => mul_32s_32s_32_1_1_U2_n_50,
      PCOUT(15) => mul_32s_32s_32_1_1_U2_n_51,
      PCOUT(14) => mul_32s_32s_32_1_1_U2_n_52,
      PCOUT(13) => mul_32s_32s_32_1_1_U2_n_53,
      PCOUT(12) => mul_32s_32s_32_1_1_U2_n_54,
      PCOUT(11) => mul_32s_32s_32_1_1_U2_n_55,
      PCOUT(10) => mul_32s_32s_32_1_1_U2_n_56,
      PCOUT(9) => mul_32s_32s_32_1_1_U2_n_57,
      PCOUT(8) => mul_32s_32s_32_1_1_U2_n_58,
      PCOUT(7) => mul_32s_32s_32_1_1_U2_n_59,
      PCOUT(6) => mul_32s_32s_32_1_1_U2_n_60,
      PCOUT(5) => mul_32s_32s_32_1_1_U2_n_61,
      PCOUT(4) => mul_32s_32s_32_1_1_U2_n_62,
      PCOUT(3) => mul_32s_32s_32_1_1_U2_n_63,
      PCOUT(2) => mul_32s_32s_32_1_1_U2_n_64,
      PCOUT(1) => mul_32s_32s_32_1_1_U2_n_65,
      PCOUT(0) => mul_32s_32s_32_1_1_U2_n_66,
      Q(7) => \mul_ln13_1_reg_276_reg[16]__0_n_0\,
      Q(6) => \mul_ln13_1_reg_276_reg[15]__0_n_0\,
      Q(5) => \mul_ln13_1_reg_276_reg[14]__0_n_0\,
      Q(4) => \mul_ln13_1_reg_276_reg[13]__0_n_0\,
      Q(3) => \mul_ln13_1_reg_276_reg[12]__0_n_0\,
      Q(2) => \mul_ln13_1_reg_276_reg[11]__0_n_0\,
      Q(1) => \mul_ln13_1_reg_276_reg[10]__0_n_0\,
      Q(0) => \mul_ln13_1_reg_276_reg[9]__0_n_0\,
      add_ln13_1_fu_178_p2(22 downto 0) => add_ln13_1_fu_178_p2(31 downto 9),
      ap_clk => ap_clk,
      beta_fu_152_p3(31 downto 0) => beta_fu_152_p3(31 downto 0),
      \mul_ln13_1_reg_276_reg[0]__0\ => \icmp_ln6_reg_234_reg_n_0_[0]\,
      \mul_ln13_1_reg_276_reg[0]__0_0\(1) => ap_CS_fsm_pp0_stage5,
      \mul_ln13_1_reg_276_reg[0]__0_0\(0) => ap_CS_fsm_pp0_stage4,
      \mul_ln13_1_reg_276_reg[0]__0_1\ => \icmp_ln10_reg_261_reg_n_0_[0]\
    );
mul_32s_32s_32_1_1_U3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_1
     port map (
      A(15 downto 0) => beta_fu_152_p3(15 downto 0),
      A_d0(15 downto 0) => A_d0(31 downto 16),
      A_q0(15 downto 0) => A_q0(31 downto 16),
      CEA2 => beta_reg_2530,
      CEB2 => add_ln13_1_reg_2810,
      CO(0) => \icmp_ln10_reg_261_reg[0]_i_3_n_0\,
      D(16) => mul_32s_32s_32_1_1_U3_n_18,
      D(15) => mul_32s_32s_32_1_1_U3_n_19,
      D(14) => mul_32s_32s_32_1_1_U3_n_20,
      D(13) => mul_32s_32s_32_1_1_U3_n_21,
      D(12) => mul_32s_32s_32_1_1_U3_n_22,
      D(11) => mul_32s_32s_32_1_1_U3_n_23,
      D(10) => mul_32s_32s_32_1_1_U3_n_24,
      D(9) => mul_32s_32s_32_1_1_U3_n_25,
      D(8) => mul_32s_32s_32_1_1_U3_n_26,
      D(7) => mul_32s_32s_32_1_1_U3_n_27,
      D(6) => mul_32s_32s_32_1_1_U3_n_28,
      D(5) => mul_32s_32s_32_1_1_U3_n_29,
      D(4) => mul_32s_32s_32_1_1_U3_n_30,
      D(3) => mul_32s_32s_32_1_1_U3_n_31,
      D(2) => mul_32s_32s_32_1_1_U3_n_32,
      D(1) => mul_32s_32s_32_1_1_U3_n_33,
      D(0) => mul_32s_32s_32_1_1_U3_n_34,
      DSP_ALU_INST(7 downto 0) => add_ln13_1_fu_178_p2(16 downto 9),
      DSP_A_B_DATA_INST => \^a_we0\,
      DSP_A_B_DATA_INST_0(8) => \mul_ln13_1_reg_276_reg[8]__0_n_0\,
      DSP_A_B_DATA_INST_0(7) => \mul_ln13_1_reg_276_reg[7]__0_n_0\,
      DSP_A_B_DATA_INST_0(6) => \mul_ln13_1_reg_276_reg[6]__0_n_0\,
      DSP_A_B_DATA_INST_0(5) => \mul_ln13_1_reg_276_reg[5]__0_n_0\,
      DSP_A_B_DATA_INST_0(4) => \mul_ln13_1_reg_276_reg[4]__0_n_0\,
      DSP_A_B_DATA_INST_0(3) => \mul_ln13_1_reg_276_reg[3]__0_n_0\,
      DSP_A_B_DATA_INST_0(2) => \mul_ln13_1_reg_276_reg[2]__0_n_0\,
      DSP_A_B_DATA_INST_0(1) => \mul_ln13_1_reg_276_reg[1]__0_n_0\,
      DSP_A_B_DATA_INST_0(0) => \mul_ln13_1_reg_276_reg[0]__0_n_0\,
      E(0) => result_reg_2860,
      P(14) => result_reg_286_reg_n_91,
      P(13) => result_reg_286_reg_n_92,
      P(12) => result_reg_286_reg_n_93,
      P(11) => result_reg_286_reg_n_94,
      P(10) => result_reg_286_reg_n_95,
      P(9) => result_reg_286_reg_n_96,
      P(8) => result_reg_286_reg_n_97,
      P(7) => result_reg_286_reg_n_98,
      P(6) => result_reg_286_reg_n_99,
      P(5) => result_reg_286_reg_n_100,
      P(4) => result_reg_286_reg_n_101,
      P(3) => result_reg_286_reg_n_102,
      P(2) => result_reg_286_reg_n_103,
      P(1) => result_reg_286_reg_n_104,
      P(0) => result_reg_286_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U3_n_35,
      PCOUT(46) => mul_32s_32s_32_1_1_U3_n_36,
      PCOUT(45) => mul_32s_32s_32_1_1_U3_n_37,
      PCOUT(44) => mul_32s_32s_32_1_1_U3_n_38,
      PCOUT(43) => mul_32s_32s_32_1_1_U3_n_39,
      PCOUT(42) => mul_32s_32s_32_1_1_U3_n_40,
      PCOUT(41) => mul_32s_32s_32_1_1_U3_n_41,
      PCOUT(40) => mul_32s_32s_32_1_1_U3_n_42,
      PCOUT(39) => mul_32s_32s_32_1_1_U3_n_43,
      PCOUT(38) => mul_32s_32s_32_1_1_U3_n_44,
      PCOUT(37) => mul_32s_32s_32_1_1_U3_n_45,
      PCOUT(36) => mul_32s_32s_32_1_1_U3_n_46,
      PCOUT(35) => mul_32s_32s_32_1_1_U3_n_47,
      PCOUT(34) => mul_32s_32s_32_1_1_U3_n_48,
      PCOUT(33) => mul_32s_32s_32_1_1_U3_n_49,
      PCOUT(32) => mul_32s_32s_32_1_1_U3_n_50,
      PCOUT(31) => mul_32s_32s_32_1_1_U3_n_51,
      PCOUT(30) => mul_32s_32s_32_1_1_U3_n_52,
      PCOUT(29) => mul_32s_32s_32_1_1_U3_n_53,
      PCOUT(28) => mul_32s_32s_32_1_1_U3_n_54,
      PCOUT(27) => mul_32s_32s_32_1_1_U3_n_55,
      PCOUT(26) => mul_32s_32s_32_1_1_U3_n_56,
      PCOUT(25) => mul_32s_32s_32_1_1_U3_n_57,
      PCOUT(24) => mul_32s_32s_32_1_1_U3_n_58,
      PCOUT(23) => mul_32s_32s_32_1_1_U3_n_59,
      PCOUT(22) => mul_32s_32s_32_1_1_U3_n_60,
      PCOUT(21) => mul_32s_32s_32_1_1_U3_n_61,
      PCOUT(20) => mul_32s_32s_32_1_1_U3_n_62,
      PCOUT(19) => mul_32s_32s_32_1_1_U3_n_63,
      PCOUT(18) => mul_32s_32s_32_1_1_U3_n_64,
      PCOUT(17) => mul_32s_32s_32_1_1_U3_n_65,
      PCOUT(16) => mul_32s_32s_32_1_1_U3_n_66,
      PCOUT(15) => mul_32s_32s_32_1_1_U3_n_67,
      PCOUT(14) => mul_32s_32s_32_1_1_U3_n_68,
      PCOUT(13) => mul_32s_32s_32_1_1_U3_n_69,
      PCOUT(12) => mul_32s_32s_32_1_1_U3_n_70,
      PCOUT(11) => mul_32s_32s_32_1_1_U3_n_71,
      PCOUT(10) => mul_32s_32s_32_1_1_U3_n_72,
      PCOUT(9) => mul_32s_32s_32_1_1_U3_n_73,
      PCOUT(8) => mul_32s_32s_32_1_1_U3_n_74,
      PCOUT(7) => mul_32s_32s_32_1_1_U3_n_75,
      PCOUT(6) => mul_32s_32s_32_1_1_U3_n_76,
      PCOUT(5) => mul_32s_32s_32_1_1_U3_n_77,
      PCOUT(4) => mul_32s_32s_32_1_1_U3_n_78,
      PCOUT(3) => mul_32s_32s_32_1_1_U3_n_79,
      PCOUT(2) => mul_32s_32s_32_1_1_U3_n_80,
      PCOUT(1) => mul_32s_32s_32_1_1_U3_n_81,
      PCOUT(0) => mul_32s_32s_32_1_1_U3_n_82,
      Q(0) => \result_reg_286_reg[16]__0_n_0\,
      addr_cmp_reg_248 => addr_cmp_reg_248,
      \ap_CS_fsm_reg[2]\ => mul_32s_32s_32_1_1_U3_n_132,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_return(15 downto 0) => \^ap_return\(31 downto 16),
      beta_fu_152_p3(15 downto 0) => beta_fu_152_p3(31 downto 16),
      \icmp_ln10_reg_261_reg[0]\(15 downto 0) => ap_sig_allocacmp_reuse_reg_load(31 downto 16),
      \icmp_ln10_reg_261_reg[0]_0\ => \icmp_ln10_reg_261_reg_n_0_[0]\,
      \icmp_ln10_reg_261_reg[0]_1\(2) => ap_CS_fsm_pp0_stage2,
      \icmp_ln10_reg_261_reg[0]_1\(1) => ap_CS_fsm_pp0_stage1,
      \icmp_ln10_reg_261_reg[0]_1\(0) => \ap_CS_fsm_reg_n_0_[0]\,
      \icmp_ln10_reg_261_reg[0]_2\ => \icmp_ln6_reg_234_reg_n_0_[0]\,
      \icmp_ln10_reg_261_reg[0]_i_2_0\ => \icmp_ln10_reg_261[0]_i_52_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_1\ => \icmp_ln10_reg_261[0]_i_37_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_10\ => \icmp_ln10_reg_261[0]_i_43_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_11\ => \icmp_ln10_reg_261[0]_i_42_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_12\ => \icmp_ln10_reg_261[0]_i_41_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_13\ => \icmp_ln10_reg_261[0]_i_40_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_14\ => \icmp_ln10_reg_261[0]_i_39_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_15\ => \icmp_ln10_reg_261[0]_i_36_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_16\ => \icmp_ln10_reg_261[0]_i_38_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_2\ => \icmp_ln10_reg_261[0]_i_51_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_3\ => \icmp_ln10_reg_261[0]_i_50_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_4\ => \icmp_ln10_reg_261[0]_i_49_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_5\ => \icmp_ln10_reg_261[0]_i_48_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_6\ => \icmp_ln10_reg_261[0]_i_47_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_7\ => \icmp_ln10_reg_261[0]_i_46_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_8\ => \icmp_ln10_reg_261[0]_i_45_n_0\,
      \icmp_ln10_reg_261_reg[0]_i_2_9\ => \icmp_ln10_reg_261[0]_i_44_n_0\,
      \mul_ln13_1_reg_276_reg[0]__0\(0) => mul_32s_32s_32_1_1_U3_n_131,
      \result_2_fu_56_reg[31]\(15 downto 0) => result_2_fu_56(31 downto 16),
      \reuse_reg_fu_52_reg[31]\(15 downto 0) => reuse_reg_fu_52(31 downto 16)
    );
mul_ln13_1_reg_276_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
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
      A(16 downto 0) => beta_fu_152_p3(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln13_1_reg_276_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => add_ln13_fu_169_p2(31),
      B(16) => add_ln13_fu_169_p2(31),
      B(15) => add_ln13_fu_169_p2(31),
      B(14 downto 0) => add_ln13_fu_169_p2(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln13_1_reg_276_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln13_1_reg_276_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln13_1_reg_276_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => beta_reg_2530,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => add_ln13_reg_2710,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln13_1_reg_2760,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln13_1_reg_276_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln13_1_reg_276_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln13_1_reg_276_reg_n_58,
      P(46) => mul_ln13_1_reg_276_reg_n_59,
      P(45) => mul_ln13_1_reg_276_reg_n_60,
      P(44) => mul_ln13_1_reg_276_reg_n_61,
      P(43) => mul_ln13_1_reg_276_reg_n_62,
      P(42) => mul_ln13_1_reg_276_reg_n_63,
      P(41) => mul_ln13_1_reg_276_reg_n_64,
      P(40) => mul_ln13_1_reg_276_reg_n_65,
      P(39) => mul_ln13_1_reg_276_reg_n_66,
      P(38) => mul_ln13_1_reg_276_reg_n_67,
      P(37) => mul_ln13_1_reg_276_reg_n_68,
      P(36) => mul_ln13_1_reg_276_reg_n_69,
      P(35) => mul_ln13_1_reg_276_reg_n_70,
      P(34) => mul_ln13_1_reg_276_reg_n_71,
      P(33) => mul_ln13_1_reg_276_reg_n_72,
      P(32) => mul_ln13_1_reg_276_reg_n_73,
      P(31) => mul_ln13_1_reg_276_reg_n_74,
      P(30) => mul_ln13_1_reg_276_reg_n_75,
      P(29) => mul_ln13_1_reg_276_reg_n_76,
      P(28) => mul_ln13_1_reg_276_reg_n_77,
      P(27) => mul_ln13_1_reg_276_reg_n_78,
      P(26) => mul_ln13_1_reg_276_reg_n_79,
      P(25) => mul_ln13_1_reg_276_reg_n_80,
      P(24) => mul_ln13_1_reg_276_reg_n_81,
      P(23) => mul_ln13_1_reg_276_reg_n_82,
      P(22) => mul_ln13_1_reg_276_reg_n_83,
      P(21) => mul_ln13_1_reg_276_reg_n_84,
      P(20) => mul_ln13_1_reg_276_reg_n_85,
      P(19) => mul_ln13_1_reg_276_reg_n_86,
      P(18) => mul_ln13_1_reg_276_reg_n_87,
      P(17) => mul_ln13_1_reg_276_reg_n_88,
      P(16) => mul_ln13_1_reg_276_reg_n_89,
      P(15) => mul_ln13_1_reg_276_reg_n_90,
      P(14) => mul_ln13_1_reg_276_reg_n_91,
      P(13) => mul_ln13_1_reg_276_reg_n_92,
      P(12) => mul_ln13_1_reg_276_reg_n_93,
      P(11) => mul_ln13_1_reg_276_reg_n_94,
      P(10) => mul_ln13_1_reg_276_reg_n_95,
      P(9) => mul_ln13_1_reg_276_reg_n_96,
      P(8) => mul_ln13_1_reg_276_reg_n_97,
      P(7) => mul_ln13_1_reg_276_reg_n_98,
      P(6) => mul_ln13_1_reg_276_reg_n_99,
      P(5) => mul_ln13_1_reg_276_reg_n_100,
      P(4) => mul_ln13_1_reg_276_reg_n_101,
      P(3) => mul_ln13_1_reg_276_reg_n_102,
      P(2) => mul_ln13_1_reg_276_reg_n_103,
      P(1) => mul_ln13_1_reg_276_reg_n_104,
      P(0) => mul_ln13_1_reg_276_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln13_1_reg_276_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln13_1_reg_276_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U2_n_19,
      PCIN(46) => mul_32s_32s_32_1_1_U2_n_20,
      PCIN(45) => mul_32s_32s_32_1_1_U2_n_21,
      PCIN(44) => mul_32s_32s_32_1_1_U2_n_22,
      PCIN(43) => mul_32s_32s_32_1_1_U2_n_23,
      PCIN(42) => mul_32s_32s_32_1_1_U2_n_24,
      PCIN(41) => mul_32s_32s_32_1_1_U2_n_25,
      PCIN(40) => mul_32s_32s_32_1_1_U2_n_26,
      PCIN(39) => mul_32s_32s_32_1_1_U2_n_27,
      PCIN(38) => mul_32s_32s_32_1_1_U2_n_28,
      PCIN(37) => mul_32s_32s_32_1_1_U2_n_29,
      PCIN(36) => mul_32s_32s_32_1_1_U2_n_30,
      PCIN(35) => mul_32s_32s_32_1_1_U2_n_31,
      PCIN(34) => mul_32s_32s_32_1_1_U2_n_32,
      PCIN(33) => mul_32s_32s_32_1_1_U2_n_33,
      PCIN(32) => mul_32s_32s_32_1_1_U2_n_34,
      PCIN(31) => mul_32s_32s_32_1_1_U2_n_35,
      PCIN(30) => mul_32s_32s_32_1_1_U2_n_36,
      PCIN(29) => mul_32s_32s_32_1_1_U2_n_37,
      PCIN(28) => mul_32s_32s_32_1_1_U2_n_38,
      PCIN(27) => mul_32s_32s_32_1_1_U2_n_39,
      PCIN(26) => mul_32s_32s_32_1_1_U2_n_40,
      PCIN(25) => mul_32s_32s_32_1_1_U2_n_41,
      PCIN(24) => mul_32s_32s_32_1_1_U2_n_42,
      PCIN(23) => mul_32s_32s_32_1_1_U2_n_43,
      PCIN(22) => mul_32s_32s_32_1_1_U2_n_44,
      PCIN(21) => mul_32s_32s_32_1_1_U2_n_45,
      PCIN(20) => mul_32s_32s_32_1_1_U2_n_46,
      PCIN(19) => mul_32s_32s_32_1_1_U2_n_47,
      PCIN(18) => mul_32s_32s_32_1_1_U2_n_48,
      PCIN(17) => mul_32s_32s_32_1_1_U2_n_49,
      PCIN(16) => mul_32s_32s_32_1_1_U2_n_50,
      PCIN(15) => mul_32s_32s_32_1_1_U2_n_51,
      PCIN(14) => mul_32s_32s_32_1_1_U2_n_52,
      PCIN(13) => mul_32s_32s_32_1_1_U2_n_53,
      PCIN(12) => mul_32s_32s_32_1_1_U2_n_54,
      PCIN(11) => mul_32s_32s_32_1_1_U2_n_55,
      PCIN(10) => mul_32s_32s_32_1_1_U2_n_56,
      PCIN(9) => mul_32s_32s_32_1_1_U2_n_57,
      PCIN(8) => mul_32s_32s_32_1_1_U2_n_58,
      PCIN(7) => mul_32s_32s_32_1_1_U2_n_59,
      PCIN(6) => mul_32s_32s_32_1_1_U2_n_60,
      PCIN(5) => mul_32s_32s_32_1_1_U2_n_61,
      PCIN(4) => mul_32s_32s_32_1_1_U2_n_62,
      PCIN(3) => mul_32s_32s_32_1_1_U2_n_63,
      PCIN(2) => mul_32s_32s_32_1_1_U2_n_64,
      PCIN(1) => mul_32s_32s_32_1_1_U2_n_65,
      PCIN(0) => mul_32s_32s_32_1_1_U2_n_66,
      PCOUT(47 downto 0) => NLW_mul_ln13_1_reg_276_reg_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_ln13_1_reg_276_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln13_1_reg_276_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln13_1_reg_276_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_18,
      Q => \mul_ln13_1_reg_276_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_8,
      Q => \mul_ln13_1_reg_276_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_7,
      Q => \mul_ln13_1_reg_276_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_6,
      Q => \mul_ln13_1_reg_276_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_5,
      Q => \mul_ln13_1_reg_276_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_4,
      Q => \mul_ln13_1_reg_276_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_3,
      Q => \mul_ln13_1_reg_276_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_2,
      Q => \mul_ln13_1_reg_276_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_17,
      Q => \mul_ln13_1_reg_276_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_16,
      Q => \mul_ln13_1_reg_276_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_15,
      Q => \mul_ln13_1_reg_276_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_14,
      Q => \mul_ln13_1_reg_276_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_13,
      Q => \mul_ln13_1_reg_276_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_12,
      Q => \mul_ln13_1_reg_276_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_11,
      Q => \mul_ln13_1_reg_276_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_10,
      Q => \mul_ln13_1_reg_276_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln13_1_reg_276_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_1_reg_2760,
      D => mul_32s_32s_32_1_1_U2_n_9,
      Q => \mul_ln13_1_reg_276_reg[9]__0_n_0\,
      R => '0'
    );
mul_ln13_reg_266_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
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
      A(16 downto 0) => beta_fu_152_p3(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln13_reg_266_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => beta_fu_152_p3(31),
      B(16) => beta_fu_152_p3(31),
      B(15) => beta_fu_152_p3(31),
      B(14 downto 0) => beta_fu_152_p3(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln13_reg_266_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln13_reg_266_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln13_reg_266_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => beta_reg_2530,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => beta_reg_2530,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => mul_ln13_reg_2660,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln13_reg_266_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln13_reg_266_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln13_reg_266_reg_n_58,
      P(46) => mul_ln13_reg_266_reg_n_59,
      P(45) => mul_ln13_reg_266_reg_n_60,
      P(44) => mul_ln13_reg_266_reg_n_61,
      P(43) => mul_ln13_reg_266_reg_n_62,
      P(42) => mul_ln13_reg_266_reg_n_63,
      P(41) => mul_ln13_reg_266_reg_n_64,
      P(40) => mul_ln13_reg_266_reg_n_65,
      P(39) => mul_ln13_reg_266_reg_n_66,
      P(38) => mul_ln13_reg_266_reg_n_67,
      P(37) => mul_ln13_reg_266_reg_n_68,
      P(36) => mul_ln13_reg_266_reg_n_69,
      P(35) => mul_ln13_reg_266_reg_n_70,
      P(34) => mul_ln13_reg_266_reg_n_71,
      P(33) => mul_ln13_reg_266_reg_n_72,
      P(32) => mul_ln13_reg_266_reg_n_73,
      P(31) => mul_ln13_reg_266_reg_n_74,
      P(30) => mul_ln13_reg_266_reg_n_75,
      P(29) => mul_ln13_reg_266_reg_n_76,
      P(28) => mul_ln13_reg_266_reg_n_77,
      P(27) => mul_ln13_reg_266_reg_n_78,
      P(26) => mul_ln13_reg_266_reg_n_79,
      P(25) => mul_ln13_reg_266_reg_n_80,
      P(24) => mul_ln13_reg_266_reg_n_81,
      P(23) => mul_ln13_reg_266_reg_n_82,
      P(22) => mul_ln13_reg_266_reg_n_83,
      P(21) => mul_ln13_reg_266_reg_n_84,
      P(20) => mul_ln13_reg_266_reg_n_85,
      P(19) => mul_ln13_reg_266_reg_n_86,
      P(18) => mul_ln13_reg_266_reg_n_87,
      P(17) => mul_ln13_reg_266_reg_n_88,
      P(16) => mul_ln13_reg_266_reg_n_89,
      P(15) => mul_ln13_reg_266_reg_n_90,
      P(14) => mul_ln13_reg_266_reg_n_91,
      P(13) => mul_ln13_reg_266_reg_n_92,
      P(12) => mul_ln13_reg_266_reg_n_93,
      P(11) => mul_ln13_reg_266_reg_n_94,
      P(10) => mul_ln13_reg_266_reg_n_95,
      P(9) => mul_ln13_reg_266_reg_n_96,
      P(8) => mul_ln13_reg_266_reg_n_97,
      P(7) => mul_ln13_reg_266_reg_n_98,
      P(6) => mul_ln13_reg_266_reg_n_99,
      P(5) => mul_ln13_reg_266_reg_n_100,
      P(4) => mul_ln13_reg_266_reg_n_101,
      P(3) => mul_ln13_reg_266_reg_n_102,
      P(2) => mul_ln13_reg_266_reg_n_103,
      P(1) => mul_ln13_reg_266_reg_n_104,
      P(0) => mul_ln13_reg_266_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln13_reg_266_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln13_reg_266_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U1_n_35,
      PCIN(46) => mul_32s_32s_32_1_1_U1_n_36,
      PCIN(45) => mul_32s_32s_32_1_1_U1_n_37,
      PCIN(44) => mul_32s_32s_32_1_1_U1_n_38,
      PCIN(43) => mul_32s_32s_32_1_1_U1_n_39,
      PCIN(42) => mul_32s_32s_32_1_1_U1_n_40,
      PCIN(41) => mul_32s_32s_32_1_1_U1_n_41,
      PCIN(40) => mul_32s_32s_32_1_1_U1_n_42,
      PCIN(39) => mul_32s_32s_32_1_1_U1_n_43,
      PCIN(38) => mul_32s_32s_32_1_1_U1_n_44,
      PCIN(37) => mul_32s_32s_32_1_1_U1_n_45,
      PCIN(36) => mul_32s_32s_32_1_1_U1_n_46,
      PCIN(35) => mul_32s_32s_32_1_1_U1_n_47,
      PCIN(34) => mul_32s_32s_32_1_1_U1_n_48,
      PCIN(33) => mul_32s_32s_32_1_1_U1_n_49,
      PCIN(32) => mul_32s_32s_32_1_1_U1_n_50,
      PCIN(31) => mul_32s_32s_32_1_1_U1_n_51,
      PCIN(30) => mul_32s_32s_32_1_1_U1_n_52,
      PCIN(29) => mul_32s_32s_32_1_1_U1_n_53,
      PCIN(28) => mul_32s_32s_32_1_1_U1_n_54,
      PCIN(27) => mul_32s_32s_32_1_1_U1_n_55,
      PCIN(26) => mul_32s_32s_32_1_1_U1_n_56,
      PCIN(25) => mul_32s_32s_32_1_1_U1_n_57,
      PCIN(24) => mul_32s_32s_32_1_1_U1_n_58,
      PCIN(23) => mul_32s_32s_32_1_1_U1_n_59,
      PCIN(22) => mul_32s_32s_32_1_1_U1_n_60,
      PCIN(21) => mul_32s_32s_32_1_1_U1_n_61,
      PCIN(20) => mul_32s_32s_32_1_1_U1_n_62,
      PCIN(19) => mul_32s_32s_32_1_1_U1_n_63,
      PCIN(18) => mul_32s_32s_32_1_1_U1_n_64,
      PCIN(17) => mul_32s_32s_32_1_1_U1_n_65,
      PCIN(16) => mul_32s_32s_32_1_1_U1_n_66,
      PCIN(15) => mul_32s_32s_32_1_1_U1_n_67,
      PCIN(14) => mul_32s_32s_32_1_1_U1_n_68,
      PCIN(13) => mul_32s_32s_32_1_1_U1_n_69,
      PCIN(12) => mul_32s_32s_32_1_1_U1_n_70,
      PCIN(11) => mul_32s_32s_32_1_1_U1_n_71,
      PCIN(10) => mul_32s_32s_32_1_1_U1_n_72,
      PCIN(9) => mul_32s_32s_32_1_1_U1_n_73,
      PCIN(8) => mul_32s_32s_32_1_1_U1_n_74,
      PCIN(7) => mul_32s_32s_32_1_1_U1_n_75,
      PCIN(6) => mul_32s_32s_32_1_1_U1_n_76,
      PCIN(5) => mul_32s_32s_32_1_1_U1_n_77,
      PCIN(4) => mul_32s_32s_32_1_1_U1_n_78,
      PCIN(3) => mul_32s_32s_32_1_1_U1_n_79,
      PCIN(2) => mul_32s_32s_32_1_1_U1_n_80,
      PCIN(1) => mul_32s_32s_32_1_1_U1_n_81,
      PCIN(0) => mul_32s_32s_32_1_1_U1_n_82,
      PCOUT(47 downto 0) => NLW_mul_ln13_reg_266_reg_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_ln13_reg_266_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln13_reg_266_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln13_reg_266_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_34,
      Q => \mul_ln13_reg_266_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_24,
      Q => \mul_ln13_reg_266_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_23,
      Q => \mul_ln13_reg_266_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_22,
      Q => \mul_ln13_reg_266_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_21,
      Q => \mul_ln13_reg_266_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_20,
      Q => \mul_ln13_reg_266_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_19,
      Q => \mul_ln13_reg_266_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_18,
      Q => \mul_ln13_reg_266_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_33,
      Q => \mul_ln13_reg_266_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_32,
      Q => \mul_ln13_reg_266_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_31,
      Q => \mul_ln13_reg_266_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_30,
      Q => \mul_ln13_reg_266_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_29,
      Q => \mul_ln13_reg_266_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_28,
      Q => \mul_ln13_reg_266_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_27,
      Q => \mul_ln13_reg_266_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_26,
      Q => \mul_ln13_reg_266_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln13_reg_266_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => mul_ln13_reg_2660,
      D => mul_32s_32s_32_1_1_U1_n_25,
      Q => \mul_ln13_reg_266_reg[9]__0_n_0\,
      R => '0'
    );
\result_2_fu_56_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(0),
      Q => result_2_fu_56(0),
      R => '0'
    );
\result_2_fu_56_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(10),
      Q => result_2_fu_56(10),
      R => '0'
    );
\result_2_fu_56_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(11),
      Q => result_2_fu_56(11),
      R => '0'
    );
\result_2_fu_56_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(12),
      Q => result_2_fu_56(12),
      R => '0'
    );
\result_2_fu_56_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(13),
      Q => result_2_fu_56(13),
      R => '0'
    );
\result_2_fu_56_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(14),
      Q => result_2_fu_56(14),
      R => '0'
    );
\result_2_fu_56_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(15),
      Q => result_2_fu_56(15),
      R => '0'
    );
\result_2_fu_56_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(16),
      Q => result_2_fu_56(16),
      R => '0'
    );
\result_2_fu_56_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(17),
      Q => result_2_fu_56(17),
      R => '0'
    );
\result_2_fu_56_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(18),
      Q => result_2_fu_56(18),
      R => '0'
    );
\result_2_fu_56_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(19),
      Q => result_2_fu_56(19),
      R => '0'
    );
\result_2_fu_56_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(1),
      Q => result_2_fu_56(1),
      R => '0'
    );
\result_2_fu_56_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(20),
      Q => result_2_fu_56(20),
      R => '0'
    );
\result_2_fu_56_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(21),
      Q => result_2_fu_56(21),
      R => '0'
    );
\result_2_fu_56_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(22),
      Q => result_2_fu_56(22),
      R => '0'
    );
\result_2_fu_56_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(23),
      Q => result_2_fu_56(23),
      R => '0'
    );
\result_2_fu_56_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(24),
      Q => result_2_fu_56(24),
      R => '0'
    );
\result_2_fu_56_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(25),
      Q => result_2_fu_56(25),
      R => '0'
    );
\result_2_fu_56_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(26),
      Q => result_2_fu_56(26),
      R => '0'
    );
\result_2_fu_56_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(27),
      Q => result_2_fu_56(27),
      R => '0'
    );
\result_2_fu_56_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(28),
      Q => result_2_fu_56(28),
      R => '0'
    );
\result_2_fu_56_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(29),
      Q => result_2_fu_56(29),
      R => '0'
    );
\result_2_fu_56_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(2),
      Q => result_2_fu_56(2),
      R => '0'
    );
\result_2_fu_56_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(30),
      Q => result_2_fu_56(30),
      R => '0'
    );
\result_2_fu_56_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(31),
      Q => result_2_fu_56(31),
      R => '0'
    );
\result_2_fu_56_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(3),
      Q => result_2_fu_56(3),
      R => '0'
    );
\result_2_fu_56_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(4),
      Q => result_2_fu_56(4),
      R => '0'
    );
\result_2_fu_56_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(5),
      Q => result_2_fu_56(5),
      R => '0'
    );
\result_2_fu_56_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(6),
      Q => result_2_fu_56(6),
      R => '0'
    );
\result_2_fu_56_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(7),
      Q => result_2_fu_56(7),
      R => '0'
    );
\result_2_fu_56_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(8),
      Q => result_2_fu_56(8),
      R => '0'
    );
\result_2_fu_56_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_return\(9),
      Q => result_2_fu_56(9),
      R => '0'
    );
result_reg_286_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
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
      A(16 downto 0) => beta_fu_152_p3(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_result_reg_286_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => add_ln13_1_fu_178_p2(31),
      B(16) => add_ln13_1_fu_178_p2(31),
      B(15) => add_ln13_1_fu_178_p2(31),
      B(14 downto 0) => add_ln13_1_fu_178_p2(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_result_reg_286_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_result_reg_286_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_result_reg_286_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => beta_reg_2530,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => add_ln13_1_reg_2810,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => result_reg_2860,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_result_reg_286_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_result_reg_286_reg_OVERFLOW_UNCONNECTED,
      P(47) => result_reg_286_reg_n_58,
      P(46) => result_reg_286_reg_n_59,
      P(45) => result_reg_286_reg_n_60,
      P(44) => result_reg_286_reg_n_61,
      P(43) => result_reg_286_reg_n_62,
      P(42) => result_reg_286_reg_n_63,
      P(41) => result_reg_286_reg_n_64,
      P(40) => result_reg_286_reg_n_65,
      P(39) => result_reg_286_reg_n_66,
      P(38) => result_reg_286_reg_n_67,
      P(37) => result_reg_286_reg_n_68,
      P(36) => result_reg_286_reg_n_69,
      P(35) => result_reg_286_reg_n_70,
      P(34) => result_reg_286_reg_n_71,
      P(33) => result_reg_286_reg_n_72,
      P(32) => result_reg_286_reg_n_73,
      P(31) => result_reg_286_reg_n_74,
      P(30) => result_reg_286_reg_n_75,
      P(29) => result_reg_286_reg_n_76,
      P(28) => result_reg_286_reg_n_77,
      P(27) => result_reg_286_reg_n_78,
      P(26) => result_reg_286_reg_n_79,
      P(25) => result_reg_286_reg_n_80,
      P(24) => result_reg_286_reg_n_81,
      P(23) => result_reg_286_reg_n_82,
      P(22) => result_reg_286_reg_n_83,
      P(21) => result_reg_286_reg_n_84,
      P(20) => result_reg_286_reg_n_85,
      P(19) => result_reg_286_reg_n_86,
      P(18) => result_reg_286_reg_n_87,
      P(17) => result_reg_286_reg_n_88,
      P(16) => result_reg_286_reg_n_89,
      P(15) => result_reg_286_reg_n_90,
      P(14) => result_reg_286_reg_n_91,
      P(13) => result_reg_286_reg_n_92,
      P(12) => result_reg_286_reg_n_93,
      P(11) => result_reg_286_reg_n_94,
      P(10) => result_reg_286_reg_n_95,
      P(9) => result_reg_286_reg_n_96,
      P(8) => result_reg_286_reg_n_97,
      P(7) => result_reg_286_reg_n_98,
      P(6) => result_reg_286_reg_n_99,
      P(5) => result_reg_286_reg_n_100,
      P(4) => result_reg_286_reg_n_101,
      P(3) => result_reg_286_reg_n_102,
      P(2) => result_reg_286_reg_n_103,
      P(1) => result_reg_286_reg_n_104,
      P(0) => result_reg_286_reg_n_105,
      PATTERNBDETECT => NLW_result_reg_286_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_result_reg_286_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U3_n_35,
      PCIN(46) => mul_32s_32s_32_1_1_U3_n_36,
      PCIN(45) => mul_32s_32s_32_1_1_U3_n_37,
      PCIN(44) => mul_32s_32s_32_1_1_U3_n_38,
      PCIN(43) => mul_32s_32s_32_1_1_U3_n_39,
      PCIN(42) => mul_32s_32s_32_1_1_U3_n_40,
      PCIN(41) => mul_32s_32s_32_1_1_U3_n_41,
      PCIN(40) => mul_32s_32s_32_1_1_U3_n_42,
      PCIN(39) => mul_32s_32s_32_1_1_U3_n_43,
      PCIN(38) => mul_32s_32s_32_1_1_U3_n_44,
      PCIN(37) => mul_32s_32s_32_1_1_U3_n_45,
      PCIN(36) => mul_32s_32s_32_1_1_U3_n_46,
      PCIN(35) => mul_32s_32s_32_1_1_U3_n_47,
      PCIN(34) => mul_32s_32s_32_1_1_U3_n_48,
      PCIN(33) => mul_32s_32s_32_1_1_U3_n_49,
      PCIN(32) => mul_32s_32s_32_1_1_U3_n_50,
      PCIN(31) => mul_32s_32s_32_1_1_U3_n_51,
      PCIN(30) => mul_32s_32s_32_1_1_U3_n_52,
      PCIN(29) => mul_32s_32s_32_1_1_U3_n_53,
      PCIN(28) => mul_32s_32s_32_1_1_U3_n_54,
      PCIN(27) => mul_32s_32s_32_1_1_U3_n_55,
      PCIN(26) => mul_32s_32s_32_1_1_U3_n_56,
      PCIN(25) => mul_32s_32s_32_1_1_U3_n_57,
      PCIN(24) => mul_32s_32s_32_1_1_U3_n_58,
      PCIN(23) => mul_32s_32s_32_1_1_U3_n_59,
      PCIN(22) => mul_32s_32s_32_1_1_U3_n_60,
      PCIN(21) => mul_32s_32s_32_1_1_U3_n_61,
      PCIN(20) => mul_32s_32s_32_1_1_U3_n_62,
      PCIN(19) => mul_32s_32s_32_1_1_U3_n_63,
      PCIN(18) => mul_32s_32s_32_1_1_U3_n_64,
      PCIN(17) => mul_32s_32s_32_1_1_U3_n_65,
      PCIN(16) => mul_32s_32s_32_1_1_U3_n_66,
      PCIN(15) => mul_32s_32s_32_1_1_U3_n_67,
      PCIN(14) => mul_32s_32s_32_1_1_U3_n_68,
      PCIN(13) => mul_32s_32s_32_1_1_U3_n_69,
      PCIN(12) => mul_32s_32s_32_1_1_U3_n_70,
      PCIN(11) => mul_32s_32s_32_1_1_U3_n_71,
      PCIN(10) => mul_32s_32s_32_1_1_U3_n_72,
      PCIN(9) => mul_32s_32s_32_1_1_U3_n_73,
      PCIN(8) => mul_32s_32s_32_1_1_U3_n_74,
      PCIN(7) => mul_32s_32s_32_1_1_U3_n_75,
      PCIN(6) => mul_32s_32s_32_1_1_U3_n_76,
      PCIN(5) => mul_32s_32s_32_1_1_U3_n_77,
      PCIN(4) => mul_32s_32s_32_1_1_U3_n_78,
      PCIN(3) => mul_32s_32s_32_1_1_U3_n_79,
      PCIN(2) => mul_32s_32s_32_1_1_U3_n_80,
      PCIN(1) => mul_32s_32s_32_1_1_U3_n_81,
      PCIN(0) => mul_32s_32s_32_1_1_U3_n_82,
      PCOUT(47 downto 0) => NLW_result_reg_286_reg_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_result_reg_286_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_result_reg_286_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\result_reg_286_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_34,
      Q => \result_reg_286_reg[0]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_24,
      Q => \result_reg_286_reg[10]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_23,
      Q => \result_reg_286_reg[11]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_22,
      Q => \result_reg_286_reg[12]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_21,
      Q => \result_reg_286_reg[13]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_20,
      Q => \result_reg_286_reg[14]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_19,
      Q => \result_reg_286_reg[15]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_18,
      Q => \result_reg_286_reg[16]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_33,
      Q => \result_reg_286_reg[1]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_32,
      Q => \result_reg_286_reg[2]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_31,
      Q => \result_reg_286_reg[3]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_30,
      Q => \result_reg_286_reg[4]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_29,
      Q => \result_reg_286_reg[5]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_28,
      Q => \result_reg_286_reg[6]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_27,
      Q => \result_reg_286_reg[7]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_26,
      Q => \result_reg_286_reg[8]__0_n_0\,
      R => '0'
    );
\result_reg_286_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_2860,
      D => mul_32s_32s_32_1_1_U3_n_25,
      Q => \result_reg_286_reg[9]__0_n_0\,
      R => '0'
    );
\reuse_addr_reg_fu_48_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(0),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[0]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(10),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[10]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(11),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[11]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(12),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[12]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(13),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[13]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(14),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[14]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(15),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[15]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(16),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[16]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(17),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[17]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(18),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[18]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(19),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[19]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(1),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[1]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(20),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[20]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(21),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[21]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(22),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[22]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(23),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[23]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(24),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[24]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(25),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[25]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(26),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[26]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(27),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[27]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(28),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[28]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(29),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[29]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(2),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[2]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(30),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[30]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(31),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[31]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_0,
      Q => \reuse_addr_reg_fu_48_reg_n_0_[32]\,
      R => '0'
    );
\reuse_addr_reg_fu_48_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(3),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[3]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(4),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[4]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(5),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[5]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(6),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[6]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(7),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[7]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(8),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[8]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_addr_reg_fu_48_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => reuse_addr_reg_fu_48,
      D => addr_q0(9),
      Q => \reuse_addr_reg_fu_48_reg_n_0_[9]\,
      S => flow_control_loop_pipe_U_n_26
    );
\reuse_reg_fu_52[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFE000"
    )
        port map (
      I0 => \result_reg_286_reg[0]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(0),
      O => ap_sig_allocacmp_reuse_reg_load(0)
    );
\reuse_reg_fu_52[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[10]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(10),
      O => ap_sig_allocacmp_reuse_reg_load(10)
    );
\reuse_reg_fu_52[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[11]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(11),
      O => ap_sig_allocacmp_reuse_reg_load(11)
    );
\reuse_reg_fu_52[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[12]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(12),
      O => ap_sig_allocacmp_reuse_reg_load(12)
    );
\reuse_reg_fu_52[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[13]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(13),
      O => ap_sig_allocacmp_reuse_reg_load(13)
    );
\reuse_reg_fu_52[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[14]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(14),
      O => ap_sig_allocacmp_reuse_reg_load(14)
    );
\reuse_reg_fu_52[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[15]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(15),
      O => ap_sig_allocacmp_reuse_reg_load(15)
    );
\reuse_reg_fu_52[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[1]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(1),
      O => ap_sig_allocacmp_reuse_reg_load(1)
    );
\reuse_reg_fu_52[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[2]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(2),
      O => ap_sig_allocacmp_reuse_reg_load(2)
    );
\reuse_reg_fu_52[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[3]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(3),
      O => ap_sig_allocacmp_reuse_reg_load(3)
    );
\reuse_reg_fu_52[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[4]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(4),
      O => ap_sig_allocacmp_reuse_reg_load(4)
    );
\reuse_reg_fu_52[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[5]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(5),
      O => ap_sig_allocacmp_reuse_reg_load(5)
    );
\reuse_reg_fu_52[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[6]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(6),
      O => ap_sig_allocacmp_reuse_reg_load(6)
    );
\reuse_reg_fu_52[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[7]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(7),
      O => ap_sig_allocacmp_reuse_reg_load(7)
    );
\reuse_reg_fu_52[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[8]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(8),
      O => ap_sig_allocacmp_reuse_reg_load(8)
    );
\reuse_reg_fu_52[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => \result_reg_286_reg[9]__0_n_0\,
      I1 => \icmp_ln10_reg_261_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => reuse_reg_fu_52(9),
      O => ap_sig_allocacmp_reuse_reg_load(9)
    );
\reuse_reg_fu_52_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(0),
      Q => reuse_reg_fu_52(0),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(10),
      Q => reuse_reg_fu_52(10),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(11),
      Q => reuse_reg_fu_52(11),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(12),
      Q => reuse_reg_fu_52(12),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(13),
      Q => reuse_reg_fu_52(13),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(14),
      Q => reuse_reg_fu_52(14),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(15),
      Q => reuse_reg_fu_52(15),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(16),
      Q => reuse_reg_fu_52(16),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(17),
      Q => reuse_reg_fu_52(17),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(18),
      Q => reuse_reg_fu_52(18),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(19),
      Q => reuse_reg_fu_52(19),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(1),
      Q => reuse_reg_fu_52(1),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(20),
      Q => reuse_reg_fu_52(20),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(21),
      Q => reuse_reg_fu_52(21),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(22),
      Q => reuse_reg_fu_52(22),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(23),
      Q => reuse_reg_fu_52(23),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(24),
      Q => reuse_reg_fu_52(24),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(25),
      Q => reuse_reg_fu_52(25),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(26),
      Q => reuse_reg_fu_52(26),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(27),
      Q => reuse_reg_fu_52(27),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(28),
      Q => reuse_reg_fu_52(28),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(29),
      Q => reuse_reg_fu_52(29),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(2),
      Q => reuse_reg_fu_52(2),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(30),
      Q => reuse_reg_fu_52(30),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(31),
      Q => reuse_reg_fu_52(31),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(3),
      Q => reuse_reg_fu_52(3),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(4),
      Q => reuse_reg_fu_52(4),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(5),
      Q => reuse_reg_fu_52(5),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(6),
      Q => reuse_reg_fu_52(6),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(7),
      Q => reuse_reg_fu_52(7),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(8),
      Q => reuse_reg_fu_52(8),
      R => ap_sig_allocacmp_i_11
    );
\reuse_reg_fu_52_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_sig_allocacmp_reuse_reg_load(9),
      Q => reuse_reg_fu_52(9),
      R => ap_sig_allocacmp_i_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A_ce0 : out STD_LOGIC;
    A_we0 : out STD_LOGIC;
    addr_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    addr_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,getTanh,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "getTanh,Vivado 2022.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "6'b000001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of inst : label is "6'b000010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of inst : label is "6'b000100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of inst : label is "6'b001000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of inst : label is "6'b010000";
  attribute ap_ST_fsm_pp0_stage5 : string;
  attribute ap_ST_fsm_pp0_stage5 of inst : label is "6'b100000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of A_address0 : signal is "xilinx.com:signal:data:1.0 A_address0 DATA";
  attribute X_INTERFACE_PARAMETER of A_address0 : signal is "XIL_INTERFACENAME A_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of A_d0 : signal is "xilinx.com:signal:data:1.0 A_d0 DATA";
  attribute X_INTERFACE_PARAMETER of A_d0 : signal is "XIL_INTERFACENAME A_d0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of A_q0 : signal is "xilinx.com:signal:data:1.0 A_q0 DATA";
  attribute X_INTERFACE_PARAMETER of A_q0 : signal is "XIL_INTERFACENAME A_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of addr_address0 : signal is "xilinx.com:signal:data:1.0 addr_address0 DATA";
  attribute X_INTERFACE_PARAMETER of addr_address0 : signal is "XIL_INTERFACENAME addr_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of addr_q0 : signal is "xilinx.com:signal:data:1.0 addr_q0 DATA";
  attribute X_INTERFACE_PARAMETER of addr_q0 : signal is "XIL_INTERFACENAME addr_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ap_return : signal is "xilinx.com:signal:data:1.0 ap_return DATA";
  attribute X_INTERFACE_PARAMETER of ap_return : signal is "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh
     port map (
      A_address0(9 downto 0) => A_address0(9 downto 0),
      A_ce0 => A_ce0,
      A_d0(31 downto 0) => A_d0(31 downto 0),
      A_q0(31 downto 0) => A_q0(31 downto 0),
      A_we0 => A_we0,
      addr_address0(9 downto 0) => addr_address0(9 downto 0),
      addr_ce0 => addr_ce0,
      addr_q0(31 downto 0) => addr_q0(31 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return(31 downto 0) => ap_return(31 downto 0),
      ap_rst => ap_rst,
      ap_start => ap_start
    );
end STRUCTURE;
