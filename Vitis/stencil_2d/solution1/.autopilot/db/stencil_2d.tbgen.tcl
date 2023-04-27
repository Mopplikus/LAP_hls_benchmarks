set moduleName stencil_2d
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
set C_modelName {stencil_2d}
set C_modelType { int 32 }
set C_modelArgList {
	{ orig int 32 regular {array 900 { 1 1 } 1 1 }  }
	{ sol int 32 regular {array 900 { 0 3 } 0 1 }  }
	{ filter int 32 regular {array 10 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "orig", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sol", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "filter", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ orig_address0 sc_out sc_lv 10 signal 0 } 
	{ orig_ce0 sc_out sc_logic 1 signal 0 } 
	{ orig_q0 sc_in sc_lv 32 signal 0 } 
	{ orig_address1 sc_out sc_lv 10 signal 0 } 
	{ orig_ce1 sc_out sc_logic 1 signal 0 } 
	{ orig_q1 sc_in sc_lv 32 signal 0 } 
	{ sol_address0 sc_out sc_lv 10 signal 1 } 
	{ sol_ce0 sc_out sc_logic 1 signal 1 } 
	{ sol_we0 sc_out sc_logic 1 signal 1 } 
	{ sol_d0 sc_out sc_lv 32 signal 1 } 
	{ filter_address0 sc_out sc_lv 4 signal 2 } 
	{ filter_ce0 sc_out sc_logic 1 signal 2 } 
	{ filter_q0 sc_in sc_lv 32 signal 2 } 
	{ filter_address1 sc_out sc_lv 4 signal 2 } 
	{ filter_ce1 sc_out sc_logic 1 signal 2 } 
	{ filter_q1 sc_in sc_lv 32 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "orig_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "orig", "role": "address0" }} , 
 	{ "name": "orig_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "ce0" }} , 
 	{ "name": "orig_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "orig", "role": "q0" }} , 
 	{ "name": "orig_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "orig", "role": "address1" }} , 
 	{ "name": "orig_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "ce1" }} , 
 	{ "name": "orig_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "orig", "role": "q1" }} , 
 	{ "name": "sol_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sol", "role": "address0" }} , 
 	{ "name": "sol_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "ce0" }} , 
 	{ "name": "sol_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "we0" }} , 
 	{ "name": "sol_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sol", "role": "d0" }} , 
 	{ "name": "filter_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "filter", "role": "address0" }} , 
 	{ "name": "filter_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter", "role": "ce0" }} , 
 	{ "name": "filter_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter", "role": "q0" }} , 
 	{ "name": "filter_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "filter", "role": "address1" }} , 
 	{ "name": "filter_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter", "role": "ce1" }} , 
 	{ "name": "filter_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "stencil_2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3939", "EstimateLatencyMax" : "3939",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136", "Port" : "orig", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136", "Port" : "sol", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "filter", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3932", "EstimateLatencyMax" : "3932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "filter_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "add21_lcssa_lcssa_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_7_1_VITIS_LOOP_8_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.mul_32s_32s_32_5_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	stencil_2d {
		orig {Type I LastRead 7 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 15}
		filter {Type I LastRead 5 FirstWrite -1}}
	stencil_2d_Pipeline_VITIS_LOOP_7_1_VITIS_LOOP_8_2 {
		orig {Type I LastRead 7 FirstWrite -1}
		filter_load {Type I LastRead 0 FirstWrite -1}
		filter_load_1 {Type I LastRead 0 FirstWrite -1}
		filter_load_2 {Type I LastRead 0 FirstWrite -1}
		filter_load_3 {Type I LastRead 0 FirstWrite -1}
		filter_load_4 {Type I LastRead 0 FirstWrite -1}
		filter_load_5 {Type I LastRead 0 FirstWrite -1}
		filter_load_6 {Type I LastRead 0 FirstWrite -1}
		filter_load_7 {Type I LastRead 0 FirstWrite -1}
		filter_load_8 {Type I LastRead 0 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 15}
		add21_lcssa_lcssa_phi_out {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3939", "Max" : "3939"}
	, {"Name" : "Interval", "Min" : "3940", "Max" : "3940"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	orig { ap_memory {  { orig_address0 mem_address 1 10 }  { orig_ce0 mem_ce 1 1 }  { orig_q0 mem_dout 0 32 }  { orig_address1 MemPortADDR2 1 10 }  { orig_ce1 MemPortCE2 1 1 }  { orig_q1 MemPortDOUT2 0 32 } } }
	sol { ap_memory {  { sol_address0 mem_address 1 10 }  { sol_ce0 mem_ce 1 1 }  { sol_we0 mem_we 1 1 }  { sol_d0 mem_din 1 32 } } }
	filter { ap_memory {  { filter_address0 mem_address 1 4 }  { filter_ce0 mem_ce 1 1 }  { filter_q0 mem_dout 0 32 }  { filter_address1 MemPortADDR2 1 4 }  { filter_ce1 MemPortCE2 1 1 }  { filter_q1 MemPortDOUT2 0 32 } } }
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
