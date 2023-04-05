// kernel_3mm_ir_cfan.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module kernel_3mm_ir_cfan (
		input  wire  in_conduit,    //    in_conduit.conduit
		output wire  out_conduit_0, // out_conduit_0.conduit
		output wire  out_conduit_1, // out_conduit_1.conduit
		output wire  out_conduit_2, // out_conduit_2.conduit
		output wire  out_conduit_3, // out_conduit_3.conduit
		output wire  out_conduit_4, // out_conduit_4.conduit
		output wire  out_conduit_5, // out_conduit_5.conduit
		output wire  out_conduit_6  // out_conduit_6.conduit
	);

	kernel_3mm_ir_cfan_avalon_conduit_fanout_10_oyd4ioi kernel_3mm_ir_cfan (
		.in_conduit    (in_conduit),    //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (out_conduit_0), //  output,  width = 1, out_conduit_0.conduit
		.out_conduit_1 (out_conduit_1), //  output,  width = 1, out_conduit_1.conduit
		.out_conduit_2 (out_conduit_2), //  output,  width = 1, out_conduit_2.conduit
		.out_conduit_3 (out_conduit_3), //  output,  width = 1, out_conduit_3.conduit
		.out_conduit_4 (out_conduit_4), //  output,  width = 1, out_conduit_4.conduit
		.out_conduit_5 (out_conduit_5), //  output,  width = 1, out_conduit_5.conduit
		.out_conduit_6 (out_conduit_6)  //  output,  width = 1, out_conduit_6.conduit
	);

endmodule
