module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] bicg_start
	, output logic [0:0] bicg_busy
	, output logic [0:0] bicg_done
	, input logic [0:0] bicg_stall
	, input logic [63:0] bicg_A
	, input logic [63:0] bicg_s
	, input logic [63:0] bicg_q
	, input logic [63:0] bicg_p
	, input logic [63:0] bicg_r
	, output logic [31:0] bicg_avmm_1_rw_address
	, output logic [3:0] bicg_avmm_1_rw_byteenable
	, output logic [0:0] bicg_avmm_1_rw_read
	, input logic [31:0] bicg_avmm_1_rw_readdata
	, output logic [0:0] bicg_avmm_1_rw_write
	, output logic [31:0] bicg_avmm_1_rw_writedata
	);

	logic [0:0] bicg_start_reg;
	logic [0:0] bicg_busy_reg;
	logic [0:0] bicg_done_reg;
	logic [0:0] bicg_stall_reg;
	logic [63:0] bicg_A_reg;
	logic [63:0] bicg_s_reg;
	logic [63:0] bicg_q_reg;
	logic [63:0] bicg_p_reg;
	logic [63:0] bicg_r_reg;
	logic [31:0] bicg_avmm_1_rw_address_reg;
	logic [3:0] bicg_avmm_1_rw_byteenable_reg;
	logic [0:0] bicg_avmm_1_rw_read_reg;
	logic [31:0] bicg_avmm_1_rw_readdata_reg;
	logic [0:0] bicg_avmm_1_rw_write_reg;
	logic [31:0] bicg_avmm_1_rw_writedata_reg;


	always @(posedge clock) begin
		bicg_start_reg <= bicg_start;
		bicg_busy <= bicg_busy_reg;
		bicg_done <= bicg_done_reg;
		bicg_stall_reg <= bicg_stall;
		bicg_A_reg <= bicg_A;
		bicg_s_reg <= bicg_s;
		bicg_q_reg <= bicg_q;
		bicg_p_reg <= bicg_p;
		bicg_r_reg <= bicg_r;
		bicg_avmm_1_rw_address <= bicg_avmm_1_rw_address_reg;
		bicg_avmm_1_rw_byteenable <= bicg_avmm_1_rw_byteenable_reg;
		bicg_avmm_1_rw_read <= bicg_avmm_1_rw_read_reg;
		bicg_avmm_1_rw_readdata_reg <= bicg_avmm_1_rw_readdata;
		bicg_avmm_1_rw_write <= bicg_avmm_1_rw_write_reg;
		bicg_avmm_1_rw_writedata <= bicg_avmm_1_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	bicg bicg_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(bicg_start_reg)
		, .busy(bicg_busy_reg)
		, .done(bicg_done_reg)
		, .stall(bicg_stall_reg)
		, .A(bicg_A_reg)
		, .s(bicg_s_reg)
		, .q(bicg_q_reg)
		, .p(bicg_p_reg)
		, .r(bicg_r_reg)
		, .avmm_1_rw_address(bicg_avmm_1_rw_address_reg)
		, .avmm_1_rw_byteenable(bicg_avmm_1_rw_byteenable_reg)
		, .avmm_1_rw_read(bicg_avmm_1_rw_read_reg)
		, .avmm_1_rw_readdata(bicg_avmm_1_rw_readdata_reg)
		, .avmm_1_rw_write(bicg_avmm_1_rw_write_reg)
		, .avmm_1_rw_writedata(bicg_avmm_1_rw_writedata_reg)
	);



endmodule
