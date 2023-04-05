module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] getTanh_start
	, output logic [0:0] getTanh_busy
	, output logic [0:0] getTanh_done
	, input logic [0:0] getTanh_stall
	, output logic [31:0] getTanh_returndata
	);

	logic [0:0] getTanh_start_reg;
	logic [0:0] getTanh_busy_reg;
	logic [0:0] getTanh_done_reg;
	logic [0:0] getTanh_stall_reg;
	logic [31:0] getTanh_returndata_reg;


	always @(posedge clock) begin
		getTanh_start_reg <= getTanh_start;
		getTanh_busy <= getTanh_busy_reg;
		getTanh_done <= getTanh_done_reg;
		getTanh_stall_reg <= getTanh_stall;
		getTanh_returndata <= getTanh_returndata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	getTanh getTanh_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(getTanh_start_reg)
		, .busy(getTanh_busy_reg)
		, .done(getTanh_done_reg)
		, .stall(getTanh_stall_reg)
		, .returndata(getTanh_returndata_reg)
	);



endmodule
