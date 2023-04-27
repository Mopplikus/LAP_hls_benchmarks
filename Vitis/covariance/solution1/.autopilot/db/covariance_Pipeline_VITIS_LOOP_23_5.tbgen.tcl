set moduleName covariance_Pipeline_VITIS_LOOP_23_5
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
set C_modelName {covariance_Pipeline_VITIS_LOOP_23_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln22_1 int 5 regular  }
	{ data int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ zext_ln28 int 10 regular  }
	{ cov int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ data_load_32 int 31 regular  }
	{ data_load_34 int 31 regular  }
	{ data_load_36 int 31 regular  }
	{ data_load_38 int 31 regular  }
	{ data_load_40 int 31 regular  }
	{ data_load_42 int 31 regular  }
	{ data_load_44 int 31 regular  }
	{ data_load_46 int 31 regular  }
	{ data_load_48 int 31 regular  }
	{ data_load_50 int 31 regular  }
	{ data_load_52 int 31 regular  }
	{ data_load_54 int 31 regular  }
	{ data_load_56 int 31 regular  }
	{ data_load_58 int 31 regular  }
	{ data_load_60 int 31 regular  }
	{ data_load_62 int 31 regular  }
	{ data_load_64 int 31 regular  }
	{ data_load_66 int 31 regular  }
	{ data_load_68 int 31 regular  }
	{ data_load_70 int 31 regular  }
	{ data_load_72 int 31 regular  }
	{ data_load_74 int 31 regular  }
	{ data_load_76 int 31 regular  }
	{ data_load_78 int 31 regular  }
	{ data_load_80 int 31 regular  }
	{ data_load_82 int 31 regular  }
	{ data_load_84 int 31 regular  }
	{ data_load_86 int 31 regular  }
	{ data_load_88 int 31 regular  }
	{ data_load_90 int 31 regular  }
	{ data_load_92 int 31 regular  }
	{ data_load_94 int 31 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln22_1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln28", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "cov", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_load_32", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_34", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_36", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_38", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_40", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_42", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_44", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_46", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_48", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_50", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_52", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_54", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_56", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_58", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_60", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_62", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_64", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_66", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_68", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_70", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_72", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_74", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_76", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_78", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_80", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_82", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_84", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_86", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_88", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_90", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_92", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "data_load_94", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln22_1 sc_in sc_lv 5 signal 0 } 
	{ data_address0 sc_out sc_lv 10 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 32 signal 1 } 
	{ data_address1 sc_out sc_lv 10 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 32 signal 1 } 
	{ zext_ln28 sc_in sc_lv 10 signal 2 } 
	{ cov_address0 sc_out sc_lv 10 signal 3 } 
	{ cov_ce0 sc_out sc_logic 1 signal 3 } 
	{ cov_we0 sc_out sc_logic 1 signal 3 } 
	{ cov_d0 sc_out sc_lv 32 signal 3 } 
	{ data_load_32 sc_in sc_lv 31 signal 4 } 
	{ data_load_34 sc_in sc_lv 31 signal 5 } 
	{ data_load_36 sc_in sc_lv 31 signal 6 } 
	{ data_load_38 sc_in sc_lv 31 signal 7 } 
	{ data_load_40 sc_in sc_lv 31 signal 8 } 
	{ data_load_42 sc_in sc_lv 31 signal 9 } 
	{ data_load_44 sc_in sc_lv 31 signal 10 } 
	{ data_load_46 sc_in sc_lv 31 signal 11 } 
	{ data_load_48 sc_in sc_lv 31 signal 12 } 
	{ data_load_50 sc_in sc_lv 31 signal 13 } 
	{ data_load_52 sc_in sc_lv 31 signal 14 } 
	{ data_load_54 sc_in sc_lv 31 signal 15 } 
	{ data_load_56 sc_in sc_lv 31 signal 16 } 
	{ data_load_58 sc_in sc_lv 31 signal 17 } 
	{ data_load_60 sc_in sc_lv 31 signal 18 } 
	{ data_load_62 sc_in sc_lv 31 signal 19 } 
	{ data_load_64 sc_in sc_lv 31 signal 20 } 
	{ data_load_66 sc_in sc_lv 31 signal 21 } 
	{ data_load_68 sc_in sc_lv 31 signal 22 } 
	{ data_load_70 sc_in sc_lv 31 signal 23 } 
	{ data_load_72 sc_in sc_lv 31 signal 24 } 
	{ data_load_74 sc_in sc_lv 31 signal 25 } 
	{ data_load_76 sc_in sc_lv 31 signal 26 } 
	{ data_load_78 sc_in sc_lv 31 signal 27 } 
	{ data_load_80 sc_in sc_lv 31 signal 28 } 
	{ data_load_82 sc_in sc_lv 31 signal 29 } 
	{ data_load_84 sc_in sc_lv 31 signal 30 } 
	{ data_load_86 sc_in sc_lv 31 signal 31 } 
	{ data_load_88 sc_in sc_lv 31 signal 32 } 
	{ data_load_90 sc_in sc_lv 31 signal 33 } 
	{ data_load_92 sc_in sc_lv 31 signal 34 } 
	{ data_load_94 sc_in sc_lv 31 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln22_1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zext_ln22_1", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "q1" }} , 
 	{ "name": "zext_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln28", "role": "default" }} , 
 	{ "name": "cov_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cov", "role": "address0" }} , 
 	{ "name": "cov_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cov", "role": "ce0" }} , 
 	{ "name": "cov_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cov", "role": "we0" }} , 
 	{ "name": "cov_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cov", "role": "d0" }} , 
 	{ "name": "data_load_32", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_32", "role": "default" }} , 
 	{ "name": "data_load_34", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_34", "role": "default" }} , 
 	{ "name": "data_load_36", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_36", "role": "default" }} , 
 	{ "name": "data_load_38", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_38", "role": "default" }} , 
 	{ "name": "data_load_40", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_40", "role": "default" }} , 
 	{ "name": "data_load_42", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_42", "role": "default" }} , 
 	{ "name": "data_load_44", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_44", "role": "default" }} , 
 	{ "name": "data_load_46", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_46", "role": "default" }} , 
 	{ "name": "data_load_48", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_48", "role": "default" }} , 
 	{ "name": "data_load_50", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_50", "role": "default" }} , 
 	{ "name": "data_load_52", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_52", "role": "default" }} , 
 	{ "name": "data_load_54", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_54", "role": "default" }} , 
 	{ "name": "data_load_56", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_56", "role": "default" }} , 
 	{ "name": "data_load_58", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_58", "role": "default" }} , 
 	{ "name": "data_load_60", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_60", "role": "default" }} , 
 	{ "name": "data_load_62", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_62", "role": "default" }} , 
 	{ "name": "data_load_64", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_64", "role": "default" }} , 
 	{ "name": "data_load_66", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_66", "role": "default" }} , 
 	{ "name": "data_load_68", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_68", "role": "default" }} , 
 	{ "name": "data_load_70", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_70", "role": "default" }} , 
 	{ "name": "data_load_72", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_72", "role": "default" }} , 
 	{ "name": "data_load_74", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_74", "role": "default" }} , 
 	{ "name": "data_load_76", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_76", "role": "default" }} , 
 	{ "name": "data_load_78", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_78", "role": "default" }} , 
 	{ "name": "data_load_80", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_80", "role": "default" }} , 
 	{ "name": "data_load_82", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_82", "role": "default" }} , 
 	{ "name": "data_load_84", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_84", "role": "default" }} , 
 	{ "name": "data_load_86", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_86", "role": "default" }} , 
 	{ "name": "data_load_88", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_88", "role": "default" }} , 
 	{ "name": "data_load_90", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_90", "role": "default" }} , 
 	{ "name": "data_load_92", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_92", "role": "default" }} , 
 	{ "name": "data_load_94", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_load_94", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "covariance_Pipeline_VITIS_LOOP_23_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "523",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln22_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln28", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "VITIS_LOOP_23_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U2", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U3", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U4", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U5", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U6", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U7", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U8", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U9", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U10", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U11", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U12", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U13", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U14", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U15", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U16", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U17", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U18", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U19", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U20", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U21", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U22", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U23", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U24", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U25", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U26", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U27", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U28", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U29", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U30", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U31", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U32", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_5_1_U33", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	covariance_Pipeline_VITIS_LOOP_23_5 {
		zext_ln22_1 {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 16 FirstWrite -1}
		zext_ln28 {Type I LastRead 0 FirstWrite -1}
		cov {Type O LastRead -1 FirstWrite 25}
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
	{"Name" : "Latency", "Min" : "27", "Max" : "523"}
	, {"Name" : "Interval", "Min" : "27", "Max" : "523"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln22_1 { ap_none {  { zext_ln22_1 in_data 0 5 } } }
	data { ap_memory {  { data_address0 mem_address 1 10 }  { data_ce0 mem_ce 1 1 }  { data_q0 in_data 0 32 }  { data_address1 MemPortADDR2 1 10 }  { data_ce1 MemPortCE2 1 1 }  { data_q1 in_data 0 32 } } }
	zext_ln28 { ap_none {  { zext_ln28 in_data 0 10 } } }
	cov { ap_memory {  { cov_address0 mem_address 1 10 }  { cov_ce0 mem_ce 1 1 }  { cov_we0 mem_we 1 1 }  { cov_d0 mem_din 1 32 } } }
	data_load_32 { ap_none {  { data_load_32 in_data 0 31 } } }
	data_load_34 { ap_none {  { data_load_34 in_data 0 31 } } }
	data_load_36 { ap_none {  { data_load_36 in_data 0 31 } } }
	data_load_38 { ap_none {  { data_load_38 in_data 0 31 } } }
	data_load_40 { ap_none {  { data_load_40 in_data 0 31 } } }
	data_load_42 { ap_none {  { data_load_42 in_data 0 31 } } }
	data_load_44 { ap_none {  { data_load_44 in_data 0 31 } } }
	data_load_46 { ap_none {  { data_load_46 in_data 0 31 } } }
	data_load_48 { ap_none {  { data_load_48 in_data 0 31 } } }
	data_load_50 { ap_none {  { data_load_50 in_data 0 31 } } }
	data_load_52 { ap_none {  { data_load_52 in_data 0 31 } } }
	data_load_54 { ap_none {  { data_load_54 in_data 0 31 } } }
	data_load_56 { ap_none {  { data_load_56 in_data 0 31 } } }
	data_load_58 { ap_none {  { data_load_58 in_data 0 31 } } }
	data_load_60 { ap_none {  { data_load_60 in_data 0 31 } } }
	data_load_62 { ap_none {  { data_load_62 in_data 0 31 } } }
	data_load_64 { ap_none {  { data_load_64 in_data 0 31 } } }
	data_load_66 { ap_none {  { data_load_66 in_data 0 31 } } }
	data_load_68 { ap_none {  { data_load_68 in_data 0 31 } } }
	data_load_70 { ap_none {  { data_load_70 in_data 0 31 } } }
	data_load_72 { ap_none {  { data_load_72 in_data 0 31 } } }
	data_load_74 { ap_none {  { data_load_74 in_data 0 31 } } }
	data_load_76 { ap_none {  { data_load_76 in_data 0 31 } } }
	data_load_78 { ap_none {  { data_load_78 in_data 0 31 } } }
	data_load_80 { ap_none {  { data_load_80 in_data 0 31 } } }
	data_load_82 { ap_none {  { data_load_82 in_data 0 31 } } }
	data_load_84 { ap_none {  { data_load_84 in_data 0 31 } } }
	data_load_86 { ap_none {  { data_load_86 in_data 0 31 } } }
	data_load_88 { ap_none {  { data_load_88 in_data 0 31 } } }
	data_load_90 { ap_none {  { data_load_90 in_data 0 31 } } }
	data_load_92 { ap_none {  { data_load_92 in_data 0 31 } } }
	data_load_94 { ap_none {  { data_load_94 in_data 0 31 } } }
}
