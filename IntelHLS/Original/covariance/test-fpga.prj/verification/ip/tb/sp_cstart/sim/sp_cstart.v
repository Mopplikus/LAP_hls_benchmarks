// sp_cstart.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module sp_cstart (
		input  wire  in_conduit,    //    in_conduit.conduit
		output wire  out_conduit_0  // out_conduit_0.conduit
	);

	sp_cstart_avalon_split_multibit_conduit_10_dlmo3na sp_cstart (
		.in_conduit    (in_conduit),    //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (out_conduit_0)  //  output,  width = 1, out_conduit_0.conduit
	);

endmodule
