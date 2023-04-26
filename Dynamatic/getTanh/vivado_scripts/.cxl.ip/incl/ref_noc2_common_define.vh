//////////////////////////////////////////////////////////////////////////////
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2012 Xilinx, Inc. All rights reserved.
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
// 
//
//       Owner:
//       Revision:       $Id: //depot/icm/proj/everest_7t_n1/rtl/noc_7t_n1/include/noc_common_define.vh $
//                       $Author: kins $
//                       $DateTime: 2016/04/12 15:30:13 $
//                       $Change: 1234567 $
//       Description: 
///////////////////////////////////////////////////////////////////////////////
`ifndef _ref_noc2_common_define_vh_
`define _ref_noc2_common_define_vh_

// ********************************************************
// REF AXI Interface Common Define
// ********************************************************
// AXI
`define REF_AXID_WIDTH  16
`define REF_AXADDR_WIDTH  64
`define REF_AXADDR_UPPER_WIDTH  52
`define REF_AXADDR_LOWER_WIDTH  12
`define REF_AXLEN_WIDTH  8
`define REF_AXSIZE_WIDTH  3
`define REF_AXBURST_WIDTH  2
`define REF_AXLOCK_WIDTH  1  // Only support exclusive, no legacy LOCK support
`define REF_AXCACHE_WIDTH  4
`define REF_AXPROT_WIDTH  3
`define REF_AXQOS_WIDTH  4
`define REF_AXREGION_WIDTH  4
`define REF_AXUSER_WIDTH  16
`define REF_AXDATA512_WIDTH  512 // Max. AxWidth is 512 for PL
`define REF_AXSTRB64_WIDTH  64
`define REF_AXDATA256_WIDTH  256 // Max. AxWidth is 256 for PL
`define REF_AXSTRB32_WIDTH  32
`define REF_AXDATA128_WIDTH  128 // Max. AxWidth is 128 for non-PL
`define REF_AXSTRB16_WIDTH  16
`define REF_AXDATA64_WIDTH  64 // Max. AxWidth is 64
`define REF_AXSTRB8_WIDTH  8
`define REF_AXDATA32_WIDTH  32 // Max. AxWidth is 32 for NPI
`define REF_AXSTRB4_WIDTH  4
`define REF_AXRESP_WIDTH  2
`define REF_AXLAST_WIDTH 1

`define REF_AXADDR_PAR_WIDTH 8
`define REF_AXCTRL_PAR_WIDTH 1
`define REF_AXDATA512_PAR_WIDTH 64
`define REF_AXDATA256_PAR_WIDTH 32
`define REF_AXDATA128_PAR_WIDTH 16
`define REF_AXDATA64_PAR_WIDTH 8
`define REF_AXDATA32_PAR_WIDTH 4
`define REF_AXSTRB64_PAR_WIDTH 8
`define REF_AXSTRB32_PAR_WIDTH 4
`define REF_AXSTRB16_PAR_WIDTH 2
`define REF_AXSTRB8_PAR_WIDTH 1
`define REF_AXSTRB4_PAR_WIDTH 1
`define REF_AXCID_WIDTH 2 // Compressed AXI-ID
`define REF_SRCID_WIDTH 12 // Source-ID - MUST MATCH NOC-ID WIDTH
`define REF_AXPOISON_WIDTH 1
`define REF_AXWCID_WIDTH 4   //compressed AXI-ID - specific for PS
`define REF_SMID_WIDTH  10
`define REF_TDEST_WIDTH  10
`define REF_TID_WIDTH   6   //TID or compressed AXI-ID for PL/ME

// AR
`define REF_ARID_WIDTH     `REF_AXID_WIDTH
`define REF_ARADDR_WIDTH   `REF_AXADDR_WIDTH
`define REF_ARLEN_WIDTH    `REF_AXLEN_WIDTH
`define REF_ARSIZE_WIDTH   `REF_AXSIZE_WIDTH
`define REF_ARBURST_WIDTH  `REF_AXBURST_WIDTH
`define REF_ARLOCK_WIDTH   `REF_AXLOCK_WIDTH
`define REF_ARCACHE_WIDTH  `REF_AXCACHE_WIDTH
`define REF_ARPROT_WIDTH   `REF_AXPROT_WIDTH
`define REF_ARQOS_WIDTH    `REF_AXQOS_WIDTH
`define REF_ARREGION_WIDTH  `REF_AXREGION_WIDTH
`define REF_ARUSER_WIDTH   `REF_AXUSER_WIDTH
`define REF_AR_WIDTH  (`REF_ARID_WIDTH + `REF_ARADDR_WIDTH + `REF_ARLEN_WIDTH + `REF_ARSIZE_WIDTH + `REF_ARBURST_WIDTH + `REF_ARLOCK_WIDTH + `REF_ARCACHE_WIDTH + `REF_ARPROT_WIDTH + `REF_ARQOS_WIDTH + `REF_ARREGION_WIDTH + `REF_ARUSER_WIDTH)

`define REF_ARCID_WIDTH      `REF_AXCID_WIDTH
`define REF_ARADDR_PAR_WIDTH `REF_AXADDR_PAR_WIDTH
`define REF_ARCTRL_PAR_WIDTH `REF_AXCTRL_PAR_WIDTH
`define REF_AR_PAR_WIDTH  (`REF_ARID_WIDTH + `REF_ARADDR_WIDTH + `REF_ARLEN_WIDTH + `REF_ARSIZE_WIDTH + `REF_ARBURST_WIDTH + `REF_ARLOCK_WIDTH + `REF_ARCACHE_WIDTH + `REF_ARPROT_WIDTH + `REF_ARQOS_WIDTH + `REF_ARREGION_WIDTH + `REF_ARUSER_WIDTH + `REF_ARADDR_PAR_WIDTH)
`define REF_AR_PAR_CID_WIDTH  (`REF_ARID_WIDTH + `REF_ARADDR_WIDTH + `REF_ARLEN_WIDTH + `REF_ARSIZE_WIDTH + `REF_ARBURST_WIDTH + `REF_ARLOCK_WIDTH + `REF_ARCACHE_WIDTH + `REF_ARPROT_WIDTH + `REF_ARQOS_WIDTH + `REF_ARREGION_WIDTH + `REF_ARUSER_WIDTH + `REF_ARADDR_PAR_WIDTH + `REF_ARCID_WIDTH + `REF_SRCID_WIDTH)

// AW
`define REF_AWID_WIDTH     `REF_AXID_WIDTH
`define REF_AWADDR_WIDTH   `REF_AXADDR_WIDTH
`define REF_AWLEN_WIDTH    `REF_AXLEN_WIDTH
`define REF_AWSIZE_WIDTH   `REF_AXSIZE_WIDTH
`define REF_AWBURST_WIDTH  `REF_AXBURST_WIDTH
`define REF_AWLOCK_WIDTH   `REF_AXLOCK_WIDTH
`define REF_AWCACHE_WIDTH  `REF_AXCACHE_WIDTH
`define REF_AWPROT_WIDTH   `REF_AXPROT_WIDTH
`define REF_AWQOS_WIDTH    `REF_AXQOS_WIDTH
`define REF_AWREGION_WIDTH  `REF_AXREGION_WIDTH
`define REF_AWUSER_WIDTH   `REF_AXUSER_WIDTH
`define REF_AW_WIDTH  (`REF_AWID_WIDTH + `REF_AWADDR_WIDTH + `REF_AWLEN_WIDTH + `REF_AWSIZE_WIDTH + `REF_AWBURST_WIDTH + `REF_AWLOCK_WIDTH + `REF_AWCACHE_WIDTH + `REF_AWPROT_WIDTH + `REF_AWQOS_WIDTH + `REF_AWREGION_WIDTH + `REF_AWUSER_WIDTH)

`define REF_AWCID_WIDTH `REF_AXCID_WIDTH
`define REF_AWADDR_PAR_WIDTH `REF_AXADDR_PAR_WIDTH
`define REF_AWCTRL_PAR_WIDTH `REF_AXCTRL_PAR_WIDTH
`define REF_AW_PAR_WIDTH  (`REF_AWID_WIDTH + `REF_AWADDR_WIDTH + `REF_AWLEN_WIDTH + `REF_AWSIZE_WIDTH + `REF_AWBURST_WIDTH + `REF_AWLOCK_WIDTH + `REF_AWCACHE_WIDTH + `REF_AWPROT_WIDTH + `REF_AWQOS_WIDTH + `REF_AWREGION_WIDTH + `REF_AWUSER_WIDTH + `REF_AWADDR_PAR_WIDTH)
`define REF_AW_PAR_CID_WIDTH  (`REF_AWID_WIDTH + `REF_AWADDR_WIDTH + `REF_AWLEN_WIDTH + `REF_AWSIZE_WIDTH + `REF_AWBURST_WIDTH + `REF_AWLOCK_WIDTH + `REF_AWCACHE_WIDTH + `REF_AWPROT_WIDTH + `REF_AWQOS_WIDTH + `REF_AWREGION_WIDTH + `REF_AWUSER_WIDTH + `REF_AWADDR_PAR_WIDTH + `REF_AWCID_WIDTH + `REF_SRCID_WIDTH)

// W
`define REF_WLAST_WIDTH   `REF_AXLAST_WIDTH
`define REF_WID_WIDTH     `REF_AXID_WIDTH
`define REF_WPOISON_WIDTH `REF_AXPOISON_WIDTH
`define REF_WDATA512_WIDTH   `REF_AXDATA512_WIDTH
`define REF_WSTRB64_WIDTH   `REF_AXSTRB64_WIDTH
`define REF_WDATA256_WIDTH   `REF_AXDATA256_WIDTH
`define REF_WSTRB32_WIDTH   `REF_AXSTRB32_WIDTH
`define REF_WDATA128_WIDTH   `REF_AXDATA128_WIDTH
`define REF_WSTRB16_WIDTH   `REF_AXSTRB16_WIDTH
`define REF_WDATA64_WIDTH   `REF_AXDATA64_WIDTH
`define REF_WSTRB8_WIDTH   `REF_AXSTRB8_WIDTH
`define REF_WDATA32_WIDTH   `REF_AXDATA32_WIDTH
`define REF_WSTRB4_WIDTH   `REF_AXSTRB4_WIDTH
`define REF_WUSER_WIDTH   `REF_AXUSER_WIDTH // Dont have space in NPP to support
`define REF_W512_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA512_WIDTH + `REF_WSTRB64_WIDTH + `REF_WUSER_WIDTH)
`define REF_W256_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA256_WIDTH + `REF_WSTRB32_WIDTH + `REF_WUSER_WIDTH)
`define REF_W128_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA128_WIDTH + `REF_WSTRB16_WIDTH + `REF_WUSER_WIDTH)
`define REF_W64_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA64_WIDTH + `REF_WSTRB8_WIDTH + `REF_WUSER_WIDTH)
`define REF_W32_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA32_WIDTH + `REF_WSTRB4_WIDTH + `REF_WUSER_WIDTH)

`define REF_WCID_WIDTH `REF_AXWCID_WIDTH
`define REF_WDATA512_PAR_WIDTH `REF_AXDATA512_PAR_WIDTH
`define REF_WDATA256_PAR_WIDTH `REF_AXDATA256_PAR_WIDTH
`define REF_WDATA128_PAR_WIDTH `REF_AXDATA128_PAR_WIDTH
`define REF_WDATA64_PAR_WIDTH `REF_AXDATA64_PAR_WIDTH
`define REF_WDATA32_PAR_WIDTH `REF_AXDATA32_PAR_WIDTH
`define REF_WSTRB64_PAR_WIDTH `REF_AXSTRB64_PAR_WIDTH
`define REF_WSTRB32_PAR_WIDTH `REF_AXSTRB32_PAR_WIDTH
`define REF_WSTRB16_PAR_WIDTH `REF_AXSTRB16_PAR_WIDTH
`define REF_WSTRB8_PAR_WIDTH `REF_AXSTRB8_PAR_WIDTH
`define REF_WSTRB4_PAR_WIDTH `REF_AXSTRB4_PAR_WIDTH
`define REF_WCTRL_PAR_WIDTH `REF_AXCTRL_PAR_WIDTH
`define REF_W512_PAR_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA512_WIDTH + `REF_WSTRB64_WIDTH + `REF_WUSER_WIDTH + `REF_WDATA512_PAR_WIDTH /*+ `REF_WSTRB64_PAR_WIDTH*/ + `REF_WPOISON_WIDTH)
`define REF_W512_PAR_CID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA512_WIDTH + `REF_WSTRB64_WIDTH + `REF_WUSER_WIDTH + `REF_WCID_WIDTH + `REF_WDATA512_PAR_WIDTH /*+ `REF_WSTRB64_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W512_PAR_TID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA512_WIDTH + `REF_WSTRB64_WIDTH + `REF_WUSER_WIDTH + `REF_TID_WIDTH + `REF_WDATA512_PAR_WIDTH /*+ `REF_WSTRB64_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W256_PAR_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA256_WIDTH + `REF_WSTRB32_WIDTH + `REF_WUSER_WIDTH + `REF_WDATA256_PAR_WIDTH /*+ `REF_WSTRB32_PAR_WIDTH*/ + `REF_WCTRL_PAR_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W256_PAR_CID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA256_WIDTH + `REF_WSTRB32_WIDTH + `REF_WUSER_WIDTH + `REF_WCID_WIDTH + `REF_WDATA256_PAR_WIDTH /*+ `REF_WSTRB32_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W256_PAR_TID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA256_WIDTH + `REF_WSTRB32_WIDTH + `REF_WUSER_WIDTH + `REF_TID_WIDTH + `REF_WDATA256_PAR_WIDTH /*+ `REF_WSTRB32_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W128_PAR_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA128_WIDTH + `REF_WSTRB16_WIDTH + `REF_WUSER_WIDTH + `REF_WDATA128_PAR_WIDTH /*+ `REF_WSTRB16_PAR_WIDTH*/ + `REF_WCTRL_PAR_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W128_PAR_CID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA128_WIDTH + `REF_WSTRB16_WIDTH + `REF_WUSER_WIDTH + `REF_WCID_WIDTH + `REF_WDATA128_PAR_WIDTH /*+ `REF_WSTRB16_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W128_PAR_TID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA128_WIDTH + `REF_WSTRB16_WIDTH + `REF_WUSER_WIDTH + `REF_TID_WIDTH + `REF_WDATA128_PAR_WIDTH /*+ `REF_WSTRB16_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W64_PAR_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA64_WIDTH + `REF_WSTRB8_WIDTH + `REF_WUSER_WIDTH + `REF_WDATA64_PAR_WIDTH /*+ `REF_WSTRB8_PAR_WIDTH*/ + `REF_WCTRL_PAR_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W64_PAR_CID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA64_WIDTH + `REF_WSTRB8_WIDTH + `REF_WUSER_WIDTH + `REF_WCID_WIDTH + `REF_WDATA64_PAR_WIDTH /*+ `REF_WSTRB8_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W64_PAR_TID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA64_WIDTH + `REF_WSTRB8_WIDTH + `REF_WUSER_WIDTH + `REF_TID_WIDTH + `REF_WDATA64_PAR_WIDTH /*+ `REF_WSTRB8_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W32_PAR_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA32_WIDTH + `REF_WSTRB4_WIDTH + `REF_WUSER_WIDTH + `REF_WDATA32_PAR_WIDTH /*+ `REF_WSTRB4_PAR_WIDTH*/ + `REF_WCTRL_PAR_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W32_PAR_CID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA32_WIDTH + `REF_WSTRB4_WIDTH + `REF_WUSER_WIDTH + `REF_WCID_WIDTH + `REF_WDATA32_PAR_WIDTH /*+ `REF_WSTRB4_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)
`define REF_W32_PAR_TID_WIDTH  (`REF_WLAST_WIDTH + `REF_WID_WIDTH + `REF_WDATA32_WIDTH + `REF_WSTRB4_WIDTH + `REF_WUSER_WIDTH + `REF_TID_WIDTH + `REF_WDATA32_PAR_WIDTH /*+ `REF_WSTRB4_PAR_WIDTH*/ + `REF_WID_WIDTH + `REF_SRCID_WIDTH + `REF_WPOISON_WIDTH)

// R
`define REF_RLAST_WIDTH   `REF_AXLAST_WIDTH
`define REF_RID_WIDTH     `REF_AXID_WIDTH
`define REF_RRESP_WIDTH   `REF_AXRESP_WIDTH
`define REF_RDATA512_WIDTH   `REF_AXDATA512_WIDTH
`define REF_RDATA256_WIDTH   `REF_AXDATA256_WIDTH
`define REF_RDATA128_WIDTH   `REF_AXDATA128_WIDTH
`define REF_RDATA64_WIDTH   `REF_AXDATA64_WIDTH
`define REF_RDATA32_WIDTH   `REF_AXDATA32_WIDTH
`define REF_RUSER_WIDTH   `REF_AXUSER_WIDTH // Dont have space in NPP to support
`define REF_R512_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA512_WIDTH + `REF_RUSER_WIDTH)
`define REF_R256_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA256_WIDTH + `REF_RUSER_WIDTH)
`define REF_R128_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA128_WIDTH + `REF_RUSER_WIDTH)
`define REF_R64_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA64_WIDTH + `REF_RUSER_WIDTH)
`define REF_R32_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA32_WIDTH + `REF_RUSER_WIDTH)

`define REF_RCID_WIDTH `REF_AXCID_WIDTH
`define REF_RPOISON_WIDTH `REF_AXPOISON_WIDTH 
`define REF_RDATA512_PAR_WIDTH `REF_AXDATA512_PAR_WIDTH
`define REF_RDATA256_PAR_WIDTH `REF_AXDATA256_PAR_WIDTH
`define REF_RDATA128_PAR_WIDTH `REF_AXDATA128_PAR_WIDTH
`define REF_RDATA64_PAR_WIDTH `REF_AXDATA64_PAR_WIDTH
`define REF_RDATA32_PAR_WIDTH `REF_AXDATA32_PAR_WIDTH
`define REF_RCTRL_PAR_WIDTH `REF_AXCTRL_PAR_WIDTH
`define REF_R512_PAR_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA512_WIDTH + `REF_RUSER_WIDTH + `REF_RDATA512_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R512_PAR_CID_WIDTH  (`REF_RLAST_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA512_WIDTH + `REF_RUSER_WIDTH + `REF_RCID_WIDTH + `REF_RDATA512_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R256_PAR_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA256_WIDTH + `REF_RUSER_WIDTH + `REF_RDATA256_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R256_PAR_CID_WIDTH  (`REF_RLAST_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA256_WIDTH + `REF_RUSER_WIDTH + `REF_RCID_WIDTH + `REF_RDATA256_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R128_PAR_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA128_WIDTH + `REF_RUSER_WIDTH + `REF_RDATA128_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R128_PAR_CID_WIDTH  (`REF_RLAST_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA128_WIDTH + `REF_RUSER_WIDTH + `REF_RCID_WIDTH + `REF_RDATA128_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R64_PAR_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA64_WIDTH + `REF_RUSER_WIDTH + `REF_RDATA64_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R64_PAR_CID_WIDTH  (`REF_RLAST_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA64_WIDTH + `REF_RUSER_WIDTH + `REF_RCID_WIDTH + `REF_RDATA64_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R32_PAR_WIDTH  (`REF_RLAST_WIDTH + `REF_RID_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA32_WIDTH + `REF_RUSER_WIDTH + `REF_RDATA32_PAR_WIDTH + `REF_RPOISON_WIDTH)
`define REF_R32_PAR_CID_WIDTH  (`REF_RLAST_WIDTH + `REF_RRESP_WIDTH + `REF_RDATA32_WIDTH + `REF_RUSER_WIDTH + `REF_RCID_WIDTH + `REF_RDATA32_PAR_WIDTH + `REF_RPOISON_WIDTH)

// B
`define REF_BID_WIDTH     `REF_AXID_WIDTH
`define REF_BRESP_WIDTH   `REF_AXRESP_WIDTH
`define REF_BUSER_WIDTH   `REF_AXUSER_WIDTH
`define REF_B_WIDTH  (`REF_BID_WIDTH + `REF_BRESP_WIDTH + `REF_BUSER_WIDTH)
   
`define REF_BCID_WIDTH `REF_AXCID_WIDTH
`define REF_BCTRL_PAR_WIDTH `REF_AXCTRL_PAR_WIDTH
`define REF_B_PAR_WIDTH  (`REF_BID_WIDTH + `REF_BRESP_WIDTH + `REF_BUSER_WIDTH)
`define REF_B_PAR_CID_WIDTH  (`REF_BCID_WIDTH + `REF_BRESP_WIDTH + `REF_BUSER_WIDTH)

// ********************************************************
// NoC AXI protocol Define
// ********************************************************
`define REF_AXSIZE_8    3'b000
`define REF_AXSIZE_16   3'b001  
`define REF_AXSIZE_32   3'b010  
`define REF_AXSIZE_64   3'b011  
`define REF_AXSIZE_128  3'b100
`define REF_AXSIZE_256  3'b101  
`define REF_AXSIZE_512  3'b110  
   
`define REF_AXBURST_FIXED   2'b00
`define REF_AXBURST_INCR    2'b01
`define REF_AXBURST_WRAP    2'b10
   
`define REF_AXLOCK_NORMAL     2'b00
`define REF_AXLOCK_EXCLUSIVE  2'b01
`define REF_AXLOCK_LOCKED     2'b10
   
`define REF_AXI_RESP_OKAY   2'b00
`define REF_AXI_RESP_EXOKAY 2'b01
`define REF_AXI_RESP_SLVERR 2'b10
`define REF_AXI_RESP_DECERR 2'b11

// ********************************************************
// Enable SIDEFILE for VIVADO 
// ********************************************************
`ifndef BFM_SIMULATION
`define SIDEFILE_EN 
`endif
`ifdef NOC_BFM_LOCAL_VERIF
`undef SIDEFILE_EN
`endif

`endif
