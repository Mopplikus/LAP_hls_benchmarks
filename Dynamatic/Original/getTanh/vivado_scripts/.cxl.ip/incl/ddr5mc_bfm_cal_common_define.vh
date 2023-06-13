`ifndef _ddrmc5_top_common_define_vh_
`define _ddrmc5_top_common_define_vh_



`define D5_CAL_NUM_NIBBLES             15
`define D5_CAL_DATA_NIBBLES            10
`define D5_CAL_DATA_BYTES              (`D5_CAL_DATA_NIBBLES/2)
`define D5_CAL_DQS_BIT_WIDTH           (`D5_CAL_DATA_NIBBLES*8) //DDR for 8 per mc_clk
`define D5_CAL_RANK_BIT_WIDTH          (`D5_CAL_DATA_NIBBLES*4) //4 per mc_clk
`define D5_CAL_NUM_CHANNELS            1
`define D5_CAL_NUM_WIRES_PER_DQ        8
`define D5_CAL_NUM_DQ_PER_NIBBLE       6
`define D5_CAL_NUM_BITS_PER_RD_DQ      (`D5_CAL_DATA_NIBBLES*8)
`define D5_CAL_NUM_BITS_PER_IBUF_DS    (`D5_CAL_DATA_NIBBLES*8)
`define D5_CAL_NUM_OCTADS              12

`define D5_CAL_RT_RD_FIFO_WIDTH        (`D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ID_WIDTH + 5)
`define D5_CAL_RT_RAW_BIT              ( `D5_DC_ENTRY_ID_WIDTH + 3 + `D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ID_WIDTH )
`define D5_CAL_RT_RAW_ID_LSB           ( 3 + `D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ID_WIDTH )
`define D5_CAL_RT_SLOT1_BIT            ( 2 + `D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ID_WIDTH )
`define D5_CAL_RT_RMW_BIT              ( 1 + `D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ID_WIDTH )
`define D5_CAL_RT_SCRUB_BIT            ( `D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ID_WIDTH )
`define D5_CAL_RT_CAS_ID_LSB           ( `D5_DC_ENTRY_ID_WIDTH )
`define D5_CAL_RT_RROB_ID_LSB          0
`define D5_CAL_RT_RD_FIFO_DEPTH        32
`define D5_CAL_RT_RD_FIFO_PTR_WIDTH    5
`define D5_CAL_RD_SHIFT_CHN_WIDTH      4 // increased from 3 to 4 for additional slot
`define D5_CAL_RD_SHIFT_SLOT0_BIT      0
`define D5_CAL_RD_SHIFT_SLOT1_BIT      1
`define D5_CAL_RD_SHIFT_SLOT2_BIT      2
`define D5_CAL_RD_SHIFT_RANK_BIT0      3
`define D5_CAL_RD_SHIFT_RANK_BIT1      4
`define D5_CAL_RD_SHIFT_RAW_BIT        5
`define D5_CAL_WR_SHIFT_WCK2CK_BIT     5
`define D5_CAL_PHY_FIFO_RDEN_REG_WIDTH 7                                   // Read delay NPI register width
`define D5_CAL_RD_SHIFT_REG_WIDTH      (`D5_CAL_PHY_FIFO_RDEN_REG_WIDTH - 1)  // Shift register width
`define D5_CAL_RD_SHIFT_DEPTH          (2 ** `D5_CAL_RD_SHIFT_REG_WIDTH)      // Shift register depth
`define D5_CAL_IBUF_DS_SHIFT_DEPTH     64
`define D5_CAL_IBUF_DS_SHIFT_PTR_WIDTH 6

`define D5_CAL_WRITE_FIFO_WIDTH        (`D5_DC_ENTRY_ID_WIDTH + 2)
`define D5_CAL_WRITE_FIFO_DEPTH        32
`define D5_CAL_WRITE_FIFO_PTR_WIDTH    5
`define D5_CAL_WR_SHIFT_WIDTH          3 // increased from 2 to 3 for additional slot

`define D5_CAL_OE_WDATA_DLY_REG_WIDTH  7                                   // Write delay NPI register width
`define D5_CAL_WR_SHIFT_REG_WIDTH      (`D5_CAL_OE_WDATA_DLY_REG_WIDTH - 1)   // Shift register width
`define D5_CAL_WR_SHIFT_DEPTH          (2 ** `D5_CAL_WR_SHIFT_REG_WIDTH)      // Shift register depth

`define D5_CAL_OE_PN_SHIFT_DLY_REG_WIDTH 3                                  // register width of NPI registers for per nibble delay
`define D5_CAL_WR_OE_PN_SHIFT_WIDTH      (`D5_CAL_OE_PN_SHIFT_DLY_REG_WIDTH-1) // Shift register width for per nibble delay
`define D5_CAL_WR_OE_PN_SHIFT_DEPTH      (2 **  `D5_CAL_WR_OE_PN_SHIFT_WIDTH)  // Shift register depth for per nibble delay

`define D5_CAL_WR_DATA_SHIFT_DLY_REG_WIDTH 3                                  // register width of NPI registers for per nibble delay
`define D5_CAL_WR_DATA_SHIFT_WIDTH         (`D5_CAL_OE_PN_SHIFT_DLY_REG_WIDTH-1) // Shift register width for per nibble delay
`define D5_CAL_WR_DATA_SHIFT_DEPTH         (2 **  `D5_CAL_WR_OE_PN_SHIFT_WIDTH)  // Shift register depth for per nibble delay

`define D5_CPLX_LOOP_CNT_WIDTH         8
`define D5_CPLX_TIMER_WIDTH            8
`define D5_CPLX_BURST_CNTR_WIDTH       5
`define D5_CPLX_PATTERN_ADDR_WIDTH     8
`define D5_CPLX_PATTERN_DATA_WIDTH     16
`define D5_CPLX_ADDR_CNTR_WIDTH        22

`define D5_CAL_ODT_WIDTH		    `D5_DC_NUM_RANK

`endif
