set moduleName matvec_Pipeline_VITIS_LOOP_7_1
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
set C_modelName {matvec_Pipeline_VITIS_LOOP_7_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ M int 32 regular {array 900 { 1 1 } 1 1 }  }
	{ V_load int 32 regular  }
	{ V_load_1 int 32 regular  }
	{ V_load_2 int 32 regular  }
	{ V_load_3 int 32 regular  }
	{ V_load_4 int 32 regular  }
	{ V_load_5 int 32 regular  }
	{ V_load_6 int 32 regular  }
	{ V_load_7 int 32 regular  }
	{ V_load_8 int 32 regular  }
	{ V_load_9 int 32 regular  }
	{ V_load_10 int 32 regular  }
	{ V_load_11 int 32 regular  }
	{ V_load_12 int 32 regular  }
	{ V_load_13 int 32 regular  }
	{ V_load_14 int 32 regular  }
	{ V_load_15 int 32 regular  }
	{ V_load_16 int 32 regular  }
	{ V_load_17 int 32 regular  }
	{ V_load_18 int 32 regular  }
	{ V_load_19 int 32 regular  }
	{ V_load_20 int 32 regular  }
	{ V_load_21 int 32 regular  }
	{ V_load_22 int 32 regular  }
	{ V_load_23 int 32 regular  }
	{ V_load_24 int 32 regular  }
	{ V_load_25 int 32 regular  }
	{ V_load_26 int 32 regular  }
	{ V_load_27 int 32 regular  }
	{ V_load_28 int 32 regular  }
	{ V_load_29 int 32 regular  }
	{ Out_r int 32 regular {array 30 { 0 3 } 0 1 }  }
	{ add_lcssa_phi_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_load_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_lcssa_phi_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ M_address0 sc_out sc_lv 10 signal 0 } 
	{ M_ce0 sc_out sc_logic 1 signal 0 } 
	{ M_q0 sc_in sc_lv 32 signal 0 } 
	{ M_address1 sc_out sc_lv 10 signal 0 } 
	{ M_ce1 sc_out sc_logic 1 signal 0 } 
	{ M_q1 sc_in sc_lv 32 signal 0 } 
	{ V_load sc_in sc_lv 32 signal 1 } 
	{ V_load_1 sc_in sc_lv 32 signal 2 } 
	{ V_load_2 sc_in sc_lv 32 signal 3 } 
	{ V_load_3 sc_in sc_lv 32 signal 4 } 
	{ V_load_4 sc_in sc_lv 32 signal 5 } 
	{ V_load_5 sc_in sc_lv 32 signal 6 } 
	{ V_load_6 sc_in sc_lv 32 signal 7 } 
	{ V_load_7 sc_in sc_lv 32 signal 8 } 
	{ V_load_8 sc_in sc_lv 32 signal 9 } 
	{ V_load_9 sc_in sc_lv 32 signal 10 } 
	{ V_load_10 sc_in sc_lv 32 signal 11 } 
	{ V_load_11 sc_in sc_lv 32 signal 12 } 
	{ V_load_12 sc_in sc_lv 32 signal 13 } 
	{ V_load_13 sc_in sc_lv 32 signal 14 } 
	{ V_load_14 sc_in sc_lv 32 signal 15 } 
	{ V_load_15 sc_in sc_lv 32 signal 16 } 
	{ V_load_16 sc_in sc_lv 32 signal 17 } 
	{ V_load_17 sc_in sc_lv 32 signal 18 } 
	{ V_load_18 sc_in sc_lv 32 signal 19 } 
	{ V_load_19 sc_in sc_lv 32 signal 20 } 
	{ V_load_20 sc_in sc_lv 32 signal 21 } 
	{ V_load_21 sc_in sc_lv 32 signal 22 } 
	{ V_load_22 sc_in sc_lv 32 signal 23 } 
	{ V_load_23 sc_in sc_lv 32 signal 24 } 
	{ V_load_24 sc_in sc_lv 32 signal 25 } 
	{ V_load_25 sc_in sc_lv 32 signal 26 } 
	{ V_load_26 sc_in sc_lv 32 signal 27 } 
	{ V_load_27 sc_in sc_lv 32 signal 28 } 
	{ V_load_28 sc_in sc_lv 32 signal 29 } 
	{ V_load_29 sc_in sc_lv 32 signal 30 } 
	{ Out_r_address0 sc_out sc_lv 5 signal 31 } 
	{ Out_r_ce0 sc_out sc_logic 1 signal 31 } 
	{ Out_r_we0 sc_out sc_logic 1 signal 31 } 
	{ Out_r_d0 sc_out sc_lv 32 signal 31 } 
	{ add_lcssa_phi_out sc_out sc_lv 32 signal 32 } 
	{ add_lcssa_phi_out_ap_vld sc_out sc_logic 1 outvld 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "M_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "M", "role": "address0" }} , 
 	{ "name": "M_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce0" }} , 
 	{ "name": "M_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q0" }} , 
 	{ "name": "M_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "M", "role": "address1" }} , 
 	{ "name": "M_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce1" }} , 
 	{ "name": "M_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q1" }} , 
 	{ "name": "V_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load", "role": "default" }} , 
 	{ "name": "V_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_1", "role": "default" }} , 
 	{ "name": "V_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_2", "role": "default" }} , 
 	{ "name": "V_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_3", "role": "default" }} , 
 	{ "name": "V_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_4", "role": "default" }} , 
 	{ "name": "V_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_5", "role": "default" }} , 
 	{ "name": "V_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_6", "role": "default" }} , 
 	{ "name": "V_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_7", "role": "default" }} , 
 	{ "name": "V_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_8", "role": "default" }} , 
 	{ "name": "V_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_9", "role": "default" }} , 
 	{ "name": "V_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_10", "role": "default" }} , 
 	{ "name": "V_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_11", "role": "default" }} , 
 	{ "name": "V_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_12", "role": "default" }} , 
 	{ "name": "V_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_13", "role": "default" }} , 
 	{ "name": "V_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_14", "role": "default" }} , 
 	{ "name": "V_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_15", "role": "default" }} , 
 	{ "name": "V_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_16", "role": "default" }} , 
 	{ "name": "V_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_17", "role": "default" }} , 
 	{ "name": "V_load_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_18", "role": "default" }} , 
 	{ "name": "V_load_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_19", "role": "default" }} , 
 	{ "name": "V_load_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_20", "role": "default" }} , 
 	{ "name": "V_load_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_21", "role": "default" }} , 
 	{ "name": "V_load_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_22", "role": "default" }} , 
 	{ "name": "V_load_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_23", "role": "default" }} , 
 	{ "name": "V_load_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_24", "role": "default" }} , 
 	{ "name": "V_load_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_25", "role": "default" }} , 
 	{ "name": "V_load_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_26", "role": "default" }} , 
 	{ "name": "V_load_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_27", "role": "default" }} , 
 	{ "name": "V_load_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_28", "role": "default" }} , 
 	{ "name": "V_load_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_load_29", "role": "default" }} , 
 	{ "name": "Out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Out_r", "role": "address0" }} , 
 	{ "name": "Out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "ce0" }} , 
 	{ "name": "Out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "we0" }} , 
 	{ "name": "Out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_r", "role": "d0" }} , 
 	{ "name": "add_lcssa_phi_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_lcssa_phi_out", "role": "default" }} , 
 	{ "name": "add_lcssa_phi_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_lcssa_phi_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
		"CDFG" : "matvec_Pipeline_VITIS_LOOP_7_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "466", "EstimateLatencyMax" : "466",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "M", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "V_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "Out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "add_lcssa_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_7_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage10", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage10_subdone", "QuitState" : "ap_ST_fsm_pp0_stage14", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage14_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
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
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matvec_Pipeline_VITIS_LOOP_7_1 {
		M {Type I LastRead 16 FirstWrite -1}
		V_load {Type I LastRead 0 FirstWrite -1}
		V_load_1 {Type I LastRead 0 FirstWrite -1}
		V_load_2 {Type I LastRead 0 FirstWrite -1}
		V_load_3 {Type I LastRead 0 FirstWrite -1}
		V_load_4 {Type I LastRead 0 FirstWrite -1}
		V_load_5 {Type I LastRead 0 FirstWrite -1}
		V_load_6 {Type I LastRead 0 FirstWrite -1}
		V_load_7 {Type I LastRead 0 FirstWrite -1}
		V_load_8 {Type I LastRead 0 FirstWrite -1}
		V_load_9 {Type I LastRead 0 FirstWrite -1}
		V_load_10 {Type I LastRead 0 FirstWrite -1}
		V_load_11 {Type I LastRead 0 FirstWrite -1}
		V_load_12 {Type I LastRead 0 FirstWrite -1}
		V_load_13 {Type I LastRead 0 FirstWrite -1}
		V_load_14 {Type I LastRead 0 FirstWrite -1}
		V_load_15 {Type I LastRead 0 FirstWrite -1}
		V_load_16 {Type I LastRead 0 FirstWrite -1}
		V_load_17 {Type I LastRead 0 FirstWrite -1}
		V_load_18 {Type I LastRead 0 FirstWrite -1}
		V_load_19 {Type I LastRead 0 FirstWrite -1}
		V_load_20 {Type I LastRead 0 FirstWrite -1}
		V_load_21 {Type I LastRead 0 FirstWrite -1}
		V_load_22 {Type I LastRead 0 FirstWrite -1}
		V_load_23 {Type I LastRead 0 FirstWrite -1}
		V_load_24 {Type I LastRead 0 FirstWrite -1}
		V_load_25 {Type I LastRead 0 FirstWrite -1}
		V_load_26 {Type I LastRead 0 FirstWrite -1}
		V_load_27 {Type I LastRead 0 FirstWrite -1}
		V_load_28 {Type I LastRead 0 FirstWrite -1}
		V_load_29 {Type I LastRead 0 FirstWrite -1}
		Out_r {Type O LastRead -1 FirstWrite 25}
		add_lcssa_phi_out {Type O LastRead -1 FirstWrite 14}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "466", "Max" : "466"}
	, {"Name" : "Interval", "Min" : "466", "Max" : "466"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	M { ap_memory {  { M_address0 mem_address 1 10 }  { M_ce0 mem_ce 1 1 }  { M_q0 mem_dout 0 32 }  { M_address1 MemPortADDR2 1 10 }  { M_ce1 MemPortCE2 1 1 }  { M_q1 MemPortDOUT2 0 32 } } }
	V_load { ap_none {  { V_load in_data 0 32 } } }
	V_load_1 { ap_none {  { V_load_1 in_data 0 32 } } }
	V_load_2 { ap_none {  { V_load_2 in_data 0 32 } } }
	V_load_3 { ap_none {  { V_load_3 in_data 0 32 } } }
	V_load_4 { ap_none {  { V_load_4 in_data 0 32 } } }
	V_load_5 { ap_none {  { V_load_5 in_data 0 32 } } }
	V_load_6 { ap_none {  { V_load_6 in_data 0 32 } } }
	V_load_7 { ap_none {  { V_load_7 in_data 0 32 } } }
	V_load_8 { ap_none {  { V_load_8 in_data 0 32 } } }
	V_load_9 { ap_none {  { V_load_9 in_data 0 32 } } }
	V_load_10 { ap_none {  { V_load_10 in_data 0 32 } } }
	V_load_11 { ap_none {  { V_load_11 in_data 0 32 } } }
	V_load_12 { ap_none {  { V_load_12 in_data 0 32 } } }
	V_load_13 { ap_none {  { V_load_13 in_data 0 32 } } }
	V_load_14 { ap_none {  { V_load_14 in_data 0 32 } } }
	V_load_15 { ap_none {  { V_load_15 in_data 0 32 } } }
	V_load_16 { ap_none {  { V_load_16 in_data 0 32 } } }
	V_load_17 { ap_none {  { V_load_17 in_data 0 32 } } }
	V_load_18 { ap_none {  { V_load_18 in_data 0 32 } } }
	V_load_19 { ap_none {  { V_load_19 in_data 0 32 } } }
	V_load_20 { ap_none {  { V_load_20 in_data 0 32 } } }
	V_load_21 { ap_none {  { V_load_21 in_data 0 32 } } }
	V_load_22 { ap_none {  { V_load_22 in_data 0 32 } } }
	V_load_23 { ap_none {  { V_load_23 in_data 0 32 } } }
	V_load_24 { ap_none {  { V_load_24 in_data 0 32 } } }
	V_load_25 { ap_none {  { V_load_25 in_data 0 32 } } }
	V_load_26 { ap_none {  { V_load_26 in_data 0 32 } } }
	V_load_27 { ap_none {  { V_load_27 in_data 0 32 } } }
	V_load_28 { ap_none {  { V_load_28 in_data 0 32 } } }
	V_load_29 { ap_none {  { V_load_29 in_data 0 32 } } }
	Out_r { ap_memory {  { Out_r_address0 mem_address 1 5 }  { Out_r_ce0 mem_ce 1 1 }  { Out_r_we0 mem_we 1 1 }  { Out_r_d0 mem_din 1 32 } } }
	add_lcssa_phi_out { ap_vld {  { add_lcssa_phi_out out_data 1 32 }  { add_lcssa_phi_out_ap_vld out_vld 1 1 } } }
}
