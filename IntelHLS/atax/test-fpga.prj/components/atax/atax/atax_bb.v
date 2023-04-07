module atax (
		input  wire        clock,  //  clock.clk
		input  wire        resetn, //  reset.reset_n
		input  wire        start,  //   call.valid
		output wire        busy,   //       .stall
		output wire        done,   // return.valid
		input  wire        stall,  //       .stall
		input  wire [63:0] A,      //      A.data
		input  wire [63:0] x,      //      x.data
		input  wire [63:0] y,      //      y.data
		input  wire [63:0] tmp     //    tmp.data
	);
endmodule

