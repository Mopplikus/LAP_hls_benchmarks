//////////////////////////////////////////////////////////////////////////////LF
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
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
//       Revision:       $Id: //depot/icm/proj/everest/7t_n1/shadow/shadowbranches/hbm/hbm.hbm_2.2/rtl/noc_7t_n1/include/noc_hbm2e_define.vh#5 $
//                       $Author: vipink $
//                       $DateTime: 2020/04/21 23:55:33 $
//                       $Change: 27704301 $
//       Description:
//
///////////////////////////////////////////////////////////////////////////////
`ifndef _noc_hbm2e_define_vh_
`define _noc_hbm2e_define_vh_

// ********************************************************
// NOC NPS4
// ********************************************************
`define NOC_NPS4_NUM_PORT 8
`define NOC_NPS4_NUM_PORT_D2 4
`define NOC_NPS4_NUM_VC 4
`define NOC_LOG2NPS4_NUM_VC 2
`define NOC_NPS4_REQ_MAP 8'b00110011
`define NOC_NPS4_RESP_MAP 8'b11001100

`ifndef NOC_NPS4_BYPASS_DISABLE
  `define NOC_NPS4_BYPASS_DISABLE 0
`endif
`define NOC_NPS4_BUF_DEPTH_FULL (5+`NOC_NPS4_BYPASS_DISABLE)
`define NOC_NPS4_BUF_DEPTH_HALF 3
`define NOC_NPS4_NUM_D_CH 2
`define NOC_NPP_PDEST_ID_WIDTH 2
`define NOC_ERR_REF_NPS4_TIMEOUT_ERR  20'hA_3_1_1_0

`define NOC_NPS4_ERR_LOG_1ST_NUM_COMP 4'h3

// ********************************************************
// NOC NPS6
// ********************************************************
`define NOC_NPS6_NUM_PORT 6
`define NOC_LOG2NPS6_NUM_PORT 3

`define NPS6_PORT_TIE_NPS 2'b0_0  // NMU, NSU
`define NPS6_PORT_TIE_NMU 2'b1_0  // NMU, NSU
`define NPS6_PORT_TIE_NSU 2'b0_1  // NMU, NSU

`define NOC_ERR_REF_NPS6_DST_PAR_ERR  20'h6_6_1_1_1
`define NOC_ERR_REF_NPS6_ROUTE_ERR    20'hB_6_3_1_1
`define NOC_ERR_REF_NPS6_CRDT_RDY_ERR 20'hB_6_3_1_2
`define NOC_ERR_REF_NPS6_CRDT_OVF_ERR 20'hB_6_3_1_3
`define NOC_ERR_REF_NPS6_BUF_OVF_ERR  20'hB_6_3_1_5
`define NOC_ERR_REF_NPS6_TIMEOUT_ERR  20'hA_3_1_1_0

// ********************************************************
// NOC HBM NMU
// ********************************************************
`define HBM_NMU_BLI_IMUX_WIDTH  326
`define HBM_NMU_BLI_OMUX_WIDTH  244
`define HBM_NMU_BLI_IMUX_WIDTH_DIV2  163
`define HBM_NMU_BLI_OMUX_WIDTH_DIV2  122
`define NMU_BLI2PHY_WIDTH     489  // 2*`NMU_BLI2PHY_WIDTH = 3*`HBM_NMU_BLI_IMUX_WIDTH
`define NMU_PHY2BLI_WIDTH     366  // 2*`NMU_PHY2BLI_WIDTH = 3*`HBM_NMU_BLI_OMUX_WIDTH
`define NMU_HBM2E_AXI_IWIDTH  489
`define NMU_HBM2E_AXI_OWIDTH  305
// BLI2PHY-AXI In bit assignment
`define NMU_BLI2PHY_RD_DEST_MODE 488:488
`define NMU_BLI2PHY_RD_USR_DST   487:485
`define NMU_BLI2PHY_WR_DEST_MODE 484:484
`define NMU_BLI2PHY_WR_USR_DST   483:481
`define NMU_BLI2PHY_BREADY       480:480
`define NMU_BLI2PHY_RREADY       479:479
`define NMU_BLI2PHY_ARVALID      478:478
`define NMU_BLI2PHY_ARID         477:471
`define NMU_BLI2PHY_ARADDR       470:423
`define NMU_BLI2PHY_ARLEN        422:415
`define NMU_BLI2PHY_ARSIZE       414:412
`define NMU_BLI2PHY_ARBURST      411:410
`define NMU_BLI2PHY_ARLOCK       409:409
`define NMU_BLI2PHY_ARCACHE      408:405
`define NMU_BLI2PHY_ARPROT       404:402
`define NMU_BLI2PHY_ARUSER       401:391
`define NMU_BLI2PHY_ARADDR_PAR   390:389
`define NMU_BLI2PHY_AWVALID      388:388
`define NMU_BLI2PHY_AWID         387:381
`define NMU_BLI2PHY_AWADDR       380:333
`define NMU_BLI2PHY_AWLEN        332:325
`define NMU_BLI2PHY_AWSIZE       324:322
`define NMU_BLI2PHY_AWBURST      321:320
`define NMU_BLI2PHY_AWLOCK       319:319
`define NMU_BLI2PHY_AWCACHE      318:315
`define NMU_BLI2PHY_AWPROT       314:312
`define NMU_BLI2PHY_AWUSER       311:301
`define NMU_BLI2PHY_AWADDR_PAR   300:299
`define NMU_BLI2PHY_WVALID       298:298
`define NMU_BLI2PHY_WLAST        297:297
`define NMU_BLI2PHY_WPOISON      296:296
`define NMU_BLI2PHY_WDATA_PAR    295:288
`define NMU_BLI2PHY_WSTRB        287:256
`define NMU_BLI2PHY_WDATA        255:0
// BLI2PHY-AXI Out-Mux bit assignment
`define NMU_PHY2BLI_ARREADY      304:304
`define NMU_PHY2BLI_AWREADY      303:303
`define NMU_PHY2BLI_WREADY       302:302
`define NMU_PHY2BLI_BVALID       301:301
`define NMU_PHY2BLI_BID          300:294
`define NMU_PHY2BLI_BRESP        293:292
`define NMU_PHY2BLI_BUSER        291:276
`define NMU_PHY2BLI_RVALID       275:275
`define NMU_PHY2BLI_RLAST        274:274
`define NMU_PHY2BLI_RRESP        273:272
`define NMU_PHY2BLI_RPOISON      271:271
`define NMU_PHY2BLI_RID          270:264
`define NMU_PHY2BLI_RDATA_PAR    263:256
`define NMU_PHY2BLI_RDATA        255:0

`endif
