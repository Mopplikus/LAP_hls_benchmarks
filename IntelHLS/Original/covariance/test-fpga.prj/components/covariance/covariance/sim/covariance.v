// covariance.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module covariance (
		input  wire        clock,  //  clock.clk
		input  wire        resetn, //  reset.reset_n
		input  wire        start,  //   call.valid
		output wire        busy,   //       .stall
		output wire        done,   // return.valid
		input  wire        stall,  //       .stall
		input  wire [63:0] data,   //   data.data
		input  wire [63:0] cov     //    cov.data
	);

	covariance_internal covariance_internal_inst (
		.clock  (clock),  //   input,   width = 1,  clock.clk
		.resetn (resetn), //   input,   width = 1,  reset.reset_n
		.start  (start),  //   input,   width = 1,   call.valid
		.busy   (busy),   //  output,   width = 1,       .stall
		.done   (done),   //  output,   width = 1, return.valid
		.stall  (stall),  //   input,   width = 1,       .stall
		.data   (data),   //   input,  width = 64,   data.data
		.cov    (cov)     //   input,  width = 64,    cov.data
	);

endmodule
