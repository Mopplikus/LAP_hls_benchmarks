module sso_if_loop_2_n #(
		parameter COMPONENT_NAME                  = "if_loop_2",
		parameter INTERFACE_NAME                  = "n",
		parameter STREAM_DATAWIDTH                = 32,
		parameter STREAM_BITSPERSYMBOL            = 1,
		parameter EMPTY_WIDTH                     = 0,
		parameter FIRST_SYMBOL_IN_HIGH_ORDER_BITS = 0
	) (
		input  wire        clock,        //              clock.clk
		input  wire        resetn,       //              reset.reset_n
		input  wire        clock2x,      //            clock2x.clk
		input  wire        do_bind,      //   dpi_control_bind.conduit
		input  wire        enable,       // dpi_control_enable.conduit
		output wire [31:0] source_data,  //        source_data.data
		input  wire        source_ready, //       source_ready.conduit
		output wire        source_valid  //             source.conduit
	);
endmodule

