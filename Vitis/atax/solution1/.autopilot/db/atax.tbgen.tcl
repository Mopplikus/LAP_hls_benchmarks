set moduleName atax
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
set C_modelName {atax}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {array 400 { 1 1 } 1 1 }  }
	{ x int 32 regular {array 20 { 1 1 } 1 1 }  }
	{ y int 32 regular {array 20 { 2 2 } 1 1 }  }
	{ tmp int 32 regular {array 20 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 9 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ A_address1 sc_out sc_lv 9 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_q1 sc_in sc_lv 32 signal 0 } 
	{ x_address0 sc_out sc_lv 5 signal 1 } 
	{ x_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_q0 sc_in sc_lv 32 signal 1 } 
	{ x_address1 sc_out sc_lv 5 signal 1 } 
	{ x_ce1 sc_out sc_logic 1 signal 1 } 
	{ x_q1 sc_in sc_lv 32 signal 1 } 
	{ y_address0 sc_out sc_lv 5 signal 2 } 
	{ y_ce0 sc_out sc_logic 1 signal 2 } 
	{ y_we0 sc_out sc_logic 1 signal 2 } 
	{ y_d0 sc_out sc_lv 32 signal 2 } 
	{ y_q0 sc_in sc_lv 32 signal 2 } 
	{ y_address1 sc_out sc_lv 5 signal 2 } 
	{ y_ce1 sc_out sc_logic 1 signal 2 } 
	{ y_we1 sc_out sc_logic 1 signal 2 } 
	{ y_d1 sc_out sc_lv 32 signal 2 } 
	{ y_q1 sc_in sc_lv 32 signal 2 } 
	{ tmp_address0 sc_out sc_lv 5 signal 3 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 3 } 
	{ tmp_we0 sc_out sc_logic 1 signal 3 } 
	{ tmp_d0 sc_out sc_lv 32 signal 3 } 
	{ tmp_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x", "role": "address1" }} , 
 	{ "name": "x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce1" }} , 
 	{ "name": "x_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q1" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "atax",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "493", "EstimateLatencyMax" : "493",
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
					{"ID" : "1", "SubInstance" : "grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255", "Port" : "A", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255", "Port" : "y", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255", "Port" : "tmp", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "atax_Pipeline_VITIS_LOOP_7_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "482", "EstimateLatencyMax" : "482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_19", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_7_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U26", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U27", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U28", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U29", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U30", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U31", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U32", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U33", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U34", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U35", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U36", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U37", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U38", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U39", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.mul_32s_32s_32_1_1_U40", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atax_Pipeline_VITIS_LOOP_7_1_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	atax {
		A {Type I LastRead 10 FirstWrite -1}
		x {Type I LastRead 10 FirstWrite -1}
		y {Type IO LastRead 10 FirstWrite 14}
		tmp {Type IO LastRead 0 FirstWrite 13}}
	atax_Pipeline_VITIS_LOOP_7_1 {
		y {Type IO LastRead 10 FirstWrite 14}
		A {Type I LastRead 10 FirstWrite -1}
		tmp {Type IO LastRead 0 FirstWrite 13}
		x_load {Type I LastRead 0 FirstWrite -1}
		x_load_1 {Type I LastRead 0 FirstWrite -1}
		x_load_2 {Type I LastRead 0 FirstWrite -1}
		x_load_3 {Type I LastRead 0 FirstWrite -1}
		x_load_4 {Type I LastRead 0 FirstWrite -1}
		x_load_5 {Type I LastRead 0 FirstWrite -1}
		x_load_6 {Type I LastRead 0 FirstWrite -1}
		x_load_7 {Type I LastRead 0 FirstWrite -1}
		x_load_8 {Type I LastRead 0 FirstWrite -1}
		x_load_9 {Type I LastRead 0 FirstWrite -1}
		x_load_10 {Type I LastRead 0 FirstWrite -1}
		x_load_11 {Type I LastRead 0 FirstWrite -1}
		x_load_12 {Type I LastRead 0 FirstWrite -1}
		x_load_13 {Type I LastRead 0 FirstWrite -1}
		x_load_14 {Type I LastRead 0 FirstWrite -1}
		x_load_15 {Type I LastRead 0 FirstWrite -1}
		x_load_16 {Type I LastRead 0 FirstWrite -1}
		x_load_17 {Type I LastRead 0 FirstWrite -1}
		x_load_18 {Type I LastRead 0 FirstWrite -1}
		x_load_19 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "493", "Max" : "493"}
	, {"Name" : "Interval", "Min" : "494", "Max" : "494"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 9 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 MemPortADDR2 1 9 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 MemPortDOUT2 0 32 } } }
	x { ap_memory {  { x_address0 mem_address 1 5 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 }  { x_address1 MemPortADDR2 1 5 }  { x_ce1 MemPortCE2 1 1 }  { x_q1 MemPortDOUT2 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 32 }  { y_q0 mem_dout 0 32 }  { y_address1 MemPortADDR2 1 5 }  { y_ce1 MemPortCE2 1 1 }  { y_we1 MemPortWE2 1 1 }  { y_d1 MemPortDIN2 1 32 }  { y_q1 MemPortDOUT2 0 32 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 5 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 1 }  { tmp_d0 mem_din 1 32 }  { tmp_q0 mem_dout 0 32 } } }
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
