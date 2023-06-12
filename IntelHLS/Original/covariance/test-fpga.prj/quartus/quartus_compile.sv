module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] covariance_start
	, output logic [0:0] covariance_busy
	, output logic [0:0] covariance_done
	, input logic [0:0] covariance_stall
	, input logic [63:0] covariance_data
	, input logic [63:0] covariance_cov
	);

	logic [0:0] covariance_start_reg;
	logic [0:0] covariance_busy_reg;
	logic [0:0] covariance_done_reg;
	logic [0:0] covariance_stall_reg;
	logic [63:0] covariance_data_reg;
	logic [63:0] covariance_cov_reg;


	always @(posedge clock) begin
		covariance_start_reg <= covariance_start;
		covariance_busy <= covariance_busy_reg;
		covariance_done <= covariance_done_reg;
		covariance_stall_reg <= covariance_stall;
		covariance_data_reg <= covariance_data;
		covariance_cov_reg <= covariance_cov;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	covariance covariance_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(covariance_start_reg)
		, .busy(covariance_busy_reg)
		, .done(covariance_done_reg)
		, .stall(covariance_stall_reg)
		, .data(covariance_data_reg)
		, .cov(covariance_cov_reg)
	);



endmodule
