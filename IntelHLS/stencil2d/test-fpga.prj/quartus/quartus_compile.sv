module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] stencil_2d_start
	, output logic [0:0] stencil_2d_busy
	, output logic [0:0] stencil_2d_done
	, input logic [0:0] stencil_2d_stall
	, output logic [31:0] stencil_2d_returndata
	);

	logic [0:0] stencil_2d_start_reg;
	logic [0:0] stencil_2d_busy_reg;
	logic [0:0] stencil_2d_done_reg;
	logic [0:0] stencil_2d_stall_reg;
	logic [31:0] stencil_2d_returndata_reg;


	always @(posedge clock) begin
		stencil_2d_start_reg <= stencil_2d_start;
		stencil_2d_busy <= stencil_2d_busy_reg;
		stencil_2d_done <= stencil_2d_done_reg;
		stencil_2d_stall_reg <= stencil_2d_stall;
		stencil_2d_returndata <= stencil_2d_returndata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	stencil_2d stencil_2d_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(stencil_2d_start_reg)
		, .busy(stencil_2d_busy_reg)
		, .done(stencil_2d_done_reg)
		, .stall(stencil_2d_stall_reg)
		, .returndata(stencil_2d_returndata_reg)
	);



endmodule
