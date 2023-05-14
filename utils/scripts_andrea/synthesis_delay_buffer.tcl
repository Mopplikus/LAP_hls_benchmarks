read_vhdl -vhdl2008 vhdl/delay_buffer.vhd

#comment line below out if no clock constraints
#read_xdc period_4.xdc

synth_design -top delay_buffer -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context

