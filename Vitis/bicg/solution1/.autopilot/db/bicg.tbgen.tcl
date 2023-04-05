set moduleName bicg
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
set C_modelName {bicg}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {array 900 { 1 1 } 1 1 }  }
	{ s int 32 regular {array 30 { 2 2 } 1 1 }  }
	{ q int 32 regular {array 30 { 2 3 } 1 1 }  }
	{ p int 32 regular {array 30 { 1 1 } 1 1 }  }
	{ r int 32 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "q", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 10 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ A_address1 sc_out sc_lv 10 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_q1 sc_in sc_lv 32 signal 0 } 
	{ s_address0 sc_out sc_lv 5 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ s_q0 sc_in sc_lv 32 signal 1 } 
	{ s_address1 sc_out sc_lv 5 signal 1 } 
	{ s_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_we1 sc_out sc_logic 1 signal 1 } 
	{ s_d1 sc_out sc_lv 32 signal 1 } 
	{ s_q1 sc_in sc_lv 32 signal 1 } 
	{ q_address0 sc_out sc_lv 5 signal 2 } 
	{ q_ce0 sc_out sc_logic 1 signal 2 } 
	{ q_we0 sc_out sc_logic 1 signal 2 } 
	{ q_d0 sc_out sc_lv 32 signal 2 } 
	{ q_q0 sc_in sc_lv 32 signal 2 } 
	{ p_address0 sc_out sc_lv 5 signal 3 } 
	{ p_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_q0 sc_in sc_lv 32 signal 3 } 
	{ p_address1 sc_out sc_lv 5 signal 3 } 
	{ p_ce1 sc_out sc_logic 1 signal 3 } 
	{ p_q1 sc_in sc_lv 32 signal 3 } 
	{ r_address0 sc_out sc_lv 5 signal 4 } 
	{ r_ce0 sc_out sc_logic 1 signal 4 } 
	{ r_q0 sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "q0" }} , 
 	{ "name": "s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address1" }} , 
 	{ "name": "s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce1" }} , 
 	{ "name": "s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we1" }} , 
 	{ "name": "s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d1" }} , 
 	{ "name": "s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "q1" }} , 
 	{ "name": "q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "q", "role": "address0" }} , 
 	{ "name": "q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce0" }} , 
 	{ "name": "q_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "we0" }} , 
 	{ "name": "q_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "d0" }} , 
 	{ "name": "q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "q0" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r", "role": "address0" }} , 
 	{ "name": "r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce0" }} , 
 	{ "name": "r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "bicg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "918", "EstimateLatencyMax" : "918",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367", "Port" : "A", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367", "Port" : "s", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367", "Port" : "q", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367", "Port" : "r", "Inst_start_state" : "16", "Inst_end_state" : "17"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "bicg_Pipeline_VITIS_LOOP_9_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "902", "EstimateLatencyMax" : "902",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_load_29", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U26", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U27", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U28", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U29", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U30", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U31", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U32", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U33", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U34", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U35", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U36", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U37", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U38", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U39", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U40", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U41", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U42", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.mul_32s_32s_32_1_1_U43", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_VITIS_LOOP_9_1_fu_367.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	bicg {
		A {Type I LastRead 15 FirstWrite -1}
		s {Type IO LastRead 15 FirstWrite 15}
		q {Type IO LastRead 0 FirstWrite 22}
		p {Type I LastRead 15 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}}
	bicg_Pipeline_VITIS_LOOP_9_1 {
		s {Type IO LastRead 15 FirstWrite 15}
		A {Type I LastRead 15 FirstWrite -1}
		q {Type IO LastRead 0 FirstWrite 22}
		r {Type I LastRead 0 FirstWrite -1}
		p_load {Type I LastRead 0 FirstWrite -1}
		p_load_1 {Type I LastRead 0 FirstWrite -1}
		p_load_2 {Type I LastRead 0 FirstWrite -1}
		p_load_3 {Type I LastRead 0 FirstWrite -1}
		p_load_4 {Type I LastRead 0 FirstWrite -1}
		p_load_5 {Type I LastRead 0 FirstWrite -1}
		p_load_6 {Type I LastRead 0 FirstWrite -1}
		p_load_7 {Type I LastRead 0 FirstWrite -1}
		p_load_8 {Type I LastRead 0 FirstWrite -1}
		p_load_9 {Type I LastRead 0 FirstWrite -1}
		p_load_10 {Type I LastRead 0 FirstWrite -1}
		p_load_11 {Type I LastRead 0 FirstWrite -1}
		p_load_12 {Type I LastRead 0 FirstWrite -1}
		p_load_13 {Type I LastRead 0 FirstWrite -1}
		p_load_14 {Type I LastRead 0 FirstWrite -1}
		p_load_15 {Type I LastRead 0 FirstWrite -1}
		p_load_16 {Type I LastRead 0 FirstWrite -1}
		p_load_17 {Type I LastRead 0 FirstWrite -1}
		p_load_18 {Type I LastRead 0 FirstWrite -1}
		p_load_19 {Type I LastRead 0 FirstWrite -1}
		p_load_20 {Type I LastRead 0 FirstWrite -1}
		p_load_21 {Type I LastRead 0 FirstWrite -1}
		p_load_22 {Type I LastRead 0 FirstWrite -1}
		p_load_23 {Type I LastRead 0 FirstWrite -1}
		p_load_24 {Type I LastRead 0 FirstWrite -1}
		p_load_25 {Type I LastRead 0 FirstWrite -1}
		p_load_26 {Type I LastRead 0 FirstWrite -1}
		p_load_27 {Type I LastRead 0 FirstWrite -1}
		p_load_28 {Type I LastRead 0 FirstWrite -1}
		p_load_29 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "918", "Max" : "918"}
	, {"Name" : "Interval", "Min" : "919", "Max" : "919"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 MemPortADDR2 1 10 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 MemPortDOUT2 0 32 } } }
	s { ap_memory {  { s_address0 mem_address 1 5 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 }  { s_q0 mem_dout 0 32 }  { s_address1 MemPortADDR2 1 5 }  { s_ce1 MemPortCE2 1 1 }  { s_we1 MemPortWE2 1 1 }  { s_d1 MemPortDIN2 1 32 }  { s_q1 MemPortDOUT2 0 32 } } }
	q { ap_memory {  { q_address0 mem_address 1 5 }  { q_ce0 mem_ce 1 1 }  { q_we0 mem_we 1 1 }  { q_d0 mem_din 1 32 }  { q_q0 mem_dout 0 32 } } }
	p { ap_memory {  { p_address0 mem_address 1 5 }  { p_ce0 mem_ce 1 1 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 5 }  { p_ce1 MemPortCE2 1 1 }  { p_q1 MemPortDOUT2 0 32 } } }
	r { ap_memory {  { r_address0 mem_address 1 5 }  { r_ce0 mem_ce 1 1 }  { r_q0 mem_dout 0 32 } } }
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
