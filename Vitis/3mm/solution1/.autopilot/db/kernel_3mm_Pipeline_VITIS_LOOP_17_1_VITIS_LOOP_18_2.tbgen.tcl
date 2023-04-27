set moduleName kernel_3mm_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2
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
set C_modelName {kernel_3mm_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {array 100 { 1 1 } 1 1 }  }
	{ B int 32 regular {array 100 { 1 1 } 1 1 }  }
	{ E int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "E", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 7 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ A_address1 sc_out sc_lv 7 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_q1 sc_in sc_lv 32 signal 0 } 
	{ B_address0 sc_out sc_lv 7 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_q0 sc_in sc_lv 32 signal 1 } 
	{ B_address1 sc_out sc_lv 7 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_q1 sc_in sc_lv 32 signal 1 } 
	{ E_address0 sc_out sc_lv 7 signal 2 } 
	{ E_ce0 sc_out sc_logic 1 signal 2 } 
	{ E_we0 sc_out sc_logic 1 signal 2 } 
	{ E_d0 sc_out sc_lv 32 signal 2 } 
	{ grp_fu_66_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_66_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_66_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_66_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_70_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_70_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_70_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_70_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_74_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_74_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_74_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_74_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_78_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_78_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_78_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_78_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_82_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_82_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_82_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_82_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_86_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_86_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_86_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_86_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_90_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_90_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_90_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_90_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_94_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_94_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_94_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_94_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_98_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_98_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_98_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_98_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_102_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_102_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_102_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_102_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "E_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "E", "role": "address0" }} , 
 	{ "name": "E_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E", "role": "ce0" }} , 
 	{ "name": "E_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E", "role": "we0" }} , 
 	{ "name": "E_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E", "role": "d0" }} , 
 	{ "name": "grp_fu_66_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_66_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_66_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_66_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_66_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_66_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_66_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_66_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_70_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_70_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_70_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_70_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_70_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_70_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_70_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_70_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_74_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_74_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_74_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_74_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_74_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_74_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_74_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_74_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_78_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_78_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_78_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_78_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_78_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_78_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_78_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_78_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_82_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_82_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_82_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_82_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_82_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_82_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_82_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_82_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_86_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_86_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_86_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_86_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_86_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_86_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_86_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_86_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_90_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_90_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_90_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_90_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_90_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_90_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_90_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_90_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_94_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_94_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_94_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_94_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_94_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_94_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_94_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_94_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_98_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_98_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_98_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_98_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_98_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_98_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_98_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_98_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_102_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_102_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_102_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_102_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_102_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_102_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_102_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_102_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "kernel_3mm_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "512", "EstimateLatencyMax" : "512",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "E", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1_VITIS_LOOP_18_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel_3mm_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2 {
		A {Type I LastRead 6 FirstWrite -1}
		B {Type I LastRead 6 FirstWrite -1}
		E {Type O LastRead -1 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "512", "Max" : "512"}
	, {"Name" : "Interval", "Min" : "512", "Max" : "512"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 7 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 MemPortADDR2 1 7 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 MemPortDOUT2 0 32 } } }
	B { ap_memory {  { B_address0 mem_address 1 7 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 32 }  { B_address1 MemPortADDR2 1 7 }  { B_ce1 MemPortCE2 1 1 }  { B_q1 MemPortDOUT2 0 32 } } }
	E { ap_memory {  { E_address0 mem_address 1 7 }  { E_ce0 mem_ce 1 1 }  { E_we0 mem_we 1 1 }  { E_d0 mem_din 1 32 } } }
}
