// covariance_en_cfan.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module covariance_en_cfan (
		input  wire  in_conduit,    //    in_conduit.conduit
		output wire  out_conduit_0, // out_conduit_0.conduit
		output wire  out_conduit_1  // out_conduit_1.conduit
	);

	covariance_en_cfan_avalon_conduit_fanout_10_kcgql6q covariance_en_cfan (
		.in_conduit    (in_conduit),    //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (out_conduit_0), //  output,  width = 1, out_conduit_0.conduit
		.out_conduit_1 (out_conduit_1)  //  output,  width = 1, out_conduit_1.conduit
	);

endmodule
