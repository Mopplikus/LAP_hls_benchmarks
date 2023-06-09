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
endmodule

