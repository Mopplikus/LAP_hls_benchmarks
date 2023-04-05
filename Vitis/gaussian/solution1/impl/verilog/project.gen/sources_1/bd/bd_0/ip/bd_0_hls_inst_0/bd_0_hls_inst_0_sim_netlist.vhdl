-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Mar 30 01:37:18 2023
-- Host        : Frostspark running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Elija/AppData/Roaming/Xilinx/Vitis/gaussian/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck24-ubva530-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_gaussian_flow_control_loop_pipe_sequential_init is
  port (
    O : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0_reg_reg : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_fu_68_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    i_fu_68_reg : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \i_fu_68_reg[6]_0\ : in STD_LOGIC;
    icmp_ln8_fu_152_p2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    \i_fu_68_reg[6]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_gaussian_flow_control_loop_pipe_sequential_init : entity is "gaussian_flow_control_loop_pipe_sequential_init";
end bd_0_hls_inst_0_gaussian_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of bd_0_hls_inst_0_gaussian_flow_control_loop_pipe_sequential_init is
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init_int_i_2_n_0 : STD_LOGIC;
  signal \^ap_loop_init_int_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i_fu_68[0]_i_10_n_0\ : STD_LOGIC;
  signal \i_fu_68[0]_i_3_n_0\ : STD_LOGIC;
  signal \i_fu_68[0]_i_4_n_0\ : STD_LOGIC;
  signal \i_fu_68[0]_i_5_n_0\ : STD_LOGIC;
  signal \i_fu_68[0]_i_6_n_0\ : STD_LOGIC;
  signal \i_fu_68[0]_i_7_n_0\ : STD_LOGIC;
  signal \i_fu_68[0]_i_8_n_0\ : STD_LOGIC;
  signal \i_fu_68[0]_i_9_n_0\ : STD_LOGIC;
  signal \i_fu_68_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \i_fu_68_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \i_fu_68_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \i_fu_68_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \i_fu_68_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \i_fu_68_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \NLW_i_fu_68_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_i_fu_68_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_loop_init_int_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \k_fu_64[4]_i_1\ : label is "soft_lutpair0";
begin
  ap_loop_init_int_reg_0(0) <= \^ap_loop_init_int_reg_0\(0);
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAAAAAAAAA"
    )
        port map (
      I0 => SR(0),
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => Q(0),
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I4 => ap_done_cache,
      I5 => \ap_CS_fsm_reg[3]\(1),
      O => D(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAABFBFAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(0),
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => Q(0),
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I4 => ap_done_cache,
      I5 => \ap_CS_fsm_reg[3]\(1),
      O => D(1)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5C0"
    )
        port map (
      I0 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => Q(0),
      I3 => ap_done_cache,
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
ap_loop_init_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF88F8"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => Q(0),
      I2 => ap_loop_init_int,
      I3 => ap_loop_init_int_i_2_n_0,
      I4 => ap_rst,
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I3 => Q(1),
      O => ap_loop_init_int_i_2_n_0
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
\i_fu_68[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00404050004040"
    )
        port map (
      I0 => icmp_ln8_fu_152_p2,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => Q(1),
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I4 => Q(0),
      I5 => ap_loop_init_int,
      O => ap_enable_reg_pp0_iter0_reg_reg
    );
\i_fu_68[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => \i_fu_68_reg[6]_0\,
      I1 => i_fu_68_reg(0),
      I2 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I3 => Q(0),
      I4 => ap_loop_init_int,
      I5 => \i_fu_68_reg[6]\(0),
      O => \i_fu_68[0]_i_10_n_0\
    );
\i_fu_68[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \i_fu_68_reg[6]_1\(2),
      I1 => \i_fu_68_reg[6]_1\(0),
      I2 => \i_fu_68_reg[6]_1\(1),
      I3 => \i_fu_68_reg[6]_1\(4),
      I4 => \i_fu_68_reg[6]_1\(3),
      I5 => \^ap_loop_init_int_reg_0\(0),
      O => \i_fu_68[0]_i_3_n_0\
    );
\i_fu_68[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => i_fu_68_reg(6),
      I1 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I2 => Q(0),
      I3 => ap_loop_init_int,
      O => \i_fu_68[0]_i_4_n_0\
    );
\i_fu_68[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => i_fu_68_reg(5),
      I1 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I2 => Q(0),
      I3 => ap_loop_init_int,
      O => \i_fu_68[0]_i_5_n_0\
    );
\i_fu_68[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \i_fu_68_reg[6]\(4),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I4 => i_fu_68_reg(4),
      O => \i_fu_68[0]_i_6_n_0\
    );
\i_fu_68[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \i_fu_68_reg[6]\(3),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I4 => i_fu_68_reg(3),
      O => \i_fu_68[0]_i_7_n_0\
    );
\i_fu_68[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \i_fu_68_reg[6]\(2),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I4 => i_fu_68_reg(2),
      O => \i_fu_68[0]_i_8_n_0\
    );
\i_fu_68[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \i_fu_68_reg[6]\(1),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I4 => i_fu_68_reg(1),
      O => \i_fu_68[0]_i_9_n_0\
    );
\i_fu_68_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_i_fu_68_reg[0]_i_2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \i_fu_68_reg[0]_i_2_n_2\,
      CO(4) => \i_fu_68_reg[0]_i_2_n_3\,
      CO(3) => \i_fu_68_reg[0]_i_2_n_4\,
      CO(2) => \i_fu_68_reg[0]_i_2_n_5\,
      CO(1) => \i_fu_68_reg[0]_i_2_n_6\,
      CO(0) => \i_fu_68_reg[0]_i_2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \i_fu_68[0]_i_3_n_0\,
      O(7) => \NLW_i_fu_68_reg[0]_i_2_O_UNCONNECTED\(7),
      O(6 downto 0) => O(6 downto 0),
      S(7) => '0',
      S(6) => \i_fu_68[0]_i_4_n_0\,
      S(5) => \i_fu_68[0]_i_5_n_0\,
      S(4) => \i_fu_68[0]_i_6_n_0\,
      S(3) => \i_fu_68[0]_i_7_n_0\,
      S(2) => \i_fu_68[0]_i_8_n_0\,
      S(1) => \i_fu_68[0]_i_9_n_0\,
      S(0) => \i_fu_68[0]_i_10_n_0\
    );
\k_fu_64[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => Q(0),
      I2 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      O => \^ap_loop_init_int_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_gaussian_mul_32s_32s_32_1_1 is
  port (
    CEA2 : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 14 downto 0 );
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \A_q1[16]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_125_reg[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_125_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    c_q0 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \A_d0_carry__1_i_8_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    icmp_ln8_reg_318 : in STD_LOGIC;
    A_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \A_d0[31]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_gaussian_mul_32s_32s_32_1_1 : entity is "gaussian_mul_32s_32s_32_1_1";
end bd_0_hls_inst_0_gaussian_mul_32s_32s_32_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_gaussian_mul_32s_32s_32_1_1 is
  signal \^a_q1[16]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^b\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^cea2\ : STD_LOGIC;
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
  signal \mul_ln16_reg_343_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout__0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout__0_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout__0_i_11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout__0_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout__0_i_13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout__0_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dout__0_i_15\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dout__0_i_16\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout__0_i_17\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout__0_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout__0_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout__0_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout__0_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout__0_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout__0_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout__0_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout__0_i_9\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dout_carry : label is 35;
  attribute ADDER_THRESHOLD of \dout_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of dout_i_10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of dout_i_11 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of dout_i_12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of dout_i_13 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of dout_i_14 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of dout_i_15 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of dout_i_16 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of dout_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of dout_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of dout_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of dout_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of dout_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of dout_i_7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of dout_i_8 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of dout_i_9 : label is "soft_lutpair4";
begin
  \A_q1[16]\(16 downto 0) <= \^a_q1[16]\(16 downto 0);
  B(14 downto 0) <= \^b\(14 downto 0);
  CEA2 <= \^cea2\;
\A_d0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(7),
      I1 => \mul_ln16_reg_343_reg__1\(23),
      O => S(7)
    );
\A_d0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(6),
      I1 => \mul_ln16_reg_343_reg__1\(22),
      O => S(6)
    );
\A_d0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(5),
      I1 => \mul_ln16_reg_343_reg__1\(21),
      O => S(5)
    );
\A_d0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(4),
      I1 => \mul_ln16_reg_343_reg__1\(20),
      O => S(4)
    );
\A_d0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(3),
      I1 => \mul_ln16_reg_343_reg__1\(19),
      O => S(3)
    );
\A_d0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(2),
      I1 => \mul_ln16_reg_343_reg__1\(18),
      O => S(2)
    );
\A_d0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(1),
      I1 => \mul_ln16_reg_343_reg__1\(17),
      O => S(1)
    );
\A_d0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(0),
      I1 => \mul_ln16_reg_343_reg__1\(16),
      O => S(0)
    );
\A_d0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(15),
      I1 => \mul_ln16_reg_343_reg__1\(31),
      O => \reg_125_reg[31]\(7)
    );
\A_d0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(14),
      I1 => \mul_ln16_reg_343_reg__1\(30),
      O => \reg_125_reg[31]\(6)
    );
\A_d0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(13),
      I1 => \mul_ln16_reg_343_reg__1\(29),
      O => \reg_125_reg[31]\(5)
    );
\A_d0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(12),
      I1 => \mul_ln16_reg_343_reg__1\(28),
      O => \reg_125_reg[31]\(4)
    );
\A_d0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(11),
      I1 => \mul_ln16_reg_343_reg__1\(27),
      O => \reg_125_reg[31]\(3)
    );
\A_d0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(10),
      I1 => \mul_ln16_reg_343_reg__1\(26),
      O => \reg_125_reg[31]\(2)
    );
\A_d0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(9),
      I1 => \mul_ln16_reg_343_reg__1\(25),
      O => \reg_125_reg[31]\(1)
    );
\A_d0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \A_d0[31]\(8),
      I1 => \mul_ln16_reg_343_reg__1\(24),
      O => \reg_125_reg[31]\(0)
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
      A(16 downto 0) => c_q0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \^b\(14),
      B(16) => \^b\(14),
      B(15) => \^b\(14),
      B(14 downto 0) => \^b\(14 downto 0),
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
      CEB2 => \^cea2\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \reg_125_reg[0]\(1),
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
      A(16 downto 0) => \^a_q1[16]\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_dout__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => c_q0(16 downto 0),
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
\dout__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(16),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(16),
      O => \^a_q1[16]\(16)
    );
\dout__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(7),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(7),
      O => \^a_q1[16]\(7)
    );
\dout__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(6),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(6),
      O => \^a_q1[16]\(6)
    );
\dout__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(5),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(5),
      O => \^a_q1[16]\(5)
    );
\dout__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(4),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(4),
      O => \^a_q1[16]\(4)
    );
\dout__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(3),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(3),
      O => \^a_q1[16]\(3)
    );
\dout__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(2),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(2),
      O => \^a_q1[16]\(2)
    );
\dout__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(1),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(1),
      O => \^a_q1[16]\(1)
    );
\dout__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(0),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(0),
      O => \^a_q1[16]\(0)
    );
\dout__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(15),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(15),
      O => \^a_q1[16]\(15)
    );
\dout__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(14),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(14),
      O => \^a_q1[16]\(14)
    );
\dout__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(13),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(13),
      O => \^a_q1[16]\(13)
    );
\dout__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(12),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(12),
      O => \^a_q1[16]\(12)
    );
\dout__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(11),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(11),
      O => \^a_q1[16]\(11)
    );
\dout__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(10),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(10),
      O => \^a_q1[16]\(10)
    );
\dout__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(9),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(9),
      O => \^a_q1[16]\(9)
    );
\dout__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(8),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(8),
      O => \^a_q1[16]\(8)
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
      O(7 downto 0) => \mul_ln16_reg_343_reg__1\(23 downto 16),
      S(7) => dout_carry_i_1_n_0,
      S(6) => dout_carry_i_2_n_0,
      S(5) => dout_carry_i_3_n_0,
      S(4) => dout_carry_i_4_n_0,
      S(3) => dout_carry_i_5_n_0,
      S(2) => dout_carry_i_6_n_0,
      S(1) => dout_carry_i_7_n_0,
      S(0) => \A_d0_carry__1_i_8_0\(0)
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
      O(7 downto 0) => \mul_ln16_reg_343_reg__1\(31 downto 24),
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
dout_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \reg_125_reg[0]\(0),
      I2 => icmp_ln8_reg_318,
      I3 => \reg_125_reg[0]\(1),
      O => \^cea2\
    );
dout_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(23),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(23),
      O => \^b\(6)
    );
dout_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(22),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(22),
      O => \^b\(5)
    );
dout_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(21),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(21),
      O => \^b\(4)
    );
dout_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(20),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(20),
      O => \^b\(3)
    );
dout_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(19),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(19),
      O => \^b\(2)
    );
dout_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(18),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(18),
      O => \^b\(1)
    );
dout_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(17),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(17),
      O => \^b\(0)
    );
dout_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(31),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(31),
      O => \^b\(14)
    );
dout_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(30),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(30),
      O => \^b\(13)
    );
dout_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(29),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(29),
      O => \^b\(12)
    );
dout_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(28),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(28),
      O => \^b\(11)
    );
dout_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(27),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(27),
      O => \^b\(10)
    );
dout_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(26),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(26),
      O => \^b\(9)
    );
dout_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(25),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(25),
      O => \^b\(8)
    );
dout_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_q1(24),
      I1 => \reg_125_reg[0]\(1),
      I2 => A_q0(24),
      O => \^b\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_gaussian_mul_5ns_6ns_9_1_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_gaussian_mul_5ns_6ns_9_1_1 : entity is "gaussian_mul_5ns_6ns_9_1_1";
end bd_0_hls_inst_0_gaussian_mul_5ns_6ns_9_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_gaussian_mul_5ns_6ns_9_1_1 is
  signal \dout__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_8_n_0\ : STD_LOGIC;
  signal \dout__1_carry_i_9_n_0\ : STD_LOGIC;
  signal \dout__1_carry_n_3\ : STD_LOGIC;
  signal \dout__1_carry_n_4\ : STD_LOGIC;
  signal \dout__1_carry_n_5\ : STD_LOGIC;
  signal \dout__1_carry_n_6\ : STD_LOGIC;
  signal \dout__1_carry_n_7\ : STD_LOGIC;
  signal \NLW_dout__1_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_dout__1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute HLUTNM : string;
  attribute HLUTNM of \dout__1_carry_i_1\ : label is "lutpair0";
  attribute HLUTNM of \dout__1_carry_i_6\ : label is "lutpair0";
begin
\dout__1_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_dout__1_carry_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \dout__1_carry_n_3\,
      CO(3) => \dout__1_carry_n_4\,
      CO(2) => \dout__1_carry_n_5\,
      CO(1) => \dout__1_carry_n_6\,
      CO(0) => \dout__1_carry_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \dout__1_carry_i_1_n_0\,
      DI(3) => \dout__1_carry_i_2_n_0\,
      DI(2) => \dout__1_carry_i_3_n_0\,
      DI(1) => Q(0),
      DI(0) => '0',
      O(7 downto 6) => \NLW_dout__1_carry_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => D(5 downto 0),
      S(7 downto 6) => B"00",
      S(5) => \dout__1_carry_i_4_n_0\,
      S(4) => \dout__1_carry_i_5_n_0\,
      S(3) => \dout__1_carry_i_6_n_0\,
      S(2) => \dout__1_carry_i_7_n_0\,
      S(1) => \dout__1_carry_i_8_n_0\,
      S(0) => \dout__1_carry_i_9_n_0\
    );
\dout__1_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      O => \dout__1_carry_i_1_n_0\
    );
\dout__1_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000575F"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(4),
      O => \dout__1_carry_i_2_n_0\
    );
\dout__1_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAFF555"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      O => \dout__1_carry_i_3_n_0\
    );
\dout__1_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE57"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      O => \dout__1_carry_i_4_n_0\
    );
\dout__1_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669666955565956"
    )
        port map (
      I0 => \dout__1_carry_i_1_n_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(4),
      O => \dout__1_carry_i_5_n_0\
    );
\dout__1_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"67636969"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(4),
      I3 => Q(0),
      I4 => Q(3),
      O => \dout__1_carry_i_6_n_0\
    );
\dout__1_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE575588"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(4),
      I4 => Q(1),
      O => \dout__1_carry_i_7_n_0\
    );
\dout__1_carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24DBD32C"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(4),
      I4 => Q(0),
      O => \dout__1_carry_i_8_n_0\
    );
\dout__1_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A65A"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => \dout__1_carry_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3 is
  port (
    \add_ln16_2_reg_327_reg[0]_0\ : out STD_LOGIC;
    A_ce1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    A_ce0 : out STD_LOGIC;
    A_address0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    A_address1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg : in STD_LOGIC;
    \icmp_ln8_reg_318_reg[0]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \A_address0[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \i_fu_68_reg[6]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    A_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3 : entity is "gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3";
end bd_0_hls_inst_0_gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3;

architecture STRUCTURE of bd_0_hls_inst_0_gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3 is
  signal A_addr_reg_337 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \A_address0[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \A_address0[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \A_address0[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \A_address0[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \A_address0[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \A_address0[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \A_address0[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^a_address1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^a_ce1\ : STD_LOGIC;
  signal \A_d0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_n_0\ : STD_LOGIC;
  signal \A_d0_carry__0_n_1\ : STD_LOGIC;
  signal \A_d0_carry__0_n_2\ : STD_LOGIC;
  signal \A_d0_carry__0_n_3\ : STD_LOGIC;
  signal \A_d0_carry__0_n_4\ : STD_LOGIC;
  signal \A_d0_carry__0_n_5\ : STD_LOGIC;
  signal \A_d0_carry__0_n_6\ : STD_LOGIC;
  signal \A_d0_carry__0_n_7\ : STD_LOGIC;
  signal \A_d0_carry__1_n_0\ : STD_LOGIC;
  signal \A_d0_carry__1_n_1\ : STD_LOGIC;
  signal \A_d0_carry__1_n_2\ : STD_LOGIC;
  signal \A_d0_carry__1_n_3\ : STD_LOGIC;
  signal \A_d0_carry__1_n_4\ : STD_LOGIC;
  signal \A_d0_carry__1_n_5\ : STD_LOGIC;
  signal \A_d0_carry__1_n_6\ : STD_LOGIC;
  signal \A_d0_carry__1_n_7\ : STD_LOGIC;
  signal \A_d0_carry__2_n_1\ : STD_LOGIC;
  signal \A_d0_carry__2_n_2\ : STD_LOGIC;
  signal \A_d0_carry__2_n_3\ : STD_LOGIC;
  signal \A_d0_carry__2_n_4\ : STD_LOGIC;
  signal \A_d0_carry__2_n_5\ : STD_LOGIC;
  signal \A_d0_carry__2_n_6\ : STD_LOGIC;
  signal \A_d0_carry__2_n_7\ : STD_LOGIC;
  signal A_d0_carry_i_1_n_0 : STD_LOGIC;
  signal A_d0_carry_i_2_n_0 : STD_LOGIC;
  signal A_d0_carry_i_3_n_0 : STD_LOGIC;
  signal A_d0_carry_i_4_n_0 : STD_LOGIC;
  signal A_d0_carry_i_5_n_0 : STD_LOGIC;
  signal A_d0_carry_i_6_n_0 : STD_LOGIC;
  signal A_d0_carry_i_7_n_0 : STD_LOGIC;
  signal A_d0_carry_i_8_n_0 : STD_LOGIC;
  signal A_d0_carry_n_0 : STD_LOGIC;
  signal A_d0_carry_n_1 : STD_LOGIC;
  signal A_d0_carry_n_2 : STD_LOGIC;
  signal A_d0_carry_n_3 : STD_LOGIC;
  signal A_d0_carry_n_4 : STD_LOGIC;
  signal A_d0_carry_n_5 : STD_LOGIC;
  signal A_d0_carry_n_6 : STD_LOGIC;
  signal A_d0_carry_n_7 : STD_LOGIC;
  signal add_ln12_fu_261_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal add_ln16_2_fu_231_p2 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \add_ln16_2_fu_231_p2__0_carry_i_10_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_4_n_2\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_4_n_3\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_4_n_4\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_4_n_5\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_4_n_6\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_4_n_7\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_n_1\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_n_2\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_n_3\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_n_4\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_n_5\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_n_6\ : STD_LOGIC;
  signal \add_ln16_2_fu_231_p2__0_carry_n_7\ : STD_LOGIC;
  signal add_ln16_2_reg_3270 : STD_LOGIC;
  signal \^add_ln16_2_reg_327_reg[0]_0\ : STD_LOGIC;
  signal add_ln8_fu_157_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[0]_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_condition_108 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_2 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_4 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_9 : STD_LOGIC;
  signal i_fu_680 : STD_LOGIC;
  signal i_fu_68_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal icmp_ln8_fu_152_p2 : STD_LOGIC;
  signal icmp_ln8_reg_318 : STD_LOGIC;
  signal \icmp_ln8_reg_318[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln8_reg_318[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln8_reg_318[0]_i_4_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_72[8]_i_3_n_0\ : STD_LOGIC;
  signal indvar_flatten_fu_72_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal k_fu_64 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal k_fu_64_0 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_1 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_10 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_100 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_101 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_102 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_103 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_104 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_105 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_106 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_107 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_108 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_109 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_11 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_110 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_111 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_112 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_113 : STD_LOGIC;
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
  signal mul_32s_32s_32_1_1_U1_n_66 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_67 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_68 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_69 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_7 : STD_LOGIC;
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
  signal mul_32s_32s_32_1_1_U1_n_8 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_80 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_81 : STD_LOGIC;
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
  signal mul_32s_32s_32_1_1_U1_n_98 : STD_LOGIC;
  signal mul_32s_32s_32_1_1_U1_n_99 : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln16_reg_343_reg[9]__0_n_0\ : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_100 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_101 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_102 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_103 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_104 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_105 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_58 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_59 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_60 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_61 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_62 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_63 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_64 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_65 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_66 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_67 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_68 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_69 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_70 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_71 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_72 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_73 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_74 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_75 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_76 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_77 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_78 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_79 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_80 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_81 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_82 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_83 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_84 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_85 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_86 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_87 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_88 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_89 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_90 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_91 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_92 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_93 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_94 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_95 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_96 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_97 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_98 : STD_LOGIC;
  signal mul_ln16_reg_343_reg_n_99 : STD_LOGIC;
  signal reg_125 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_125_1 : STD_LOGIC;
  signal select_ln8_1_fu_189_p3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal select_ln8_reg_322 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal zext_ln16_fu_227_p1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_A_d0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_add_ln16_2_fu_231_p2__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_add_ln16_2_fu_231_p2__0_carry_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_add_ln16_2_fu_231_p2__0_carry_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_mul_ln16_reg_343_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln16_reg_343_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln16_reg_343_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln16_reg_343_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln16_reg_343_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln16_reg_343_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln16_reg_343_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln16_reg_343_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln16_reg_343_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln16_reg_343_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln16_reg_343_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_address0[0]_INST_0_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \A_address0[2]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \A_address0[5]_INST_0_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of A_ce0_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of A_ce1_INST_0 : label is "soft_lutpair18";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of A_d0_carry : label is 35;
  attribute ADDER_THRESHOLD of \A_d0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \A_d0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \A_d0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of A_we0_INST_0 : label is "soft_lutpair23";
  attribute ADDER_THRESHOLD of \add_ln16_2_fu_231_p2__0_carry\ : label is 35;
  attribute SOFT_HLUTNM of \add_ln16_2_reg_327[0]_i_1\ : label is "soft_lutpair19";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_reg_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_72[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_72[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_72[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_72[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_72[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_72[8]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \k_fu_64[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \k_fu_64[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \k_fu_64[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \k_fu_64[4]_i_3\ : label is "soft_lutpair21";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of mul_ln16_reg_343_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mul_ln16_reg_343_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute SOFT_HLUTNM of \select_ln8_reg_322[4]_i_1\ : label is "soft_lutpair19";
begin
  A_address1(7 downto 0) <= \^a_address1\(7 downto 0);
  A_ce1 <= \^a_ce1\;
  \add_ln16_2_reg_327_reg[0]_0\ <= \^add_ln16_2_reg_327_reg[0]_0\;
  \ap_CS_fsm_reg[0]_0\ <= \^ap_cs_fsm_reg[0]_0\;
\A_addr_reg_337[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => icmp_ln8_reg_318,
      O => ap_condition_108
    );
\A_addr_reg_337_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^add_ln16_2_reg_327_reg[0]_0\,
      Q => A_addr_reg_337(0),
      R => '0'
    );
\A_addr_reg_337_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(0),
      Q => A_addr_reg_337(1),
      R => '0'
    );
\A_addr_reg_337_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(1),
      Q => A_addr_reg_337(2),
      R => '0'
    );
\A_addr_reg_337_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(2),
      Q => A_addr_reg_337(3),
      R => '0'
    );
\A_addr_reg_337_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(3),
      Q => A_addr_reg_337(4),
      R => '0'
    );
\A_addr_reg_337_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(4),
      Q => A_addr_reg_337(5),
      R => '0'
    );
\A_addr_reg_337_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(5),
      Q => A_addr_reg_337(6),
      R => '0'
    );
\A_addr_reg_337_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(6),
      Q => A_addr_reg_337(7),
      R => '0'
    );
\A_addr_reg_337_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_108,
      D => \^a_address1\(7),
      Q => A_addr_reg_337(8),
      R => '0'
    );
\A_address0[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => A_addr_reg_337(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => k_fu_64(0),
      I4 => \A_address0[0]_INST_0_i_1_n_0\,
      O => A_address0(0)
    );
\A_address0[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => k_fu_64(3),
      I1 => k_fu_64(4),
      I2 => k_fu_64(1),
      I3 => k_fu_64(0),
      I4 => k_fu_64(2),
      O => \A_address0[0]_INST_0_i_1_n_0\
    );
\A_address0[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => A_addr_reg_337(1),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => k_fu_64(1),
      O => A_address0(1)
    );
\A_address0[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF8080BF"
    )
        port map (
      I0 => A_addr_reg_337(2),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => \A_address0[8]\(0),
      I4 => \A_address0[3]_INST_0_i_1_n_0\,
      O => A_address0(2)
    );
\A_address0[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BBB8BB8B88"
    )
        port map (
      I0 => A_addr_reg_337(3),
      I1 => \^ap_cs_fsm_reg[0]_0\,
      I2 => \A_address0[3]_INST_0_i_1_n_0\,
      I3 => \A_address0[8]\(0),
      I4 => \A_address0[8]\(1),
      I5 => k_fu_64(3),
      O => A_address0(3)
    );
\A_address0[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FFFF"
    )
        port map (
      I0 => k_fu_64(3),
      I1 => k_fu_64(4),
      I2 => k_fu_64(1),
      I3 => k_fu_64(0),
      I4 => k_fu_64(2),
      O => \A_address0[3]_INST_0_i_1_n_0\
    );
\A_address0[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8080BF80BFBF80"
    )
        port map (
      I0 => A_addr_reg_337(4),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => \A_address0[5]_INST_0_i_2_n_0\,
      I4 => \A_address0[5]_INST_0_i_1_n_0\,
      I5 => \A_address0[8]\(2),
      O => A_address0(4)
    );
\A_address0[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B8B8BB8B8B88B"
    )
        port map (
      I0 => A_addr_reg_337(5),
      I1 => \^ap_cs_fsm_reg[0]_0\,
      I2 => \A_address0[8]\(3),
      I3 => \A_address0[5]_INST_0_i_1_n_0\,
      I4 => \A_address0[5]_INST_0_i_2_n_0\,
      I5 => \A_address0[8]\(2),
      O => A_address0(5)
    );
\A_address0[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002FFFF"
    )
        port map (
      I0 => k_fu_64(2),
      I1 => k_fu_64(0),
      I2 => k_fu_64(1),
      I3 => k_fu_64(3),
      I4 => k_fu_64(4),
      O => \A_address0[5]_INST_0_i_1_n_0\
    );
\A_address0[5]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DDF"
    )
        port map (
      I0 => \A_address0[8]\(0),
      I1 => \A_address0[3]_INST_0_i_1_n_0\,
      I2 => k_fu_64(3),
      I3 => \A_address0[8]\(1),
      O => \A_address0[5]_INST_0_i_2_n_0\
    );
\A_address0[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80BFBF80BF80BF80"
    )
        port map (
      I0 => A_addr_reg_337(6),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => \A_address0[8]\(4),
      I4 => \A_address0[7]_INST_0_i_1_n_0\,
      I5 => \A_address0[8]\(3),
      O => A_address0(6)
    );
\A_address0[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => A_addr_reg_337(7),
      I1 => \^ap_cs_fsm_reg[0]_0\,
      I2 => \A_address0[8]\(5),
      I3 => \A_address0[8]\(3),
      I4 => \A_address0[7]_INST_0_i_1_n_0\,
      I5 => \A_address0[8]\(4),
      O => A_address0(7)
    );
\A_address0[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80A88080EAFEEAEA"
    )
        port map (
      I0 => \A_address0[8]\(2),
      I1 => \A_address0[8]\(1),
      I2 => k_fu_64(3),
      I3 => \A_address0[3]_INST_0_i_1_n_0\,
      I4 => \A_address0[8]\(0),
      I5 => \A_address0[5]_INST_0_i_1_n_0\,
      O => \A_address0[7]_INST_0_i_1_n_0\
    );
\A_address0[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => A_addr_reg_337(8),
      I1 => \^ap_cs_fsm_reg[0]_0\,
      I2 => \A_address0[8]\(6),
      I3 => \A_address0[8]\(4),
      I4 => \A_address0[8]_INST_0_i_1_n_0\,
      I5 => \A_address0[8]\(5),
      O => A_address0(8)
    );
\A_address0[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A22222202000"
    )
        port map (
      I0 => \A_address0[8]\(3),
      I1 => \A_address0[5]_INST_0_i_1_n_0\,
      I2 => \A_address0[8]_INST_0_i_2_n_0\,
      I3 => k_fu_64(3),
      I4 => \A_address0[8]\(1),
      I5 => \A_address0[8]\(2),
      O => \A_address0[8]_INST_0_i_1_n_0\
    );
\A_address0[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888808888"
    )
        port map (
      I0 => \A_address0[8]\(0),
      I1 => k_fu_64(2),
      I2 => k_fu_64(0),
      I3 => k_fu_64(1),
      I4 => k_fu_64(4),
      I5 => k_fu_64(3),
      O => \A_address0[8]_INST_0_i_2_n_0\
    );
A_ce0_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF88A0A0"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      O => A_ce0
    );
A_ce1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      O => \^a_ce1\
    );
A_d0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => A_d0_carry_n_0,
      CO(6) => A_d0_carry_n_1,
      CO(5) => A_d0_carry_n_2,
      CO(4) => A_d0_carry_n_3,
      CO(3) => A_d0_carry_n_4,
      CO(2) => A_d0_carry_n_5,
      CO(1) => A_d0_carry_n_6,
      CO(0) => A_d0_carry_n_7,
      DI(7 downto 0) => reg_125(7 downto 0),
      O(7 downto 0) => A_d0(7 downto 0),
      S(7) => A_d0_carry_i_1_n_0,
      S(6) => A_d0_carry_i_2_n_0,
      S(5) => A_d0_carry_i_3_n_0,
      S(4) => A_d0_carry_i_4_n_0,
      S(3) => A_d0_carry_i_5_n_0,
      S(2) => A_d0_carry_i_6_n_0,
      S(1) => A_d0_carry_i_7_n_0,
      S(0) => A_d0_carry_i_8_n_0
    );
\A_d0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => A_d0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \A_d0_carry__0_n_0\,
      CO(6) => \A_d0_carry__0_n_1\,
      CO(5) => \A_d0_carry__0_n_2\,
      CO(4) => \A_d0_carry__0_n_3\,
      CO(3) => \A_d0_carry__0_n_4\,
      CO(2) => \A_d0_carry__0_n_5\,
      CO(1) => \A_d0_carry__0_n_6\,
      CO(0) => \A_d0_carry__0_n_7\,
      DI(7 downto 0) => reg_125(15 downto 8),
      O(7 downto 0) => A_d0(15 downto 8),
      S(7) => \A_d0_carry__0_i_1_n_0\,
      S(6) => \A_d0_carry__0_i_2_n_0\,
      S(5) => \A_d0_carry__0_i_3_n_0\,
      S(4) => \A_d0_carry__0_i_4_n_0\,
      S(3) => \A_d0_carry__0_i_5_n_0\,
      S(2) => \A_d0_carry__0_i_6_n_0\,
      S(1) => \A_d0_carry__0_i_7_n_0\,
      S(0) => \A_d0_carry__0_i_8_n_0\
    );
\A_d0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(15),
      I1 => \mul_ln16_reg_343_reg[15]__0_n_0\,
      O => \A_d0_carry__0_i_1_n_0\
    );
\A_d0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(14),
      I1 => \mul_ln16_reg_343_reg[14]__0_n_0\,
      O => \A_d0_carry__0_i_2_n_0\
    );
\A_d0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(13),
      I1 => \mul_ln16_reg_343_reg[13]__0_n_0\,
      O => \A_d0_carry__0_i_3_n_0\
    );
\A_d0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(12),
      I1 => \mul_ln16_reg_343_reg[12]__0_n_0\,
      O => \A_d0_carry__0_i_4_n_0\
    );
\A_d0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(11),
      I1 => \mul_ln16_reg_343_reg[11]__0_n_0\,
      O => \A_d0_carry__0_i_5_n_0\
    );
\A_d0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(10),
      I1 => \mul_ln16_reg_343_reg[10]__0_n_0\,
      O => \A_d0_carry__0_i_6_n_0\
    );
\A_d0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(9),
      I1 => \mul_ln16_reg_343_reg[9]__0_n_0\,
      O => \A_d0_carry__0_i_7_n_0\
    );
\A_d0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(8),
      I1 => \mul_ln16_reg_343_reg[8]__0_n_0\,
      O => \A_d0_carry__0_i_8_n_0\
    );
\A_d0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \A_d0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \A_d0_carry__1_n_0\,
      CO(6) => \A_d0_carry__1_n_1\,
      CO(5) => \A_d0_carry__1_n_2\,
      CO(4) => \A_d0_carry__1_n_3\,
      CO(3) => \A_d0_carry__1_n_4\,
      CO(2) => \A_d0_carry__1_n_5\,
      CO(1) => \A_d0_carry__1_n_6\,
      CO(0) => \A_d0_carry__1_n_7\,
      DI(7 downto 0) => reg_125(23 downto 16),
      O(7 downto 0) => A_d0(23 downto 16),
      S(7) => mul_32s_32s_32_1_1_U1_n_98,
      S(6) => mul_32s_32s_32_1_1_U1_n_99,
      S(5) => mul_32s_32s_32_1_1_U1_n_100,
      S(4) => mul_32s_32s_32_1_1_U1_n_101,
      S(3) => mul_32s_32s_32_1_1_U1_n_102,
      S(2) => mul_32s_32s_32_1_1_U1_n_103,
      S(1) => mul_32s_32s_32_1_1_U1_n_104,
      S(0) => mul_32s_32s_32_1_1_U1_n_105
    );
\A_d0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \A_d0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_A_d0_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \A_d0_carry__2_n_1\,
      CO(5) => \A_d0_carry__2_n_2\,
      CO(4) => \A_d0_carry__2_n_3\,
      CO(3) => \A_d0_carry__2_n_4\,
      CO(2) => \A_d0_carry__2_n_5\,
      CO(1) => \A_d0_carry__2_n_6\,
      CO(0) => \A_d0_carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => reg_125(30 downto 24),
      O(7 downto 0) => A_d0(31 downto 24),
      S(7) => mul_32s_32s_32_1_1_U1_n_106,
      S(6) => mul_32s_32s_32_1_1_U1_n_107,
      S(5) => mul_32s_32s_32_1_1_U1_n_108,
      S(4) => mul_32s_32s_32_1_1_U1_n_109,
      S(3) => mul_32s_32s_32_1_1_U1_n_110,
      S(2) => mul_32s_32s_32_1_1_U1_n_111,
      S(1) => mul_32s_32s_32_1_1_U1_n_112,
      S(0) => mul_32s_32s_32_1_1_U1_n_113
    );
A_d0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(7),
      I1 => \mul_ln16_reg_343_reg[7]__0_n_0\,
      O => A_d0_carry_i_1_n_0
    );
A_d0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(6),
      I1 => \mul_ln16_reg_343_reg[6]__0_n_0\,
      O => A_d0_carry_i_2_n_0
    );
A_d0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(5),
      I1 => \mul_ln16_reg_343_reg[5]__0_n_0\,
      O => A_d0_carry_i_3_n_0
    );
A_d0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(4),
      I1 => \mul_ln16_reg_343_reg[4]__0_n_0\,
      O => A_d0_carry_i_4_n_0
    );
A_d0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(3),
      I1 => \mul_ln16_reg_343_reg[3]__0_n_0\,
      O => A_d0_carry_i_5_n_0
    );
A_d0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(2),
      I1 => \mul_ln16_reg_343_reg[2]__0_n_0\,
      O => A_d0_carry_i_6_n_0
    );
A_d0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(1),
      I1 => \mul_ln16_reg_343_reg[1]__0_n_0\,
      O => A_d0_carry_i_7_n_0
    );
A_d0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_125(0),
      I1 => \mul_ln16_reg_343_reg[0]__0_n_0\,
      O => A_d0_carry_i_8_n_0
    );
A_we0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter2,
      O => \^ap_cs_fsm_reg[0]_0\
    );
\add_ln16_2_fu_231_p2__0_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_add_ln16_2_fu_231_p2__0_carry_CO_UNCONNECTED\(7),
      CO(6) => \add_ln16_2_fu_231_p2__0_carry_n_1\,
      CO(5) => \add_ln16_2_fu_231_p2__0_carry_n_2\,
      CO(4) => \add_ln16_2_fu_231_p2__0_carry_n_3\,
      CO(3) => \add_ln16_2_fu_231_p2__0_carry_n_4\,
      CO(2) => \add_ln16_2_fu_231_p2__0_carry_n_5\,
      CO(1) => \add_ln16_2_fu_231_p2__0_carry_n_6\,
      CO(0) => \add_ln16_2_fu_231_p2__0_carry_n_7\,
      DI(7) => '0',
      DI(6) => \add_ln16_2_fu_231_p2__0_carry_i_1_n_0\,
      DI(5) => \add_ln16_2_fu_231_p2__0_carry_i_2_n_0\,
      DI(4) => \add_ln16_2_fu_231_p2__0_carry_i_3_n_0\,
      DI(3) => select_ln8_1_fu_189_p3(0),
      DI(2) => k_fu_64(3),
      DI(1) => zext_ln16_fu_227_p1(2),
      DI(0) => '0',
      O(7 downto 0) => add_ln16_2_fu_231_p2(8 downto 1),
      S(7) => \add_ln16_2_fu_231_p2__0_carry_i_5_n_0\,
      S(6) => \add_ln16_2_fu_231_p2__0_carry_i_6_n_0\,
      S(5) => \add_ln16_2_fu_231_p2__0_carry_i_7_n_0\,
      S(4) => \add_ln16_2_fu_231_p2__0_carry_i_8_n_0\,
      S(3) => \add_ln16_2_fu_231_p2__0_carry_i_9_n_0\,
      S(2) => \add_ln16_2_fu_231_p2__0_carry_i_10_n_0\,
      S(1) => \add_ln16_2_fu_231_p2__0_carry_i_11_n_0\,
      S(0) => k_fu_64(1)
    );
\add_ln16_2_fu_231_p2__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => select_ln8_1_fu_189_p3(2),
      I1 => select_ln8_1_fu_189_p3(4),
      O => \add_ln16_2_fu_231_p2__0_carry_i_1_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k_fu_64(3),
      I1 => select_ln8_1_fu_189_p3(1),
      O => \add_ln16_2_fu_231_p2__0_carry_i_10_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555755AAAAA8AA"
    )
        port map (
      I0 => k_fu_64(2),
      I1 => k_fu_64(0),
      I2 => k_fu_64(1),
      I3 => k_fu_64(4),
      I4 => k_fu_64(3),
      I5 => select_ln8_1_fu_189_p3(0),
      O => \add_ln16_2_fu_231_p2__0_carry_i_11_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA6AAAA"
    )
        port map (
      I0 => i_fu_68_reg(0),
      I1 => k_fu_64(2),
      I2 => k_fu_64(0),
      I3 => k_fu_64(1),
      I4 => k_fu_64(4),
      I5 => k_fu_64(3),
      O => \add_ln16_2_fu_231_p2__0_carry_i_12_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => select_ln8_1_fu_189_p3(3),
      I1 => select_ln8_1_fu_189_p3(1),
      O => \add_ln16_2_fu_231_p2__0_carry_i_2_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088888888"
    )
        port map (
      I0 => select_ln8_1_fu_189_p3(2),
      I1 => k_fu_64(4),
      I2 => k_fu_64(3),
      I3 => k_fu_64(1),
      I4 => k_fu_64(0),
      I5 => k_fu_64(2),
      O => \add_ln16_2_fu_231_p2__0_carry_i_3_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_add_ln16_2_fu_231_p2__0_carry_i_4_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \add_ln16_2_fu_231_p2__0_carry_i_4_n_2\,
      CO(4) => \add_ln16_2_fu_231_p2__0_carry_i_4_n_3\,
      CO(3) => \add_ln16_2_fu_231_p2__0_carry_i_4_n_4\,
      CO(2) => \add_ln16_2_fu_231_p2__0_carry_i_4_n_5\,
      CO(1) => \add_ln16_2_fu_231_p2__0_carry_i_4_n_6\,
      CO(0) => \add_ln16_2_fu_231_p2__0_carry_i_4_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => i_fu_68_reg(0),
      O(7) => \NLW_add_ln16_2_fu_231_p2__0_carry_i_4_O_UNCONNECTED\(7),
      O(6 downto 0) => select_ln8_1_fu_189_p3(6 downto 0),
      S(7) => '0',
      S(6 downto 1) => i_fu_68_reg(6 downto 1),
      S(0) => \add_ln16_2_fu_231_p2__0_carry_i_12_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => select_ln8_1_fu_189_p3(5),
      I1 => select_ln8_1_fu_189_p3(3),
      I2 => select_ln8_1_fu_189_p3(6),
      I3 => select_ln8_1_fu_189_p3(4),
      O => \add_ln16_2_fu_231_p2__0_carry_i_5_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => select_ln8_1_fu_189_p3(4),
      I1 => select_ln8_1_fu_189_p3(2),
      I2 => select_ln8_1_fu_189_p3(5),
      I3 => select_ln8_1_fu_189_p3(3),
      O => \add_ln16_2_fu_231_p2__0_carry_i_6_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => select_ln8_1_fu_189_p3(1),
      I1 => select_ln8_1_fu_189_p3(3),
      I2 => select_ln8_1_fu_189_p3(4),
      I3 => select_ln8_1_fu_189_p3(2),
      O => \add_ln16_2_fu_231_p2__0_carry_i_7_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \A_address0[5]_INST_0_i_1_n_0\,
      I1 => select_ln8_1_fu_189_p3(2),
      I2 => select_ln8_1_fu_189_p3(1),
      I3 => select_ln8_1_fu_189_p3(3),
      O => \add_ln16_2_fu_231_p2__0_carry_i_8_n_0\
    );
\add_ln16_2_fu_231_p2__0_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => select_ln8_1_fu_189_p3(2),
      I1 => \A_address0[5]_INST_0_i_1_n_0\,
      I2 => select_ln8_1_fu_189_p3(0),
      O => \add_ln16_2_fu_231_p2__0_carry_i_9_n_0\
    );
\add_ln16_2_reg_327[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCECC"
    )
        port map (
      I0 => k_fu_64(2),
      I1 => k_fu_64(0),
      I2 => k_fu_64(1),
      I3 => k_fu_64(4),
      I4 => k_fu_64(3),
      O => zext_ln16_fu_227_p1(0)
    );
\add_ln16_2_reg_327[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => icmp_ln8_fu_152_p2,
      O => add_ln16_2_reg_3270
    );
\add_ln16_2_reg_327_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => zext_ln16_fu_227_p1(0),
      Q => \^add_ln16_2_reg_327_reg[0]_0\,
      R => '0'
    );
\add_ln16_2_reg_327_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(1),
      Q => \^a_address1\(0),
      R => '0'
    );
\add_ln16_2_reg_327_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(2),
      Q => \^a_address1\(1),
      R => '0'
    );
\add_ln16_2_reg_327_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(3),
      Q => \^a_address1\(2),
      R => '0'
    );
\add_ln16_2_reg_327_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(4),
      Q => \^a_address1\(3),
      R => '0'
    );
\add_ln16_2_reg_327_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(5),
      Q => \^a_address1\(4),
      R => '0'
    );
\add_ln16_2_reg_327_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(6),
      Q => \^a_address1\(5),
      R => '0'
    );
\add_ln16_2_reg_327_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(7),
      Q => \^a_address1\(6),
      R => '0'
    );
\add_ln16_2_reg_327_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => add_ln16_2_fu_231_p2(8),
      Q => \^a_address1\(7),
      R => '0'
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAB"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => ap_enable_reg_pp0_iter2,
      I5 => \ap_CS_fsm[1]_i_2_n_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_2_n_0\,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_loop_exit_ready_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I5 => ap_CS_fsm_pp0_stage1,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => icmp_ln8_reg_318,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
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
      Q => ap_CS_fsm_pp0_stage1,
      R => ap_rst
    );
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => ap_enable_reg_pp0_iter0
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0,
      Q => ap_enable_reg_pp0_iter0_reg,
      R => ap_rst
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05004444"
    )
        port map (
      I0 => ap_rst,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln8_fu_152_p2,
      I3 => ap_enable_reg_pp0_iter0,
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
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404540"
    )
        port map (
      I0 => ap_rst,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage1,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E222E222E222"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => ap_CS_fsm_pp0_stage1,
      I2 => icmp_ln8_fu_152_p2,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => icmp_ln8_reg_318,
      I5 => \^a_ce1\,
      O => ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.bd_0_hls_inst_0_gaussian_flow_control_loop_pipe_sequential_init
     port map (
      D(1 downto 0) => D(1 downto 0),
      O(6) => flow_control_loop_pipe_sequential_init_U_n_0,
      O(5) => flow_control_loop_pipe_sequential_init_U_n_1,
      O(4) => flow_control_loop_pipe_sequential_init_U_n_2,
      O(3) => flow_control_loop_pipe_sequential_init_U_n_3,
      O(2) => flow_control_loop_pipe_sequential_init_U_n_4,
      O(1) => flow_control_loop_pipe_sequential_init_U_n_5,
      O(0) => flow_control_loop_pipe_sequential_init_U_n_6,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      SR(0) => SR(0),
      \ap_CS_fsm_reg[3]\(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter0_reg_reg => flow_control_loop_pipe_sequential_init_U_n_10,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_init_int_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_9,
      ap_rst => ap_rst,
      grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      i_fu_68_reg(6 downto 0) => i_fu_68_reg(6 downto 0),
      \i_fu_68_reg[6]\(4 downto 0) => \i_fu_68_reg[6]_0\(4 downto 0),
      \i_fu_68_reg[6]_0\ => \A_address0[0]_INST_0_i_1_n_0\,
      \i_fu_68_reg[6]_1\(4 downto 0) => k_fu_64(4 downto 0),
      icmp_ln8_fu_152_p2 => icmp_ln8_fu_152_p2
    );
grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFAAAAFFFFAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => icmp_ln8_fu_152_p2,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I5 => ap_CS_fsm_pp0_stage1,
      O => \ap_CS_fsm_reg[2]\
    );
\i_fu_68_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_10,
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => i_fu_68_reg(0),
      R => '0'
    );
\i_fu_68_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_10,
      D => flow_control_loop_pipe_sequential_init_U_n_5,
      Q => i_fu_68_reg(1),
      R => '0'
    );
\i_fu_68_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_10,
      D => flow_control_loop_pipe_sequential_init_U_n_4,
      Q => i_fu_68_reg(2),
      R => '0'
    );
\i_fu_68_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_10,
      D => flow_control_loop_pipe_sequential_init_U_n_3,
      Q => i_fu_68_reg(3),
      R => '0'
    );
\i_fu_68_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_10,
      D => flow_control_loop_pipe_sequential_init_U_n_2,
      Q => i_fu_68_reg(4),
      R => '0'
    );
\i_fu_68_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_10,
      D => flow_control_loop_pipe_sequential_init_U_n_1,
      Q => i_fu_68_reg(5),
      R => '0'
    );
\i_fu_68_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_10,
      D => flow_control_loop_pipe_sequential_init_U_n_0,
      Q => i_fu_68_reg(6),
      R => '0'
    );
\icmp_ln8_reg_318[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \icmp_ln8_reg_318[0]_i_2_n_0\,
      I1 => \icmp_ln8_reg_318[0]_i_3_n_0\,
      I2 => \icmp_ln8_reg_318[0]_i_4_n_0\,
      O => icmp_ln8_fu_152_p2
    );
\icmp_ln8_reg_318[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \icmp_ln8_reg_318_reg[0]_0\(3),
      I1 => indvar_flatten_fu_72_reg(3),
      I2 => indvar_flatten_fu_72_reg(4),
      I3 => \icmp_ln8_reg_318_reg[0]_0\(4),
      I4 => indvar_flatten_fu_72_reg(5),
      I5 => \icmp_ln8_reg_318_reg[0]_0\(5),
      O => \icmp_ln8_reg_318[0]_i_2_n_0\
    );
\icmp_ln8_reg_318[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(8),
      I1 => \icmp_ln8_reg_318_reg[0]_0\(8),
      I2 => indvar_flatten_fu_72_reg(6),
      I3 => \icmp_ln8_reg_318_reg[0]_0\(6),
      I4 => \icmp_ln8_reg_318_reg[0]_0\(7),
      I5 => indvar_flatten_fu_72_reg(7),
      O => \icmp_ln8_reg_318[0]_i_3_n_0\
    );
\icmp_ln8_reg_318[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \icmp_ln8_reg_318_reg[0]_0\(0),
      I1 => indvar_flatten_fu_72_reg(0),
      I2 => indvar_flatten_fu_72_reg(1),
      I3 => \icmp_ln8_reg_318_reg[0]_0\(1),
      I4 => indvar_flatten_fu_72_reg(2),
      I5 => \icmp_ln8_reg_318_reg[0]_0\(2),
      O => \icmp_ln8_reg_318[0]_i_4_n_0\
    );
\icmp_ln8_reg_318_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => icmp_ln8_fu_152_p2,
      Q => icmp_ln8_reg_318,
      R => '0'
    );
\indvar_flatten_fu_72[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(0),
      O => add_ln8_fu_157_p2(0)
    );
\indvar_flatten_fu_72[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(0),
      I1 => indvar_flatten_fu_72_reg(1),
      O => add_ln8_fu_157_p2(1)
    );
\indvar_flatten_fu_72[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(2),
      I1 => indvar_flatten_fu_72_reg(1),
      I2 => indvar_flatten_fu_72_reg(0),
      O => add_ln8_fu_157_p2(2)
    );
\indvar_flatten_fu_72[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(3),
      I1 => indvar_flatten_fu_72_reg(0),
      I2 => indvar_flatten_fu_72_reg(1),
      I3 => indvar_flatten_fu_72_reg(2),
      O => add_ln8_fu_157_p2(3)
    );
\indvar_flatten_fu_72[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(4),
      I1 => indvar_flatten_fu_72_reg(2),
      I2 => indvar_flatten_fu_72_reg(1),
      I3 => indvar_flatten_fu_72_reg(0),
      I4 => indvar_flatten_fu_72_reg(3),
      O => add_ln8_fu_157_p2(4)
    );
\indvar_flatten_fu_72[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(5),
      I1 => indvar_flatten_fu_72_reg(3),
      I2 => indvar_flatten_fu_72_reg(0),
      I3 => indvar_flatten_fu_72_reg(1),
      I4 => indvar_flatten_fu_72_reg(2),
      I5 => indvar_flatten_fu_72_reg(4),
      O => add_ln8_fu_157_p2(5)
    );
\indvar_flatten_fu_72[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(6),
      I1 => \indvar_flatten_fu_72[8]_i_3_n_0\,
      O => add_ln8_fu_157_p2(6)
    );
\indvar_flatten_fu_72[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(7),
      I1 => \indvar_flatten_fu_72[8]_i_3_n_0\,
      I2 => indvar_flatten_fu_72_reg(6),
      O => add_ln8_fu_157_p2(7)
    );
\indvar_flatten_fu_72[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter0_reg,
      I4 => icmp_ln8_fu_152_p2,
      O => i_fu_680
    );
\indvar_flatten_fu_72[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(8),
      I1 => indvar_flatten_fu_72_reg(6),
      I2 => \indvar_flatten_fu_72[8]_i_3_n_0\,
      I3 => indvar_flatten_fu_72_reg(7),
      O => add_ln8_fu_157_p2(8)
    );
\indvar_flatten_fu_72[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => indvar_flatten_fu_72_reg(5),
      I1 => indvar_flatten_fu_72_reg(3),
      I2 => indvar_flatten_fu_72_reg(0),
      I3 => indvar_flatten_fu_72_reg(1),
      I4 => indvar_flatten_fu_72_reg(2),
      I5 => indvar_flatten_fu_72_reg(4),
      O => \indvar_flatten_fu_72[8]_i_3_n_0\
    );
\indvar_flatten_fu_72_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(0),
      Q => indvar_flatten_fu_72_reg(0),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(1),
      Q => indvar_flatten_fu_72_reg(1),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(2),
      Q => indvar_flatten_fu_72_reg(2),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(3),
      Q => indvar_flatten_fu_72_reg(3),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(4),
      Q => indvar_flatten_fu_72_reg(4),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(5),
      Q => indvar_flatten_fu_72_reg(5),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(6),
      Q => indvar_flatten_fu_72_reg(6),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(7),
      Q => indvar_flatten_fu_72_reg(7),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\indvar_flatten_fu_72_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_680,
      D => add_ln8_fu_157_p2(8),
      Q => indvar_flatten_fu_72_reg(8),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\k_fu_64[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^add_ln16_2_reg_327_reg[0]_0\,
      O => add_ln12_fu_261_p2(0)
    );
\k_fu_64[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^add_ln16_2_reg_327_reg[0]_0\,
      I1 => select_ln8_reg_322(1),
      O => add_ln12_fu_261_p2(1)
    );
\k_fu_64[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^add_ln16_2_reg_327_reg[0]_0\,
      I1 => select_ln8_reg_322(1),
      I2 => select_ln8_reg_322(2),
      O => add_ln12_fu_261_p2(2)
    );
\k_fu_64[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => select_ln8_reg_322(1),
      I1 => \^add_ln16_2_reg_327_reg[0]_0\,
      I2 => select_ln8_reg_322(2),
      I3 => select_ln8_reg_322(3),
      O => add_ln12_fu_261_p2(3)
    );
\k_fu_64[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => icmp_ln8_reg_318,
      O => k_fu_64_0
    );
\k_fu_64[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => select_ln8_reg_322(2),
      I1 => \^add_ln16_2_reg_327_reg[0]_0\,
      I2 => select_ln8_reg_322(1),
      I3 => select_ln8_reg_322(3),
      I4 => select_ln8_reg_322(4),
      O => add_ln12_fu_261_p2(4)
    );
\k_fu_64_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => k_fu_64_0,
      D => add_ln12_fu_261_p2(0),
      Q => k_fu_64(0),
      S => flow_control_loop_pipe_sequential_init_U_n_9
    );
\k_fu_64_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => k_fu_64_0,
      D => add_ln12_fu_261_p2(1),
      Q => k_fu_64(1),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\k_fu_64_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => k_fu_64_0,
      D => add_ln12_fu_261_p2(2),
      Q => k_fu_64(2),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\k_fu_64_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => k_fu_64_0,
      D => add_ln12_fu_261_p2(3),
      Q => k_fu_64(3),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
\k_fu_64_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => k_fu_64_0,
      D => add_ln12_fu_261_p2(4),
      Q => k_fu_64(4),
      R => flow_control_loop_pipe_sequential_init_U_n_9
    );
mul_32s_32s_32_1_1_U1: entity work.bd_0_hls_inst_0_gaussian_mul_32s_32s_32_1_1
     port map (
      \A_d0[31]\(15 downto 0) => reg_125(31 downto 16),
      \A_d0_carry__1_i_8_0\(0) => \mul_ln16_reg_343_reg[16]__0_n_0\,
      A_q0(31 downto 0) => A_q0(31 downto 0),
      A_q1(31 downto 0) => A_q1(31 downto 0),
      \A_q1[16]\(16) => mul_32s_32s_32_1_1_U1_n_81,
      \A_q1[16]\(15) => mul_32s_32s_32_1_1_U1_n_82,
      \A_q1[16]\(14) => mul_32s_32s_32_1_1_U1_n_83,
      \A_q1[16]\(13) => mul_32s_32s_32_1_1_U1_n_84,
      \A_q1[16]\(12) => mul_32s_32s_32_1_1_U1_n_85,
      \A_q1[16]\(11) => mul_32s_32s_32_1_1_U1_n_86,
      \A_q1[16]\(10) => mul_32s_32s_32_1_1_U1_n_87,
      \A_q1[16]\(9) => mul_32s_32s_32_1_1_U1_n_88,
      \A_q1[16]\(8) => mul_32s_32s_32_1_1_U1_n_89,
      \A_q1[16]\(7) => mul_32s_32s_32_1_1_U1_n_90,
      \A_q1[16]\(6) => mul_32s_32s_32_1_1_U1_n_91,
      \A_q1[16]\(5) => mul_32s_32s_32_1_1_U1_n_92,
      \A_q1[16]\(4) => mul_32s_32s_32_1_1_U1_n_93,
      \A_q1[16]\(3) => mul_32s_32s_32_1_1_U1_n_94,
      \A_q1[16]\(2) => mul_32s_32s_32_1_1_U1_n_95,
      \A_q1[16]\(1) => mul_32s_32s_32_1_1_U1_n_96,
      \A_q1[16]\(0) => mul_32s_32s_32_1_1_U1_n_97,
      B(14) => mul_32s_32s_32_1_1_U1_n_1,
      B(13) => mul_32s_32s_32_1_1_U1_n_2,
      B(12) => mul_32s_32s_32_1_1_U1_n_3,
      B(11) => mul_32s_32s_32_1_1_U1_n_4,
      B(10) => mul_32s_32s_32_1_1_U1_n_5,
      B(9) => mul_32s_32s_32_1_1_U1_n_6,
      B(8) => mul_32s_32s_32_1_1_U1_n_7,
      B(7) => mul_32s_32s_32_1_1_U1_n_8,
      B(6) => mul_32s_32s_32_1_1_U1_n_9,
      B(5) => mul_32s_32s_32_1_1_U1_n_10,
      B(4) => mul_32s_32s_32_1_1_U1_n_11,
      B(3) => mul_32s_32s_32_1_1_U1_n_12,
      B(2) => mul_32s_32s_32_1_1_U1_n_13,
      B(1) => mul_32s_32s_32_1_1_U1_n_14,
      B(0) => mul_32s_32s_32_1_1_U1_n_15,
      CEA2 => reg_125_1,
      D(16) => mul_32s_32s_32_1_1_U1_n_16,
      D(15) => mul_32s_32s_32_1_1_U1_n_17,
      D(14) => mul_32s_32s_32_1_1_U1_n_18,
      D(13) => mul_32s_32s_32_1_1_U1_n_19,
      D(12) => mul_32s_32s_32_1_1_U1_n_20,
      D(11) => mul_32s_32s_32_1_1_U1_n_21,
      D(10) => mul_32s_32s_32_1_1_U1_n_22,
      D(9) => mul_32s_32s_32_1_1_U1_n_23,
      D(8) => mul_32s_32s_32_1_1_U1_n_24,
      D(7) => mul_32s_32s_32_1_1_U1_n_25,
      D(6) => mul_32s_32s_32_1_1_U1_n_26,
      D(5) => mul_32s_32s_32_1_1_U1_n_27,
      D(4) => mul_32s_32s_32_1_1_U1_n_28,
      D(3) => mul_32s_32s_32_1_1_U1_n_29,
      D(2) => mul_32s_32s_32_1_1_U1_n_30,
      D(1) => mul_32s_32s_32_1_1_U1_n_31,
      D(0) => mul_32s_32s_32_1_1_U1_n_32,
      P(14) => mul_ln16_reg_343_reg_n_91,
      P(13) => mul_ln16_reg_343_reg_n_92,
      P(12) => mul_ln16_reg_343_reg_n_93,
      P(11) => mul_ln16_reg_343_reg_n_94,
      P(10) => mul_ln16_reg_343_reg_n_95,
      P(9) => mul_ln16_reg_343_reg_n_96,
      P(8) => mul_ln16_reg_343_reg_n_97,
      P(7) => mul_ln16_reg_343_reg_n_98,
      P(6) => mul_ln16_reg_343_reg_n_99,
      P(5) => mul_ln16_reg_343_reg_n_100,
      P(4) => mul_ln16_reg_343_reg_n_101,
      P(3) => mul_ln16_reg_343_reg_n_102,
      P(2) => mul_ln16_reg_343_reg_n_103,
      P(1) => mul_ln16_reg_343_reg_n_104,
      P(0) => mul_ln16_reg_343_reg_n_105,
      PCOUT(47) => mul_32s_32s_32_1_1_U1_n_33,
      PCOUT(46) => mul_32s_32s_32_1_1_U1_n_34,
      PCOUT(45) => mul_32s_32s_32_1_1_U1_n_35,
      PCOUT(44) => mul_32s_32s_32_1_1_U1_n_36,
      PCOUT(43) => mul_32s_32s_32_1_1_U1_n_37,
      PCOUT(42) => mul_32s_32s_32_1_1_U1_n_38,
      PCOUT(41) => mul_32s_32s_32_1_1_U1_n_39,
      PCOUT(40) => mul_32s_32s_32_1_1_U1_n_40,
      PCOUT(39) => mul_32s_32s_32_1_1_U1_n_41,
      PCOUT(38) => mul_32s_32s_32_1_1_U1_n_42,
      PCOUT(37) => mul_32s_32s_32_1_1_U1_n_43,
      PCOUT(36) => mul_32s_32s_32_1_1_U1_n_44,
      PCOUT(35) => mul_32s_32s_32_1_1_U1_n_45,
      PCOUT(34) => mul_32s_32s_32_1_1_U1_n_46,
      PCOUT(33) => mul_32s_32s_32_1_1_U1_n_47,
      PCOUT(32) => mul_32s_32s_32_1_1_U1_n_48,
      PCOUT(31) => mul_32s_32s_32_1_1_U1_n_49,
      PCOUT(30) => mul_32s_32s_32_1_1_U1_n_50,
      PCOUT(29) => mul_32s_32s_32_1_1_U1_n_51,
      PCOUT(28) => mul_32s_32s_32_1_1_U1_n_52,
      PCOUT(27) => mul_32s_32s_32_1_1_U1_n_53,
      PCOUT(26) => mul_32s_32s_32_1_1_U1_n_54,
      PCOUT(25) => mul_32s_32s_32_1_1_U1_n_55,
      PCOUT(24) => mul_32s_32s_32_1_1_U1_n_56,
      PCOUT(23) => mul_32s_32s_32_1_1_U1_n_57,
      PCOUT(22) => mul_32s_32s_32_1_1_U1_n_58,
      PCOUT(21) => mul_32s_32s_32_1_1_U1_n_59,
      PCOUT(20) => mul_32s_32s_32_1_1_U1_n_60,
      PCOUT(19) => mul_32s_32s_32_1_1_U1_n_61,
      PCOUT(18) => mul_32s_32s_32_1_1_U1_n_62,
      PCOUT(17) => mul_32s_32s_32_1_1_U1_n_63,
      PCOUT(16) => mul_32s_32s_32_1_1_U1_n_64,
      PCOUT(15) => mul_32s_32s_32_1_1_U1_n_65,
      PCOUT(14) => mul_32s_32s_32_1_1_U1_n_66,
      PCOUT(13) => mul_32s_32s_32_1_1_U1_n_67,
      PCOUT(12) => mul_32s_32s_32_1_1_U1_n_68,
      PCOUT(11) => mul_32s_32s_32_1_1_U1_n_69,
      PCOUT(10) => mul_32s_32s_32_1_1_U1_n_70,
      PCOUT(9) => mul_32s_32s_32_1_1_U1_n_71,
      PCOUT(8) => mul_32s_32s_32_1_1_U1_n_72,
      PCOUT(7) => mul_32s_32s_32_1_1_U1_n_73,
      PCOUT(6) => mul_32s_32s_32_1_1_U1_n_74,
      PCOUT(5) => mul_32s_32s_32_1_1_U1_n_75,
      PCOUT(4) => mul_32s_32s_32_1_1_U1_n_76,
      PCOUT(3) => mul_32s_32s_32_1_1_U1_n_77,
      PCOUT(2) => mul_32s_32s_32_1_1_U1_n_78,
      PCOUT(1) => mul_32s_32s_32_1_1_U1_n_79,
      PCOUT(0) => mul_32s_32s_32_1_1_U1_n_80,
      Q(0) => Q(0),
      S(7) => mul_32s_32s_32_1_1_U1_n_98,
      S(6) => mul_32s_32s_32_1_1_U1_n_99,
      S(5) => mul_32s_32s_32_1_1_U1_n_100,
      S(4) => mul_32s_32s_32_1_1_U1_n_101,
      S(3) => mul_32s_32s_32_1_1_U1_n_102,
      S(2) => mul_32s_32s_32_1_1_U1_n_103,
      S(1) => mul_32s_32s_32_1_1_U1_n_104,
      S(0) => mul_32s_32s_32_1_1_U1_n_105,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      c_q0(16 downto 0) => c_q0(16 downto 0),
      icmp_ln8_reg_318 => icmp_ln8_reg_318,
      \reg_125_reg[0]\(1) => ap_CS_fsm_pp0_stage1,
      \reg_125_reg[0]\(0) => \ap_CS_fsm_reg_n_0_[0]\,
      \reg_125_reg[31]\(7) => mul_32s_32s_32_1_1_U1_n_106,
      \reg_125_reg[31]\(6) => mul_32s_32s_32_1_1_U1_n_107,
      \reg_125_reg[31]\(5) => mul_32s_32s_32_1_1_U1_n_108,
      \reg_125_reg[31]\(4) => mul_32s_32s_32_1_1_U1_n_109,
      \reg_125_reg[31]\(3) => mul_32s_32s_32_1_1_U1_n_110,
      \reg_125_reg[31]\(2) => mul_32s_32s_32_1_1_U1_n_111,
      \reg_125_reg[31]\(1) => mul_32s_32s_32_1_1_U1_n_112,
      \reg_125_reg[31]\(0) => mul_32s_32s_32_1_1_U1_n_113
    );
mul_ln16_reg_343_reg: unisim.vcomponents.DSP48E2
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
      A(16) => mul_32s_32s_32_1_1_U1_n_81,
      A(15) => mul_32s_32s_32_1_1_U1_n_82,
      A(14) => mul_32s_32s_32_1_1_U1_n_83,
      A(13) => mul_32s_32s_32_1_1_U1_n_84,
      A(12) => mul_32s_32s_32_1_1_U1_n_85,
      A(11) => mul_32s_32s_32_1_1_U1_n_86,
      A(10) => mul_32s_32s_32_1_1_U1_n_87,
      A(9) => mul_32s_32s_32_1_1_U1_n_88,
      A(8) => mul_32s_32s_32_1_1_U1_n_89,
      A(7) => mul_32s_32s_32_1_1_U1_n_90,
      A(6) => mul_32s_32s_32_1_1_U1_n_91,
      A(5) => mul_32s_32s_32_1_1_U1_n_92,
      A(4) => mul_32s_32s_32_1_1_U1_n_93,
      A(3) => mul_32s_32s_32_1_1_U1_n_94,
      A(2) => mul_32s_32s_32_1_1_U1_n_95,
      A(1) => mul_32s_32s_32_1_1_U1_n_96,
      A(0) => mul_32s_32s_32_1_1_U1_n_97,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln16_reg_343_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => c_q0(31),
      B(16) => c_q0(31),
      B(15) => c_q0(31),
      B(14 downto 0) => c_q0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln16_reg_343_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln16_reg_343_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln16_reg_343_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => reg_125_1,
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
      CEP => ap_CS_fsm_pp0_stage1,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln16_reg_343_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln16_reg_343_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln16_reg_343_reg_n_58,
      P(46) => mul_ln16_reg_343_reg_n_59,
      P(45) => mul_ln16_reg_343_reg_n_60,
      P(44) => mul_ln16_reg_343_reg_n_61,
      P(43) => mul_ln16_reg_343_reg_n_62,
      P(42) => mul_ln16_reg_343_reg_n_63,
      P(41) => mul_ln16_reg_343_reg_n_64,
      P(40) => mul_ln16_reg_343_reg_n_65,
      P(39) => mul_ln16_reg_343_reg_n_66,
      P(38) => mul_ln16_reg_343_reg_n_67,
      P(37) => mul_ln16_reg_343_reg_n_68,
      P(36) => mul_ln16_reg_343_reg_n_69,
      P(35) => mul_ln16_reg_343_reg_n_70,
      P(34) => mul_ln16_reg_343_reg_n_71,
      P(33) => mul_ln16_reg_343_reg_n_72,
      P(32) => mul_ln16_reg_343_reg_n_73,
      P(31) => mul_ln16_reg_343_reg_n_74,
      P(30) => mul_ln16_reg_343_reg_n_75,
      P(29) => mul_ln16_reg_343_reg_n_76,
      P(28) => mul_ln16_reg_343_reg_n_77,
      P(27) => mul_ln16_reg_343_reg_n_78,
      P(26) => mul_ln16_reg_343_reg_n_79,
      P(25) => mul_ln16_reg_343_reg_n_80,
      P(24) => mul_ln16_reg_343_reg_n_81,
      P(23) => mul_ln16_reg_343_reg_n_82,
      P(22) => mul_ln16_reg_343_reg_n_83,
      P(21) => mul_ln16_reg_343_reg_n_84,
      P(20) => mul_ln16_reg_343_reg_n_85,
      P(19) => mul_ln16_reg_343_reg_n_86,
      P(18) => mul_ln16_reg_343_reg_n_87,
      P(17) => mul_ln16_reg_343_reg_n_88,
      P(16) => mul_ln16_reg_343_reg_n_89,
      P(15) => mul_ln16_reg_343_reg_n_90,
      P(14) => mul_ln16_reg_343_reg_n_91,
      P(13) => mul_ln16_reg_343_reg_n_92,
      P(12) => mul_ln16_reg_343_reg_n_93,
      P(11) => mul_ln16_reg_343_reg_n_94,
      P(10) => mul_ln16_reg_343_reg_n_95,
      P(9) => mul_ln16_reg_343_reg_n_96,
      P(8) => mul_ln16_reg_343_reg_n_97,
      P(7) => mul_ln16_reg_343_reg_n_98,
      P(6) => mul_ln16_reg_343_reg_n_99,
      P(5) => mul_ln16_reg_343_reg_n_100,
      P(4) => mul_ln16_reg_343_reg_n_101,
      P(3) => mul_ln16_reg_343_reg_n_102,
      P(2) => mul_ln16_reg_343_reg_n_103,
      P(1) => mul_ln16_reg_343_reg_n_104,
      P(0) => mul_ln16_reg_343_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln16_reg_343_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln16_reg_343_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_32s_32s_32_1_1_U1_n_33,
      PCIN(46) => mul_32s_32s_32_1_1_U1_n_34,
      PCIN(45) => mul_32s_32s_32_1_1_U1_n_35,
      PCIN(44) => mul_32s_32s_32_1_1_U1_n_36,
      PCIN(43) => mul_32s_32s_32_1_1_U1_n_37,
      PCIN(42) => mul_32s_32s_32_1_1_U1_n_38,
      PCIN(41) => mul_32s_32s_32_1_1_U1_n_39,
      PCIN(40) => mul_32s_32s_32_1_1_U1_n_40,
      PCIN(39) => mul_32s_32s_32_1_1_U1_n_41,
      PCIN(38) => mul_32s_32s_32_1_1_U1_n_42,
      PCIN(37) => mul_32s_32s_32_1_1_U1_n_43,
      PCIN(36) => mul_32s_32s_32_1_1_U1_n_44,
      PCIN(35) => mul_32s_32s_32_1_1_U1_n_45,
      PCIN(34) => mul_32s_32s_32_1_1_U1_n_46,
      PCIN(33) => mul_32s_32s_32_1_1_U1_n_47,
      PCIN(32) => mul_32s_32s_32_1_1_U1_n_48,
      PCIN(31) => mul_32s_32s_32_1_1_U1_n_49,
      PCIN(30) => mul_32s_32s_32_1_1_U1_n_50,
      PCIN(29) => mul_32s_32s_32_1_1_U1_n_51,
      PCIN(28) => mul_32s_32s_32_1_1_U1_n_52,
      PCIN(27) => mul_32s_32s_32_1_1_U1_n_53,
      PCIN(26) => mul_32s_32s_32_1_1_U1_n_54,
      PCIN(25) => mul_32s_32s_32_1_1_U1_n_55,
      PCIN(24) => mul_32s_32s_32_1_1_U1_n_56,
      PCIN(23) => mul_32s_32s_32_1_1_U1_n_57,
      PCIN(22) => mul_32s_32s_32_1_1_U1_n_58,
      PCIN(21) => mul_32s_32s_32_1_1_U1_n_59,
      PCIN(20) => mul_32s_32s_32_1_1_U1_n_60,
      PCIN(19) => mul_32s_32s_32_1_1_U1_n_61,
      PCIN(18) => mul_32s_32s_32_1_1_U1_n_62,
      PCIN(17) => mul_32s_32s_32_1_1_U1_n_63,
      PCIN(16) => mul_32s_32s_32_1_1_U1_n_64,
      PCIN(15) => mul_32s_32s_32_1_1_U1_n_65,
      PCIN(14) => mul_32s_32s_32_1_1_U1_n_66,
      PCIN(13) => mul_32s_32s_32_1_1_U1_n_67,
      PCIN(12) => mul_32s_32s_32_1_1_U1_n_68,
      PCIN(11) => mul_32s_32s_32_1_1_U1_n_69,
      PCIN(10) => mul_32s_32s_32_1_1_U1_n_70,
      PCIN(9) => mul_32s_32s_32_1_1_U1_n_71,
      PCIN(8) => mul_32s_32s_32_1_1_U1_n_72,
      PCIN(7) => mul_32s_32s_32_1_1_U1_n_73,
      PCIN(6) => mul_32s_32s_32_1_1_U1_n_74,
      PCIN(5) => mul_32s_32s_32_1_1_U1_n_75,
      PCIN(4) => mul_32s_32s_32_1_1_U1_n_76,
      PCIN(3) => mul_32s_32s_32_1_1_U1_n_77,
      PCIN(2) => mul_32s_32s_32_1_1_U1_n_78,
      PCIN(1) => mul_32s_32s_32_1_1_U1_n_79,
      PCIN(0) => mul_32s_32s_32_1_1_U1_n_80,
      PCOUT(47 downto 0) => NLW_mul_ln16_reg_343_reg_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_ln16_reg_343_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln16_reg_343_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln16_reg_343_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_32,
      Q => \mul_ln16_reg_343_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_22,
      Q => \mul_ln16_reg_343_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_21,
      Q => \mul_ln16_reg_343_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_20,
      Q => \mul_ln16_reg_343_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_19,
      Q => \mul_ln16_reg_343_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_18,
      Q => \mul_ln16_reg_343_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_17,
      Q => \mul_ln16_reg_343_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_16,
      Q => \mul_ln16_reg_343_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_31,
      Q => \mul_ln16_reg_343_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_30,
      Q => \mul_ln16_reg_343_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_29,
      Q => \mul_ln16_reg_343_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_28,
      Q => \mul_ln16_reg_343_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_27,
      Q => \mul_ln16_reg_343_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_26,
      Q => \mul_ln16_reg_343_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_25,
      Q => \mul_ln16_reg_343_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_24,
      Q => \mul_ln16_reg_343_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln16_reg_343_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => mul_32s_32s_32_1_1_U1_n_23,
      Q => \mul_ln16_reg_343_reg[9]__0_n_0\,
      R => '0'
    );
\reg_125_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_97,
      Q => reg_125(0),
      R => '0'
    );
\reg_125_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_87,
      Q => reg_125(10),
      R => '0'
    );
\reg_125_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_86,
      Q => reg_125(11),
      R => '0'
    );
\reg_125_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_85,
      Q => reg_125(12),
      R => '0'
    );
\reg_125_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_84,
      Q => reg_125(13),
      R => '0'
    );
\reg_125_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_83,
      Q => reg_125(14),
      R => '0'
    );
\reg_125_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_82,
      Q => reg_125(15),
      R => '0'
    );
\reg_125_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_81,
      Q => reg_125(16),
      R => '0'
    );
\reg_125_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_15,
      Q => reg_125(17),
      R => '0'
    );
\reg_125_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_14,
      Q => reg_125(18),
      R => '0'
    );
\reg_125_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_13,
      Q => reg_125(19),
      R => '0'
    );
\reg_125_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_96,
      Q => reg_125(1),
      R => '0'
    );
\reg_125_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_12,
      Q => reg_125(20),
      R => '0'
    );
\reg_125_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_11,
      Q => reg_125(21),
      R => '0'
    );
\reg_125_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_10,
      Q => reg_125(22),
      R => '0'
    );
\reg_125_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_9,
      Q => reg_125(23),
      R => '0'
    );
\reg_125_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_8,
      Q => reg_125(24),
      R => '0'
    );
\reg_125_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_7,
      Q => reg_125(25),
      R => '0'
    );
\reg_125_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_6,
      Q => reg_125(26),
      R => '0'
    );
\reg_125_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_5,
      Q => reg_125(27),
      R => '0'
    );
\reg_125_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_4,
      Q => reg_125(28),
      R => '0'
    );
\reg_125_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_3,
      Q => reg_125(29),
      R => '0'
    );
\reg_125_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_95,
      Q => reg_125(2),
      R => '0'
    );
\reg_125_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_2,
      Q => reg_125(30),
      R => '0'
    );
\reg_125_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_1,
      Q => reg_125(31),
      R => '0'
    );
\reg_125_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_94,
      Q => reg_125(3),
      R => '0'
    );
\reg_125_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_93,
      Q => reg_125(4),
      R => '0'
    );
\reg_125_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_92,
      Q => reg_125(5),
      R => '0'
    );
\reg_125_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_91,
      Q => reg_125(6),
      R => '0'
    );
\reg_125_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_90,
      Q => reg_125(7),
      R => '0'
    );
\reg_125_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_89,
      Q => reg_125(8),
      R => '0'
    );
\reg_125_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_125_1,
      D => mul_32s_32s_32_1_1_U1_n_88,
      Q => reg_125(9),
      R => '0'
    );
\select_ln8_reg_322[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => k_fu_64(2),
      I1 => k_fu_64(0),
      I2 => k_fu_64(1),
      I3 => k_fu_64(4),
      I4 => k_fu_64(3),
      O => zext_ln16_fu_227_p1(2)
    );
\select_ln8_reg_322[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => k_fu_64(4),
      I1 => k_fu_64(3),
      I2 => k_fu_64(1),
      I3 => k_fu_64(0),
      I4 => k_fu_64(2),
      O => zext_ln16_fu_227_p1(4)
    );
\select_ln8_reg_322_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => k_fu_64(1),
      Q => select_ln8_reg_322(1),
      R => '0'
    );
\select_ln8_reg_322_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => zext_ln16_fu_227_p1(2),
      Q => select_ln8_reg_322(2),
      R => '0'
    );
\select_ln8_reg_322_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => k_fu_64(3),
      Q => select_ln8_reg_322(3),
      R => '0'
    );
\select_ln8_reg_322_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_2_reg_3270,
      D => zext_ln16_fu_227_p1(4),
      Q => select_ln8_reg_322(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_gaussian is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    c_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    c_ce0 : out STD_LOGIC;
    c_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_address0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    A_ce0 : out STD_LOGIC;
    A_we0 : out STD_LOGIC;
    A_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_address1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    A_ce1 : out STD_LOGIC;
    A_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_gaussian : entity is "gaussian";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of bd_0_hls_inst_0_gaussian : entity is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of bd_0_hls_inst_0_gaussian : entity is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of bd_0_hls_inst_0_gaussian : entity is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of bd_0_hls_inst_0_gaussian : entity is "4'b1000";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_gaussian : entity is "yes";
end bd_0_hls_inst_0_gaussian;

architecture STRUCTURE of bd_0_hls_inst_0_gaussian is
  signal add_ln16 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal add_ln8_1_fu_141_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal add_ln8_2_fu_147_p2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal add_ln8_fu_135_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \^c_address0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^c_ce0\ : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg : STD_LOGIC;
  signal grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_n_15 : STD_LOGIC;
  signal \idx_fu_54[4]_i_2_n_0\ : STD_LOGIC;
  signal \indvars_iv1_fu_62[0]_i_1_n_0\ : STD_LOGIC;
  signal indvars_iv1_fu_62_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \indvars_iv1_fu_62_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal j_1_reg_214 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal j_fu_58_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mul_ln8_reg_233 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal tmp_fu_168_p3 : STD_LOGIC_VECTOR ( 8 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln16_reg_238[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \add_ln16_reg_238[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \add_ln16_reg_238[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \add_ln16_reg_238[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__0\ : label is "soft_lutpair33";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \idx_fu_54[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \idx_fu_54[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \idx_fu_54[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \idx_fu_54[4]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \indvars_iv1_fu_62[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \indvars_iv1_fu_62[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \indvars_iv1_fu_62[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \indvars_iv1_fu_62[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \j_fu_58[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \j_fu_58[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \j_fu_58[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \j_fu_58[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mul_ln8_reg_233[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mul_ln8_reg_233[2]_i_1\ : label is "soft_lutpair34";
begin
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
  c_address0(4 downto 0) <= \^c_address0\(4 downto 0);
  c_ce0 <= \^c_ce0\;
\add_ln16_reg_238[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_fu_168_p3(4),
      I1 => tmp_fu_168_p3(6),
      O => p_0_in(2)
    );
\add_ln16_reg_238[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => tmp_fu_168_p3(4),
      I1 => tmp_fu_168_p3(6),
      I2 => tmp_fu_168_p3(7),
      I3 => tmp_fu_168_p3(5),
      O => p_0_in(3)
    );
\add_ln16_reg_238[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8173FC0"
    )
        port map (
      I0 => tmp_fu_168_p3(4),
      I1 => tmp_fu_168_p3(5),
      I2 => tmp_fu_168_p3(7),
      I3 => tmp_fu_168_p3(8),
      I4 => tmp_fu_168_p3(6),
      O => p_0_in(4)
    );
\add_ln16_reg_238[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"051FF080"
    )
        port map (
      I0 => tmp_fu_168_p3(5),
      I1 => tmp_fu_168_p3(4),
      I2 => tmp_fu_168_p3(6),
      I3 => tmp_fu_168_p3(8),
      I4 => tmp_fu_168_p3(7),
      O => p_0_in(5)
    );
\add_ln16_reg_238[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05FFA800"
    )
        port map (
      I0 => tmp_fu_168_p3(6),
      I1 => tmp_fu_168_p3(4),
      I2 => tmp_fu_168_p3(5),
      I3 => tmp_fu_168_p3(7),
      I4 => tmp_fu_168_p3(8),
      O => p_0_in(6)
    );
\add_ln16_reg_238_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_fu_168_p3(4),
      Q => add_ln16(2),
      R => '0'
    );
\add_ln16_reg_238_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_fu_168_p3(5),
      Q => add_ln16(3),
      R => '0'
    );
\add_ln16_reg_238_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => p_0_in(2),
      Q => add_ln16(4),
      R => '0'
    );
\add_ln16_reg_238_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => p_0_in(3),
      Q => add_ln16(5),
      R => '0'
    );
\add_ln16_reg_238_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => p_0_in(4),
      Q => add_ln16(6),
      R => '0'
    );
\add_ln16_reg_238_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => p_0_in(5),
      Q => add_ln16(7),
      R => '0'
    );
\add_ln16_reg_238_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => p_0_in(6),
      Q => add_ln16(8),
      R => '0'
    );
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^ap_ready\,
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(0)
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
      Q => \^c_ce0\,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \idx_fu_54[4]_i_2_n_0\,
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
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
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
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \^c_ce0\,
      I1 => j_fu_58_reg(3),
      I2 => j_fu_58_reg(4),
      I3 => j_fu_58_reg(2),
      I4 => j_fu_58_reg(1),
      I5 => j_fu_58_reg(0),
      O => \^ap_ready\
    );
grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79: entity work.bd_0_hls_inst_0_gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3
     port map (
      A_address0(8 downto 0) => A_address0(8 downto 0),
      \A_address0[8]\(6 downto 0) => add_ln16(8 downto 2),
      A_address1(7 downto 0) => A_address1(8 downto 1),
      A_ce0 => A_ce0,
      A_ce1 => A_ce1,
      A_d0(31 downto 0) => A_d0(31 downto 0),
      A_q0(31 downto 0) => A_q0(31 downto 0),
      A_q1(31 downto 0) => A_q1(31 downto 0),
      D(1) => ap_NS_fsm(3),
      D(0) => ap_NS_fsm(1),
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state3,
      SR(0) => ap_NS_fsm1,
      \add_ln16_2_reg_327_reg[0]_0\ => A_address1(0),
      \ap_CS_fsm_reg[0]_0\ => A_we0,
      \ap_CS_fsm_reg[2]\ => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_n_15,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      c_q0(31 downto 0) => c_q0(31 downto 0),
      grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      \i_fu_68_reg[6]_0\(4 downto 0) => j_1_reg_214(4 downto 0),
      \icmp_ln8_reg_318_reg[0]_0\(8 downto 0) => mul_ln8_reg_233(8 downto 0)
    );
grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_n_15,
      Q => grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
      R => ap_rst
    );
\idx_fu_54[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^c_address0\(0),
      O => add_ln8_1_fu_141_p2(0)
    );
\idx_fu_54[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_address0\(0),
      I1 => \^c_address0\(1),
      O => add_ln8_1_fu_141_p2(1)
    );
\idx_fu_54[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^c_address0\(2),
      I1 => \^c_address0\(1),
      I2 => \^c_address0\(0),
      O => add_ln8_1_fu_141_p2(2)
    );
\idx_fu_54[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^c_address0\(3),
      I1 => \^c_address0\(0),
      I2 => \^c_address0\(1),
      I3 => \^c_address0\(2),
      O => add_ln8_1_fu_141_p2(3)
    );
\idx_fu_54[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_NS_fsm1
    );
\idx_fu_54[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAAAAAAAAAA"
    )
        port map (
      I0 => \^c_ce0\,
      I1 => j_fu_58_reg(3),
      I2 => j_fu_58_reg(4),
      I3 => j_fu_58_reg(2),
      I4 => j_fu_58_reg(1),
      I5 => j_fu_58_reg(0),
      O => \idx_fu_54[4]_i_2_n_0\
    );
\idx_fu_54[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^c_address0\(4),
      I1 => \^c_address0\(2),
      I2 => \^c_address0\(1),
      I3 => \^c_address0\(0),
      I4 => \^c_address0\(3),
      O => add_ln8_1_fu_141_p2(4)
    );
\idx_fu_54_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_1_fu_141_p2(0),
      Q => \^c_address0\(0),
      S => ap_NS_fsm1
    );
\idx_fu_54_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_1_fu_141_p2(1),
      Q => \^c_address0\(1),
      R => ap_NS_fsm1
    );
\idx_fu_54_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_1_fu_141_p2(2),
      Q => \^c_address0\(2),
      R => ap_NS_fsm1
    );
\idx_fu_54_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_1_fu_141_p2(3),
      Q => \^c_address0\(3),
      R => ap_NS_fsm1
    );
\idx_fu_54_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_1_fu_141_p2(4),
      Q => \^c_address0\(4),
      R => ap_NS_fsm1
    );
\idx_load_reg_222_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => \^c_address0\(0),
      Q => tmp_fu_168_p3(4),
      R => '0'
    );
\idx_load_reg_222_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => \^c_address0\(1),
      Q => tmp_fu_168_p3(5),
      R => '0'
    );
\idx_load_reg_222_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => \^c_address0\(2),
      Q => tmp_fu_168_p3(6),
      R => '0'
    );
\idx_load_reg_222_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => \^c_address0\(3),
      Q => tmp_fu_168_p3(7),
      R => '0'
    );
\idx_load_reg_222_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => \^c_address0\(4),
      Q => tmp_fu_168_p3(8),
      R => '0'
    );
\indvars_iv1_fu_62[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvars_iv1_fu_62_reg(0),
      O => \indvars_iv1_fu_62[0]_i_1_n_0\
    );
\indvars_iv1_fu_62[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => indvars_iv1_fu_62_reg(0),
      I1 => \indvars_iv1_fu_62_reg__0\(1),
      O => add_ln8_2_fu_147_p2(1)
    );
\indvars_iv1_fu_62[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \indvars_iv1_fu_62_reg__0\(2),
      I1 => indvars_iv1_fu_62_reg(0),
      I2 => \indvars_iv1_fu_62_reg__0\(1),
      O => add_ln8_2_fu_147_p2(2)
    );
\indvars_iv1_fu_62[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \indvars_iv1_fu_62_reg__0\(3),
      I1 => \indvars_iv1_fu_62_reg__0\(2),
      I2 => \indvars_iv1_fu_62_reg__0\(1),
      I3 => indvars_iv1_fu_62_reg(0),
      O => add_ln8_2_fu_147_p2(3)
    );
\indvars_iv1_fu_62[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \indvars_iv1_fu_62_reg__0\(4),
      I1 => indvars_iv1_fu_62_reg(0),
      I2 => \indvars_iv1_fu_62_reg__0\(2),
      I3 => \indvars_iv1_fu_62_reg__0\(1),
      I4 => \indvars_iv1_fu_62_reg__0\(3),
      O => add_ln8_2_fu_147_p2(4)
    );
\indvars_iv1_fu_62_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => \indvars_iv1_fu_62[0]_i_1_n_0\,
      Q => indvars_iv1_fu_62_reg(0),
      S => ap_NS_fsm1
    );
\indvars_iv1_fu_62_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_2_fu_147_p2(1),
      Q => \indvars_iv1_fu_62_reg__0\(1),
      R => ap_NS_fsm1
    );
\indvars_iv1_fu_62_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_2_fu_147_p2(2),
      Q => \indvars_iv1_fu_62_reg__0\(2),
      R => ap_NS_fsm1
    );
\indvars_iv1_fu_62_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_2_fu_147_p2(3),
      Q => \indvars_iv1_fu_62_reg__0\(3),
      R => ap_NS_fsm1
    );
\indvars_iv1_fu_62_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_2_fu_147_p2(4),
      Q => \indvars_iv1_fu_62_reg__0\(4),
      S => ap_NS_fsm1
    );
\j_1_reg_214_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^c_ce0\,
      D => j_fu_58_reg(0),
      Q => j_1_reg_214(0),
      R => '0'
    );
\j_1_reg_214_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^c_ce0\,
      D => j_fu_58_reg(1),
      Q => j_1_reg_214(1),
      R => '0'
    );
\j_1_reg_214_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^c_ce0\,
      D => j_fu_58_reg(2),
      Q => j_1_reg_214(2),
      R => '0'
    );
\j_1_reg_214_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^c_ce0\,
      D => j_fu_58_reg(3),
      Q => j_1_reg_214(3),
      R => '0'
    );
\j_1_reg_214_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^c_ce0\,
      D => j_fu_58_reg(4),
      Q => j_1_reg_214(4),
      R => '0'
    );
\j_fu_58[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_fu_58_reg(0),
      O => add_ln8_fu_135_p2(0)
    );
\j_fu_58[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_fu_58_reg(0),
      I1 => j_fu_58_reg(1),
      O => add_ln8_fu_135_p2(1)
    );
\j_fu_58[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_fu_58_reg(2),
      I1 => j_fu_58_reg(1),
      I2 => j_fu_58_reg(0),
      O => add_ln8_fu_135_p2(2)
    );
\j_fu_58[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => j_fu_58_reg(3),
      I1 => j_fu_58_reg(2),
      I2 => j_fu_58_reg(0),
      I3 => j_fu_58_reg(1),
      O => add_ln8_fu_135_p2(3)
    );
\j_fu_58[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => j_fu_58_reg(4),
      I1 => j_fu_58_reg(1),
      I2 => j_fu_58_reg(0),
      I3 => j_fu_58_reg(2),
      I4 => j_fu_58_reg(3),
      O => add_ln8_fu_135_p2(4)
    );
\j_fu_58_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_fu_135_p2(0),
      Q => j_fu_58_reg(0),
      R => ap_NS_fsm1
    );
\j_fu_58_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_fu_135_p2(1),
      Q => j_fu_58_reg(1),
      S => ap_NS_fsm1
    );
\j_fu_58_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_fu_135_p2(2),
      Q => j_fu_58_reg(2),
      R => ap_NS_fsm1
    );
\j_fu_58_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_fu_135_p2(3),
      Q => j_fu_58_reg(3),
      R => ap_NS_fsm1
    );
\j_fu_58_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => add_ln8_fu_135_p2(4),
      Q => j_fu_58_reg(4),
      R => ap_NS_fsm1
    );
mul_5ns_6ns_9_1_1_U8: entity work.bd_0_hls_inst_0_gaussian_mul_5ns_6ns_9_1_1
     port map (
      D(5 downto 0) => dout(8 downto 3),
      Q(4 downto 1) => \indvars_iv1_fu_62_reg__0\(4 downto 1),
      Q(0) => indvars_iv1_fu_62_reg(0)
    );
\mul_ln8_reg_233[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indvars_iv1_fu_62_reg__0\(1),
      I1 => indvars_iv1_fu_62_reg(0),
      O => dout(1)
    );
\mul_ln8_reg_233[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => \indvars_iv1_fu_62_reg__0\(1),
      I1 => \indvars_iv1_fu_62_reg__0\(2),
      I2 => indvars_iv1_fu_62_reg(0),
      O => dout(2)
    );
\mul_ln8_reg_233_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => indvars_iv1_fu_62_reg(0),
      Q => mul_ln8_reg_233(0),
      R => '0'
    );
\mul_ln8_reg_233_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(1),
      Q => mul_ln8_reg_233(1),
      R => '0'
    );
\mul_ln8_reg_233_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(2),
      Q => mul_ln8_reg_233(2),
      R => '0'
    );
\mul_ln8_reg_233_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(3),
      Q => mul_ln8_reg_233(3),
      R => '0'
    );
\mul_ln8_reg_233_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(4),
      Q => mul_ln8_reg_233(4),
      R => '0'
    );
\mul_ln8_reg_233_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(5),
      Q => mul_ln8_reg_233(5),
      R => '0'
    );
\mul_ln8_reg_233_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(6),
      Q => mul_ln8_reg_233(6),
      R => '0'
    );
\mul_ln8_reg_233_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(7),
      Q => mul_ln8_reg_233(7),
      R => '0'
    );
\mul_ln8_reg_233_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \idx_fu_54[4]_i_2_n_0\,
      D => dout(8),
      Q => mul_ln8_reg_233(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    c_ce0 : out STD_LOGIC;
    A_ce0 : out STD_LOGIC;
    A_we0 : out STD_LOGIC;
    A_ce1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    c_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    c_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_address0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    A_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_address1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    A_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,gaussian,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "gaussian,Vivado 2022.2";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "4'b1000";
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
  attribute X_INTERFACE_INFO of A_address1 : signal is "xilinx.com:signal:data:1.0 A_address1 DATA";
  attribute X_INTERFACE_PARAMETER of A_address1 : signal is "XIL_INTERFACENAME A_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of A_d0 : signal is "xilinx.com:signal:data:1.0 A_d0 DATA";
  attribute X_INTERFACE_PARAMETER of A_d0 : signal is "XIL_INTERFACENAME A_d0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of A_q0 : signal is "xilinx.com:signal:data:1.0 A_q0 DATA";
  attribute X_INTERFACE_PARAMETER of A_q0 : signal is "XIL_INTERFACENAME A_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of A_q1 : signal is "xilinx.com:signal:data:1.0 A_q1 DATA";
  attribute X_INTERFACE_PARAMETER of A_q1 : signal is "XIL_INTERFACENAME A_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c_address0 : signal is "xilinx.com:signal:data:1.0 c_address0 DATA";
  attribute X_INTERFACE_PARAMETER of c_address0 : signal is "XIL_INTERFACENAME c_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c_q0 : signal is "xilinx.com:signal:data:1.0 c_q0 DATA";
  attribute X_INTERFACE_PARAMETER of c_q0 : signal is "XIL_INTERFACENAME c_q0, LAYERED_METADATA undef";
begin
inst: entity work.bd_0_hls_inst_0_gaussian
     port map (
      A_address0(8 downto 0) => A_address0(8 downto 0),
      A_address1(8 downto 0) => A_address1(8 downto 0),
      A_ce0 => A_ce0,
      A_ce1 => A_ce1,
      A_d0(31 downto 0) => A_d0(31 downto 0),
      A_q0(31 downto 0) => A_q0(31 downto 0),
      A_q1(31 downto 0) => A_q1(31 downto 0),
      A_we0 => A_we0,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      c_address0(4 downto 0) => c_address0(4 downto 0),
      c_ce0 => c_ce0,
      c_q0(31 downto 0) => c_q0(31 downto 0)
    );
end STRUCTURE;
