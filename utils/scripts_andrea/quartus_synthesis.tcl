package require ::quartus::project
package require ::quartus::flow

set make_assignments 1


project_new if_loop_3 -overwrite
project_open if_loop_3

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CGXFC7C7F23C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 22.1STD.1
	set_global_assignment -name LAST_QUARTUS_VERSION "22.1std.1 Standard Edition"
	set_global_assignment -name VHDL_FILE vhdl/sharing_components.vhd
	set_global_assignment -name VHDL_FILE vhdl/multipliers.vhd
	set_global_assignment -name VHDL_FILE vhdl/mul_wrapper.vhd
	set_global_assignment -name VHDL_FILE vhdl/MemCont.vhd
	set_global_assignment -name VHDL_FILE vhdl/if_loop_3_optimized.vhd
	set_global_assignment -name VHDL_FILE vhdl/elastic_components.vhd
	set_global_assignment -name VHDL_FILE vhdl/delay_buffer.vhd
	set_global_assignment -name VHDL_FILE vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd
	set_global_assignment -name VHDL_FILE vhdl/arithmetic_units.vhd
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (Verilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name OPTIMIZATION_MODE "HIGH PERFORMANCE EFFORT"
	set_global_assignment -name VHDL_INPUT_VERSION VHDL_2008
	set_global_assignment -name VHDL_SHOW_LMF_MAPPING_MESSAGES OFF

	# Commit assignments
	export_assignments

	execute_flow -compile
}

project_clean
project_close