set_property SRC_FILE_INFO {cfile:C:/Users/Elija/Documents/LAP_hls_benchmarks/Dynamatic/bicg/vivado_scripts/period_4.xdc rfile:../../../period_4.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 4.000 -name clk -waveform {0.000 2.000} [get_ports clk]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk]
