// if_loop_2.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module if_loop_2 (
		input  wire        clock,      //      clock.clk
		input  wire        resetn,     //      reset.reset_n
		input  wire        start,      //       call.valid
		output wire        busy,       //           .stall
		output wire        done,       //     return.valid
		input  wire        stall,      //           .stall
		output wire [31:0] returndata, // returndata.data
		input  wire [63:0] a,          //          a.data
		input  wire [31:0] n           //          n.data
	);

	if_loop_2_internal if_loop_2_internal_inst (
		.clock      (clock),      //   input,   width = 1,      clock.clk
		.resetn     (resetn),     //   input,   width = 1,      reset.reset_n
		.start      (start),      //   input,   width = 1,       call.valid
		.busy       (busy),       //  output,   width = 1,           .stall
		.done       (done),       //  output,   width = 1,     return.valid
		.stall      (stall),      //   input,   width = 1,           .stall
		.returndata (returndata), //  output,  width = 32, returndata.data
		.a          (a),          //   input,  width = 64,          a.data
		.n          (n)           //   input,  width = 32,          n.data
	);

endmodule
