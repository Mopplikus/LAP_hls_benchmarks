set moduleName covariance
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
set C_modelName {covariance}
set C_modelType { int 32 }
set C_modelArgList {
	{ data int 32 regular {array 1024 { 2 2 } 1 1 }  }
	{ cov int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "cov", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_address0 sc_out sc_lv 10 signal 0 } 
	{ data_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_we0 sc_out sc_logic 1 signal 0 } 
	{ data_d0 sc_out sc_lv 32 signal 0 } 
	{ data_q0 sc_in sc_lv 32 signal 0 } 
	{ data_address1 sc_out sc_lv 10 signal 0 } 
	{ data_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_we1 sc_out sc_logic 1 signal 0 } 
	{ data_d1 sc_out sc_lv 32 signal 0 } 
	{ data_q1 sc_in sc_lv 32 signal 0 } 
	{ cov_address0 sc_out sc_lv 10 signal 1 } 
	{ cov_ce0 sc_out sc_logic 1 signal 1 } 
	{ cov_we0 sc_out sc_logic 1 signal 1 } 
	{ cov_d0 sc_out sc_lv 32 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "we0" }} , 
 	{ "name": "data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "d0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "we1" }} , 
 	{ "name": "data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "d1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "q1" }} , 
 	{ "name": "cov_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cov", "role": "address0" }} , 
 	{ "name": "cov_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cov", "role": "ce0" }} , 
 	{ "name": "cov_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cov", "role": "we0" }} , 
 	{ "name": "cov_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cov", "role": "d0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "covariance",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2292", "EstimateLatencyMax" : "18164",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361", "Port" : "data", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "1", "SubInstance" : "grp_covariance_Pipeline_VITIS_LOOP_5_1_fu_355", "Port" : "data", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cov", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361", "Port" : "cov", "Inst_start_state" : "20", "Inst_end_state" : "21"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_5_1_fu_355", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "covariance_Pipeline_VITIS_LOOP_5_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1042", "EstimateLatencyMax" : "1042",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_5_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage16", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage16_subdone", "QuitState" : "ap_ST_fsm_pp0_stage16", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage16_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_5_1_fu_355.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "covariance_Pipeline_VITIS_LOOP_17_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln16_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cov", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_load_94", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U2", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U3", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U4", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U5", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U6", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U7", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U8", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U9", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U10", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U11", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U12", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U13", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U14", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U15", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U16", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U17", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U18", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U19", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U20", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U21", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U22", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U23", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U24", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U25", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U26", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U27", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U28", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U29", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U30", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U31", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U32", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.mul_31s_31s_31_1_1_U33", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_covariance_Pipeline_VITIS_LOOP_17_5_fu_361.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	covariance {
		data {Type IO LastRead 18 FirstWrite -1}
		cov {Type O LastRead -1 FirstWrite 18}}
	covariance_Pipeline_VITIS_LOOP_5_1 {
		data {Type IO LastRead 16 FirstWrite 17}}
	covariance_Pipeline_VITIS_LOOP_17_5 {
		zext_ln16_1 {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 16 FirstWrite -1}
		zext_ln22 {Type I LastRead 0 FirstWrite -1}
		cov {Type O LastRead -1 FirstWrite 18}
		data_load_32 {Type I LastRead 0 FirstWrite -1}
		data_load_34 {Type I LastRead 0 FirstWrite -1}
		data_load_36 {Type I LastRead 0 FirstWrite -1}
		data_load_38 {Type I LastRead 0 FirstWrite -1}
		data_load_40 {Type I LastRead 0 FirstWrite -1}
		data_load_42 {Type I LastRead 0 FirstWrite -1}
		data_load_44 {Type I LastRead 0 FirstWrite -1}
		data_load_46 {Type I LastRead 0 FirstWrite -1}
		data_load_48 {Type I LastRead 0 FirstWrite -1}
		data_load_50 {Type I LastRead 0 FirstWrite -1}
		data_load_52 {Type I LastRead 0 FirstWrite -1}
		data_load_54 {Type I LastRead 0 FirstWrite -1}
		data_load_56 {Type I LastRead 0 FirstWrite -1}
		data_load_58 {Type I LastRead 0 FirstWrite -1}
		data_load_60 {Type I LastRead 0 FirstWrite -1}
		data_load_62 {Type I LastRead 0 FirstWrite -1}
		data_load_64 {Type I LastRead 0 FirstWrite -1}
		data_load_66 {Type I LastRead 0 FirstWrite -1}
		data_load_68 {Type I LastRead 0 FirstWrite -1}
		data_load_70 {Type I LastRead 0 FirstWrite -1}
		data_load_72 {Type I LastRead 0 FirstWrite -1}
		data_load_74 {Type I LastRead 0 FirstWrite -1}
		data_load_76 {Type I LastRead 0 FirstWrite -1}
		data_load_78 {Type I LastRead 0 FirstWrite -1}
		data_load_80 {Type I LastRead 0 FirstWrite -1}
		data_load_82 {Type I LastRead 0 FirstWrite -1}
		data_load_84 {Type I LastRead 0 FirstWrite -1}
		data_load_86 {Type I LastRead 0 FirstWrite -1}
		data_load_88 {Type I LastRead 0 FirstWrite -1}
		data_load_90 {Type I LastRead 0 FirstWrite -1}
		data_load_92 {Type I LastRead 0 FirstWrite -1}
		data_load_94 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2292", "Max" : "18164"}
	, {"Name" : "Interval", "Min" : "2293", "Max" : "18165"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data { ap_memory {  { data_address0 mem_address 1 10 }  { data_ce0 mem_ce 1 1 }  { data_we0 mem_we 1 1 }  { data_d0 mem_din 1 32 }  { data_q0 in_data 0 32 }  { data_address1 MemPortADDR2 1 10 }  { data_ce1 MemPortCE2 1 1 }  { data_we1 MemPortWE2 1 1 }  { data_d1 MemPortDIN2 1 32 }  { data_q1 in_data 0 32 } } }
	cov { ap_memory {  { cov_address0 mem_address 1 10 }  { cov_ce0 mem_ce 1 1 }  { cov_we0 mem_we 1 1 }  { cov_d0 mem_din 1 32 } } }
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
