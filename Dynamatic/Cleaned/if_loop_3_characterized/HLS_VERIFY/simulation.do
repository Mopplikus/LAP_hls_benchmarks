vlib work
vmap work work
project new . simulation work modelsim.ini 0
project open simulation
project addfile ../hdl/delay_buffer.vhd
project addfile ../hdl/if_loop_3_optimized.vhd
project addfile ../hdl/arithmetic_units.vhd
project addfile ../hdl/sharing_components.vhd
project addfile ../hdl/elastic_components.vhd
project addfile ../hdl/mul_wrapper.vhd
project addfile ../hdl/MemCont.vhd
project addfile ../hdl/hls_verify_if_loop_3_tb.vhd
project addfile ../hdl/multipliers.vhd
project addfile ../hdl/simpackage.vhd
project addfile ../hdl/two_port_RAM.vhd
project calculateorder
project compileall
eval vsim if_loop_3_tb
