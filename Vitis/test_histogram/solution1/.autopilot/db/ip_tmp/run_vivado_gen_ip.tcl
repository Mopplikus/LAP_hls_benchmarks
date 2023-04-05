create_project prj -part xck24-ubva530-2LV-c -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/vhdl"
source "C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/test_histogram/solution1/syn/vhdl/histogram_fadd_32ns_32ns_32_7_full_dsp_1_ip.tcl"
source "C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/test_histogram/solution1/syn/vhdl/histogram_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "C:/Users/Elija/AppData/Roaming/Xilinx/Vitis/test_histogram/solution1/syn/vhdl/histogram_sitofp_32ns_32_5_no_dsp_1_ip.tcl"
