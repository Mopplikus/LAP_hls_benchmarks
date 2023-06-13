//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2017 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//       Owner:          
//       Revision:       $Id:  $
//                       $Author: user $
//                       $DateTime:  $
//                       $Change: 0000000 $
//       Description:
//
//////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
`include "bfm_noc2_xbr2x4_regs_defines.vh"
`include "xbr2x4_noc_defines.vh"
         /** * Register Field Wires **/

    wire        [1:0] noc2_xbr2x4_reg_high_id0_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id0_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id0_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id0_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id1_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id1_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id1_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id1_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id2_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id2_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id2_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id2_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id3_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id3_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id3_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id3_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id4_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id4_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id4_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id4_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id5_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id5_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id5_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id5_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id6_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id6_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id6_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id6_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id7_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id7_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id7_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id7_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id8_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id8_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id8_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id8_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id9_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id9_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id9_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id9_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id10_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id10_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id10_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id10_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id11_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id11_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id11_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id11_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id12_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id12_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id12_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id12_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id13_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id13_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id13_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id13_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id14_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id14_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id14_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id14_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id15_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id15_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id15_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id15_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id16_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id16_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id16_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id16_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id17_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id17_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id17_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id17_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id18_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id18_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id18_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id18_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id19_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id19_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id19_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id19_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id20_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id20_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id20_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id20_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id21_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id21_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id21_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id21_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id22_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id22_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id22_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id22_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id23_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id23_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id23_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id23_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id24_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id24_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id24_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id24_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id25_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id25_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id25_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id25_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id26_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id26_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id26_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id26_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id27_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id27_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id27_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id27_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id28_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id28_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id28_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id28_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id29_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id29_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id29_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id29_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id30_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id30_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id30_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id30_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id31_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id31_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id31_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id31_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id32_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id32_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id32_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id32_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id33_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id33_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id33_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id33_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id34_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id34_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id34_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id34_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id35_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id35_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id35_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id35_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id36_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id36_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id36_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id36_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id37_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id37_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id37_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id37_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id38_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id38_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id38_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id38_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id39_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id39_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id39_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id39_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id40_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id40_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id40_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id40_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id41_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id41_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id41_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id41_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id42_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id42_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id42_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id42_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id43_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id43_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id43_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id43_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id44_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id44_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id44_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id44_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id45_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id45_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id45_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id45_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id46_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id46_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id46_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id46_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id47_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id47_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id47_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id47_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id48_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id48_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id48_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id48_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id49_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id49_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id49_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id49_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id50_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id50_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id50_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id50_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id51_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id51_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id51_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id51_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id52_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id52_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id52_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id52_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id53_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id53_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id53_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id53_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id54_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id54_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id54_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id54_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id55_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id55_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id55_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id55_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id56_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id56_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id56_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id56_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id57_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id57_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id57_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id57_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id58_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id58_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id58_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id58_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id59_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id59_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id59_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id59_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id60_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id60_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id60_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id60_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id61_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id61_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id61_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id61_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id62_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id62_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id62_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id62_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_high_id63_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_high_id63_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_high_id63_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_high_id63_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_mid_id0_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_mid_id0_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_mid_id0_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_mid_id0_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_mid_id1_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_mid_id1_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_mid_id1_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_mid_id1_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_mid_id2_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_mid_id2_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_mid_id2_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_mid_id2_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_mid_id3_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_mid_id3_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_mid_id3_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_mid_id3_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id0_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id0_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id0_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id0_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id1_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id1_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id1_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id1_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id2_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id2_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id2_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id2_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id3_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id3_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id3_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id3_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id4_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id4_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id4_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id4_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id5_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id5_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id5_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id5_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id6_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id6_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id6_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id6_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id7_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id7_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id7_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id7_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id8_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id8_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id8_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id8_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id9_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id9_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id9_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id9_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id10_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id10_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id10_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id10_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id11_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id11_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id11_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id11_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id12_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id12_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id12_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id12_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id13_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id13_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id13_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id13_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id14_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id14_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id14_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id14_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_low_id15_p_nmu_vc0;
    wire        [1:0] noc2_xbr2x4_reg_low_id15_p_nmu_vc1;
    wire        [1:0] noc2_xbr2x4_reg_low_id15_p_nmu_vc4;
    wire        [1:0] noc2_xbr2x4_reg_low_id15_p_nmu_vc5;
    wire        [1:0] noc2_xbr2x4_reg_id_mid_id;
    wire        [5:0] noc2_xbr2x4_reg_id_high_id;
    wire       [31:0] noc2_xbr2x4_reg_clock_mux_sel;
    wire        [7:0] noc2_xbr2x4_reg_p00_p_nmu_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p00_p_nmu_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p00_p_nmu_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p00_p_nmu_1_vca_token_vc5;
    wire        [7:0] noc2_xbr2x4_reg_p01_p_nsu_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p01_p_nsu_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p01_p_nsu_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p01_p_nsu_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p10_p_nmu_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p10_p_nmu_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p10_p_nmu_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p10_p_nmu_1_vca_token_vc5;
    wire        [7:0] noc2_xbr2x4_reg_p11_p_nsu_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p11_p_nsu_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p11_p_nsu_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p11_p_nsu_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p20_p_nmu_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p20_p_nmu_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p20_p_nmu_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p20_p_nmu_1_vca_token_vc5;
    wire        [7:0] noc2_xbr2x4_reg_p21_p_nsu_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p21_p_nsu_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p21_p_nsu_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p21_p_nsu_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p30_p_nmu_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p30_p_nmu_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p30_p_nmu_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p30_p_nmu_1_vca_token_vc5;
    wire        [7:0] noc2_xbr2x4_reg_p31_p_nsu_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p31_p_nsu_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p31_p_nsu_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p31_p_nsu_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu0_p0_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu0_p0_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu0_p0_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu0_p0_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu1_p1_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu1_p1_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu1_p1_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu1_p1_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu2_p2_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu2_p2_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu2_p2_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu2_p2_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu3_p3_0_vca_token_vc2;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu3_p3_0_vca_token_vc3;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu3_p3_1_vca_token_vc6;
    wire        [7:0] noc2_xbr2x4_reg_p_nmu3_p3_1_vca_token_vc7;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu0_p0_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu0_p0_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu0_p0_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu0_p0_1_vca_token_vc5;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu1_p1_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu1_p1_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu1_p1_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu1_p1_1_vca_token_vc5;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu2_p2_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu2_p2_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu2_p2_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu2_p2_1_vca_token_vc5;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu3_p3_0_vca_token_vc0;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu3_p3_0_vca_token_vc1;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu3_p3_1_vca_token_vc4;
    wire        [7:0] noc2_xbr2x4_reg_p_nsu3_p3_1_vca_token_vc5;
    wire              noc2_xbr2x4_reg_noc_ctl_clk_gate_dis_nps;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc0_token;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc1_token;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc2_token;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc3_token;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc4_token;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc5_token;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc6_token;
    wire              noc2_xbr2x4_reg_noc_ctl_en_vc7_token;

         /** * Register Field Assignment block **/


        /* NOC2_XBR2X4_REG_HIGH_ID0_P_NMU */
        assign noc2_xbr2x4_reg_high_id0_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id0_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID0_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id0_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id0_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID0_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id0_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id0_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID0_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id0_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id0_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID0_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID1_P_NMU */
        assign noc2_xbr2x4_reg_high_id1_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id1_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID1_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id1_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id1_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID1_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id1_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id1_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID1_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id1_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id1_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID1_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID2_P_NMU */
        assign noc2_xbr2x4_reg_high_id2_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id2_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID2_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id2_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id2_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID2_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id2_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id2_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID2_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id2_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id2_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID2_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID3_P_NMU */
        assign noc2_xbr2x4_reg_high_id3_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id3_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID3_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id3_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id3_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID3_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id3_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id3_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID3_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id3_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id3_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID3_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID4_P_NMU */
        assign noc2_xbr2x4_reg_high_id4_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id4_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID4_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id4_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id4_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID4_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id4_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id4_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID4_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id4_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id4_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID4_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID5_P_NMU */
        assign noc2_xbr2x4_reg_high_id5_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id5_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID5_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id5_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id5_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID5_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id5_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id5_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID5_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id5_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id5_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID5_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID6_P_NMU */
        assign noc2_xbr2x4_reg_high_id6_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id6_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID6_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id6_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id6_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID6_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id6_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id6_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID6_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id6_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id6_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID6_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID7_P_NMU */
        assign noc2_xbr2x4_reg_high_id7_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id7_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID7_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id7_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id7_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID7_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id7_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id7_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID7_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id7_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id7_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID7_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID8_P_NMU */
        assign noc2_xbr2x4_reg_high_id8_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id8_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID8_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id8_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id8_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID8_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id8_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id8_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID8_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id8_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id8_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID8_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID9_P_NMU */
        assign noc2_xbr2x4_reg_high_id9_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id9_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID9_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id9_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id9_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID9_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id9_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id9_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID9_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id9_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id9_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID9_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID10_P_NMU */
        assign noc2_xbr2x4_reg_high_id10_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id10_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID10_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id10_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id10_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID10_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id10_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id10_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID10_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id10_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id10_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID10_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID11_P_NMU */
        assign noc2_xbr2x4_reg_high_id11_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id11_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID11_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id11_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id11_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID11_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id11_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id11_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID11_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id11_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id11_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID11_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID12_P_NMU */
        assign noc2_xbr2x4_reg_high_id12_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id12_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID12_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id12_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id12_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID12_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id12_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id12_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID12_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id12_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id12_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID12_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID13_P_NMU */
        assign noc2_xbr2x4_reg_high_id13_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id13_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID13_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id13_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id13_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID13_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id13_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id13_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID13_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id13_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id13_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID13_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID14_P_NMU */
        assign noc2_xbr2x4_reg_high_id14_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id14_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID14_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id14_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id14_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID14_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id14_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id14_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID14_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id14_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id14_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID14_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID15_P_NMU */
        assign noc2_xbr2x4_reg_high_id15_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id15_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID15_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id15_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id15_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID15_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id15_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id15_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID15_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id15_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id15_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID15_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID16_P_NMU */
        assign noc2_xbr2x4_reg_high_id16_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id16_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID16_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id16_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id16_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID16_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id16_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id16_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID16_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id16_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id16_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID16_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID17_P_NMU */
        assign noc2_xbr2x4_reg_high_id17_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id17_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID17_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id17_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id17_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID17_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id17_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id17_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID17_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id17_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id17_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID17_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID18_P_NMU */
        assign noc2_xbr2x4_reg_high_id18_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id18_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID18_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id18_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id18_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID18_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id18_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id18_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID18_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id18_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id18_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID18_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID19_P_NMU */
        assign noc2_xbr2x4_reg_high_id19_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id19_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID19_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id19_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id19_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID19_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id19_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id19_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID19_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id19_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id19_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID19_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID20_P_NMU */
        assign noc2_xbr2x4_reg_high_id20_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id20_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID20_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id20_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id20_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID20_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id20_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id20_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID20_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id20_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id20_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID20_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID21_P_NMU */
        assign noc2_xbr2x4_reg_high_id21_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id21_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID21_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id21_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id21_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID21_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id21_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id21_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID21_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id21_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id21_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID21_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID22_P_NMU */
        assign noc2_xbr2x4_reg_high_id22_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id22_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID22_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id22_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id22_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID22_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id22_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id22_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID22_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id22_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id22_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID22_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID23_P_NMU */
        assign noc2_xbr2x4_reg_high_id23_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id23_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID23_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id23_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id23_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID23_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id23_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id23_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID23_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id23_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id23_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID23_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID24_P_NMU */
        assign noc2_xbr2x4_reg_high_id24_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id24_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID24_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id24_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id24_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID24_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id24_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id24_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID24_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id24_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id24_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID24_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID25_P_NMU */
        assign noc2_xbr2x4_reg_high_id25_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id25_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID25_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id25_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id25_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID25_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id25_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id25_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID25_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id25_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id25_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID25_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID26_P_NMU */
        assign noc2_xbr2x4_reg_high_id26_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id26_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID26_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id26_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id26_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID26_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id26_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id26_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID26_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id26_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id26_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID26_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID27_P_NMU */
        assign noc2_xbr2x4_reg_high_id27_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id27_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID27_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id27_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id27_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID27_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id27_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id27_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID27_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id27_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id27_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID27_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID28_P_NMU */
        assign noc2_xbr2x4_reg_high_id28_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id28_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID28_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id28_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id28_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID28_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id28_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id28_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID28_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id28_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id28_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID28_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID29_P_NMU */
        assign noc2_xbr2x4_reg_high_id29_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id29_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID29_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id29_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id29_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID29_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id29_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id29_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID29_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id29_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id29_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID29_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID30_P_NMU */
        assign noc2_xbr2x4_reg_high_id30_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id30_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID30_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id30_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id30_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID30_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id30_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id30_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID30_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id30_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id30_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID30_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID31_P_NMU */
        assign noc2_xbr2x4_reg_high_id31_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id31_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID31_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id31_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id31_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID31_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id31_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id31_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID31_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id31_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id31_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID31_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID32_P_NMU */
        assign noc2_xbr2x4_reg_high_id32_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id32_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID32_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id32_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id32_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID32_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id32_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id32_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID32_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id32_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id32_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID32_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID33_P_NMU */
        assign noc2_xbr2x4_reg_high_id33_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id33_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID33_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id33_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id33_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID33_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id33_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id33_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID33_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id33_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id33_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID33_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID34_P_NMU */
        assign noc2_xbr2x4_reg_high_id34_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id34_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID34_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id34_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id34_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID34_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id34_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id34_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID34_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id34_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id34_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID34_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID35_P_NMU */
        assign noc2_xbr2x4_reg_high_id35_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id35_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID35_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id35_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id35_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID35_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id35_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id35_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID35_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id35_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id35_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID35_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID36_P_NMU */
        assign noc2_xbr2x4_reg_high_id36_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id36_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID36_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id36_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id36_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID36_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id36_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id36_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID36_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id36_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id36_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID36_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID37_P_NMU */
        assign noc2_xbr2x4_reg_high_id37_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id37_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID37_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id37_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id37_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID37_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id37_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id37_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID37_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id37_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id37_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID37_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID38_P_NMU */
        assign noc2_xbr2x4_reg_high_id38_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id38_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID38_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id38_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id38_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID38_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id38_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id38_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID38_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id38_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id38_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID38_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID39_P_NMU */
        assign noc2_xbr2x4_reg_high_id39_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id39_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID39_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id39_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id39_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID39_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id39_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id39_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID39_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id39_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id39_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID39_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID40_P_NMU */
        assign noc2_xbr2x4_reg_high_id40_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id40_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID40_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id40_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id40_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID40_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id40_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id40_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID40_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id40_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id40_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID40_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID41_P_NMU */
        assign noc2_xbr2x4_reg_high_id41_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id41_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID41_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id41_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id41_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID41_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id41_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id41_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID41_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id41_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id41_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID41_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID42_P_NMU */
        assign noc2_xbr2x4_reg_high_id42_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id42_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID42_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id42_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id42_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID42_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id42_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id42_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID42_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id42_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id42_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID42_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID43_P_NMU */
        assign noc2_xbr2x4_reg_high_id43_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id43_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID43_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id43_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id43_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID43_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id43_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id43_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID43_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id43_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id43_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID43_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID44_P_NMU */
        assign noc2_xbr2x4_reg_high_id44_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id44_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID44_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id44_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id44_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID44_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id44_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id44_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID44_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id44_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id44_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID44_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID45_P_NMU */
        assign noc2_xbr2x4_reg_high_id45_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id45_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID45_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id45_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id45_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID45_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id45_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id45_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID45_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id45_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id45_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID45_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID46_P_NMU */
        assign noc2_xbr2x4_reg_high_id46_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id46_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID46_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id46_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id46_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID46_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id46_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id46_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID46_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id46_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id46_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID46_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID47_P_NMU */
        assign noc2_xbr2x4_reg_high_id47_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id47_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID47_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id47_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id47_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID47_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id47_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id47_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID47_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id47_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id47_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID47_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID48_P_NMU */
        assign noc2_xbr2x4_reg_high_id48_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id48_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID48_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id48_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id48_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID48_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id48_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id48_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID48_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id48_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id48_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID48_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID49_P_NMU */
        assign noc2_xbr2x4_reg_high_id49_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id49_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID49_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id49_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id49_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID49_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id49_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id49_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID49_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id49_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id49_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID49_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID50_P_NMU */
        assign noc2_xbr2x4_reg_high_id50_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id50_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID50_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id50_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id50_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID50_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id50_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id50_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID50_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id50_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id50_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID50_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID51_P_NMU */
        assign noc2_xbr2x4_reg_high_id51_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id51_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID51_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id51_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id51_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID51_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id51_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id51_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID51_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id51_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id51_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID51_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID52_P_NMU */
        assign noc2_xbr2x4_reg_high_id52_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id52_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID52_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id52_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id52_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID52_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id52_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id52_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID52_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id52_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id52_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID52_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID53_P_NMU */
        assign noc2_xbr2x4_reg_high_id53_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id53_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID53_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id53_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id53_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID53_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id53_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id53_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID53_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id53_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id53_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID53_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID54_P_NMU */
        assign noc2_xbr2x4_reg_high_id54_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id54_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID54_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id54_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id54_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID54_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id54_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id54_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID54_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id54_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id54_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID54_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID55_P_NMU */
        assign noc2_xbr2x4_reg_high_id55_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id55_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID55_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id55_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id55_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID55_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id55_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id55_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID55_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id55_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id55_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID55_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID56_P_NMU */
        assign noc2_xbr2x4_reg_high_id56_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id56_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID56_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id56_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id56_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID56_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id56_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id56_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID56_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id56_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id56_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID56_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID57_P_NMU */
        assign noc2_xbr2x4_reg_high_id57_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id57_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID57_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id57_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id57_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID57_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id57_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id57_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID57_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id57_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id57_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID57_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID58_P_NMU */
        assign noc2_xbr2x4_reg_high_id58_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id58_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID58_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id58_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id58_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID58_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id58_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id58_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID58_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id58_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id58_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID58_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID59_P_NMU */
        assign noc2_xbr2x4_reg_high_id59_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id59_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID59_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id59_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id59_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID59_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id59_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id59_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID59_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id59_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id59_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID59_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID60_P_NMU */
        assign noc2_xbr2x4_reg_high_id60_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id60_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID60_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id60_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id60_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID60_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id60_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id60_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID60_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id60_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id60_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID60_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID61_P_NMU */
        assign noc2_xbr2x4_reg_high_id61_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id61_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID61_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id61_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id61_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID61_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id61_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id61_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID61_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id61_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id61_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID61_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID62_P_NMU */
        assign noc2_xbr2x4_reg_high_id62_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id62_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID62_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id62_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id62_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID62_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id62_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id62_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID62_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id62_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id62_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID62_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_HIGH_ID63_P_NMU */
        assign noc2_xbr2x4_reg_high_id63_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_high_id63_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID63_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_high_id63_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_high_id63_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID63_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_high_id63_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_high_id63_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID63_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_high_id63_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_high_id63_p_nmu[`NOC2_XBR2X4_REG_HIGH_ID63_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_MID_ID0_P_NMU */
        assign noc2_xbr2x4_reg_mid_id0_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_mid_id0_p_nmu[`NOC2_XBR2X4_REG_MID_ID0_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_mid_id0_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_mid_id0_p_nmu[`NOC2_XBR2X4_REG_MID_ID0_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_mid_id0_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_mid_id0_p_nmu[`NOC2_XBR2X4_REG_MID_ID0_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_mid_id0_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_mid_id0_p_nmu[`NOC2_XBR2X4_REG_MID_ID0_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_MID_ID1_P_NMU */
        assign noc2_xbr2x4_reg_mid_id1_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_mid_id1_p_nmu[`NOC2_XBR2X4_REG_MID_ID1_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_mid_id1_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_mid_id1_p_nmu[`NOC2_XBR2X4_REG_MID_ID1_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_mid_id1_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_mid_id1_p_nmu[`NOC2_XBR2X4_REG_MID_ID1_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_mid_id1_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_mid_id1_p_nmu[`NOC2_XBR2X4_REG_MID_ID1_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_MID_ID2_P_NMU */
        assign noc2_xbr2x4_reg_mid_id2_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_mid_id2_p_nmu[`NOC2_XBR2X4_REG_MID_ID2_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_mid_id2_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_mid_id2_p_nmu[`NOC2_XBR2X4_REG_MID_ID2_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_mid_id2_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_mid_id2_p_nmu[`NOC2_XBR2X4_REG_MID_ID2_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_mid_id2_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_mid_id2_p_nmu[`NOC2_XBR2X4_REG_MID_ID2_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_MID_ID3_P_NMU */
        assign noc2_xbr2x4_reg_mid_id3_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_mid_id3_p_nmu[`NOC2_XBR2X4_REG_MID_ID3_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_mid_id3_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_mid_id3_p_nmu[`NOC2_XBR2X4_REG_MID_ID3_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_mid_id3_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_mid_id3_p_nmu[`NOC2_XBR2X4_REG_MID_ID3_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_mid_id3_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_mid_id3_p_nmu[`NOC2_XBR2X4_REG_MID_ID3_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID0_P_NMU */
        assign noc2_xbr2x4_reg_low_id0_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id0_p_nmu[`NOC2_XBR2X4_REG_LOW_ID0_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id0_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id0_p_nmu[`NOC2_XBR2X4_REG_LOW_ID0_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id0_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id0_p_nmu[`NOC2_XBR2X4_REG_LOW_ID0_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id0_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id0_p_nmu[`NOC2_XBR2X4_REG_LOW_ID0_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID1_P_NMU */
        assign noc2_xbr2x4_reg_low_id1_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id1_p_nmu[`NOC2_XBR2X4_REG_LOW_ID1_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id1_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id1_p_nmu[`NOC2_XBR2X4_REG_LOW_ID1_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id1_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id1_p_nmu[`NOC2_XBR2X4_REG_LOW_ID1_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id1_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id1_p_nmu[`NOC2_XBR2X4_REG_LOW_ID1_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID2_P_NMU */
        assign noc2_xbr2x4_reg_low_id2_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id2_p_nmu[`NOC2_XBR2X4_REG_LOW_ID2_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id2_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id2_p_nmu[`NOC2_XBR2X4_REG_LOW_ID2_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id2_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id2_p_nmu[`NOC2_XBR2X4_REG_LOW_ID2_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id2_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id2_p_nmu[`NOC2_XBR2X4_REG_LOW_ID2_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID3_P_NMU */
        assign noc2_xbr2x4_reg_low_id3_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id3_p_nmu[`NOC2_XBR2X4_REG_LOW_ID3_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id3_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id3_p_nmu[`NOC2_XBR2X4_REG_LOW_ID3_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id3_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id3_p_nmu[`NOC2_XBR2X4_REG_LOW_ID3_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id3_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id3_p_nmu[`NOC2_XBR2X4_REG_LOW_ID3_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID4_P_NMU */
        assign noc2_xbr2x4_reg_low_id4_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id4_p_nmu[`NOC2_XBR2X4_REG_LOW_ID4_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id4_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id4_p_nmu[`NOC2_XBR2X4_REG_LOW_ID4_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id4_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id4_p_nmu[`NOC2_XBR2X4_REG_LOW_ID4_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id4_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id4_p_nmu[`NOC2_XBR2X4_REG_LOW_ID4_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID5_P_NMU */
        assign noc2_xbr2x4_reg_low_id5_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id5_p_nmu[`NOC2_XBR2X4_REG_LOW_ID5_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id5_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id5_p_nmu[`NOC2_XBR2X4_REG_LOW_ID5_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id5_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id5_p_nmu[`NOC2_XBR2X4_REG_LOW_ID5_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id5_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id5_p_nmu[`NOC2_XBR2X4_REG_LOW_ID5_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID6_P_NMU */
        assign noc2_xbr2x4_reg_low_id6_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id6_p_nmu[`NOC2_XBR2X4_REG_LOW_ID6_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id6_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id6_p_nmu[`NOC2_XBR2X4_REG_LOW_ID6_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id6_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id6_p_nmu[`NOC2_XBR2X4_REG_LOW_ID6_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id6_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id6_p_nmu[`NOC2_XBR2X4_REG_LOW_ID6_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID7_P_NMU */
        assign noc2_xbr2x4_reg_low_id7_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id7_p_nmu[`NOC2_XBR2X4_REG_LOW_ID7_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id7_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id7_p_nmu[`NOC2_XBR2X4_REG_LOW_ID7_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id7_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id7_p_nmu[`NOC2_XBR2X4_REG_LOW_ID7_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id7_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id7_p_nmu[`NOC2_XBR2X4_REG_LOW_ID7_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID8_P_NMU */
        assign noc2_xbr2x4_reg_low_id8_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id8_p_nmu[`NOC2_XBR2X4_REG_LOW_ID8_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id8_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id8_p_nmu[`NOC2_XBR2X4_REG_LOW_ID8_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id8_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id8_p_nmu[`NOC2_XBR2X4_REG_LOW_ID8_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id8_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id8_p_nmu[`NOC2_XBR2X4_REG_LOW_ID8_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID9_P_NMU */
        assign noc2_xbr2x4_reg_low_id9_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id9_p_nmu[`NOC2_XBR2X4_REG_LOW_ID9_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id9_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id9_p_nmu[`NOC2_XBR2X4_REG_LOW_ID9_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id9_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id9_p_nmu[`NOC2_XBR2X4_REG_LOW_ID9_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id9_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id9_p_nmu[`NOC2_XBR2X4_REG_LOW_ID9_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID10_P_NMU */
        assign noc2_xbr2x4_reg_low_id10_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id10_p_nmu[`NOC2_XBR2X4_REG_LOW_ID10_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id10_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id10_p_nmu[`NOC2_XBR2X4_REG_LOW_ID10_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id10_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id10_p_nmu[`NOC2_XBR2X4_REG_LOW_ID10_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id10_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id10_p_nmu[`NOC2_XBR2X4_REG_LOW_ID10_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID11_P_NMU */
        assign noc2_xbr2x4_reg_low_id11_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id11_p_nmu[`NOC2_XBR2X4_REG_LOW_ID11_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id11_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id11_p_nmu[`NOC2_XBR2X4_REG_LOW_ID11_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id11_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id11_p_nmu[`NOC2_XBR2X4_REG_LOW_ID11_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id11_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id11_p_nmu[`NOC2_XBR2X4_REG_LOW_ID11_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID12_P_NMU */
        assign noc2_xbr2x4_reg_low_id12_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id12_p_nmu[`NOC2_XBR2X4_REG_LOW_ID12_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id12_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id12_p_nmu[`NOC2_XBR2X4_REG_LOW_ID12_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id12_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id12_p_nmu[`NOC2_XBR2X4_REG_LOW_ID12_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id12_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id12_p_nmu[`NOC2_XBR2X4_REG_LOW_ID12_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID13_P_NMU */
        assign noc2_xbr2x4_reg_low_id13_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id13_p_nmu[`NOC2_XBR2X4_REG_LOW_ID13_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id13_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id13_p_nmu[`NOC2_XBR2X4_REG_LOW_ID13_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id13_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id13_p_nmu[`NOC2_XBR2X4_REG_LOW_ID13_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id13_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id13_p_nmu[`NOC2_XBR2X4_REG_LOW_ID13_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID14_P_NMU */
        assign noc2_xbr2x4_reg_low_id14_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id14_p_nmu[`NOC2_XBR2X4_REG_LOW_ID14_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id14_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id14_p_nmu[`NOC2_XBR2X4_REG_LOW_ID14_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id14_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id14_p_nmu[`NOC2_XBR2X4_REG_LOW_ID14_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id14_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id14_p_nmu[`NOC2_XBR2X4_REG_LOW_ID14_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_LOW_ID15_P_NMU */
        assign noc2_xbr2x4_reg_low_id15_p_nmu_vc5 = if_xmc_npi_regs_config.xmc_reg_low_id15_p_nmu[`NOC2_XBR2X4_REG_LOW_ID15_P_NMU_FLD_VC5];
        assign noc2_xbr2x4_reg_low_id15_p_nmu_vc4 = if_xmc_npi_regs_config.xmc_reg_low_id15_p_nmu[`NOC2_XBR2X4_REG_LOW_ID15_P_NMU_FLD_VC4];
        assign noc2_xbr2x4_reg_low_id15_p_nmu_vc1 = if_xmc_npi_regs_config.xmc_reg_low_id15_p_nmu[`NOC2_XBR2X4_REG_LOW_ID15_P_NMU_FLD_VC1];
        assign noc2_xbr2x4_reg_low_id15_p_nmu_vc0 = if_xmc_npi_regs_config.xmc_reg_low_id15_p_nmu[`NOC2_XBR2X4_REG_LOW_ID15_P_NMU_FLD_VC0];


        /* NOC2_XBR2X4_REG_ID */
        assign noc2_xbr2x4_reg_id_high_id = if_xmc_npi_regs_config.xmc_reg_id[`NOC2_XBR2X4_REG_ID_FLD_HIGH_ID];
        assign noc2_xbr2x4_reg_id_mid_id = if_xmc_npi_regs_config.xmc_reg_id[`NOC2_XBR2X4_REG_ID_FLD_MID_ID];


        /* NOC2_XBR2X4_REG_CLOCK_MUX */
        assign noc2_xbr2x4_reg_clock_mux_sel = if_xmc_npi_regs_config.xmc_reg_clock_mux[`NOC2_XBR2X4_REG_CLOCK_MUX_FLD_SEL];


        /* NOC2_XBR2X4_REG_P00_P_NMU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p00_p_nmu_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p00_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P00_P_NMU_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p00_p_nmu_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p00_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P00_P_NMU_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P00_P_NMU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p00_p_nmu_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p00_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P00_P_NMU_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p00_p_nmu_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p00_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P00_P_NMU_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_P01_P_NSU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p01_p_nsu_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p01_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P01_P_NSU_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p01_p_nsu_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p01_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P01_P_NSU_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P01_P_NSU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p01_p_nsu_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p01_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P01_P_NSU_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p01_p_nsu_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p01_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P01_P_NSU_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P10_P_NMU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p10_p_nmu_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p10_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P10_P_NMU_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p10_p_nmu_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p10_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P10_P_NMU_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P10_P_NMU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p10_p_nmu_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p10_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P10_P_NMU_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p10_p_nmu_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p10_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P10_P_NMU_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_P11_P_NSU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p11_p_nsu_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p11_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P11_P_NSU_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p11_p_nsu_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p11_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P11_P_NSU_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P11_P_NSU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p11_p_nsu_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p11_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P11_P_NSU_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p11_p_nsu_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p11_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P11_P_NSU_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P20_P_NMU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p20_p_nmu_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p20_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P20_P_NMU_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p20_p_nmu_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p20_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P20_P_NMU_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P20_P_NMU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p20_p_nmu_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p20_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P20_P_NMU_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p20_p_nmu_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p20_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P20_P_NMU_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_P21_P_NSU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p21_p_nsu_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p21_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P21_P_NSU_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p21_p_nsu_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p21_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P21_P_NSU_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P21_P_NSU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p21_p_nsu_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p21_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P21_P_NSU_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p21_p_nsu_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p21_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P21_P_NSU_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P30_P_NMU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p30_p_nmu_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p30_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P30_P_NMU_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p30_p_nmu_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p30_p_nmu_0_vca_token[`NOC2_XBR2X4_REG_P30_P_NMU_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P30_P_NMU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p30_p_nmu_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p30_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P30_P_NMU_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p30_p_nmu_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p30_p_nmu_1_vca_token[`NOC2_XBR2X4_REG_P30_P_NMU_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_P31_P_NSU_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p31_p_nsu_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p31_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P31_P_NSU_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p31_p_nsu_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p31_p_nsu_0_vca_token[`NOC2_XBR2X4_REG_P31_P_NSU_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P31_P_NSU_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p31_p_nsu_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p31_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P31_P_NSU_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p31_p_nsu_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p31_p_nsu_1_vca_token[`NOC2_XBR2X4_REG_P31_P_NSU_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P_NMU0_P0_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu0_p0_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p_nmu0_p0_0_vca_token[`NOC2_XBR2X4_REG_P_NMU0_P0_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p_nmu0_p0_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p_nmu0_p0_0_vca_token[`NOC2_XBR2X4_REG_P_NMU0_P0_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P_NMU0_P0_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu0_p0_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p_nmu0_p0_1_vca_token[`NOC2_XBR2X4_REG_P_NMU0_P0_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p_nmu0_p0_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p_nmu0_p0_1_vca_token[`NOC2_XBR2X4_REG_P_NMU0_P0_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P_NMU1_P1_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu1_p1_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p_nmu1_p1_0_vca_token[`NOC2_XBR2X4_REG_P_NMU1_P1_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p_nmu1_p1_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p_nmu1_p1_0_vca_token[`NOC2_XBR2X4_REG_P_NMU1_P1_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P_NMU1_P1_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu1_p1_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p_nmu1_p1_1_vca_token[`NOC2_XBR2X4_REG_P_NMU1_P1_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p_nmu1_p1_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p_nmu1_p1_1_vca_token[`NOC2_XBR2X4_REG_P_NMU1_P1_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P_NMU2_P2_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu2_p2_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p_nmu2_p2_0_vca_token[`NOC2_XBR2X4_REG_P_NMU2_P2_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p_nmu2_p2_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p_nmu2_p2_0_vca_token[`NOC2_XBR2X4_REG_P_NMU2_P2_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P_NMU2_P2_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu2_p2_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p_nmu2_p2_1_vca_token[`NOC2_XBR2X4_REG_P_NMU2_P2_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p_nmu2_p2_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p_nmu2_p2_1_vca_token[`NOC2_XBR2X4_REG_P_NMU2_P2_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P_NMU3_P3_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu3_p3_0_vca_token_vc3 = if_xmc_npi_regs_config.xmc_reg_p_nmu3_p3_0_vca_token[`NOC2_XBR2X4_REG_P_NMU3_P3_0_VCA_TOKEN_FLD_VC3];
        assign noc2_xbr2x4_reg_p_nmu3_p3_0_vca_token_vc2 = if_xmc_npi_regs_config.xmc_reg_p_nmu3_p3_0_vca_token[`NOC2_XBR2X4_REG_P_NMU3_P3_0_VCA_TOKEN_FLD_VC2];


        /* NOC2_XBR2X4_REG_P_NMU3_P3_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nmu3_p3_1_vca_token_vc7 = if_xmc_npi_regs_config.xmc_reg_p_nmu3_p3_1_vca_token[`NOC2_XBR2X4_REG_P_NMU3_P3_1_VCA_TOKEN_FLD_VC7];
        assign noc2_xbr2x4_reg_p_nmu3_p3_1_vca_token_vc6 = if_xmc_npi_regs_config.xmc_reg_p_nmu3_p3_1_vca_token[`NOC2_XBR2X4_REG_P_NMU3_P3_1_VCA_TOKEN_FLD_VC6];


        /* NOC2_XBR2X4_REG_P_NSU0_P0_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu0_p0_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p_nsu0_p0_0_vca_token[`NOC2_XBR2X4_REG_P_NSU0_P0_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p_nsu0_p0_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p_nsu0_p0_0_vca_token[`NOC2_XBR2X4_REG_P_NSU0_P0_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P_NSU0_P0_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu0_p0_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p_nsu0_p0_1_vca_token[`NOC2_XBR2X4_REG_P_NSU0_P0_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p_nsu0_p0_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p_nsu0_p0_1_vca_token[`NOC2_XBR2X4_REG_P_NSU0_P0_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_P_NSU1_P1_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu1_p1_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p_nsu1_p1_0_vca_token[`NOC2_XBR2X4_REG_P_NSU1_P1_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p_nsu1_p1_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p_nsu1_p1_0_vca_token[`NOC2_XBR2X4_REG_P_NSU1_P1_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P_NSU1_P1_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu1_p1_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p_nsu1_p1_1_vca_token[`NOC2_XBR2X4_REG_P_NSU1_P1_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p_nsu1_p1_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p_nsu1_p1_1_vca_token[`NOC2_XBR2X4_REG_P_NSU1_P1_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_P_NSU2_P2_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu2_p2_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p_nsu2_p2_0_vca_token[`NOC2_XBR2X4_REG_P_NSU2_P2_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p_nsu2_p2_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p_nsu2_p2_0_vca_token[`NOC2_XBR2X4_REG_P_NSU2_P2_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P_NSU2_P2_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu2_p2_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p_nsu2_p2_1_vca_token[`NOC2_XBR2X4_REG_P_NSU2_P2_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p_nsu2_p2_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p_nsu2_p2_1_vca_token[`NOC2_XBR2X4_REG_P_NSU2_P2_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_P_NSU3_P3_0_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu3_p3_0_vca_token_vc1 = if_xmc_npi_regs_config.xmc_reg_p_nsu3_p3_0_vca_token[`NOC2_XBR2X4_REG_P_NSU3_P3_0_VCA_TOKEN_FLD_VC1];
        assign noc2_xbr2x4_reg_p_nsu3_p3_0_vca_token_vc0 = if_xmc_npi_regs_config.xmc_reg_p_nsu3_p3_0_vca_token[`NOC2_XBR2X4_REG_P_NSU3_P3_0_VCA_TOKEN_FLD_VC0];


        /* NOC2_XBR2X4_REG_P_NSU3_P3_1_VCA_TOKEN */
        assign noc2_xbr2x4_reg_p_nsu3_p3_1_vca_token_vc5 = if_xmc_npi_regs_config.xmc_reg_p_nsu3_p3_1_vca_token[`NOC2_XBR2X4_REG_P_NSU3_P3_1_VCA_TOKEN_FLD_VC5];
        assign noc2_xbr2x4_reg_p_nsu3_p3_1_vca_token_vc4 = if_xmc_npi_regs_config.xmc_reg_p_nsu3_p3_1_vca_token[`NOC2_XBR2X4_REG_P_NSU3_P3_1_VCA_TOKEN_FLD_VC4];


        /* NOC2_XBR2X4_REG_NOC_CTL */
/*
         noc_sync_pulse 
                       u_noc2_xbr2x4_reg_noc_ctl_wack_sync (
                          .clk_in        (reg_clk),
                          .rst_n_in      (reg_por_rst_n),
                          .pulse_in      (noc2_xbr2x4_reg_noc_ctl_wack),
                          .clk_out       (logic_clk),
                          .rst_n_out     (logic_por_rst_n), 
                          .pulse_out     (noc2_xbr2x4_reg_noc_ctl_wack_sync));
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc7_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC7_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc7_token));
*/
         assign noc2_xbr2x4_reg_noc_ctl_en_vc7_token  = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC7_TOKEN] ;

/*
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc6_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC6_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc6_token));
                              */

        assign  noc2_xbr2x4_reg_noc_ctl_en_vc6_token = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC6_TOKEN];

/*
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc5_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC5_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc5_token));
*/

    assign noc2_xbr2x4_reg_noc_ctl_en_vc5_token  = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC5_TOKEN];



/*
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc4_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC4_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc4_token));
*/

assign noc2_xbr2x4_reg_noc_ctl_en_vc4_token = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC4_TOKEN] ;
/*
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc3_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC3_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc3_token));
*/

    assign noc2_xbr2x4_reg_noc_ctl_en_vc3_token = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC3_TOKEN];


/*
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc2_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC2_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc2_token));
*/

assign  noc2_xbr2x4_reg_noc_ctl_en_vc2_token = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC2_TOKEN];
/*
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc1_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC1_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc1_token));
                              */
assign noc2_xbr2x4_reg_noc_ctl_en_vc1_token = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC1_TOKEN];

/*
         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b1))
                              u_data_sync_reg_noc_ctl_en_vc0_token (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC0_TOKEN]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_en_vc0_token));
*/
assign noc2_xbr2x4_reg_noc_ctl_en_vc0_token = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_EN_VC0_TOKEN];
/*

         noc_data_syncer #(.DATA_WIDTH(1), .RST_VAL(1'b0))
                              u_data_sync_reg_noc_ctl_clk_gate_dis_nps (
                                 .clk_in        (reg_clk),
                                 .rst_n_in      (reg_por_rst_n),
                                 .sync_pulse_in (noc2_xbr2x4_reg_noc_ctl_wack_sync),
                                 .clk_out       (logic_clk),
                                 .rst_n_out     (logic_por_rst_n), 
                                 .data_in       (if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_CLK_GATE_DIS_NPS]),
                                 .data_out      (noc2_xbr2x4_reg_noc_ctl_clk_gate_dis_nps));
*/
assign noc2_xbr2x4_reg_noc_ctl_clk_gate_dis_nps = if_xmc_npi_regs_config.xmc_reg_noc_ctl[`NOC2_XBR2X4_REG_NOC_CTL_FLD_CLK_GATE_DIS_NPS];

//BFM:organizing registers into MDA for easy usage

   bit [`NOC2_LOG2XBR2X4_NUM_NPS_PORT-1:0]    npi_reg_rt_high [`NOC2_XBR2X4_NUM_PORT-1:0][`NOC_NPS_NUM_VC-1:0][`NOC_NPS_NUM_RT_HIGH-1:0];
   bit [`NOC2_LOG2XBR2X4_NUM_NPS_PORT-1:0]    npi_reg_rt_mid [`NOC2_XBR2X4_NUM_PORT-1:0][`NOC_NPS_NUM_VC-1:0][`NOC_NPS_NUM_RT_MID-1:0]; 
   bit [`NOC2_LOG2XBR2X4_NUM_NPS_PORT-1:0]    npi_reg_rt_low [`NOC2_XBR2X4_NUM_PORT-1:0][`NOC_NPS_NUM_VC-1:0][`NOC_NPS_NUM_RT_LOW-1:0];
   //bit [`NOC_NPS_VCA_TOKEN_WIDTH-1:0]     npi_reg_vca_token [`NOC2_XBR2X4_NUM_PORT][`NOC2_XBR2X4_NUM_NPS_PORT][`NOC_NPS_NUM_VC];
   bit [`NOC_NPS_VCA_TOKEN_WIDTH-1:0]     npi_reg_vca_token [`NOC2_XBR2X4_NUM_PORT-1:0][`NOC2_XBR2X4_NUM_PORT-1:0][`NOC_NPS_NUM_VC-1:0];

      always_comb begin
      for (int p1 = 0; p1 < `NOC2_XBR2X4_NUM_PORT; p1++) begin
         for (int q1 = 0; q1 < `NOC_NPS_NUM_VC; q1++) begin
            for (int r1 = 0; r1 < `NOC_NPS_NUM_RT_HIGH; r1++) begin
               npi_reg_rt_high[p1][q1][r1] = 'b0;
            end
            for (int r1 = 0; r1 < `NOC_NPS_NUM_RT_MID; r1++) begin
               npi_reg_rt_mid[p1][q1][r1] = 'b0;
            end
            for (int r1 = 0; r1 < `NOC_NPS_NUM_RT_LOW; r1++) begin
               npi_reg_rt_low[p1][q1][r1] = 'b0;
            end
         end
      end

      npi_reg_rt_high[4][0][0] = noc2_xbr2x4_reg_high_id0_p_nmu_vc0;
      npi_reg_rt_high[4][0][1] = noc2_xbr2x4_reg_high_id1_p_nmu_vc0;
      npi_reg_rt_high[4][0][2] = noc2_xbr2x4_reg_high_id2_p_nmu_vc0;
      npi_reg_rt_high[4][0][3] = noc2_xbr2x4_reg_high_id3_p_nmu_vc0;
      npi_reg_rt_high[4][0][4] = noc2_xbr2x4_reg_high_id4_p_nmu_vc0;
      npi_reg_rt_high[4][0][5] = noc2_xbr2x4_reg_high_id5_p_nmu_vc0;
      npi_reg_rt_high[4][0][6] = noc2_xbr2x4_reg_high_id6_p_nmu_vc0;
      npi_reg_rt_high[4][0][7] = noc2_xbr2x4_reg_high_id7_p_nmu_vc0;
      npi_reg_rt_high[4][0][8] = noc2_xbr2x4_reg_high_id8_p_nmu_vc0;
      npi_reg_rt_high[4][0][9] = noc2_xbr2x4_reg_high_id9_p_nmu_vc0;
      npi_reg_rt_high[4][0][10] = noc2_xbr2x4_reg_high_id10_p_nmu_vc0;
      npi_reg_rt_high[4][0][11] = noc2_xbr2x4_reg_high_id11_p_nmu_vc0;
      npi_reg_rt_high[4][0][12] = noc2_xbr2x4_reg_high_id12_p_nmu_vc0;
      npi_reg_rt_high[4][0][13] = noc2_xbr2x4_reg_high_id13_p_nmu_vc0;
      npi_reg_rt_high[4][0][14] = noc2_xbr2x4_reg_high_id14_p_nmu_vc0;
      npi_reg_rt_high[4][0][15] = noc2_xbr2x4_reg_high_id15_p_nmu_vc0;
      npi_reg_rt_high[4][0][16] = noc2_xbr2x4_reg_high_id16_p_nmu_vc0;
      npi_reg_rt_high[4][0][17] = noc2_xbr2x4_reg_high_id17_p_nmu_vc0;
      npi_reg_rt_high[4][0][18] = noc2_xbr2x4_reg_high_id18_p_nmu_vc0;
      npi_reg_rt_high[4][0][19] = noc2_xbr2x4_reg_high_id19_p_nmu_vc0;
      npi_reg_rt_high[4][0][20] = noc2_xbr2x4_reg_high_id20_p_nmu_vc0;
      npi_reg_rt_high[4][0][21] = noc2_xbr2x4_reg_high_id21_p_nmu_vc0;
      npi_reg_rt_high[4][0][22] = noc2_xbr2x4_reg_high_id22_p_nmu_vc0;
      npi_reg_rt_high[4][0][23] = noc2_xbr2x4_reg_high_id23_p_nmu_vc0;
      npi_reg_rt_high[4][0][24] = noc2_xbr2x4_reg_high_id24_p_nmu_vc0;
      npi_reg_rt_high[4][0][25] = noc2_xbr2x4_reg_high_id25_p_nmu_vc0;
      npi_reg_rt_high[4][0][26] = noc2_xbr2x4_reg_high_id26_p_nmu_vc0;
      npi_reg_rt_high[4][0][27] = noc2_xbr2x4_reg_high_id27_p_nmu_vc0;
      npi_reg_rt_high[4][0][28] = noc2_xbr2x4_reg_high_id28_p_nmu_vc0;
      npi_reg_rt_high[4][0][29] = noc2_xbr2x4_reg_high_id29_p_nmu_vc0;
      npi_reg_rt_high[4][0][30] = noc2_xbr2x4_reg_high_id30_p_nmu_vc0;
      npi_reg_rt_high[4][0][31] = noc2_xbr2x4_reg_high_id31_p_nmu_vc0;
      npi_reg_rt_high[4][0][32] = noc2_xbr2x4_reg_high_id32_p_nmu_vc0;
      npi_reg_rt_high[4][0][33] = noc2_xbr2x4_reg_high_id33_p_nmu_vc0;
      npi_reg_rt_high[4][0][34] = noc2_xbr2x4_reg_high_id34_p_nmu_vc0;
      npi_reg_rt_high[4][0][35] = noc2_xbr2x4_reg_high_id35_p_nmu_vc0;
      npi_reg_rt_high[4][0][36] = noc2_xbr2x4_reg_high_id36_p_nmu_vc0;
      npi_reg_rt_high[4][0][37] = noc2_xbr2x4_reg_high_id37_p_nmu_vc0;
      npi_reg_rt_high[4][0][38] = noc2_xbr2x4_reg_high_id38_p_nmu_vc0;
      npi_reg_rt_high[4][0][39] = noc2_xbr2x4_reg_high_id39_p_nmu_vc0;
      npi_reg_rt_high[4][0][40] = noc2_xbr2x4_reg_high_id40_p_nmu_vc0;
      npi_reg_rt_high[4][0][41] = noc2_xbr2x4_reg_high_id41_p_nmu_vc0;
      npi_reg_rt_high[4][0][42] = noc2_xbr2x4_reg_high_id42_p_nmu_vc0;
      npi_reg_rt_high[4][0][43] = noc2_xbr2x4_reg_high_id43_p_nmu_vc0;
      npi_reg_rt_high[4][0][44] = noc2_xbr2x4_reg_high_id44_p_nmu_vc0;
      npi_reg_rt_high[4][0][45] = noc2_xbr2x4_reg_high_id45_p_nmu_vc0;
      npi_reg_rt_high[4][0][46] = noc2_xbr2x4_reg_high_id46_p_nmu_vc0;
      npi_reg_rt_high[4][0][47] = noc2_xbr2x4_reg_high_id47_p_nmu_vc0;
      npi_reg_rt_high[4][0][48] = noc2_xbr2x4_reg_high_id48_p_nmu_vc0;
      npi_reg_rt_high[4][0][49] = noc2_xbr2x4_reg_high_id49_p_nmu_vc0;
      npi_reg_rt_high[4][0][50] = noc2_xbr2x4_reg_high_id50_p_nmu_vc0;
      npi_reg_rt_high[4][0][51] = noc2_xbr2x4_reg_high_id51_p_nmu_vc0;
      npi_reg_rt_high[4][0][52] = noc2_xbr2x4_reg_high_id52_p_nmu_vc0;
      npi_reg_rt_high[4][0][53] = noc2_xbr2x4_reg_high_id53_p_nmu_vc0;
      npi_reg_rt_high[4][0][54] = noc2_xbr2x4_reg_high_id54_p_nmu_vc0;
      npi_reg_rt_high[4][0][55] = noc2_xbr2x4_reg_high_id55_p_nmu_vc0;
      npi_reg_rt_high[4][0][56] = noc2_xbr2x4_reg_high_id56_p_nmu_vc0;
      npi_reg_rt_high[4][0][57] = noc2_xbr2x4_reg_high_id57_p_nmu_vc0;
      npi_reg_rt_high[4][0][58] = noc2_xbr2x4_reg_high_id58_p_nmu_vc0;
      npi_reg_rt_high[4][0][59] = noc2_xbr2x4_reg_high_id59_p_nmu_vc0;
      npi_reg_rt_high[4][0][60] = noc2_xbr2x4_reg_high_id60_p_nmu_vc0;
      npi_reg_rt_high[4][0][61] = noc2_xbr2x4_reg_high_id61_p_nmu_vc0;
      npi_reg_rt_high[4][0][62] = noc2_xbr2x4_reg_high_id62_p_nmu_vc0;
      npi_reg_rt_high[4][0][63] = noc2_xbr2x4_reg_high_id63_p_nmu_vc0;
      npi_reg_rt_high[4][1][0] = noc2_xbr2x4_reg_high_id0_p_nmu_vc1;
      npi_reg_rt_high[4][1][1] = noc2_xbr2x4_reg_high_id1_p_nmu_vc1;
      npi_reg_rt_high[4][1][2] = noc2_xbr2x4_reg_high_id2_p_nmu_vc1;
      npi_reg_rt_high[4][1][3] = noc2_xbr2x4_reg_high_id3_p_nmu_vc1;
      npi_reg_rt_high[4][1][4] = noc2_xbr2x4_reg_high_id4_p_nmu_vc1;
      npi_reg_rt_high[4][1][5] = noc2_xbr2x4_reg_high_id5_p_nmu_vc1;
      npi_reg_rt_high[4][1][6] = noc2_xbr2x4_reg_high_id6_p_nmu_vc1;
      npi_reg_rt_high[4][1][7] = noc2_xbr2x4_reg_high_id7_p_nmu_vc1;
      npi_reg_rt_high[4][1][8] = noc2_xbr2x4_reg_high_id8_p_nmu_vc1;
      npi_reg_rt_high[4][1][9] = noc2_xbr2x4_reg_high_id9_p_nmu_vc1;
      npi_reg_rt_high[4][1][10] = noc2_xbr2x4_reg_high_id10_p_nmu_vc1;
      npi_reg_rt_high[4][1][11] = noc2_xbr2x4_reg_high_id11_p_nmu_vc1;
      npi_reg_rt_high[4][1][12] = noc2_xbr2x4_reg_high_id12_p_nmu_vc1;
      npi_reg_rt_high[4][1][13] = noc2_xbr2x4_reg_high_id13_p_nmu_vc1;
      npi_reg_rt_high[4][1][14] = noc2_xbr2x4_reg_high_id14_p_nmu_vc1;
      npi_reg_rt_high[4][1][15] = noc2_xbr2x4_reg_high_id15_p_nmu_vc1;
      npi_reg_rt_high[4][1][16] = noc2_xbr2x4_reg_high_id16_p_nmu_vc1;
      npi_reg_rt_high[4][1][17] = noc2_xbr2x4_reg_high_id17_p_nmu_vc1;
      npi_reg_rt_high[4][1][18] = noc2_xbr2x4_reg_high_id18_p_nmu_vc1;
      npi_reg_rt_high[4][1][19] = noc2_xbr2x4_reg_high_id19_p_nmu_vc1;
      npi_reg_rt_high[4][1][20] = noc2_xbr2x4_reg_high_id20_p_nmu_vc1;
      npi_reg_rt_high[4][1][21] = noc2_xbr2x4_reg_high_id21_p_nmu_vc1;
      npi_reg_rt_high[4][1][22] = noc2_xbr2x4_reg_high_id22_p_nmu_vc1;
      npi_reg_rt_high[4][1][23] = noc2_xbr2x4_reg_high_id23_p_nmu_vc1;
      npi_reg_rt_high[4][1][24] = noc2_xbr2x4_reg_high_id24_p_nmu_vc1;
      npi_reg_rt_high[4][1][25] = noc2_xbr2x4_reg_high_id25_p_nmu_vc1;
      npi_reg_rt_high[4][1][26] = noc2_xbr2x4_reg_high_id26_p_nmu_vc1;
      npi_reg_rt_high[4][1][27] = noc2_xbr2x4_reg_high_id27_p_nmu_vc1;
      npi_reg_rt_high[4][1][28] = noc2_xbr2x4_reg_high_id28_p_nmu_vc1;
      npi_reg_rt_high[4][1][29] = noc2_xbr2x4_reg_high_id29_p_nmu_vc1;
      npi_reg_rt_high[4][1][30] = noc2_xbr2x4_reg_high_id30_p_nmu_vc1;
      npi_reg_rt_high[4][1][31] = noc2_xbr2x4_reg_high_id31_p_nmu_vc1;
      npi_reg_rt_high[4][1][32] = noc2_xbr2x4_reg_high_id32_p_nmu_vc1;
      npi_reg_rt_high[4][1][33] = noc2_xbr2x4_reg_high_id33_p_nmu_vc1;
      npi_reg_rt_high[4][1][34] = noc2_xbr2x4_reg_high_id34_p_nmu_vc1;
      npi_reg_rt_high[4][1][35] = noc2_xbr2x4_reg_high_id35_p_nmu_vc1;
      npi_reg_rt_high[4][1][36] = noc2_xbr2x4_reg_high_id36_p_nmu_vc1;
      npi_reg_rt_high[4][1][37] = noc2_xbr2x4_reg_high_id37_p_nmu_vc1;
      npi_reg_rt_high[4][1][38] = noc2_xbr2x4_reg_high_id38_p_nmu_vc1;
      npi_reg_rt_high[4][1][39] = noc2_xbr2x4_reg_high_id39_p_nmu_vc1;
      npi_reg_rt_high[4][1][40] = noc2_xbr2x4_reg_high_id40_p_nmu_vc1;
      npi_reg_rt_high[4][1][41] = noc2_xbr2x4_reg_high_id41_p_nmu_vc1;
      npi_reg_rt_high[4][1][42] = noc2_xbr2x4_reg_high_id42_p_nmu_vc1;
      npi_reg_rt_high[4][1][43] = noc2_xbr2x4_reg_high_id43_p_nmu_vc1;
      npi_reg_rt_high[4][1][44] = noc2_xbr2x4_reg_high_id44_p_nmu_vc1;
      npi_reg_rt_high[4][1][45] = noc2_xbr2x4_reg_high_id45_p_nmu_vc1;
      npi_reg_rt_high[4][1][46] = noc2_xbr2x4_reg_high_id46_p_nmu_vc1;
      npi_reg_rt_high[4][1][47] = noc2_xbr2x4_reg_high_id47_p_nmu_vc1;
      npi_reg_rt_high[4][1][48] = noc2_xbr2x4_reg_high_id48_p_nmu_vc1;
      npi_reg_rt_high[4][1][49] = noc2_xbr2x4_reg_high_id49_p_nmu_vc1;
      npi_reg_rt_high[4][1][50] = noc2_xbr2x4_reg_high_id50_p_nmu_vc1;
      npi_reg_rt_high[4][1][51] = noc2_xbr2x4_reg_high_id51_p_nmu_vc1;
      npi_reg_rt_high[4][1][52] = noc2_xbr2x4_reg_high_id52_p_nmu_vc1;
      npi_reg_rt_high[4][1][53] = noc2_xbr2x4_reg_high_id53_p_nmu_vc1;
      npi_reg_rt_high[4][1][54] = noc2_xbr2x4_reg_high_id54_p_nmu_vc1;
      npi_reg_rt_high[4][1][55] = noc2_xbr2x4_reg_high_id55_p_nmu_vc1;
      npi_reg_rt_high[4][1][56] = noc2_xbr2x4_reg_high_id56_p_nmu_vc1;
      npi_reg_rt_high[4][1][57] = noc2_xbr2x4_reg_high_id57_p_nmu_vc1;
      npi_reg_rt_high[4][1][58] = noc2_xbr2x4_reg_high_id58_p_nmu_vc1;
      npi_reg_rt_high[4][1][59] = noc2_xbr2x4_reg_high_id59_p_nmu_vc1;
      npi_reg_rt_high[4][1][60] = noc2_xbr2x4_reg_high_id60_p_nmu_vc1;
      npi_reg_rt_high[4][1][61] = noc2_xbr2x4_reg_high_id61_p_nmu_vc1;
      npi_reg_rt_high[4][1][62] = noc2_xbr2x4_reg_high_id62_p_nmu_vc1;
      npi_reg_rt_high[4][1][63] = noc2_xbr2x4_reg_high_id63_p_nmu_vc1;
      npi_reg_rt_high[4][4][0] = noc2_xbr2x4_reg_high_id0_p_nmu_vc4;
      npi_reg_rt_high[4][4][1] = noc2_xbr2x4_reg_high_id1_p_nmu_vc4;
      npi_reg_rt_high[4][4][2] = noc2_xbr2x4_reg_high_id2_p_nmu_vc4;
      npi_reg_rt_high[4][4][3] = noc2_xbr2x4_reg_high_id3_p_nmu_vc4;
      npi_reg_rt_high[4][4][4] = noc2_xbr2x4_reg_high_id4_p_nmu_vc4;
      npi_reg_rt_high[4][4][5] = noc2_xbr2x4_reg_high_id5_p_nmu_vc4;
      npi_reg_rt_high[4][4][6] = noc2_xbr2x4_reg_high_id6_p_nmu_vc4;
      npi_reg_rt_high[4][4][7] = noc2_xbr2x4_reg_high_id7_p_nmu_vc4;
      npi_reg_rt_high[4][4][8] = noc2_xbr2x4_reg_high_id8_p_nmu_vc4;
      npi_reg_rt_high[4][4][9] = noc2_xbr2x4_reg_high_id9_p_nmu_vc4;
      npi_reg_rt_high[4][4][10] = noc2_xbr2x4_reg_high_id10_p_nmu_vc4;
      npi_reg_rt_high[4][4][11] = noc2_xbr2x4_reg_high_id11_p_nmu_vc4;
      npi_reg_rt_high[4][4][12] = noc2_xbr2x4_reg_high_id12_p_nmu_vc4;
      npi_reg_rt_high[4][4][13] = noc2_xbr2x4_reg_high_id13_p_nmu_vc4;
      npi_reg_rt_high[4][4][14] = noc2_xbr2x4_reg_high_id14_p_nmu_vc4;
      npi_reg_rt_high[4][4][15] = noc2_xbr2x4_reg_high_id15_p_nmu_vc4;
      npi_reg_rt_high[4][4][16] = noc2_xbr2x4_reg_high_id16_p_nmu_vc4;
      npi_reg_rt_high[4][4][17] = noc2_xbr2x4_reg_high_id17_p_nmu_vc4;
      npi_reg_rt_high[4][4][18] = noc2_xbr2x4_reg_high_id18_p_nmu_vc4;
      npi_reg_rt_high[4][4][19] = noc2_xbr2x4_reg_high_id19_p_nmu_vc4;
      npi_reg_rt_high[4][4][20] = noc2_xbr2x4_reg_high_id20_p_nmu_vc4;
      npi_reg_rt_high[4][4][21] = noc2_xbr2x4_reg_high_id21_p_nmu_vc4;
      npi_reg_rt_high[4][4][22] = noc2_xbr2x4_reg_high_id22_p_nmu_vc4;
      npi_reg_rt_high[4][4][23] = noc2_xbr2x4_reg_high_id23_p_nmu_vc4;
      npi_reg_rt_high[4][4][24] = noc2_xbr2x4_reg_high_id24_p_nmu_vc4;
      npi_reg_rt_high[4][4][25] = noc2_xbr2x4_reg_high_id25_p_nmu_vc4;
      npi_reg_rt_high[4][4][26] = noc2_xbr2x4_reg_high_id26_p_nmu_vc4;
      npi_reg_rt_high[4][4][27] = noc2_xbr2x4_reg_high_id27_p_nmu_vc4;
      npi_reg_rt_high[4][4][28] = noc2_xbr2x4_reg_high_id28_p_nmu_vc4;
      npi_reg_rt_high[4][4][29] = noc2_xbr2x4_reg_high_id29_p_nmu_vc4;
      npi_reg_rt_high[4][4][30] = noc2_xbr2x4_reg_high_id30_p_nmu_vc4;
      npi_reg_rt_high[4][4][31] = noc2_xbr2x4_reg_high_id31_p_nmu_vc4;
      npi_reg_rt_high[4][4][32] = noc2_xbr2x4_reg_high_id32_p_nmu_vc4;
      npi_reg_rt_high[4][4][33] = noc2_xbr2x4_reg_high_id33_p_nmu_vc4;
      npi_reg_rt_high[4][4][34] = noc2_xbr2x4_reg_high_id34_p_nmu_vc4;
      npi_reg_rt_high[4][4][35] = noc2_xbr2x4_reg_high_id35_p_nmu_vc4;
      npi_reg_rt_high[4][4][36] = noc2_xbr2x4_reg_high_id36_p_nmu_vc4;
      npi_reg_rt_high[4][4][37] = noc2_xbr2x4_reg_high_id37_p_nmu_vc4;
      npi_reg_rt_high[4][4][38] = noc2_xbr2x4_reg_high_id38_p_nmu_vc4;
      npi_reg_rt_high[4][4][39] = noc2_xbr2x4_reg_high_id39_p_nmu_vc4;
      npi_reg_rt_high[4][4][40] = noc2_xbr2x4_reg_high_id40_p_nmu_vc4;
      npi_reg_rt_high[4][4][41] = noc2_xbr2x4_reg_high_id41_p_nmu_vc4;
      npi_reg_rt_high[4][4][42] = noc2_xbr2x4_reg_high_id42_p_nmu_vc4;
      npi_reg_rt_high[4][4][43] = noc2_xbr2x4_reg_high_id43_p_nmu_vc4;
      npi_reg_rt_high[4][4][44] = noc2_xbr2x4_reg_high_id44_p_nmu_vc4;
      npi_reg_rt_high[4][4][45] = noc2_xbr2x4_reg_high_id45_p_nmu_vc4;
      npi_reg_rt_high[4][4][46] = noc2_xbr2x4_reg_high_id46_p_nmu_vc4;
      npi_reg_rt_high[4][4][47] = noc2_xbr2x4_reg_high_id47_p_nmu_vc4;
      npi_reg_rt_high[4][4][48] = noc2_xbr2x4_reg_high_id48_p_nmu_vc4;
      npi_reg_rt_high[4][4][49] = noc2_xbr2x4_reg_high_id49_p_nmu_vc4;
      npi_reg_rt_high[4][4][50] = noc2_xbr2x4_reg_high_id50_p_nmu_vc4;
      npi_reg_rt_high[4][4][51] = noc2_xbr2x4_reg_high_id51_p_nmu_vc4;
      npi_reg_rt_high[4][4][52] = noc2_xbr2x4_reg_high_id52_p_nmu_vc4;
      npi_reg_rt_high[4][4][53] = noc2_xbr2x4_reg_high_id53_p_nmu_vc4;
      npi_reg_rt_high[4][4][54] = noc2_xbr2x4_reg_high_id54_p_nmu_vc4;
      npi_reg_rt_high[4][4][55] = noc2_xbr2x4_reg_high_id55_p_nmu_vc4;
      npi_reg_rt_high[4][4][56] = noc2_xbr2x4_reg_high_id56_p_nmu_vc4;
      npi_reg_rt_high[4][4][57] = noc2_xbr2x4_reg_high_id57_p_nmu_vc4;
      npi_reg_rt_high[4][4][58] = noc2_xbr2x4_reg_high_id58_p_nmu_vc4;
      npi_reg_rt_high[4][4][59] = noc2_xbr2x4_reg_high_id59_p_nmu_vc4;
      npi_reg_rt_high[4][4][60] = noc2_xbr2x4_reg_high_id60_p_nmu_vc4;
      npi_reg_rt_high[4][4][61] = noc2_xbr2x4_reg_high_id61_p_nmu_vc4;
      npi_reg_rt_high[4][4][62] = noc2_xbr2x4_reg_high_id62_p_nmu_vc4;
      npi_reg_rt_high[4][4][63] = noc2_xbr2x4_reg_high_id63_p_nmu_vc4;
      npi_reg_rt_high[4][5][0] = noc2_xbr2x4_reg_high_id0_p_nmu_vc5;
      npi_reg_rt_high[4][5][1] = noc2_xbr2x4_reg_high_id1_p_nmu_vc5;
      npi_reg_rt_high[4][5][2] = noc2_xbr2x4_reg_high_id2_p_nmu_vc5;
      npi_reg_rt_high[4][5][3] = noc2_xbr2x4_reg_high_id3_p_nmu_vc5;
      npi_reg_rt_high[4][5][4] = noc2_xbr2x4_reg_high_id4_p_nmu_vc5;
      npi_reg_rt_high[4][5][5] = noc2_xbr2x4_reg_high_id5_p_nmu_vc5;
      npi_reg_rt_high[4][5][6] = noc2_xbr2x4_reg_high_id6_p_nmu_vc5;
      npi_reg_rt_high[4][5][7] = noc2_xbr2x4_reg_high_id7_p_nmu_vc5;
      npi_reg_rt_high[4][5][8] = noc2_xbr2x4_reg_high_id8_p_nmu_vc5;
      npi_reg_rt_high[4][5][9] = noc2_xbr2x4_reg_high_id9_p_nmu_vc5;
      npi_reg_rt_high[4][5][10] = noc2_xbr2x4_reg_high_id10_p_nmu_vc5;
      npi_reg_rt_high[4][5][11] = noc2_xbr2x4_reg_high_id11_p_nmu_vc5;
      npi_reg_rt_high[4][5][12] = noc2_xbr2x4_reg_high_id12_p_nmu_vc5;
      npi_reg_rt_high[4][5][13] = noc2_xbr2x4_reg_high_id13_p_nmu_vc5;
      npi_reg_rt_high[4][5][14] = noc2_xbr2x4_reg_high_id14_p_nmu_vc5;
      npi_reg_rt_high[4][5][15] = noc2_xbr2x4_reg_high_id15_p_nmu_vc5;
      npi_reg_rt_high[4][5][16] = noc2_xbr2x4_reg_high_id16_p_nmu_vc5;
      npi_reg_rt_high[4][5][17] = noc2_xbr2x4_reg_high_id17_p_nmu_vc5;
      npi_reg_rt_high[4][5][18] = noc2_xbr2x4_reg_high_id18_p_nmu_vc5;
      npi_reg_rt_high[4][5][19] = noc2_xbr2x4_reg_high_id19_p_nmu_vc5;
      npi_reg_rt_high[4][5][20] = noc2_xbr2x4_reg_high_id20_p_nmu_vc5;
      npi_reg_rt_high[4][5][21] = noc2_xbr2x4_reg_high_id21_p_nmu_vc5;
      npi_reg_rt_high[4][5][22] = noc2_xbr2x4_reg_high_id22_p_nmu_vc5;
      npi_reg_rt_high[4][5][23] = noc2_xbr2x4_reg_high_id23_p_nmu_vc5;
      npi_reg_rt_high[4][5][24] = noc2_xbr2x4_reg_high_id24_p_nmu_vc5;
      npi_reg_rt_high[4][5][25] = noc2_xbr2x4_reg_high_id25_p_nmu_vc5;
      npi_reg_rt_high[4][5][26] = noc2_xbr2x4_reg_high_id26_p_nmu_vc5;
      npi_reg_rt_high[4][5][27] = noc2_xbr2x4_reg_high_id27_p_nmu_vc5;
      npi_reg_rt_high[4][5][28] = noc2_xbr2x4_reg_high_id28_p_nmu_vc5;
      npi_reg_rt_high[4][5][29] = noc2_xbr2x4_reg_high_id29_p_nmu_vc5;
      npi_reg_rt_high[4][5][30] = noc2_xbr2x4_reg_high_id30_p_nmu_vc5;
      npi_reg_rt_high[4][5][31] = noc2_xbr2x4_reg_high_id31_p_nmu_vc5;
      npi_reg_rt_high[4][5][32] = noc2_xbr2x4_reg_high_id32_p_nmu_vc5;
      npi_reg_rt_high[4][5][33] = noc2_xbr2x4_reg_high_id33_p_nmu_vc5;
      npi_reg_rt_high[4][5][34] = noc2_xbr2x4_reg_high_id34_p_nmu_vc5;
      npi_reg_rt_high[4][5][35] = noc2_xbr2x4_reg_high_id35_p_nmu_vc5;
      npi_reg_rt_high[4][5][36] = noc2_xbr2x4_reg_high_id36_p_nmu_vc5;
      npi_reg_rt_high[4][5][37] = noc2_xbr2x4_reg_high_id37_p_nmu_vc5;
      npi_reg_rt_high[4][5][38] = noc2_xbr2x4_reg_high_id38_p_nmu_vc5;
      npi_reg_rt_high[4][5][39] = noc2_xbr2x4_reg_high_id39_p_nmu_vc5;
      npi_reg_rt_high[4][5][40] = noc2_xbr2x4_reg_high_id40_p_nmu_vc5;
      npi_reg_rt_high[4][5][41] = noc2_xbr2x4_reg_high_id41_p_nmu_vc5;
      npi_reg_rt_high[4][5][42] = noc2_xbr2x4_reg_high_id42_p_nmu_vc5;
      npi_reg_rt_high[4][5][43] = noc2_xbr2x4_reg_high_id43_p_nmu_vc5;
      npi_reg_rt_high[4][5][44] = noc2_xbr2x4_reg_high_id44_p_nmu_vc5;
      npi_reg_rt_high[4][5][45] = noc2_xbr2x4_reg_high_id45_p_nmu_vc5;
      npi_reg_rt_high[4][5][46] = noc2_xbr2x4_reg_high_id46_p_nmu_vc5;
      npi_reg_rt_high[4][5][47] = noc2_xbr2x4_reg_high_id47_p_nmu_vc5;
      npi_reg_rt_high[4][5][48] = noc2_xbr2x4_reg_high_id48_p_nmu_vc5;
      npi_reg_rt_high[4][5][49] = noc2_xbr2x4_reg_high_id49_p_nmu_vc5;
      npi_reg_rt_high[4][5][50] = noc2_xbr2x4_reg_high_id50_p_nmu_vc5;
      npi_reg_rt_high[4][5][51] = noc2_xbr2x4_reg_high_id51_p_nmu_vc5;
      npi_reg_rt_high[4][5][52] = noc2_xbr2x4_reg_high_id52_p_nmu_vc5;
      npi_reg_rt_high[4][5][53] = noc2_xbr2x4_reg_high_id53_p_nmu_vc5;
      npi_reg_rt_high[4][5][54] = noc2_xbr2x4_reg_high_id54_p_nmu_vc5;
      npi_reg_rt_high[4][5][55] = noc2_xbr2x4_reg_high_id55_p_nmu_vc5;
      npi_reg_rt_high[4][5][56] = noc2_xbr2x4_reg_high_id56_p_nmu_vc5;
      npi_reg_rt_high[4][5][57] = noc2_xbr2x4_reg_high_id57_p_nmu_vc5;
      npi_reg_rt_high[4][5][58] = noc2_xbr2x4_reg_high_id58_p_nmu_vc5;
      npi_reg_rt_high[4][5][59] = noc2_xbr2x4_reg_high_id59_p_nmu_vc5;
      npi_reg_rt_high[4][5][60] = noc2_xbr2x4_reg_high_id60_p_nmu_vc5;
      npi_reg_rt_high[4][5][61] = noc2_xbr2x4_reg_high_id61_p_nmu_vc5;
      npi_reg_rt_high[4][5][62] = noc2_xbr2x4_reg_high_id62_p_nmu_vc5;
      npi_reg_rt_high[4][5][63] = noc2_xbr2x4_reg_high_id63_p_nmu_vc5;
      npi_reg_rt_mid[4][0][0] = noc2_xbr2x4_reg_mid_id0_p_nmu_vc0;
      npi_reg_rt_mid[4][0][1] = noc2_xbr2x4_reg_mid_id1_p_nmu_vc0;
      npi_reg_rt_mid[4][0][2] = noc2_xbr2x4_reg_mid_id2_p_nmu_vc0;
      npi_reg_rt_mid[4][0][3] = noc2_xbr2x4_reg_mid_id3_p_nmu_vc0;
      npi_reg_rt_mid[4][1][0] = noc2_xbr2x4_reg_mid_id0_p_nmu_vc1;
      npi_reg_rt_mid[4][1][1] = noc2_xbr2x4_reg_mid_id1_p_nmu_vc1;
      npi_reg_rt_mid[4][1][2] = noc2_xbr2x4_reg_mid_id2_p_nmu_vc1;
      npi_reg_rt_mid[4][1][3] = noc2_xbr2x4_reg_mid_id3_p_nmu_vc1;
      npi_reg_rt_mid[4][4][0] = noc2_xbr2x4_reg_mid_id0_p_nmu_vc4;
      npi_reg_rt_mid[4][4][1] = noc2_xbr2x4_reg_mid_id1_p_nmu_vc4;
      npi_reg_rt_mid[4][4][2] = noc2_xbr2x4_reg_mid_id2_p_nmu_vc4;
      npi_reg_rt_mid[4][4][3] = noc2_xbr2x4_reg_mid_id3_p_nmu_vc4;
      npi_reg_rt_mid[4][5][0] = noc2_xbr2x4_reg_mid_id0_p_nmu_vc5;
      npi_reg_rt_mid[4][5][1] = noc2_xbr2x4_reg_mid_id1_p_nmu_vc5;
      npi_reg_rt_mid[4][5][2] = noc2_xbr2x4_reg_mid_id2_p_nmu_vc5;
      npi_reg_rt_mid[4][5][3] = noc2_xbr2x4_reg_mid_id3_p_nmu_vc5;
      npi_reg_rt_low[4][0][0] = noc2_xbr2x4_reg_low_id0_p_nmu_vc0;
      npi_reg_rt_low[4][0][1] = noc2_xbr2x4_reg_low_id1_p_nmu_vc0;
      npi_reg_rt_low[4][0][2] = noc2_xbr2x4_reg_low_id2_p_nmu_vc0;
      npi_reg_rt_low[4][0][3] = noc2_xbr2x4_reg_low_id3_p_nmu_vc0;
      npi_reg_rt_low[4][0][4] = noc2_xbr2x4_reg_low_id4_p_nmu_vc0;
      npi_reg_rt_low[4][0][5] = noc2_xbr2x4_reg_low_id5_p_nmu_vc0;
      npi_reg_rt_low[4][0][6] = noc2_xbr2x4_reg_low_id6_p_nmu_vc0;
      npi_reg_rt_low[4][0][7] = noc2_xbr2x4_reg_low_id7_p_nmu_vc0;
      npi_reg_rt_low[4][0][8] = noc2_xbr2x4_reg_low_id8_p_nmu_vc0;
      npi_reg_rt_low[4][0][9] = noc2_xbr2x4_reg_low_id9_p_nmu_vc0;
      npi_reg_rt_low[4][0][10] = noc2_xbr2x4_reg_low_id10_p_nmu_vc0;
      npi_reg_rt_low[4][0][11] = noc2_xbr2x4_reg_low_id11_p_nmu_vc0;
      npi_reg_rt_low[4][0][12] = noc2_xbr2x4_reg_low_id12_p_nmu_vc0;
      npi_reg_rt_low[4][0][13] = noc2_xbr2x4_reg_low_id13_p_nmu_vc0;
      npi_reg_rt_low[4][0][14] = noc2_xbr2x4_reg_low_id14_p_nmu_vc0;
      npi_reg_rt_low[4][0][15] = noc2_xbr2x4_reg_low_id15_p_nmu_vc0;
      npi_reg_rt_low[4][1][0] = noc2_xbr2x4_reg_low_id0_p_nmu_vc1;
      npi_reg_rt_low[4][1][1] = noc2_xbr2x4_reg_low_id1_p_nmu_vc1;
      npi_reg_rt_low[4][1][2] = noc2_xbr2x4_reg_low_id2_p_nmu_vc1;
      npi_reg_rt_low[4][1][3] = noc2_xbr2x4_reg_low_id3_p_nmu_vc1;
      npi_reg_rt_low[4][1][4] = noc2_xbr2x4_reg_low_id4_p_nmu_vc1;
      npi_reg_rt_low[4][1][5] = noc2_xbr2x4_reg_low_id5_p_nmu_vc1;
      npi_reg_rt_low[4][1][6] = noc2_xbr2x4_reg_low_id6_p_nmu_vc1;
      npi_reg_rt_low[4][1][7] = noc2_xbr2x4_reg_low_id7_p_nmu_vc1;
      npi_reg_rt_low[4][1][8] = noc2_xbr2x4_reg_low_id8_p_nmu_vc1;
      npi_reg_rt_low[4][1][9] = noc2_xbr2x4_reg_low_id9_p_nmu_vc1;
      npi_reg_rt_low[4][1][10] = noc2_xbr2x4_reg_low_id10_p_nmu_vc1;
      npi_reg_rt_low[4][1][11] = noc2_xbr2x4_reg_low_id11_p_nmu_vc1;
      npi_reg_rt_low[4][1][12] = noc2_xbr2x4_reg_low_id12_p_nmu_vc1;
      npi_reg_rt_low[4][1][13] = noc2_xbr2x4_reg_low_id13_p_nmu_vc1;
      npi_reg_rt_low[4][1][14] = noc2_xbr2x4_reg_low_id14_p_nmu_vc1;
      npi_reg_rt_low[4][1][15] = noc2_xbr2x4_reg_low_id15_p_nmu_vc1;
      npi_reg_rt_low[4][4][0] = noc2_xbr2x4_reg_low_id0_p_nmu_vc4;
      npi_reg_rt_low[4][4][1] = noc2_xbr2x4_reg_low_id1_p_nmu_vc4;
      npi_reg_rt_low[4][4][2] = noc2_xbr2x4_reg_low_id2_p_nmu_vc4;
      npi_reg_rt_low[4][4][3] = noc2_xbr2x4_reg_low_id3_p_nmu_vc4;
      npi_reg_rt_low[4][4][4] = noc2_xbr2x4_reg_low_id4_p_nmu_vc4;
      npi_reg_rt_low[4][4][5] = noc2_xbr2x4_reg_low_id5_p_nmu_vc4;
      npi_reg_rt_low[4][4][6] = noc2_xbr2x4_reg_low_id6_p_nmu_vc4;
      npi_reg_rt_low[4][4][7] = noc2_xbr2x4_reg_low_id7_p_nmu_vc4;
      npi_reg_rt_low[4][4][8] = noc2_xbr2x4_reg_low_id8_p_nmu_vc4;
      npi_reg_rt_low[4][4][9] = noc2_xbr2x4_reg_low_id9_p_nmu_vc4;
      npi_reg_rt_low[4][4][10] = noc2_xbr2x4_reg_low_id10_p_nmu_vc4;
      npi_reg_rt_low[4][4][11] = noc2_xbr2x4_reg_low_id11_p_nmu_vc4;
      npi_reg_rt_low[4][4][12] = noc2_xbr2x4_reg_low_id12_p_nmu_vc4;
      npi_reg_rt_low[4][4][13] = noc2_xbr2x4_reg_low_id13_p_nmu_vc4;
      npi_reg_rt_low[4][4][14] = noc2_xbr2x4_reg_low_id14_p_nmu_vc4;
      npi_reg_rt_low[4][4][15] = noc2_xbr2x4_reg_low_id15_p_nmu_vc4;
      npi_reg_rt_low[4][5][0] = noc2_xbr2x4_reg_low_id0_p_nmu_vc5;
      npi_reg_rt_low[4][5][1] = noc2_xbr2x4_reg_low_id1_p_nmu_vc5;
      npi_reg_rt_low[4][5][2] = noc2_xbr2x4_reg_low_id2_p_nmu_vc5;
      npi_reg_rt_low[4][5][3] = noc2_xbr2x4_reg_low_id3_p_nmu_vc5;
      npi_reg_rt_low[4][5][4] = noc2_xbr2x4_reg_low_id4_p_nmu_vc5;
      npi_reg_rt_low[4][5][5] = noc2_xbr2x4_reg_low_id5_p_nmu_vc5;
      npi_reg_rt_low[4][5][6] = noc2_xbr2x4_reg_low_id6_p_nmu_vc5;
      npi_reg_rt_low[4][5][7] = noc2_xbr2x4_reg_low_id7_p_nmu_vc5;
      npi_reg_rt_low[4][5][8] = noc2_xbr2x4_reg_low_id8_p_nmu_vc5;
      npi_reg_rt_low[4][5][9] = noc2_xbr2x4_reg_low_id9_p_nmu_vc5;
      npi_reg_rt_low[4][5][10] = noc2_xbr2x4_reg_low_id10_p_nmu_vc5;
      npi_reg_rt_low[4][5][11] = noc2_xbr2x4_reg_low_id11_p_nmu_vc5;
      npi_reg_rt_low[4][5][12] = noc2_xbr2x4_reg_low_id12_p_nmu_vc5;
      npi_reg_rt_low[4][5][13] = noc2_xbr2x4_reg_low_id13_p_nmu_vc5;
      npi_reg_rt_low[4][5][14] = noc2_xbr2x4_reg_low_id14_p_nmu_vc5;
      npi_reg_rt_low[4][5][15] = noc2_xbr2x4_reg_low_id15_p_nmu_vc5;
   end

  always_comb begin
      for (int p2 = 0; p2 < `NOC2_XBR2X4_NUM_PORT; p2++) begin
         for (int q2 = 0; q2 < `NOC2_XBR2X4_NUM_PORT; q2++) begin
            for (int r2 = 0; r2 < `NOC_NPS_NUM_VC; r2++) begin
               npi_reg_vca_token[p2][q2][r2] = 'b0;
            end
         end
      end

      npi_reg_vca_token[0][4][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p00_p_nmu_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[0][4][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p00_p_nmu_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[0][4][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p00_p_nmu_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[0][4][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p00_p_nmu_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[0][5][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p01_p_nsu_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[0][5][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p01_p_nsu_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[0][5][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p01_p_nsu_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[0][5][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p01_p_nsu_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;

      npi_reg_vca_token[1][4][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p10_p_nmu_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[1][4][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p10_p_nmu_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[1][4][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p10_p_nmu_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[1][4][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p10_p_nmu_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[1][5][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p11_p_nsu_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[1][5][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p11_p_nsu_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[1][5][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p11_p_nsu_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[1][5][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p11_p_nsu_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;

      npi_reg_vca_token[2][4][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p20_p_nmu_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[2][4][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p20_p_nmu_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[2][4][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p20_p_nmu_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[2][4][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p20_p_nmu_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[2][5][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p21_p_nsu_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[2][5][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p21_p_nsu_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[2][5][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p21_p_nsu_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[2][5][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p21_p_nsu_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;

      npi_reg_vca_token[3][4][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p30_p_nmu_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[3][4][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p30_p_nmu_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[3][4][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p30_p_nmu_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[3][4][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p30_p_nmu_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[3][5][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p31_p_nsu_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[3][5][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p31_p_nsu_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[3][5][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p31_p_nsu_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[3][5][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p31_p_nsu_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
 
      npi_reg_vca_token[4][0][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p_nmu0_p0_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][0][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p_nmu0_p0_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][0][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p_nmu0_p0_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][0][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p_nmu0_p0_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][1][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p_nmu1_p1_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][1][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p_nmu1_p1_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][1][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p_nmu1_p1_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][1][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p_nmu1_p1_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][2][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p_nmu2_p2_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][2][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p_nmu2_p2_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][2][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p_nmu2_p2_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][2][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p_nmu2_p2_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][3][2] = (noc2_xbr2x4_reg_noc_ctl_en_vc2_token) ? noc2_xbr2x4_reg_p_nmu3_p3_0_vca_token_vc2 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][3][3] = (noc2_xbr2x4_reg_noc_ctl_en_vc3_token) ? noc2_xbr2x4_reg_p_nmu3_p3_0_vca_token_vc3 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][3][6] = (noc2_xbr2x4_reg_noc_ctl_en_vc6_token) ? noc2_xbr2x4_reg_p_nmu3_p3_1_vca_token_vc6 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[4][3][7] = (noc2_xbr2x4_reg_noc_ctl_en_vc7_token) ? noc2_xbr2x4_reg_p_nmu3_p3_1_vca_token_vc7 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;

      npi_reg_vca_token[5][0][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p_nsu0_p0_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][0][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p_nsu0_p0_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][0][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p_nsu0_p0_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][0][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p_nsu0_p0_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][1][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p_nsu1_p1_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][1][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p_nsu1_p1_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][1][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p_nsu1_p1_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][1][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p_nsu1_p1_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][2][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p_nsu2_p2_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][2][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p_nsu2_p2_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][2][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p_nsu2_p2_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][2][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p_nsu2_p2_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][3][0] = (noc2_xbr2x4_reg_noc_ctl_en_vc0_token) ? noc2_xbr2x4_reg_p_nsu3_p3_0_vca_token_vc0 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][3][1] = (noc2_xbr2x4_reg_noc_ctl_en_vc1_token) ? noc2_xbr2x4_reg_p_nsu3_p3_0_vca_token_vc1 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][3][4] = (noc2_xbr2x4_reg_noc_ctl_en_vc4_token) ? noc2_xbr2x4_reg_p_nsu3_p3_1_vca_token_vc4 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
      npi_reg_vca_token[5][3][5] = (noc2_xbr2x4_reg_noc_ctl_en_vc5_token) ? noc2_xbr2x4_reg_p_nsu3_p3_1_vca_token_vc5 : `NOC_NPS_VCA_TOKEN_WIDTH'b1;
   end
