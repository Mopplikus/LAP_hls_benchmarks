package require ::quartus::project
package require ::quartus::flow

set make_assignments 1


project_new COMPONENT_NAME -overwrite
project_open COMPONENT_NAME

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY TARGET_FAMILY
	set_global_assignment -name DEVICE TARGET_CODE
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 22.1STD.1
	set_global_assignment -name LAST_QUARTUS_VERSION "22.1std.1 Standard Edition"
	set_global_assignment -name VHDL_FILE vhdl/arithmetic_units.vhd
	set_global_assignment -name VHDL_FILE vhdl/mul_wrapper.vhd
	set_global_assignment -name VHDL_FILE vhdl/elastic_components.vhd
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

	# Set all pins as virtual to be able to fit the design instead of mapping everything to I/O 
	execute_module -tool map

    set name_ids [get_names -filter * -node_type pin]

    foreach_in_collection name_id $name_ids {
        set pin_name [get_name_info -info full_path $name_id]
        post_message "Making VIRTUAL_PIN assignment to $pin_name"
        set_instance_assignment -to $pin_name -name VIRTUAL_PIN ON
    }

	# Commit assignments
	export_assignments

	execute_flow -compile
}