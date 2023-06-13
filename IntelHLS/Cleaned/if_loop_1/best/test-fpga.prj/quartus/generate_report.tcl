# This script has the logic to create a summary report
source quartus_compile_report.tcl
# These are generated by i++ based on the components
set show_clk2x   0
set components   [list if_loop_1]
# The location of the report in ../reports
# These get sent to the script by Quartus
set project_name [lindex $quartus(args) 1]
set project_rev  [lindex $quartus(args) 2]
# This call creates the report
generate_hls_report $project_name $project_rev $show_clk2x $components
