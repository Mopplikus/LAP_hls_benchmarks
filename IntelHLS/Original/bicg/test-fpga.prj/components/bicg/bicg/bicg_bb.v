module bicg (
		input  wire        clock,  //  clock.clk
		input  wire        resetn, //  reset.reset_n
		input  wire        start,  //   call.valid
		output wire        busy,   //       .stall
		output wire        done,   // return.valid
		input  wire        stall,  //       .stall
		input  wire [63:0] A,      //      A.data
		input  wire [63:0] s,      //      s.data
		input  wire [63:0] q,      //      q.data
		input  wire [63:0] p,      //      p.data
		input  wire [63:0] r       //      r.data
	);
endmodule

