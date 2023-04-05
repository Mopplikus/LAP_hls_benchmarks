// example_cfan.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module example_cfan (
		input  wire  in_conduit,    //    in_conduit.conduit
		output wire  out_conduit_0, // out_conduit_0.conduit
		output wire  out_conduit_1, // out_conduit_1.conduit
		output wire  out_conduit_2  // out_conduit_2.conduit
	);

	example_cfan_avalon_conduit_fanout_10_ak2cvai example_cfan (
		.in_conduit    (in_conduit),    //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (out_conduit_0), //  output,  width = 1, out_conduit_0.conduit
		.out_conduit_1 (out_conduit_1), //  output,  width = 1, out_conduit_1.conduit
		.out_conduit_2 (out_conduit_2)  //  output,  width = 1, out_conduit_2.conduit
	);

endmodule
