module jacobi_1d (
		input  wire        clock,  //  clock.clk
		input  wire        resetn, //  reset.reset_n
		input  wire        start,  //   call.valid
		output wire        busy,   //       .stall
		output wire        done,   // return.valid
		input  wire        stall,  //       .stall
		input  wire [63:0] A_1,    //    A_1.data
		input  wire [63:0] A_2,    //    A_2.data
		input  wire [63:0] B       //      B.data
	);
endmodule

