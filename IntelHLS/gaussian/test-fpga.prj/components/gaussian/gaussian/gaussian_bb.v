module gaussian (
		input  wire        clock,  //  clock.clk
		input  wire        resetn, //  reset.reset_n
		input  wire        start,  //   call.valid
		output wire        busy,   //       .stall
		output wire        done,   // return.valid
		input  wire        stall,  //       .stall
		input  wire [63:0] A_r     //    A_r.data
	);
endmodule

