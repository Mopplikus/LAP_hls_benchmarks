set moduleName bicg_Pipeline_VITIS_LOOP_16_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {bicg_Pipeline_VITIS_LOOP_16_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ s int 32 regular {array 30 { 2 2 } 1 1 }  }
	{ A int 32 regular {array 900 { 1 1 } 1 1 }  }
	{ q int 32 regular {array 30 { 2 3 } 1 1 }  }
	{ r int 32 regular {array 30 { 1 3 } 1 1 }  }
	{ p_load int 32 regular  }
	{ p_load_1 int 32 regular  }
	{ p_load_2 int 32 regular  }
	{ p_load_3 int 32 regular  }
	{ p_load_4 int 32 regular  }
	{ p_load_5 int 32 regular  }
	{ p_load_6 int 32 regular  }
	{ p_load_7 int 32 regular  }
	{ p_load_8 int 32 regular  }
	{ p_load_9 int 32 regular  }
	{ p_load_10 int 32 regular  }
	{ p_load_11 int 32 regular  }
	{ p_load_12 int 32 regular  }
	{ p_load_13 int 32 regular  }
	{ p_load_14 int 32 regular  }
	{ p_load_15 int 32 regular  }
	{ p_load_16 int 32 regular  }
	{ p_load_17 int 32 regular  }
	{ p_load_18 int 32 regular  }
	{ p_load_19 int 32 regular  }
	{ p_load_20 int 32 regular  }
	{ p_load_21 int 32 regular  }
	{ p_load_22 int 32 regular  }
	{ p_load_23 int 32 regular  }
	{ p_load_24 int 32 regular  }
	{ p_load_25 int 32 regular  }
	{ p_load_26 int 32 regular  }
	{ p_load_27 int 32 regular  }
	{ p_load_28 int 32 regular  }
	{ p_load_29 int 32 regular  }
	{ add17_lcssa_phi_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "q", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_load_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add17_lcssa_phi_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_address0 sc_out sc_lv 5 signal 0 } 
	{ s_ce0 sc_out sc_logic 1 signal 0 } 
	{ s_we0 sc_out sc_logic 1 signal 0 } 
	{ s_d0 sc_out sc_lv 32 signal 0 } 
	{ s_q0 sc_in sc_lv 32 signal 0 } 
	{ s_address1 sc_out sc_lv 5 signal 0 } 
	{ s_ce1 sc_out sc_logic 1 signal 0 } 
	{ s_we1 sc_out sc_logic 1 signal 0 } 
	{ s_d1 sc_out sc_lv 32 signal 0 } 
	{ s_q1 sc_in sc_lv 32 signal 0 } 
	{ A_address0 sc_out sc_lv 10 signal 1 } 
	{ A_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_q0 sc_in sc_lv 32 signal 1 } 
	{ A_address1 sc_out sc_lv 10 signal 1 } 
	{ A_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_q1 sc_in sc_lv 32 signal 1 } 
	{ q_address0 sc_out sc_lv 5 signal 2 } 
	{ q_ce0 sc_out sc_logic 1 signal 2 } 
	{ q_we0 sc_out sc_logic 1 signal 2 } 
	{ q_d0 sc_out sc_lv 32 signal 2 } 
	{ q_q0 sc_in sc_lv 32 signal 2 } 
	{ r_address0 sc_out sc_lv 5 signal 3 } 
	{ r_ce0 sc_out sc_logic 1 signal 3 } 
	{ r_q0 sc_in sc_lv 32 signal 3 } 
	{ p_load sc_in sc_lv 32 signal 4 } 
	{ p_load_1 sc_in sc_lv 32 signal 5 } 
	{ p_load_2 sc_in sc_lv 32 signal 6 } 
	{ p_load_3 sc_in sc_lv 32 signal 7 } 
	{ p_load_4 sc_in sc_lv 32 signal 8 } 
	{ p_load_5 sc_in sc_lv 32 signal 9 } 
	{ p_load_6 sc_in sc_lv 32 signal 10 } 
	{ p_load_7 sc_in sc_lv 32 signal 11 } 
	{ p_load_8 sc_in sc_lv 32 signal 12 } 
	{ p_load_9 sc_in sc_lv 32 signal 13 } 
	{ p_load_10 sc_in sc_lv 32 signal 14 } 
	{ p_load_11 sc_in sc_lv 32 signal 15 } 
	{ p_load_12 sc_in sc_lv 32 signal 16 } 
	{ p_load_13 sc_in sc_lv 32 signal 17 } 
	{ p_load_14 sc_in sc_lv 32 signal 18 } 
	{ p_load_15 sc_in sc_lv 32 signal 19 } 
	{ p_load_16 sc_in sc_lv 32 signal 20 } 
	{ p_load_17 sc_in sc_lv 32 signal 21 } 
	{ p_load_18 sc_in sc_lv 32 signal 22 } 
	{ p_load_19 sc_in sc_lv 32 signal 23 } 
	{ p_load_20 sc_in sc_lv 32 signal 24 } 
	{ p_load_21 sc_in sc_lv 32 signal 25 } 
	{ p_load_22 sc_in sc_lv 32 signal 26 } 
	{ p_load_23 sc_in sc_lv 32 signal 27 } 
	{ p_load_24 sc_in sc_lv 32 signal 28 } 
	{ p_load_25 sc_in sc_lv 32 signal 29 } 
	{ p_load_26 sc_in sc_lv 32 signal 30 } 
	{ p_load_27 sc_in sc_lv 32 signal 31 } 
	{ p_load_28 sc_in sc_lv 32 signal 32 } 
	{ p_load_29 sc_in sc_lv 32 signal 33 } 
	{ add17_lcssa_phi_out sc_out sc_lv 32 signal 34 } 
	{ add17_lcssa_phi_out_ap_vld sc_out sc_logic 1 outvld 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "q", "role": "address0" }} , 
 	{ "name": "q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce0" }} , 
 	{ "name": "q_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "we0" }} , 
 	{ "name": "q_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "d0" }} , 
 	{ "name": "q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "q0" }} , 
 	{ "name": "r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r", "role": "address0" }} , 
 	{ "name": "r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce0" }} , 
 	{ "name": "r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "q0" }} , 
 	{ "name": "p_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load", "role": "default" }} , 
 	{ "name": "p_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_1", "role": "default" }} , 
 	{ "name": "p_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_2", "role": "default" }} , 
 	{ "name": "p_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_3", "role": "default" }} , 
 	{ "name": "p_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_4", "role": "default" }} , 
 	{ "name": "p_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_5", "role": "default" }} , 
 	{ "name": "p_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_6", "role": "default" }} , 
 	{ "name": "p_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_7", "role": "default" }} , 
 	{ "name": "p_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_8", "role": "default" }} , 
 	{ "name": "p_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_9", "role": "default" }} , 
 	{ "name": "p_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_10", "role": "default" }} , 
 	{ "name": "p_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_11", "role": "default" }} , 
 	{ "name": "p_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_12", "role": "default" }} , 
 	{ "name": "p_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_13", "role": "default" }} , 
 	{ "name": "p_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_14", "role": "default" }} , 
 	{ "name": "p_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_15", "role": "default" }} , 
 	{ "name": "p_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_16", "role": "default" }} , 
 	{ "name": "p_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_17", "role": "default" }} , 
 	{ "name": "p_load_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_18", "role": "default" }} , 
 	{ "name": "p_load_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_19", "role": "default" }} , 
 	{ "name": "p_load_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_20", "role": "default" }} , 
 	{ "name": "p_load_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_21", "role": "default" }} , 
 	{ "name": "p_load_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_22", "role": "default" }} , 
 	{ "name": "p_load_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_23", "role": "default" }} , 
 	{ "name": "p_load_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_24", "role": "default" }} , 
 	{ "name": "p_load_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_25", "role": "default" }} , 
 	{ "name": "p_load_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_26", "role": "default" }} , 
 	{ "name": "p_load_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_27", "role": "default" }} , 
 	{ "name": "p_load_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_28", "role": "default" }} , 
 	{ "name": "p_load_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_load_29", "role": "default" }} , 
 	{ "name": "add17_lcssa_phi_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add17_lcssa_phi_out", "role": "default" }} , 
 	{ "name": "add17_lcssa_phi_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add17_lcssa_phi_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "bicg_Pipeline_VITIS_LOOP_16_1",
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
			{"Name" : "p_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_lcssa_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U36", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U37", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U38", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U39", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U40", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bicg_Pipeline_VITIS_LOOP_16_1 {
		s {Type IO LastRead 15 FirstWrite 15}
		A {Type I LastRead 16 FirstWrite -1}
		q {Type IO LastRead 0 FirstWrite 25}
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
		p_load_29 {Type I LastRead 0 FirstWrite -1}
		add17_lcssa_phi_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "902", "Max" : "902"}
	, {"Name" : "Interval", "Min" : "902", "Max" : "902"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s { ap_memory {  { s_address0 mem_address 1 5 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 }  { s_q0 in_data 0 32 }  { s_address1 MemPortADDR2 1 5 }  { s_ce1 MemPortCE2 1 1 }  { s_we1 MemPortWE2 1 1 }  { s_d1 MemPortDIN2 1 32 }  { s_q1 MemPortDOUT2 0 32 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 MemPortADDR2 1 10 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 MemPortDOUT2 0 32 } } }
	q { ap_memory {  { q_address0 mem_address 1 5 }  { q_ce0 mem_ce 1 1 }  { q_we0 mem_we 1 1 }  { q_d0 mem_din 1 32 }  { q_q0 mem_dout 0 32 } } }
	r { ap_memory {  { r_address0 mem_address 1 5 }  { r_ce0 mem_ce 1 1 }  { r_q0 mem_dout 0 32 } } }
	p_load { ap_none {  { p_load in_data 0 32 } } }
	p_load_1 { ap_none {  { p_load_1 in_data 0 32 } } }
	p_load_2 { ap_none {  { p_load_2 in_data 0 32 } } }
	p_load_3 { ap_none {  { p_load_3 in_data 0 32 } } }
	p_load_4 { ap_none {  { p_load_4 in_data 0 32 } } }
	p_load_5 { ap_none {  { p_load_5 in_data 0 32 } } }
	p_load_6 { ap_none {  { p_load_6 in_data 0 32 } } }
	p_load_7 { ap_none {  { p_load_7 in_data 0 32 } } }
	p_load_8 { ap_none {  { p_load_8 in_data 0 32 } } }
	p_load_9 { ap_none {  { p_load_9 in_data 0 32 } } }
	p_load_10 { ap_none {  { p_load_10 in_data 0 32 } } }
	p_load_11 { ap_none {  { p_load_11 in_data 0 32 } } }
	p_load_12 { ap_none {  { p_load_12 in_data 0 32 } } }
	p_load_13 { ap_none {  { p_load_13 in_data 0 32 } } }
	p_load_14 { ap_none {  { p_load_14 in_data 0 32 } } }
	p_load_15 { ap_none {  { p_load_15 in_data 0 32 } } }
	p_load_16 { ap_none {  { p_load_16 in_data 0 32 } } }
	p_load_17 { ap_none {  { p_load_17 in_data 0 32 } } }
	p_load_18 { ap_none {  { p_load_18 in_data 0 32 } } }
	p_load_19 { ap_none {  { p_load_19 in_data 0 32 } } }
	p_load_20 { ap_none {  { p_load_20 in_data 0 32 } } }
	p_load_21 { ap_none {  { p_load_21 in_data 0 32 } } }
	p_load_22 { ap_none {  { p_load_22 in_data 0 32 } } }
	p_load_23 { ap_none {  { p_load_23 in_data 0 32 } } }
	p_load_24 { ap_none {  { p_load_24 in_data 0 32 } } }
	p_load_25 { ap_none {  { p_load_25 in_data 0 32 } } }
	p_load_26 { ap_none {  { p_load_26 in_data 0 32 } } }
	p_load_27 { ap_none {  { p_load_27 in_data 0 32 } } }
	p_load_28 { ap_none {  { p_load_28 in_data 0 32 } } }
	p_load_29 { ap_none {  { p_load_29 in_data 0 32 } } }
	add17_lcssa_phi_out { ap_vld {  { add17_lcssa_phi_out out_data 1 32 }  { add17_lcssa_phi_out_ap_vld out_vld 1 1 } } }
}
