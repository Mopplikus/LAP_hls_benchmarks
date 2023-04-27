read_vhdl -vhdl2008 ../hdl/arithmetic_units.vhd
read_vhdl -vhdl2008 ../hdl/delay_buffer.vhd
read_vhdl -vhdl2008 ../hdl/elastic_components.vhd
read_vhdl -vhdl2008 ../hdl/MemCont.vhd
read_vhdl -vhdl2008 ../hdl/multipliers.vhd
read_vhdl -vhdl2008 ../hdl/mul_wrapper.vhd

#read_verilog  ../sim/VHDL_SRC/LSQ_s.v
#read_vhdl -vhdl2008 ../../../components/array_RAM_fadd_32bkb.vhd

#source ../../../components/array_RAM_ap_fadd_8_full_dsp_32_ip.tcl

read_vhdl -vhdl2008 ../hdl/example_area_optimized.vhd

#comment line below out if no clock constraints
read_xdc period_4.xdc

synth_design -top example -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context

report_utilization > utilization_post_syn.rpt
report_timing > timing_post_syn.rpt
opt_design
place_design
route_design
report_utilization > utilization_post_pr.rpt
report_timing > timing_post_pr.rpt

