module kernel_2mm (
		input  wire        clock,  //  clock.clk
		input  wire        resetn, //  reset.reset_n
		input  wire        start,  //   call.valid
		output wire        busy,   //       .stall
		output wire        done,   // return.valid
		input  wire        stall,  //       .stall
		input  wire [31:0] alpha,  //  alpha.data
		input  wire [31:0] beta,   //   beta.data
		input  wire [63:0] A,      //      A.data
		input  wire [63:0] B,      //      B.data
		input  wire [63:0] C,      //      C.data
		input  wire [63:0] D       //      D.data
	);
endmodule

