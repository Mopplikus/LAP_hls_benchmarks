module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] fir_start
	, output logic [0:0] fir_busy
	, output logic [0:0] fir_done
	, input logic [0:0] fir_stall
	, output logic [31:0] fir_returndata
	, input logic [63:0] fir_d_i
	, input logic [63:0] fir_idx
	);

	logic [0:0] fir_start_reg;
	logic [0:0] fir_busy_reg;
	logic [0:0] fir_done_reg;
	logic [0:0] fir_stall_reg;
	logic [31:0] fir_returndata_reg;
	logic [63:0] fir_d_i_reg;
	logic [63:0] fir_idx_reg;


	always @(posedge clock) begin
		fir_start_reg <= fir_start;
		fir_busy <= fir_busy_reg;
		fir_done <= fir_done_reg;
		fir_stall_reg <= fir_stall;
		fir_returndata <= fir_returndata_reg;
		fir_d_i_reg <= fir_d_i;
		fir_idx_reg <= fir_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	fir fir_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(fir_start_reg)
		, .busy(fir_busy_reg)
		, .done(fir_done_reg)
		, .stall(fir_stall_reg)
		, .returndata(fir_returndata_reg)
		, .d_i(fir_d_i_reg)
		, .idx(fir_idx_reg)
	);



endmodule
