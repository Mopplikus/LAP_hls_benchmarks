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
	, output logic [31:0] fir_avmm_1_rw_address
	, output logic [3:0] fir_avmm_1_rw_byteenable
	, output logic [0:0] fir_avmm_1_rw_read
	, input logic [31:0] fir_avmm_1_rw_readdata
	, output logic [0:0] fir_avmm_1_rw_write
	, output logic [31:0] fir_avmm_1_rw_writedata
	);

	logic [0:0] fir_start_reg;
	logic [0:0] fir_busy_reg;
	logic [0:0] fir_done_reg;
	logic [0:0] fir_stall_reg;
	logic [31:0] fir_returndata_reg;
	logic [63:0] fir_d_i_reg;
	logic [63:0] fir_idx_reg;
	logic [31:0] fir_avmm_1_rw_address_reg;
	logic [3:0] fir_avmm_1_rw_byteenable_reg;
	logic [0:0] fir_avmm_1_rw_read_reg;
	logic [31:0] fir_avmm_1_rw_readdata_reg;
	logic [0:0] fir_avmm_1_rw_write_reg;
	logic [31:0] fir_avmm_1_rw_writedata_reg;


	always @(posedge clock) begin
		fir_start_reg <= fir_start;
		fir_busy <= fir_busy_reg;
		fir_done <= fir_done_reg;
		fir_stall_reg <= fir_stall;
		fir_returndata <= fir_returndata_reg;
		fir_d_i_reg <= fir_d_i;
		fir_idx_reg <= fir_idx;
		fir_avmm_1_rw_address <= fir_avmm_1_rw_address_reg;
		fir_avmm_1_rw_byteenable <= fir_avmm_1_rw_byteenable_reg;
		fir_avmm_1_rw_read <= fir_avmm_1_rw_read_reg;
		fir_avmm_1_rw_readdata_reg <= fir_avmm_1_rw_readdata;
		fir_avmm_1_rw_write <= fir_avmm_1_rw_write_reg;
		fir_avmm_1_rw_writedata <= fir_avmm_1_rw_writedata_reg;
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
		, .avmm_1_rw_address(fir_avmm_1_rw_address_reg)
		, .avmm_1_rw_byteenable(fir_avmm_1_rw_byteenable_reg)
		, .avmm_1_rw_read(fir_avmm_1_rw_read_reg)
		, .avmm_1_rw_readdata(fir_avmm_1_rw_readdata_reg)
		, .avmm_1_rw_write(fir_avmm_1_rw_write_reg)
		, .avmm_1_rw_writedata(fir_avmm_1_rw_writedata_reg)
	);



endmodule
