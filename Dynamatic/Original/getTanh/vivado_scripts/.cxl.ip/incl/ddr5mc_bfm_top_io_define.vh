`ifndef _ddrmc5_top_io_define_vh_
`define _ddrmc5_top_io_define_vh_

`define D5_PHY5_NUM_NIBBLE 30
`define D5_PHY_NUM_NIBBLE 15
`define D5_PHY_RIU_NIBBLE (`D5_PHY_NUM_NIBBLE+2)
`define D5_PHY_IODLYEN_VTC 90

`define D5_PHY_RXFIFO_PNT 15
`define D5_PHY_RXGT_STATUS ( 1* `D5_PHY_RXFIFO_PNT)
`define D5_PHY_RW_RANKSEL 60
`define D5_PHY_RW_EN 60
`define D5_PHY_IODQ_WIDTH 120
`define D5_PHY_PLL_WIDTH 6

`define D5_PHY_TX_O_EN 60

// Phy Interface
`define D5_PHY5_NUM_PHYBANK 3
`define D5_PHY5_NIBBLES_PER_BANK     (`D5_PHY5_NUM_NIBBLE / `D5_PHY5_NUM_PHYBANK)
`define D5_PHY5_TRI_TX_PER_BANK      ( 6* `D5_PHY5_NIBBLES_PER_BANK)
`define D5_PHY5_RANKSEL_PER_BANK     ( 4* `D5_PHY5_NIBBLES_PER_BANK)
`define D5_PHY5_RDEN_PER_BANK        ( 4* `D5_PHY5_NIBBLES_PER_BANK)
`define D5_PHY5_GT_STATUS_PER_BANK   ( 1* `D5_PHY5_NIBBLES_PER_BANK)
`define D5_PHY5_OE_PER_BANK          ( 4* `D5_PHY5_NIBBLES_PER_BANK)
`define D5_PHY5_DQ_WIDTH_PER_BANK    ( 8* `D5_PHY5_NIBBLES_PER_BANK)
`define D5_PHY5_RIU_PER_BANK         (`D5_PHY5_NIBBLES_PER_BANK + 1)
`define D5_PHY5_RIU_ADDR_WIDTH       ( 8* `D5_PHY5_RIU_PER_BANK)
`define D5_PHY5_RIU_NIB_SEL_PER_BANK (`D5_PHY5_NIBBLES_PER_BANK + 1)                   // FIXME DDR5   Just one RIU PLL connection per DMC?
`define D5_PHY5_RIU_WRDQ_WIDTH       (16* `D5_PHY5_RIU_PER_BANK)
`define D5_PHY5_RIU_RDDQ_WIDTH       (16* `D5_PHY5_RIU_PER_BANK)

// DMC Interface
`define D5_PHY_NUM_LOGICALBANK 1
`define D5_PHY_PLL_PER_BANK         2
`define D5_PHY_NIBBLES_PER_BANK     (`D5_PHY_NUM_NIBBLE  / `D5_PHY_NUM_LOGICALBANK)
`define D5_PHY_RIU_PER_BANK         (`D5_PHY_NIBBLES_PER_BANK + 1)
`define D5_PHY_RIU_NIB_SEL_PER_BANK (`D5_PHY_NIBBLES_PER_BANK + 1)                   // FIXME DDR5   Just one RIU PLL connection per DMC?
`define D5_PHY_RANKSEL_PER_BANK     ( 4* `D5_PHY_NIBBLES_PER_BANK)
`define D5_PHY_RDEN_PER_BANK        ( 4* `D5_PHY_NIBBLES_PER_BANK)
`define D5_PHY_DQ_WIDTH_PER_BANK    ( 8* `D5_PHY_NIBBLES_PER_BANK)
`define D5_PHY_OE_PER_BANK          ( 4* `D5_PHY_NIBBLES_PER_BANK)
`define D5_PHY_TRI_TX_PER_BANK      ( 6* `D5_PHY_NIBBLES_PER_BANK)
`define D5_PHY_GT_STATUS_PER_BANK   ( 1* `D5_PHY_NIBBLES_PER_BANK)
`define D5_PHY_RIU_ADDR_WIDTH       ( 8* `D5_PHY_RIU_PER_BANK)
`define D5_PHY_RIU_WRDQ_WIDTH       (16* `D5_PHY_RIU_PER_BANK)
`define D5_PHY_RIU_RDDQ_WIDTH       (16* `D5_PHY_RIU_PER_BANK)
`define     D5_RIU_ADDR_WIDTH       ( 8 )
`define     D5_RIU_WRDQ_WIDTH       (16 )
`define     D5_RIU_RDDQ_WIDTH       (16* `D5_PHY5_NUM_PHYBANK)

`define D5_MC_USR_REF_RANK_EN       4
`define D5_MC_USR_REF_RANK_EN_1     2
`define D5_MC_DBG_PORT_DATA_WIDTH 128
`define D5_MC_DBG_PORT_TIME_WIDTH  16

`define D5_MC_MISC_IN_WIDTH        31
`define D5_MC_MISC_OUT_WIDTH       42

`define D5_UB_TDATA_WIDTH          16

`define D5_UBLAZE_MISC_IN_WIDTH    3
`define D5_UBLAZE_MISC_OUT_WIDTH   2

// BLI feed through definitions
`define D5_PHY2BLI_DDRMC_WIDTH     4000
`define D5_BLI2PHY_DDRMC_WIDTH     4000

`define D5_PHY2BLI_CRYPTO_WIDTH    3000
`define D5_BLI2PHY_CRYPTO_WIDTH    3000

`define D5_PHY2BLI_WIDTH           (`D5_PHY2BLI_DDRMC_WIDTH + `D5_PHY2BLI_CRYPTO_WIDTH) //used in ddrmc5_dmc_site
`define D5_BLI2PHY_WIDTH           (`D5_BLI2PHY_DDRMC_WIDTH + `D5_BLI2PHY_CRYPTO_WIDTH) //used in ddrmc5_dmc_site

//New width definitions for X5PhyIO ports --------------------------------------
`define D5_PHY5_OCTADS_PER_HB              4
`define D5_PHY5_XPLL_PER_HB                1
`define D5_PHY5_CMU_PER_HB                 1
`define D5_PHY5_NUM_HB                     3
`define D5_PHY5_TOTAL_NUM_APB              (`D5_PHY5_NUM_HB * (`D5_PHY5_OCTADS_PER_HB + `D5_PHY5_XPLL_PER_HB + `D5_PHY5_CMU_PER_HB))

`define D5_PHY5_FIFO_CNTRL_PER_OCT         1
`define D5_PHY5_RANKSEL_PER_OCT            4
`define D5_PHY5_RDEN_PER_OCT               4
`define D5_PHY5_OE_PER_OCT                 4
`define D5_PHY5_DQ_WIDTH_PER_OCT           8
`define D5_PHY5_IBUF_DIS_PER_OCT           8

`define D5_PHY5_RANKSEL_PER_HB            ( `D5_PHY5_RANKSEL_PER_OCT * `D5_PHY5_OCTADS_PER_HB)
`define D5_PHY5_RDEN_PER_HB               ( `D5_PHY5_RDEN_PER_OCT    * `D5_PHY5_OCTADS_PER_HB)
`define D5_PHY5_OE_PER_HB                 ( `D5_PHY5_OE_PER_OCT      * `D5_PHY5_OCTADS_PER_HB)
`define D5_PHY5_DQ_WIDTH_PER_HB           ( `D5_PHY5_DQ_WIDTH_PER_OCT* `D5_PHY5_OCTADS_PER_HB)
`define D5_PHY5_IBUF_DIS_PER_HB           ( `D5_PHY5_IBUF_DIS_PER_OCT* `D5_PHY5_OCTADS_PER_HB)

`define D5_PHY5_APB_PCLK_WIDTH      1
`define D5_PHY5_APB_PRESETN_WIDTH   1
`define D5_PHY5_APB_PADDR_WIDTH     10
`define D5_PHY5_APB_PSEL_WIDTH      1
`define D5_PHY5_APB_PENABLE_WIDTH   1
`define D5_PHY5_APB_PWDATA_WIDTH    16
`define D5_PHY5_APB_PWRITE_WIDTH    1
`define D5_PHY5_APB_PRDATA_WIDTH    16
`define D5_PHY5_APB_PREADY_WIDTH    1
`define D5_PHY5_APB_PSLVERR_WIDTH   1

`define D5_X5PHYIO_CNTRL_WIDTH     ( `D5_PHY5_NUM_HB* `D5_PHY5_OCTADS_PER_HB)  //12 octads (3 half banks)
`define D5_X5PHYIO_RXFIFO_PNT      ( 1* `D5_X5PHYIO_CNTRL_WIDTH)
`define D5_X5PHYIO_RW_RANKSEL      ( 4* `D5_PHY5_NUM_HB* `D5_PHY5_OCTADS_PER_HB)  //48 - 4 phases * 12 octads
`define D5_X5PHYIO_RW_EN           ( 4* `D5_PHY5_NUM_HB* `D5_PHY5_OCTADS_PER_HB)  //48 - 4 phases * 12 octads
`define D5_X5PHYIO_IODQ_WIDTH      ( 8* `D5_PHY5_NUM_HB* `D5_PHY5_OCTADS_PER_HB)  //96 - 4 phases * 12 octads
`define D5_X5PHYIO_TX_O_EN         ( 4* `D5_PHY5_NUM_HB* `D5_PHY5_OCTADS_PER_HB)  //48 - 4 phases * 12 octads
`define D5_X5PHYIO_IBUF_DIS_WIDTH  ( 8* `D5_PHY5_NUM_HB* `D5_PHY5_OCTADS_PER_HB)  //96 - 4 phases * 12 octads

`endif
