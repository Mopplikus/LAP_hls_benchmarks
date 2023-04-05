// main_dpi_controller.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module main_dpi_controller (
		input  wire       clock,                            //                            clock.clk
		input  wire       resetn,                           //                            reset.reset_n
		input  wire       clock2x,                          //                          clock2x.clk
		output wire [0:0] component_enabled,                //                component_enabled.conduit
		input  wire [0:0] component_done,                   //                   component_done.conduit
		input  wire [0:0] component_wait_for_stream_writes, // component_wait_for_stream_writes.conduit
		output wire       trigger_reset                     //                       reset_ctrl.conduit
	);

	hls_sim_main_dpi_controller #(
		.NUM_COMPONENTS      (1),
		.COMPONENT_NAMES_STR ("fir")
	) main_dpi_controller (
		.clock                            (clock),                            //   input,  width = 1,                            clock.clk
		.resetn                           (resetn),                           //   input,  width = 1,                            reset.reset_n
		.clock2x                          (clock2x),                          //   input,  width = 1,                          clock2x.clk
		.component_enabled                (component_enabled),                //  output,  width = 1,                component_enabled.conduit
		.component_done                   (component_done),                   //   input,  width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (component_wait_for_stream_writes), //   input,  width = 1, component_wait_for_stream_writes.conduit
		.trigger_reset                    (trigger_reset)                     //  output,  width = 1,                       reset_ctrl.conduit
	);

endmodule
