read_vhdl -vhdl2008 vhdl/arithmetic_units.vhd
read_vhdl -vhdl2008 vhdl/delay_buffer.vhd
read_vhdl -vhdl2008 vhdl/elastic_components.vhd
read_vhdl -vhdl2008 vhdl/MemCont.vhd
read_vhdl -vhdl2008 vhdl/multipliers.vhd
read_vhdl -vhdl2008 vhdl/mul_wrapper.vhd
read_vhdl -vhdl2008 vhdl/sharing_components.vhd
read_vhdl -vhdl2008 vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd

#read_verilog  ../sim/VHDL_SRC/LSQ_s.v
#read_vhdl -vhdl2008 ../../../components/array_RAM_fadd_32bkb.vhd

#source ../../../components/array_RAM_ap_fadd_8_full_dsp_32_ip.tcl

read_vhdl -vhdl2008 vhdl/if_loop_3_optimized.vhd

#comment line below out if no clock constraints
read_xdc period_4.xdc

#set_property top if_loop_3 [current_fileset]
#set_property PART xc7k160tfbg484-1 [current_project]

synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context

report_utilization > utilization_post_syn.rpt
report_timing > timing_post_syn.rpt
opt_design
place_design
route_design
report_utilization > utilization_post_pr_elasticBuffer.rpt
report_timing > timing_post_pr_elasticBuffer.rpt

