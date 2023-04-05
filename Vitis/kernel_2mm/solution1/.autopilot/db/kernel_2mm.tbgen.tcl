set moduleName kernel_2mm
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kernel_2mm}
set C_modelType { int 32 }
set C_modelArgList {
	{ alpha int 32 regular  }
	{ beta int 32 regular  }
	{ tmp int 32 regular {array 100 { 2 1 } 1 1 }  }
	{ A int 32 regular {array 100 { 1 1 } 1 1 }  }
	{ B int 32 regular {array 100 { 1 1 } 1 1 }  }
	{ C int 32 regular {array 100 { 1 1 } 1 1 }  }
	{ D int 32 regular {array 100 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ alpha sc_in sc_lv 32 signal 0 } 
	{ beta sc_in sc_lv 32 signal 1 } 
	{ tmp_address0 sc_out sc_lv 7 signal 2 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmp_we0 sc_out sc_logic 1 signal 2 } 
	{ tmp_d0 sc_out sc_lv 32 signal 2 } 
	{ tmp_q0 sc_in sc_lv 32 signal 2 } 
	{ tmp_address1 sc_out sc_lv 7 signal 2 } 
	{ tmp_ce1 sc_out sc_logic 1 signal 2 } 
	{ tmp_q1 sc_in sc_lv 32 signal 2 } 
	{ A_address0 sc_out sc_lv 7 signal 3 } 
	{ A_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_q0 sc_in sc_lv 32 signal 3 } 
	{ A_address1 sc_out sc_lv 7 signal 3 } 
	{ A_ce1 sc_out sc_logic 1 signal 3 } 
	{ A_q1 sc_in sc_lv 32 signal 3 } 
	{ B_address0 sc_out sc_lv 7 signal 4 } 
	{ B_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_q0 sc_in sc_lv 32 signal 4 } 
	{ B_address1 sc_out sc_lv 7 signal 4 } 
	{ B_ce1 sc_out sc_logic 1 signal 4 } 
	{ B_q1 sc_in sc_lv 32 signal 4 } 
	{ C_address0 sc_out sc_lv 7 signal 5 } 
	{ C_ce0 sc_out sc_logic 1 signal 5 } 
	{ C_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address1 sc_out sc_lv 7 signal 5 } 
	{ C_ce1 sc_out sc_logic 1 signal 5 } 
	{ C_q1 sc_in sc_lv 32 signal 5 } 
	{ D_address0 sc_out sc_lv 7 signal 6 } 
	{ D_ce0 sc_out sc_logic 1 signal 6 } 
	{ D_we0 sc_out sc_logic 1 signal 6 } 
	{ D_d0 sc_out sc_lv 32 signal 6 } 
	{ D_q0 sc_in sc_lv 32 signal 6 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "beta", "role": "default" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }} , 
 	{ "name": "tmp_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tmp", "role": "address1" }} , 
 	{ "name": "tmp_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce1" }} , 
 	{ "name": "tmp_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "q1" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "q1" }} , 
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "we0" }} , 
 	{ "name": "D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "d0" }} , 
 	{ "name": "D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "9"],
		"CDFG" : "kernel_2mm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1012", "EstimateLatencyMax" : "1012",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52", "Port" : "tmp", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64", "Port" : "tmp", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52", "Port" : "A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52", "Port" : "B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64", "Port" : "C", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "D", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64", "Port" : "D", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "505", "EstimateLatencyMax" : "505",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_7_1_VITIS_LOOP_8_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52.mul_32s_32s_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52.mul_32s_32s_32_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52.mul_32s_32s_32_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52.mul_32s_32s_32_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52.mul_32s_32s_32_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52.mul_32s_32s_32_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "504", "EstimateLatencyMax" : "504",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_4_VITIS_LOOP_16_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U12", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U13", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U14", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U15", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U16", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U17", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U18", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.mul_32s_32s_32_1_1_U19", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	kernel_2mm {
		alpha {Type I LastRead 0 FirstWrite -1}
		beta {Type I LastRead 2 FirstWrite -1}
		tmp {Type IO LastRead 5 FirstWrite -1}
		A {Type I LastRead 5 FirstWrite -1}
		B {Type I LastRead 5 FirstWrite -1}
		C {Type I LastRead 5 FirstWrite -1}
		D {Type IO LastRead 0 FirstWrite 7}}
	kernel_2mm_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2 {
		A {Type I LastRead 5 FirstWrite -1}
		tmp {Type IO LastRead 5 FirstWrite 8}
		B {Type I LastRead 5 FirstWrite -1}
		alpha {Type I LastRead 0 FirstWrite -1}}
	kernel_2mm_Pipeline_VITIS_LOOP_15_4_VITIS_LOOP_16_5 {
		tmp {Type I LastRead 5 FirstWrite -1}
		C {Type I LastRead 5 FirstWrite -1}
		D {Type IO LastRead 0 FirstWrite 7}
		beta {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1012", "Max" : "1012"}
	, {"Name" : "Interval", "Min" : "1013", "Max" : "1013"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	alpha { ap_none {  { alpha in_data 0 32 } } }
	beta { ap_none {  { beta in_data 0 32 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 7 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 1 }  { tmp_d0 mem_din 1 32 }  { tmp_q0 mem_dout 0 32 }  { tmp_address1 MemPortADDR2 1 7 }  { tmp_ce1 MemPortCE2 1 1 }  { tmp_q1 MemPortDOUT2 0 32 } } }
	A { ap_memory {  { A_address0 mem_address 1 7 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 MemPortADDR2 1 7 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 MemPortDOUT2 0 32 } } }
	B { ap_memory {  { B_address0 mem_address 1 7 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 32 }  { B_address1 MemPortADDR2 1 7 }  { B_ce1 MemPortCE2 1 1 }  { B_q1 MemPortDOUT2 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 7 }  { C_ce0 mem_ce 1 1 }  { C_q0 mem_dout 0 32 }  { C_address1 MemPortADDR2 1 7 }  { C_ce1 MemPortCE2 1 1 }  { C_q1 MemPortDOUT2 0 32 } } }
	D { ap_memory {  { D_address0 mem_address 1 7 }  { D_ce0 mem_ce 1 1 }  { D_we0 mem_we 1 1 }  { D_d0 mem_din 1 32 }  { D_q0 mem_dout 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
