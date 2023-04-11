module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] gaussian_start
	, output logic [0:0] gaussian_busy
	, output logic [0:0] gaussian_done
	, input logic [0:0] gaussian_stall
	, input logic [63:0] gaussian_A_r
	);

	logic [0:0] gaussian_start_reg;
	logic [0:0] gaussian_busy_reg;
	logic [0:0] gaussian_done_reg;
	logic [0:0] gaussian_stall_reg;
	logic [63:0] gaussian_A_r_reg;


	always @(posedge clock) begin
		gaussian_start_reg <= gaussian_start;
		gaussian_busy <= gaussian_busy_reg;
		gaussian_done <= gaussian_done_reg;
		gaussian_stall_reg <= gaussian_stall;
		gaussian_A_r_reg <= gaussian_A_r;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	gaussian gaussian_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(gaussian_start_reg)
		, .busy(gaussian_busy_reg)
		, .done(gaussian_done_reg)
		, .stall(gaussian_stall_reg)
		, .A_r(gaussian_A_r_reg)
	);



endmodule
