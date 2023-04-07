module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] atax_start
	, output logic [0:0] atax_busy
	, output logic [0:0] atax_done
	, input logic [0:0] atax_stall
	, input logic [63:0] atax_A
	, input logic [63:0] atax_x
	, input logic [63:0] atax_y
	, input logic [63:0] atax_tmp
	);

	logic [0:0] atax_start_reg;
	logic [0:0] atax_busy_reg;
	logic [0:0] atax_done_reg;
	logic [0:0] atax_stall_reg;
	logic [63:0] atax_A_reg;
	logic [63:0] atax_x_reg;
	logic [63:0] atax_y_reg;
	logic [63:0] atax_tmp_reg;


	always @(posedge clock) begin
		atax_start_reg <= atax_start;
		atax_busy <= atax_busy_reg;
		atax_done <= atax_done_reg;
		atax_stall_reg <= atax_stall;
		atax_A_reg <= atax_A;
		atax_x_reg <= atax_x;
		atax_y_reg <= atax_y;
		atax_tmp_reg <= atax_tmp;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	atax atax_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(atax_start_reg)
		, .busy(atax_busy_reg)
		, .done(atax_done_reg)
		, .stall(atax_stall_reg)
		, .A(atax_A_reg)
		, .x(atax_x_reg)
		, .y(atax_y_reg)
		, .tmp(atax_tmp_reg)
	);



endmodule
