// mm_agent_kernel_2mm_avmm_0_rw.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module mm_agent_kernel_2mm_avmm_0_rw #(
		parameter AV_ADDRESS_W               = 64,
		parameter AV_SYMBOL_W                = 8,
		parameter AV_NUMSYMBOLS              = 8,
		parameter AV_BURSTCOUNT_W            = 3,
		parameter AV_READRESPONSE_W          = 8,
		parameter AV_WRITERESPONSE_W         = 8,
		parameter USE_READ                   = 1,
		parameter USE_WRITE                  = 1,
		parameter USE_ADDRESS                = 1,
		parameter USE_BYTE_ENABLE            = 1,
		parameter USE_BURSTCOUNT             = 0,
		parameter USE_READ_DATA              = 1,
		parameter USE_READ_DATA_VALID        = 0,
		parameter USE_WRITE_DATA             = 1,
		parameter USE_BEGIN_TRANSFER         = 0,
		parameter USE_BEGIN_BURST_TRANSFER   = 0,
		parameter USE_WAIT_REQUEST           = 0,
		parameter USE_CLKEN                  = 0,
		parameter AV_BURST_LINEWRAP          = 1,
		parameter AV_BURST_BNDR_ONLY         = 1,
		parameter AV_MAX_PENDING_READS       = 0,
		parameter AV_MAX_PENDING_WRITES      = 0,
		parameter AV_FIX_READ_LATENCY        = 1,
		parameter AV_READ_WAIT_TIME          = 0,
		parameter AV_WRITE_WAIT_TIME         = 0,
		parameter REGISTER_WAITREQUEST       = 0,
		parameter AV_REGISTERINCOMINGSIGNALS = 0,
		parameter COMPONENT_NAME             = "kernel_2mm",
		parameter INTERFACE_ID               = 0
	) (
		input  wire        do_bind,        //   dpi_control_bind.conduit
		input  wire        enable,         // dpi_control_enable.conduit
		input  wire        clock,          //              clock.clk
		input  wire        reset_n,        //              reset.reset_n
		input  wire [63:0] avs_writedata,  //                 s0.writedata
		output wire [63:0] avs_readdata,   //                   .readdata
		input  wire [63:0] avs_address,    //                   .address
		input  wire        avs_write,      //                   .write
		input  wire        avs_read,       //                   .read
		input  wire [7:0]  avs_byteenable  //                   .byteenable
	);

	hls_sim_mm_agent_dpi_bfm #(
		.AV_ADDRESS_W               (AV_ADDRESS_W),
		.AV_SYMBOL_W                (AV_SYMBOL_W),
		.AV_NUMSYMBOLS              (AV_NUMSYMBOLS),
		.AV_BURSTCOUNT_W            (AV_BURSTCOUNT_W),
		.AV_READRESPONSE_W          (AV_READRESPONSE_W),
		.AV_WRITERESPONSE_W         (AV_WRITERESPONSE_W),
		.USE_READ                   (USE_READ),
		.USE_WRITE                  (USE_WRITE),
		.USE_ADDRESS                (USE_ADDRESS),
		.USE_BYTE_ENABLE            (USE_BYTE_ENABLE),
		.USE_BURSTCOUNT             (USE_BURSTCOUNT),
		.USE_READ_DATA              (USE_READ_DATA),
		.USE_READ_DATA_VALID        (USE_READ_DATA_VALID),
		.USE_WRITE_DATA             (USE_WRITE_DATA),
		.USE_BEGIN_TRANSFER         (USE_BEGIN_TRANSFER),
		.USE_BEGIN_BURST_TRANSFER   (USE_BEGIN_BURST_TRANSFER),
		.USE_WAIT_REQUEST           (USE_WAIT_REQUEST),
		.USE_CLKEN                  (USE_CLKEN),
		.AV_BURST_LINEWRAP          (AV_BURST_LINEWRAP),
		.AV_BURST_BNDR_ONLY         (AV_BURST_BNDR_ONLY),
		.AV_MAX_PENDING_READS       (AV_MAX_PENDING_READS),
		.AV_MAX_PENDING_WRITES      (AV_MAX_PENDING_WRITES),
		.AV_FIX_READ_LATENCY        (AV_FIX_READ_LATENCY),
		.AV_READ_WAIT_TIME          (AV_READ_WAIT_TIME),
		.AV_WRITE_WAIT_TIME         (AV_WRITE_WAIT_TIME),
		.REGISTER_WAITREQUEST       (REGISTER_WAITREQUEST),
		.AV_REGISTERINCOMINGSIGNALS (AV_REGISTERINCOMINGSIGNALS),
		.COMPONENT_NAME             (COMPONENT_NAME),
		.INTERFACE_ID               (INTERFACE_ID)
	) mm_agent_kernel_2mm_avmm_0_rw (
		.do_bind           (do_bind),        //   input,   width = 1,   dpi_control_bind.conduit
		.enable            (enable),         //   input,   width = 1, dpi_control_enable.conduit
		.clock             (clock),          //   input,   width = 1,              clock.clk
		.reset_n           (reset_n),        //   input,   width = 1,              reset.reset_n
		.avs_writedata     (avs_writedata),  //   input,  width = 64,                 s0.writedata
		.avs_readdata      (avs_readdata),   //  output,  width = 64,                   .readdata
		.avs_address       (avs_address),    //   input,  width = 64,                   .address
		.avs_write         (avs_write),      //   input,   width = 1,                   .write
		.avs_read          (avs_read),       //   input,   width = 1,                   .read
		.avs_byteenable    (avs_byteenable), //   input,   width = 8,                   .byteenable
		.avs_readdatavalid ()                // (terminated),                                 
	);

endmodule
