// atax_en_cfan.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module atax_en_cfan (
		input  wire  in_conduit,    //    in_conduit.conduit
		output wire  out_conduit_0, // out_conduit_0.conduit
		output wire  out_conduit_1, // out_conduit_1.conduit
		output wire  out_conduit_2, // out_conduit_2.conduit
		output wire  out_conduit_3  // out_conduit_3.conduit
	);

	atax_en_cfan_avalon_conduit_fanout_10_joescla atax_en_cfan (
		.in_conduit    (in_conduit),    //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (out_conduit_0), //  output,  width = 1, out_conduit_0.conduit
		.out_conduit_1 (out_conduit_1), //  output,  width = 1, out_conduit_1.conduit
		.out_conduit_2 (out_conduit_2), //  output,  width = 1, out_conduit_2.conduit
		.out_conduit_3 (out_conduit_3)  //  output,  width = 1, out_conduit_3.conduit
	);

endmodule
