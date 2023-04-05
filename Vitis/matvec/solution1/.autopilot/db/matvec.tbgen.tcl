set moduleName matvec
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
set C_modelName {matvec}
set C_modelType { void 0 }
set C_modelArgList {
	{ M int 32 regular {array 900 { 1 1 } 1 1 }  }
	{ V int 32 regular {array 30 { 1 1 } 1 1 }  }
	{ Out_r int 32 regular {array 30 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
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
	{ V_address0 sc_out sc_lv 5 signal 1 } 
	{ V_ce0 sc_out sc_logic 1 signal 1 } 
	{ V_q0 sc_in sc_lv 32 signal 1 } 
	{ V_address1 sc_out sc_lv 5 signal 1 } 
	{ V_ce1 sc_out sc_logic 1 signal 1 } 
	{ V_q1 sc_in sc_lv 32 signal 1 } 
	{ Out_r_address0 sc_out sc_lv 5 signal 2 } 
	{ Out_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ Out_r_we0 sc_out sc_logic 1 signal 2 } 
	{ Out_r_d0 sc_out sc_lv 32 signal 2 } 
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
 	{ "name": "V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "V", "role": "address0" }} , 
 	{ "name": "V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ce0" }} , 
 	{ "name": "V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "q0" }} , 
 	{ "name": "V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "V", "role": "address1" }} , 
 	{ "name": "V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ce1" }} , 
 	{ "name": "V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "q1" }} , 
 	{ "name": "Out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Out_r", "role": "address0" }} , 
 	{ "name": "Out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "ce0" }} , 
 	{ "name": "Out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "we0" }} , 
 	{ "name": "Out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matvec",
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
			{"Name" : "M", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363", "Port" : "M", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363", "Port" : "Out_r", "Inst_start_state" : "16", "Inst_end_state" : "17"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
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
			{"Name" : "Out_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_7_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage14", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage14_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U26", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U27", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U28", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U29", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.mul_32s_32s_32_1_1_U30", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matvec_Pipeline_VITIS_LOOP_7_1_fu_363.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	matvec {
		M {Type I LastRead 15 FirstWrite -1}
		V {Type I LastRead 15 FirstWrite -1}
		Out_r {Type O LastRead -1 FirstWrite 17}}
	matvec_Pipeline_VITIS_LOOP_7_1 {
		M {Type I LastRead 15 FirstWrite -1}
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
		Out_r {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "482", "Max" : "482"}
	, {"Name" : "Interval", "Min" : "483", "Max" : "483"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	M { ap_memory {  { M_address0 mem_address 1 10 }  { M_ce0 mem_ce 1 1 }  { M_q0 mem_dout 0 32 }  { M_address1 MemPortADDR2 1 10 }  { M_ce1 MemPortCE2 1 1 }  { M_q1 MemPortDOUT2 0 32 } } }
	V { ap_memory {  { V_address0 mem_address 1 5 }  { V_ce0 mem_ce 1 1 }  { V_q0 mem_dout 0 32 }  { V_address1 MemPortADDR2 1 5 }  { V_ce1 MemPortCE2 1 1 }  { V_q1 MemPortDOUT2 0 32 } } }
	Out_r { ap_memory {  { Out_r_address0 mem_address 1 5 }  { Out_r_ce0 mem_ce 1 1 }  { Out_r_we0 mem_we 1 1 }  { Out_r_d0 mem_din 1 32 } } }
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
