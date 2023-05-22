
****** Vivado v2023.1 (64-bit)
  **** SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
  **** IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
  **** SharedData Build 3865790 on Sun May 07 13:33:03 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source synthesis_elasticBuffer_pr.tcl
# read_vhdl -vhdl2008 vhdl/arithmetic_units.vhd
read_vhdl: Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1282.113 ; gain = 0.023 ; free physical = 1817 ; free virtual = 18311
# read_vhdl -vhdl2008 vhdl/delay_buffer.vhd
# read_vhdl -vhdl2008 vhdl/elastic_components.vhd
# read_vhdl -vhdl2008 vhdl/MemCont.vhd
# read_vhdl -vhdl2008 vhdl/multipliers.vhd
# read_vhdl -vhdl2008 vhdl/mul_wrapper.vhd
# read_vhdl -vhdl2008 vhdl/sharing_components.vhd
# read_vhdl -vhdl2008 vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd
# read_vhdl -vhdl2008 vhdl/if_loop_3_optimized.vhd
# read_xdc period_4.xdc
# synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Command: synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Starting synth_design
Attempting to get a license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Device 21-403] Loading part xc7k160tfbg484-1
INFO: [Synth 8-7079] Multithreading enabled for synth_design using a maximum of 4 processes.
INFO: [Synth 8-7078] Launching helper process for spawning children vivado processes
INFO: [Synth 8-7075] Helper process launched with PID 71032
---------------------------------------------------------------------------------
Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2017.758 ; gain = 377.801 ; free physical = 853 ; free virtual = 17344
---------------------------------------------------------------------------------
INFO: [Synth 8-638] synthesizing module 'if_loop_3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
INFO: [Synth 8-638] synthesizing module 'start_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'Const' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'icmp_sgt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module '\join ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-638] synthesizing module 'andN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'andN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
INFO: [Synth 8-256] done synthesizing module '\join ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-256] done synthesizing module 'icmp_sgt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module '\fork ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-638] synthesizing module 'eagerFork_RegisterBLock' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module 'eagerFork_RegisterBLock' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module '\fork ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'join__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'join__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-638] synthesizing module 'branchSimple' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branchSimple' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branch' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 3 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'start_node__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'source' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'merge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 4 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 4 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mux__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mux__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mc_load_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter DATA_SIZE bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mc_load_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
INFO: [Synth 8-638] synthesizing module 'sub_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sub_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 5 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 5 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'cntrlMerge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'merge_notehb' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge_notehb' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized5' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized5' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-256] done synthesizing module 'cntrlMerge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
INFO: [Synth 8-638] synthesizing module 'source__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'sdiv_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:93' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_U1' of component 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2338]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:10' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_divider_u' of component 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:138]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
INFO: [Synth 8-638] synthesizing module 'delay_buffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
	Parameter SIZE bound to: 35 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'delay_buffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
INFO: [Synth 8-256] done synthesizing module 'sdiv_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'add_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'add_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
INFO: [Synth 8-638] synthesizing module 'icmp_slt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'icmp_slt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized6' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized6' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'ret_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'ret_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
INFO: [Synth 8-638] synthesizing module 'MemCont' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
	Parameter DATA_SIZE bound to: 32 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter BB_COUNT bound to: 1 - type: integer 
	Parameter LOAD_COUNT bound to: 1 - type: integer 
	Parameter STORE_COUNT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
INFO: [Synth 8-638] synthesizing module 'read_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
INFO: [Synth 8-638] synthesizing module 'read_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
INFO: [Synth 8-638] synthesizing module 'read_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
INFO: [Synth 8-256] done synthesizing module 'read_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
INFO: [Synth 8-638] synthesizing module 'write_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'write_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
INFO: [Synth 8-638] synthesizing module 'write_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
INFO: [Synth 8-638] synthesizing module 'write_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
INFO: [Synth 8-638] synthesizing module 'write_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
INFO: [Synth 8-256] done synthesizing module 'write_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
WARNING: [Synth 8-614] signal 'rst' is read in the process but is not in the sensitivity list [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:814]
INFO: [Synth 8-256] done synthesizing module 'MemCont' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
INFO: [Synth 8-638] synthesizing module 'end_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter MEM_INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'end_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
INFO: [Synth 8-638] synthesizing module 'sink' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-256] done synthesizing module 'if_loop_3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity cntrlMerge does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1596]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source__parameterized0 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-6014] Unused sequential element run_proc[31].divisor_tmp_reg[32] was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:68]
WARNING: [Synth 8-6014] Unused sequential element remd_reg was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:186]
WARNING: [Synth 8-3848] Net eReadyArray in module/entity end_node does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:371]
WARNING: [Synth 8-3848] Net n_ready_out in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:23]
WARNING: [Synth 8-3848] Net a_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:31]
WARNING: [Synth 8-3848] Net a_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:32]
WARNING: [Synth 8-3848] Net b_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:41]
WARNING: [Synth 8-3848] Net b_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:42]
WARNING: [Synth 8-3848] Net start_0_dataInArray_0 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:146]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1247]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1243]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1248]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1244]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1269]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1265]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1270]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1266]
WARNING: [Synth 8-7129] Port clk in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][31] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[1] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[0] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_Empty_Ready in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_wrDataPorts_valid[0] in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[1][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module source is either unconnected or has no load
INFO: [Common 17-14] Message 'Synth 8-7129' appears 100 times and further instances of the messages will be disabled. Use the Tcl command set_msg_config to change the current settings.
---------------------------------------------------------------------------------
Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2103.727 ; gain = 463.770 ; free physical = 732 ; free virtual = 17224
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.570 ; gain = 478.613 ; free physical = 732 ; free virtual = 17224
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.570 ; gain = 478.613 ; free physical = 732 ; free virtual = 17224
---------------------------------------------------------------------------------
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2118.570 ; gain = 0.000 ; free physical = 732 ; free virtual = 17224
INFO: [Project 1-570] Preparing netlist for logic optimization

Processing XDC Constraints
Initializing timing engine
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Completed Processing XDC Constraints

Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2229.305 ; gain = 0.000 ; free physical = 717 ; free virtual = 17209
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Constraint Validation Runtime : Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.04 . Memory (MB): peak = 2229.305 ; gain = 0.000 ; free physical = 716 ; free virtual = 17208
---------------------------------------------------------------------------------
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 705 ; free virtual = 17200
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Loading Part and Timing Information
---------------------------------------------------------------------------------
Loading part: xc7k160tfbg484-1
---------------------------------------------------------------------------------
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 705 ; free virtual = 17200
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying 'set_property' XDC Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 705 ; free virtual = 17200
---------------------------------------------------------------------------------
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[30].remd_tmp_reg[31]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[29].remd_tmp_reg[30]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[28].remd_tmp_reg[29]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[27].remd_tmp_reg[28]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[26].remd_tmp_reg[27]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[25].remd_tmp_reg[26]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[24].remd_tmp_reg[25]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[23].remd_tmp_reg[24]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[22].remd_tmp_reg[23]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[21].remd_tmp_reg[22]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[20].remd_tmp_reg[21]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[19].remd_tmp_reg[20]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[18].remd_tmp_reg[19]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[17].remd_tmp_reg[18]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[16].remd_tmp_reg[17]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[15].remd_tmp_reg[16]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[14].remd_tmp_reg[15]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[13].remd_tmp_reg[14]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[12].remd_tmp_reg[13]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[11].remd_tmp_reg[12]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[10].remd_tmp_reg[11]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[9].remd_tmp_reg[10]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[8].remd_tmp_reg[9]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[7].remd_tmp_reg[8]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[6].remd_tmp_reg[7]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[5].remd_tmp_reg[6]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[4].remd_tmp_reg[5]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[3].remd_tmp_reg[4]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[2].remd_tmp_reg[3]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[1].remd_tmp_reg[2]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[0].remd_tmp_reg[1]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 701 ; free virtual = 17198
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start RTL Component Statistics 
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input   33 Bit       Adders := 32    
	   3 Input   32 Bit       Adders := 3     
	   2 Input   32 Bit       Adders := 3     
	   2 Input   31 Bit       Adders := 1     
+---XORs : 
	   2 Input      1 Bit         XORs := 1     
+---Registers : 
	               32 Bit    Registers := 117   
	               31 Bit    Registers := 46    
	               10 Bit    Registers := 2     
	                2 Bit    Registers := 33    
	                1 Bit    Registers := 200   
+---Muxes : 
	   2 Input   32 Bit        Muxes := 49    
	   2 Input   31 Bit        Muxes := 49    
	   2 Input   10 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 78    
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
---------------------------------------------------------------------------------
Finished Part Resource Summary
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Cross Boundary and Area Optimization
---------------------------------------------------------------------------------
WARNING: [Synth 8-7080] Parallel synthesis criteria is not met
---------------------------------------------------------------------------------
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 693 ; free virtual = 17186
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying XDC Timing Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 692 ; free virtual = 17185
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Timing Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Timing Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 687 ; free virtual = 17180
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Technology Mapping
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Technology Mapping : Time (s): cpu = 00:00:27 ; elapsed = 00:00:29 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 679 ; free virtual = 17172
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 677 ; free virtual = 17170
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Instances
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 677 ; free virtual = 17170
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Rebuilding User Hierarchy
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 677 ; free virtual = 17169
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Ports
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 677 ; free virtual = 17169
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 677 ; free virtual = 17169
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Nets
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Nets : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 677 ; free virtual = 17169
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------

Static Shift Register Report:
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|Module Name | RTL Name                                                                                                                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[31].sign_tmp_reg[32][1]      | 33     | 1     | NO           | NO                 | YES               | 0      | 1       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[1].dividend_tmp_reg[2][31]   | 3      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[2].dividend_tmp_reg[3][31]   | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[3].dividend_tmp_reg[4][31]   | 5      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[4].dividend_tmp_reg[5][31]   | 6      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[5].dividend_tmp_reg[6][31]   | 7      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[6].dividend_tmp_reg[7][31]   | 8      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[7].dividend_tmp_reg[8][31]   | 9      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[8].dividend_tmp_reg[9][31]   | 10     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[9].dividend_tmp_reg[10][31]  | 11     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[10].dividend_tmp_reg[11][31] | 12     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[11].dividend_tmp_reg[12][31] | 13     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[12].dividend_tmp_reg[13][31] | 14     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[13].dividend_tmp_reg[14][31] | 15     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[14].dividend_tmp_reg[15][31] | 16     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[15].dividend_tmp_reg[16][31] | 17     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[16].dividend_tmp_reg[17][31] | 18     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[17].dividend_tmp_reg[18][31] | 19     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[18].dividend_tmp_reg[19][31] | 20     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[19].dividend_tmp_reg[20][31] | 21     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[20].dividend_tmp_reg[21][31] | 22     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[21].dividend_tmp_reg[22][31] | 23     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[22].dividend_tmp_reg[23][31] | 24     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[23].dividend_tmp_reg[24][31] | 25     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[24].dividend_tmp_reg[25][31] | 26     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[25].dividend_tmp_reg[26][31] | 27     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[26].dividend_tmp_reg[27][31] | 28     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[27].dividend_tmp_reg[28][31] | 29     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[28].dividend_tmp_reg[29][31] | 30     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[29].dividend_tmp_reg[30][31] | 31     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[30].dividend_tmp_reg[31][31] | 32     | 2     | NO           | NO                 | YES               | 0      | 2       | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Writing Synthesis Report
---------------------------------------------------------------------------------

Report BlackBoxes: 
+-+--------------+----------+
| |BlackBox name |Instances |
+-+--------------+----------+
+-+--------------+----------+

Report Cell Usage: 
+------+--------+------+
|      |Cell    |Count |
+------+--------+------+
|1     |CARRY4  |   334|
|2     |LUT1    |    97|
|3     |LUT2    |  1170|
|4     |LUT3    |  1731|
|5     |LUT4    |   285|
|6     |LUT5    |   281|
|7     |LUT6    |   427|
|8     |SRL16E  |    30|
|9     |SRLC32E |    31|
|10    |FDCE    |  1877|
|11    |FDPE    |    45|
|12    |FDRE    |  2247|
+------+--------+------+
---------------------------------------------------------------------------------
Finished Writing Synthesis Report : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2229.305 ; gain = 589.348 ; free physical = 677 ; free virtual = 17169
---------------------------------------------------------------------------------
Synthesis finished with 0 errors, 0 critical warnings and 176 warnings.
Synthesis Optimization Runtime : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2229.305 ; gain = 478.613 ; free physical = 676 ; free virtual = 17169
Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2229.312 ; gain = 589.348 ; free physical = 676 ; free virtual = 17169
INFO: [Project 1-571] Translating synthesized netlist
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.07 . Memory (MB): peak = 2229.312 ; gain = 0.000 ; free physical = 966 ; free virtual = 17459
INFO: [Netlist 29-17] Analyzing 334 Unisim elements for replacement
INFO: [Netlist 29-28] Unisim Transformation completed in 0 CPU seconds
INFO: [Project 1-570] Preparing netlist for logic optimization
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Vivado 12-4761] HD.CLK_SRC property is set on port clk. The net connecting to the port drives either clock PIN or hierarchical black box. Use the create_clock constraint to create a clock on this port prior to setting HD.CLK_SRC.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc:2]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2229.312 ; gain = 0.000 ; free physical = 965 ; free virtual = 17458
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Synth Design complete | Checksum: a422b383
INFO: [Common 17-83] Releasing license: Synthesis
178 Infos, 153 Warnings, 0 Critical Warnings and 0 Errors encountered.
synth_design completed successfully
synth_design: Time (s): cpu = 00:00:40 ; elapsed = 00:00:39 . Memory (MB): peak = 2229.312 ; gain = 947.199 ; free physical = 965 ; free virtual = 17458
INFO: [Common 17-2834] synth_design peak Physical Memory [PSS] (MB): overall = 1977.261; main = 1694.808; forked = 419.207
INFO: [Common 17-2834] synth_design peak Virtual Memory [VSS] (MB): overall = 3232.738; main = 2229.309; forked = 1003.430
# report_utilization > utilization_post_syn.rpt
# report_timing > timing_post_syn.rpt
# opt_design
Command: opt_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command opt_design

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Project 1-461] DRC finished with 0 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.

Time (s): cpu = 00:00:00.98 ; elapsed = 00:00:00.62 . Memory (MB): peak = 2497.816 ; gain = 65.672 ; free physical = 821 ; free virtual = 17314

Starting Cache Timing Information Task
Ending Cache Timing Information Task | Checksum: 17314502c

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2497.816 ; gain = 0.000 ; free physical = 821 ; free virtual = 17314

Starting Logic Optimization Task

Phase 1 Retarget
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
INFO: [Opt 31-49] Retargeted 0 cell(s).
Phase 1 Retarget | Checksum: 153351423

Time (s): cpu = 00:00:00.26 ; elapsed = 00:00:00.19 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
INFO: [Opt 31-389] Phase Retarget created 0 cells and removed 1 cells

Phase 2 Constant propagation
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Phase 2 Constant propagation | Checksum: 153351423

Time (s): cpu = 00:00:00.29 ; elapsed = 00:00:00.23 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
INFO: [Opt 31-389] Phase Constant propagation created 0 cells and removed 0 cells

Phase 3 Sweep
Phase 3 Sweep | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.34 ; elapsed = 00:00:00.31 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
INFO: [Opt 31-389] Phase Sweep created 0 cells and removed 0 cells

Phase 4 BUFG optimization
Phase 4 BUFG optimization | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.37 ; elapsed = 00:00:00.33 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
INFO: [Opt 31-662] Phase BUFG optimization created 0 cells of which 0 are BUFGs and removed 0 cells.

Phase 5 Shift Register Optimization
INFO: [Opt 31-1064] SRL Remap converted 0 SRLs to 0 registers and converted 0 registers of register chains to 0 SRLs
Phase 5 Shift Register Optimization | Checksum: 1130d8258

Time (s): cpu = 00:00:00.48 ; elapsed = 00:00:00.45 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
INFO: [Opt 31-389] Phase Shift Register Optimization created 0 cells and removed 0 cells

Phase 6 Post Processing Netlist
Phase 6 Post Processing Netlist | Checksum: 1130d8258

Time (s): cpu = 00:00:00.5 ; elapsed = 00:00:00.47 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
INFO: [Opt 31-389] Phase Post Processing Netlist created 0 cells and removed 0 cells
Opt_design Change Summary
=========================


-------------------------------------------------------------------------------------------------------------------------
|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
|  Retarget                     |               0  |               1  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------



Starting Connectivity Check Task

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
Ending Logic Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.51 ; elapsed = 00:00:00.49 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086

Starting Power Optimization Task
INFO: [Pwropt 34-132] Skipping clock gating for clocks with a period < 2.00 ns.
Ending Power Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086

Starting Final Cleanup Task
Ending Final Cleanup Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086

Starting Netlist Obfuscation Task
Netlist sorting complete. Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
Ending Netlist Obfuscation Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
INFO: [Common 17-83] Releasing license: Implementation
16 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
opt_design completed successfully
# place_design
Command: place_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.

Starting Placer Task
INFO: [Place 30-611] Multithreading enabled for place_design using a maximum of 4 CPUs

Phase 1 Placer Initialization

Phase 1.1 Placer Initialization Netlist Sorting
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
Phase 1.1 Placer Initialization Netlist Sorting | Checksum: f6503b6b

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 593 ; free virtual = 17086

Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
INFO: [Timing 38-35] Done setting XDC timing constraints.
Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fe19b6fa

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.54 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 584 ; free virtual = 17077

Phase 1.3 Build Placer Netlist Model
Phase 1.3 Build Placer Netlist Model | Checksum: 135bf5d00

Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 583 ; free virtual = 17076

Phase 1.4 Constrain Clocks/Macros
Phase 1.4 Constrain Clocks/Macros | Checksum: 135bf5d00

Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 583 ; free virtual = 17076
Phase 1 Placer Initialization | Checksum: 135bf5d00

Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 583 ; free virtual = 17076

Phase 2 Global Placement

Phase 2.1 Floorplanning
Phase 2.1 Floorplanning | Checksum: 14596477f

Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 583 ; free virtual = 17075

Phase 2.2 Update Timing before SLR Path Opt
Phase 2.2 Update Timing before SLR Path Opt | Checksum: 150afeab4

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 583 ; free virtual = 17075

Phase 2.3 Post-Processing in Floorplanning
Phase 2.3 Post-Processing in Floorplanning | Checksum: 150afeab4

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 583 ; free virtual = 17075

Phase 2.4 Global Placement Core

Phase 2.4.1 UpdateTiming Before Physical Synthesis
Phase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 102fdb088

Time (s): cpu = 00:00:08 ; elapsed = 00:00:03 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 581 ; free virtual = 17074

Phase 2.4.2 Physical Synthesis In Placer
INFO: [Physopt 32-1035] Found 0 LUTNM shape to break, 21 LUT instances to create LUTNM shape
INFO: [Physopt 32-1044] Break lutnm for timing: one critical 0, two critical 0, total 0, new lutff created 0
INFO: [Physopt 32-1138] End 1 Pass. Optimized 8 nets or LUTs. Breaked 0 LUT, combined 8 existing LUTs and moved 0 existing LUT
INFO: [Physopt 32-65] No nets found for high-fanout optimization.
INFO: [Physopt 32-232] Optimized 0 net. Created 0 new instance.
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
INFO: [Physopt 32-670] No setup violation found.  DSP Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register to Pipeline Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  BRAM Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  URAM Register Optimization was not performed.
INFO: [Physopt 32-949] No candidate nets found for dynamic/static region interface net replication
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 581 ; free virtual = 17074

Summary of Physical Synthesis Optimizations
============================================


-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  LUT Combining                                    |            0  |              8  |                     8  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |              8  |                     8  |           0  |           4  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------


Phase 2.4.2 Physical Synthesis In Placer | Checksum: 2486131e

Time (s): cpu = 00:00:09 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 580 ; free virtual = 17073
Phase 2.4 Global Placement Core | Checksum: fbfea87e

Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 580 ; free virtual = 17073
Phase 2 Global Placement | Checksum: fbfea87e

Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 580 ; free virtual = 17073

Phase 3 Detail Placement

Phase 3.1 Commit Multi Column Macros
Phase 3.1 Commit Multi Column Macros | Checksum: c50276c3

Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 580 ; free virtual = 17073

Phase 3.2 Commit Most Macros & LUTRAMs
Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: e46f5817

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 580 ; free virtual = 17073

Phase 3.3 Area Swap Optimization
Phase 3.3 Area Swap Optimization | Checksum: de583546

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 580 ; free virtual = 17073

Phase 3.4 Pipeline Register Optimization
Phase 3.4 Pipeline Register Optimization | Checksum: be204f64

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 580 ; free virtual = 17073

Phase 3.5 Small Shape Detail Placement
Phase 3.5 Small Shape Detail Placement | Checksum: 94419682

Time (s): cpu = 00:00:12 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 571 ; free virtual = 17064

Phase 3.6 Re-assign LUT pins
Phase 3.6 Re-assign LUT pins | Checksum: ae567486

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 571 ; free virtual = 17064

Phase 3.7 Pipeline Register Optimization
Phase 3.7 Pipeline Register Optimization | Checksum: 9bedb1cc

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 571 ; free virtual = 17064
Phase 3 Detail Placement | Checksum: 9bedb1cc

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 567 ; free virtual = 17060

Phase 4 Post Placement Optimization and Clean-Up

Phase 4.1 Post Commit Optimization
INFO: [Timing 38-35] Done setting XDC timing constraints.

Phase 4.1.1 Post Placement Optimization
Post Placement Optimization Initialization | Checksum: 1dce1905d

Phase 4.1.1.1 BUFG Insertion

Starting Physical Synthesis Task

Phase 1 Physical Synthesis Initialization
INFO: [Physopt 32-721] Multithreading enabled for phys_opt_design using a maximum of 4 CPUs
INFO: [Physopt 32-619] Estimated Timing Summary | WNS=0.856 | TNS=0.000 |
Phase 1 Physical Synthesis Initialization | Checksum: 15e870401

Time (s): cpu = 00:00:00.39 ; elapsed = 00:00:00.22 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
INFO: [Place 46-33] Processed net Buffer_20/tehb1/full_reg_reg_2, BUFG insertion was skipped due to placement/routing conflicts.
INFO: [Place 46-56] BUFG insertion identified 1 candidate nets. Inserted BUFG: 0, Replicated BUFG Driver: 0, Skipped due to Placement/Routing Conflicts: 1, Skipped due to Timing Degradation: 0, Skipped due to netlist editing failed: 0.
Ending Physical Synthesis Task | Checksum: 15e870401

Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.39 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
Phase 4.1.1.1 BUFG Insertion | Checksum: 1dce1905d

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069

Phase 4.1.1.2 Post Placement Timing Optimization
INFO: [Place 30-746] Post Placement Timing Summary WNS=0.856. For the most accurate timing information please run report_timing.
Phase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
Phase 4.1 Post Commit Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069

Phase 4.2 Post Placement Cleanup
Phase 4.2 Post Placement Cleanup | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069

Phase 4.3 Placer Reporting

Phase 4.3.1 Print Estimated Congestion
INFO: [Place 30-612] Post-Placement Estimated Congestion 
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|

Phase 4.3.1 Print Estimated Congestion | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
Phase 4.3 Placer Reporting | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069

Phase 4.4 Final Placement Cleanup
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
Phase 4 Post Placement Optimization and Clean-Up | Checksum: aad94594

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
Ending Placer Task | Checksum: 6b78ed0c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
INFO: [Common 17-83] Releasing license: Implementation
30 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
place_design completed successfully
place_design: Time (s): cpu = 00:00:17 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.816 ; gain = 0.000 ; free physical = 576 ; free virtual = 17069
# route_design
Command: route_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command route_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.


Starting Routing Task
INFO: [Route 35-254] Multithreading enabled for route_design using a maximum of 4 CPUs

Phase 1 Build RT Design
Checksum: PlaceDB: 48995917 ConstDB: 0 ShapeSum: 22df93f5 RouteDB: 0
WARNING: [Route 35-198] Port "rst" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "rst". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "start_valid" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "start_valid". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "end_ready" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "end_ready". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Constraints 18-8777] Unable to split tiles. All required files are not available.
Post Restoration Checksum: NetGraph: b2fa2627 | NumContArr: ca5c4ce1 | Constraints: 190a55ad | Timing: 0
Phase 1 Build RT Design | Checksum: 19660c8b5

Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 2719.641 ; gain = 20.824 ; free physical = 540 ; free virtual = 17039

Phase 2 Router Initialization

Phase 2.1 Fix Topology Constraints
Phase 2.1 Fix Topology Constraints | Checksum: 19660c8b5

Time (s): cpu = 00:00:21 ; elapsed = 00:00:16 . Memory (MB): peak = 2719.641 ; gain = 20.824 ; free physical = 542 ; free virtual = 17041

Phase 2.2 Pre Route Cleanup
Phase 2.2 Pre Route Cleanup | Checksum: 19660c8b5

Time (s): cpu = 00:00:21 ; elapsed = 00:00:16 . Memory (MB): peak = 2719.641 ; gain = 20.824 ; free physical = 542 ; free virtual = 17041
 Number of Nodes with overlaps = 0

Phase 2.3 Update Timing
Phase 2.3 Update Timing | Checksum: 254eba40d

Time (s): cpu = 00:00:24 ; elapsed = 00:00:17 . Memory (MB): peak = 2731.086 ; gain = 32.270 ; free physical = 486 ; free virtual = 16985
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.969  | TNS=0.000  | WHS=-0.134 | THS=-69.589|


Router Utilization Summary
  Global Vertical Routing Utilization    = 0 %
  Global Horizontal Routing Utilization  = 0 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 5968
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 5968
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 2 Router Initialization | Checksum: 22053b35b

Time (s): cpu = 00:00:26 ; elapsed = 00:00:18 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 479 ; free virtual = 16980

Phase 3 Initial Routing

Phase 3.1 Global Routing
Phase 3.1 Global Routing | Checksum: 22053b35b

Time (s): cpu = 00:00:26 ; elapsed = 00:00:18 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 479 ; free virtual = 16980
Phase 3 Initial Routing | Checksum: 19b82c5d6

Time (s): cpu = 00:00:26 ; elapsed = 00:00:19 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 478 ; free virtual = 16979

Phase 4 Rip-up And Reroute

Phase 4.1 Global Iteration 0
 Number of Nodes with overlaps = 359
 Number of Nodes with overlaps = 5
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.1 Global Iteration 0 | Checksum: 14dd991f6

Time (s): cpu = 00:00:28 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 451 ; free virtual = 16952

Phase 4.2 Global Iteration 1
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.2 Global Iteration 1 | Checksum: 18a885fe4

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 450 ; free virtual = 16952
Phase 4 Rip-up And Reroute | Checksum: 18a885fe4

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 450 ; free virtual = 16952

Phase 5 Delay and Skew Optimization

Phase 5.1 Delay CleanUp
Phase 5.1 Delay CleanUp | Checksum: 18a885fe4

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 449 ; free virtual = 16951

Phase 5.2 Clock Skew Optimization
Phase 5.2 Clock Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 449 ; free virtual = 16951
Phase 5 Delay and Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 449 ; free virtual = 16951

Phase 6 Post Hold Fix

Phase 6.1 Hold Fix Iter

Phase 6.1.1 Update Timing
Phase 6.1.1 Update Timing | Checksum: 1d580906c

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 440 ; free virtual = 16942
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

Phase 6.1 Hold Fix Iter | Checksum: 1264550c6

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 439 ; free virtual = 16942
Phase 6 Post Hold Fix | Checksum: 1264550c6

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 439 ; free virtual = 16942

Phase 7 Route finalize

Router Utilization Summary
  Global Vertical Routing Utilization    = 0.367907 %
  Global Horizontal Routing Utilization  = 0.48214 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 0
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 0
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 7 Route finalize | Checksum: 117be3bfb

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 438 ; free virtual = 16940

Phase 8 Verifying routed nets

 Verification completed successfully
Phase 8 Verifying routed nets | Checksum: 117be3bfb

Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 437 ; free virtual = 16939

Phase 9 Depositing Routes
Phase 9 Depositing Routes | Checksum: 133a50182

Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 429 ; free virtual = 16932

Phase 10 Post Router Timing
INFO: [Route 35-57] Estimated Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

INFO: [Route 35-327] The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
Phase 10 Post Router Timing | Checksum: 133a50182

Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 432 ; free virtual = 16934
INFO: [Route 35-16] Router Completed Successfully

Phase 11 Post-Route Event Processing
Phase 11 Post-Route Event Processing | Checksum: 853ad0fb

Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 428 ; free virtual = 16930

Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 428 ; free virtual = 16930

Routing Is Done.
INFO: [Common 17-83] Releasing license: Implementation
13 Infos, 100 Warnings, 0 Critical Warnings and 0 Errors encountered.
route_design completed successfully
route_design: Time (s): cpu = 00:00:32 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.086 ; gain = 35.270 ; free physical = 427 ; free virtual = 16929
# report_utilization > utilization_post_pr_elasticBuffer.rpt
# report_timing > timing_post_pr_elasticBuffer.rpt
INFO: [Common 17-206] Exiting Vivado at Mon May 22 12:26:55 2023...

****** Vivado v2023.1 (64-bit)
  **** SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
  **** IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
  **** SharedData Build 3865790 on Sun May 07 13:33:03 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source synthesis_elasticBuffer_pr.tcl
# read_vhdl -vhdl2008 vhdl/arithmetic_units.vhd
read_vhdl: Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1345.246 ; gain = 0.023 ; free physical = 1524 ; free virtual = 18078
# read_vhdl -vhdl2008 vhdl/delay_buffer.vhd
# read_vhdl -vhdl2008 vhdl/elastic_components.vhd
# read_vhdl -vhdl2008 vhdl/MemCont.vhd
# read_vhdl -vhdl2008 vhdl/multipliers.vhd
# read_vhdl -vhdl2008 vhdl/mul_wrapper.vhd
# read_vhdl -vhdl2008 vhdl/sharing_components.vhd
# read_vhdl -vhdl2008 vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd
# read_vhdl -vhdl2008 vhdl/if_loop_3_optimized.vhd
# read_xdc period_4.xdc
# synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Command: synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Starting synth_design
Attempting to get a license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Device 21-403] Loading part xc7k160tfbg484-1
INFO: [Synth 8-7079] Multithreading enabled for synth_design using a maximum of 4 processes.
INFO: [Synth 8-7078] Launching helper process for spawning children vivado processes
INFO: [Synth 8-7075] Helper process launched with PID 72802
---------------------------------------------------------------------------------
Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2018.141 ; gain = 377.801 ; free physical = 628 ; free virtual = 17204
---------------------------------------------------------------------------------
INFO: [Synth 8-638] synthesizing module 'if_loop_3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
INFO: [Synth 8-638] synthesizing module 'start_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'Const' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'icmp_sgt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module '\join ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-638] synthesizing module 'andN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'andN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
INFO: [Synth 8-256] done synthesizing module '\join ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-256] done synthesizing module 'icmp_sgt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module '\fork ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-638] synthesizing module 'eagerFork_RegisterBLock' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module 'eagerFork_RegisterBLock' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module '\fork ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'join__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'join__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-638] synthesizing module 'branchSimple' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branchSimple' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branch' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 3 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'start_node__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'source' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'merge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 4 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 4 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mux__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mux__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mc_load_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter DATA_SIZE bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mc_load_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
INFO: [Synth 8-638] synthesizing module 'sub_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sub_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 5 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 5 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'cntrlMerge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'merge_notehb' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge_notehb' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized5' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized5' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-256] done synthesizing module 'cntrlMerge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
INFO: [Synth 8-638] synthesizing module 'source__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'sdiv_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:93' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_U1' of component 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2338]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:10' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_divider_u' of component 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:138]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
INFO: [Synth 8-638] synthesizing module 'delay_buffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
	Parameter SIZE bound to: 35 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'delay_buffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
INFO: [Synth 8-256] done synthesizing module 'sdiv_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'add_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'add_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
INFO: [Synth 8-638] synthesizing module 'icmp_slt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'icmp_slt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized6' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized6' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'ret_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'ret_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
INFO: [Synth 8-638] synthesizing module 'MemCont' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
	Parameter DATA_SIZE bound to: 32 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter BB_COUNT bound to: 1 - type: integer 
	Parameter LOAD_COUNT bound to: 1 - type: integer 
	Parameter STORE_COUNT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
INFO: [Synth 8-638] synthesizing module 'read_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
INFO: [Synth 8-638] synthesizing module 'read_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
INFO: [Synth 8-638] synthesizing module 'read_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
INFO: [Synth 8-256] done synthesizing module 'read_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
INFO: [Synth 8-638] synthesizing module 'write_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'write_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
INFO: [Synth 8-638] synthesizing module 'write_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
INFO: [Synth 8-638] synthesizing module 'write_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
INFO: [Synth 8-638] synthesizing module 'write_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
INFO: [Synth 8-256] done synthesizing module 'write_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
WARNING: [Synth 8-614] signal 'rst' is read in the process but is not in the sensitivity list [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:814]
INFO: [Synth 8-256] done synthesizing module 'MemCont' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
INFO: [Synth 8-638] synthesizing module 'end_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter MEM_INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'end_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
INFO: [Synth 8-638] synthesizing module 'sink' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-256] done synthesizing module 'if_loop_3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity cntrlMerge does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1596]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source__parameterized0 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-6014] Unused sequential element run_proc[31].divisor_tmp_reg[32] was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:68]
WARNING: [Synth 8-6014] Unused sequential element remd_reg was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:186]
WARNING: [Synth 8-3848] Net eReadyArray in module/entity end_node does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:371]
WARNING: [Synth 8-3848] Net n_ready_out in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:23]
WARNING: [Synth 8-3848] Net a_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:31]
WARNING: [Synth 8-3848] Net a_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:32]
WARNING: [Synth 8-3848] Net b_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:41]
WARNING: [Synth 8-3848] Net b_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:42]
WARNING: [Synth 8-3848] Net start_0_dataInArray_0 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:146]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1247]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1243]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1248]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1244]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1269]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1265]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1270]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1266]
WARNING: [Synth 8-7129] Port clk in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][31] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[1] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[0] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_Empty_Ready in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_wrDataPorts_valid[0] in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[1][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module source is either unconnected or has no load
INFO: [Common 17-14] Message 'Synth 8-7129' appears 100 times and further instances of the messages will be disabled. Use the Tcl command set_msg_config to change the current settings.
---------------------------------------------------------------------------------
Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2104.078 ; gain = 463.738 ; free physical = 522 ; free virtual = 17100
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2121.891 ; gain = 481.551 ; free physical = 522 ; free virtual = 17100
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2121.891 ; gain = 481.551 ; free physical = 522 ; free virtual = 17100
---------------------------------------------------------------------------------
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2121.891 ; gain = 0.000 ; free physical = 522 ; free virtual = 17100
INFO: [Project 1-570] Preparing netlist for logic optimization

Processing XDC Constraints
Initializing timing engine
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Completed Processing XDC Constraints

Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2225.625 ; gain = 0.000 ; free physical = 513 ; free virtual = 17093
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Constraint Validation Runtime : Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.04 . Memory (MB): peak = 2225.625 ; gain = 0.000 ; free physical = 513 ; free virtual = 17093
---------------------------------------------------------------------------------
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 458 ; free virtual = 17060
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Loading Part and Timing Information
---------------------------------------------------------------------------------
Loading part: xc7k160tfbg484-1
---------------------------------------------------------------------------------
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 458 ; free virtual = 17060
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying 'set_property' XDC Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 458 ; free virtual = 17060
---------------------------------------------------------------------------------
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[30].remd_tmp_reg[31]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[29].remd_tmp_reg[30]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[28].remd_tmp_reg[29]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[27].remd_tmp_reg[28]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[26].remd_tmp_reg[27]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[25].remd_tmp_reg[26]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[24].remd_tmp_reg[25]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[23].remd_tmp_reg[24]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[22].remd_tmp_reg[23]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[21].remd_tmp_reg[22]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[20].remd_tmp_reg[21]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[19].remd_tmp_reg[20]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[18].remd_tmp_reg[19]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[17].remd_tmp_reg[18]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[16].remd_tmp_reg[17]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[15].remd_tmp_reg[16]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[14].remd_tmp_reg[15]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[13].remd_tmp_reg[14]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[12].remd_tmp_reg[13]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[11].remd_tmp_reg[12]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[10].remd_tmp_reg[11]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[9].remd_tmp_reg[10]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[8].remd_tmp_reg[9]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[7].remd_tmp_reg[8]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[6].remd_tmp_reg[7]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[5].remd_tmp_reg[6]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[4].remd_tmp_reg[5]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[3].remd_tmp_reg[4]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[2].remd_tmp_reg[3]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[1].remd_tmp_reg[2]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[0].remd_tmp_reg[1]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 471 ; free virtual = 17072
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start RTL Component Statistics 
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input   33 Bit       Adders := 32    
	   3 Input   32 Bit       Adders := 3     
	   2 Input   32 Bit       Adders := 3     
	   2 Input   31 Bit       Adders := 1     
+---XORs : 
	   2 Input      1 Bit         XORs := 1     
+---Registers : 
	               32 Bit    Registers := 117   
	               31 Bit    Registers := 46    
	               10 Bit    Registers := 2     
	                2 Bit    Registers := 33    
	                1 Bit    Registers := 200   
+---Muxes : 
	   2 Input   32 Bit        Muxes := 49    
	   2 Input   31 Bit        Muxes := 49    
	   2 Input   10 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 78    
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
---------------------------------------------------------------------------------
Finished Part Resource Summary
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Cross Boundary and Area Optimization
---------------------------------------------------------------------------------
WARNING: [Synth 8-7080] Parallel synthesis criteria is not met
---------------------------------------------------------------------------------
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 460 ; free virtual = 17060
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying XDC Timing Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 463 ; free virtual = 17064
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Timing Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 456 ; free virtual = 17056
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Technology Mapping
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 463 ; free virtual = 17063
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished IO Insertion : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 447 ; free virtual = 17048
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Instances
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Instances : Time (s): cpu = 00:00:32 ; elapsed = 00:00:35 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 447 ; free virtual = 17048
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Rebuilding User Hierarchy
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 459 ; free virtual = 17060
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Ports
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 459 ; free virtual = 17060
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 459 ; free virtual = 17060
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Nets
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 459 ; free virtual = 17060
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------

Static Shift Register Report:
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|Module Name | RTL Name                                                                                                                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[31].sign_tmp_reg[32][1]      | 33     | 1     | NO           | NO                 | YES               | 0      | 1       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[1].dividend_tmp_reg[2][31]   | 3      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[2].dividend_tmp_reg[3][31]   | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[3].dividend_tmp_reg[4][31]   | 5      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[4].dividend_tmp_reg[5][31]   | 6      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[5].dividend_tmp_reg[6][31]   | 7      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[6].dividend_tmp_reg[7][31]   | 8      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[7].dividend_tmp_reg[8][31]   | 9      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[8].dividend_tmp_reg[9][31]   | 10     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[9].dividend_tmp_reg[10][31]  | 11     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[10].dividend_tmp_reg[11][31] | 12     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[11].dividend_tmp_reg[12][31] | 13     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[12].dividend_tmp_reg[13][31] | 14     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[13].dividend_tmp_reg[14][31] | 15     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[14].dividend_tmp_reg[15][31] | 16     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[15].dividend_tmp_reg[16][31] | 17     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[16].dividend_tmp_reg[17][31] | 18     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[17].dividend_tmp_reg[18][31] | 19     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[18].dividend_tmp_reg[19][31] | 20     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[19].dividend_tmp_reg[20][31] | 21     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[20].dividend_tmp_reg[21][31] | 22     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[21].dividend_tmp_reg[22][31] | 23     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[22].dividend_tmp_reg[23][31] | 24     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[23].dividend_tmp_reg[24][31] | 25     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[24].dividend_tmp_reg[25][31] | 26     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[25].dividend_tmp_reg[26][31] | 27     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[26].dividend_tmp_reg[27][31] | 28     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[27].dividend_tmp_reg[28][31] | 29     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[28].dividend_tmp_reg[29][31] | 30     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[29].dividend_tmp_reg[30][31] | 31     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[30].dividend_tmp_reg[31][31] | 32     | 2     | NO           | NO                 | YES               | 0      | 2       | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Writing Synthesis Report
---------------------------------------------------------------------------------

Report BlackBoxes: 
+-+--------------+----------+
| |BlackBox name |Instances |
+-+--------------+----------+
+-+--------------+----------+

Report Cell Usage: 
+------+--------+------+
|      |Cell    |Count |
+------+--------+------+
|1     |CARRY4  |   334|
|2     |LUT1    |    97|
|3     |LUT2    |  1170|
|4     |LUT3    |  1731|
|5     |LUT4    |   285|
|6     |LUT5    |   281|
|7     |LUT6    |   427|
|8     |SRL16E  |    30|
|9     |SRLC32E |    31|
|10    |FDCE    |  1877|
|11    |FDPE    |    45|
|12    |FDRE    |  2247|
+------+--------+------+
---------------------------------------------------------------------------------
Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2225.625 ; gain = 585.285 ; free physical = 459 ; free virtual = 17060
---------------------------------------------------------------------------------
Synthesis finished with 0 errors, 0 critical warnings and 176 warnings.
Synthesis Optimization Runtime : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2225.625 ; gain = 481.551 ; free physical = 459 ; free virtual = 17060
Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2225.633 ; gain = 585.285 ; free physical = 459 ; free virtual = 17060
INFO: [Project 1-571] Translating synthesized netlist
Netlist sorting complete. Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.07 . Memory (MB): peak = 2225.633 ; gain = 0.000 ; free physical = 731 ; free virtual = 17332
INFO: [Netlist 29-17] Analyzing 334 Unisim elements for replacement
INFO: [Netlist 29-28] Unisim Transformation completed in 0 CPU seconds
INFO: [Project 1-570] Preparing netlist for logic optimization
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Vivado 12-4761] HD.CLK_SRC property is set on port clk. The net connecting to the port drives either clock PIN or hierarchical black box. Use the create_clock constraint to create a clock on this port prior to setting HD.CLK_SRC.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc:2]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2225.633 ; gain = 0.000 ; free physical = 724 ; free virtual = 17327
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Synth Design complete | Checksum: a422b383
INFO: [Common 17-83] Releasing license: Synthesis
178 Infos, 153 Warnings, 0 Critical Warnings and 0 Errors encountered.
synth_design completed successfully
synth_design: Time (s): cpu = 00:00:42 ; elapsed = 00:00:42 . Memory (MB): peak = 2225.633 ; gain = 880.387 ; free physical = 724 ; free virtual = 17328
INFO: [Common 17-2834] synth_design peak Physical Memory [PSS] (MB): overall = 1970.852; main = 1692.834; forked = 419.186
INFO: [Common 17-2834] synth_design peak Virtual Memory [VSS] (MB): overall = 3229.062; main = 2225.629; forked = 1003.434
# report_utilization > utilization_post_syn.rpt
# report_timing > timing_post_syn.rpt
# opt_design
Command: opt_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command opt_design

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Project 1-461] DRC finished with 0 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.7 . Memory (MB): peak = 2499.137 ; gain = 67.672 ; free physical = 577 ; free virtual = 17187

Starting Cache Timing Information Task
Ending Cache Timing Information Task | Checksum: 17314502c

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2499.137 ; gain = 0.000 ; free physical = 577 ; free virtual = 17185

Starting Logic Optimization Task

Phase 1 Retarget
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
INFO: [Opt 31-49] Retargeted 0 cell(s).
Phase 1 Retarget | Checksum: 153351423

Time (s): cpu = 00:00:00.31 ; elapsed = 00:00:00.24 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 346 ; free virtual = 16947
INFO: [Opt 31-389] Phase Retarget created 0 cells and removed 1 cells

Phase 2 Constant propagation
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Phase 2 Constant propagation | Checksum: 153351423

Time (s): cpu = 00:00:00.35 ; elapsed = 00:00:00.28 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 346 ; free virtual = 16947
INFO: [Opt 31-389] Phase Constant propagation created 0 cells and removed 0 cells

Phase 3 Sweep
Phase 3 Sweep | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.44 ; elapsed = 00:00:00.37 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 345 ; free virtual = 16946
INFO: [Opt 31-389] Phase Sweep created 0 cells and removed 0 cells

Phase 4 BUFG optimization
Phase 4 BUFG optimization | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.47 ; elapsed = 00:00:00.4 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 345 ; free virtual = 16946
INFO: [Opt 31-662] Phase BUFG optimization created 0 cells of which 0 are BUFGs and removed 0 cells.

Phase 5 Shift Register Optimization
INFO: [Opt 31-1064] SRL Remap converted 0 SRLs to 0 registers and converted 0 registers of register chains to 0 SRLs
Phase 5 Shift Register Optimization | Checksum: 1130d8258

Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.54 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945
INFO: [Opt 31-389] Phase Shift Register Optimization created 0 cells and removed 0 cells

Phase 6 Post Processing Netlist
Phase 6 Post Processing Netlist | Checksum: 1130d8258

Time (s): cpu = 00:00:00.63 ; elapsed = 00:00:00.56 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945
INFO: [Opt 31-389] Phase Post Processing Netlist created 0 cells and removed 0 cells
Opt_design Change Summary
=========================


-------------------------------------------------------------------------------------------------------------------------
|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
|  Retarget                     |               0  |               1  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------



Starting Connectivity Check Task

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945
Ending Logic Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.64 ; elapsed = 00:00:00.58 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945

Starting Power Optimization Task
INFO: [Pwropt 34-132] Skipping clock gating for clocks with a period < 2.00 ns.
Ending Power Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945

Starting Final Cleanup Task
Ending Final Cleanup Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945

Starting Netlist Obfuscation Task
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945
Ending Netlist Obfuscation Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945
INFO: [Common 17-83] Releasing license: Implementation
16 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
opt_design completed successfully
# place_design
Command: place_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.

Starting Placer Task
INFO: [Place 30-611] Multithreading enabled for place_design using a maximum of 4 CPUs

Phase 1 Placer Initialization

Phase 1.1 Placer Initialization Netlist Sorting
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945
Phase 1.1 Placer Initialization Netlist Sorting | Checksum: f6503b6b

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 344 ; free virtual = 16945

Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
INFO: [Timing 38-35] Done setting XDC timing constraints.
Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fe19b6fa

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.74 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 356 ; free virtual = 16957

Phase 1.3 Build Placer Netlist Model
Phase 1.3 Build Placer Netlist Model | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 352 ; free virtual = 16954

Phase 1.4 Constrain Clocks/Macros
Phase 1.4 Constrain Clocks/Macros | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 352 ; free virtual = 16954
Phase 1 Placer Initialization | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 352 ; free virtual = 16954

Phase 2 Global Placement

Phase 2.1 Floorplanning
Phase 2.1 Floorplanning | Checksum: 14596477f

Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 353 ; free virtual = 16956

Phase 2.2 Update Timing before SLR Path Opt
Phase 2.2 Update Timing before SLR Path Opt | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 356 ; free virtual = 16959

Phase 2.3 Post-Processing in Floorplanning
Phase 2.3 Post-Processing in Floorplanning | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 2698.137 ; gain = 0.000 ; free physical = 356 ; free virtual = 16959

Phase 2.4 Global Placement Core

Phase 2.4.1 UpdateTiming Before Physical Synthesis
Phase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 102fdb088

Time (s): cpu = 00:00:14 ; elapsed = 00:00:08 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 342 ; free virtual = 16944

Phase 2.4.2 Physical Synthesis In Placer
INFO: [Physopt 32-1035] Found 0 LUTNM shape to break, 21 LUT instances to create LUTNM shape
INFO: [Physopt 32-1044] Break lutnm for timing: one critical 0, two critical 0, total 0, new lutff created 0
INFO: [Physopt 32-1138] End 1 Pass. Optimized 8 nets or LUTs. Breaked 0 LUT, combined 8 existing LUTs and moved 0 existing LUT
INFO: [Physopt 32-65] No nets found for high-fanout optimization.
INFO: [Physopt 32-232] Optimized 0 net. Created 0 new instance.
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
INFO: [Physopt 32-670] No setup violation found.  DSP Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register to Pipeline Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  BRAM Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  URAM Register Optimization was not performed.
INFO: [Physopt 32-949] No candidate nets found for dynamic/static region interface net replication
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2706.141 ; gain = 0.000 ; free physical = 340 ; free virtual = 16943

Summary of Physical Synthesis Optimizations
============================================


-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  LUT Combining                                    |            0  |              8  |                     8  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |              8  |                     8  |           0  |           4  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------


Phase 2.4.2 Physical Synthesis In Placer | Checksum: 2486131e

Time (s): cpu = 00:00:15 ; elapsed = 00:00:09 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 338 ; free virtual = 16942
Phase 2.4 Global Placement Core | Checksum: fbfea87e

Time (s): cpu = 00:00:16 ; elapsed = 00:00:09 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 338 ; free virtual = 16941
Phase 2 Global Placement | Checksum: fbfea87e

Time (s): cpu = 00:00:16 ; elapsed = 00:00:09 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 338 ; free virtual = 16941

Phase 3 Detail Placement

Phase 3.1 Commit Multi Column Macros
Phase 3.1 Commit Multi Column Macros | Checksum: c50276c3

Time (s): cpu = 00:00:16 ; elapsed = 00:00:09 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 339 ; free virtual = 16942

Phase 3.2 Commit Most Macros & LUTRAMs
Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: e46f5817

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 335 ; free virtual = 16938

Phase 3.3 Area Swap Optimization
Phase 3.3 Area Swap Optimization | Checksum: de583546

Time (s): cpu = 00:00:18 ; elapsed = 00:00:10 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 335 ; free virtual = 16938

Phase 3.4 Pipeline Register Optimization
Phase 3.4 Pipeline Register Optimization | Checksum: be204f64

Time (s): cpu = 00:00:18 ; elapsed = 00:00:10 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 334 ; free virtual = 16938

Phase 3.5 Small Shape Detail Placement
Phase 3.5 Small Shape Detail Placement | Checksum: 94419682

Time (s): cpu = 00:00:19 ; elapsed = 00:00:12 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 336 ; free virtual = 16939

Phase 3.6 Re-assign LUT pins
Phase 3.6 Re-assign LUT pins | Checksum: ae567486

Time (s): cpu = 00:00:19 ; elapsed = 00:00:12 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 332 ; free virtual = 16936

Phase 3.7 Pipeline Register Optimization
Phase 3.7 Pipeline Register Optimization | Checksum: 9bedb1cc

Time (s): cpu = 00:00:19 ; elapsed = 00:00:12 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 333 ; free virtual = 16936
Phase 3 Detail Placement | Checksum: 9bedb1cc

Time (s): cpu = 00:00:19 ; elapsed = 00:00:12 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 333 ; free virtual = 16936

Phase 4 Post Placement Optimization and Clean-Up

Phase 4.1 Post Commit Optimization
INFO: [Timing 38-35] Done setting XDC timing constraints.

Phase 4.1.1 Post Placement Optimization
Post Placement Optimization Initialization | Checksum: 1dce1905d

Phase 4.1.1.1 BUFG Insertion

Starting Physical Synthesis Task

Phase 1 Physical Synthesis Initialization
INFO: [Physopt 32-721] Multithreading enabled for phys_opt_design using a maximum of 4 CPUs
INFO: [Physopt 32-619] Estimated Timing Summary | WNS=0.856 | TNS=0.000 |
Phase 1 Physical Synthesis Initialization | Checksum: 15e870401

Time (s): cpu = 00:00:00.41 ; elapsed = 00:00:00.31 . Memory (MB): peak = 2706.141 ; gain = 0.000 ; free physical = 322 ; free virtual = 16926
INFO: [Place 46-33] Processed net Buffer_20/tehb1/full_reg_reg_2, BUFG insertion was skipped due to placement/routing conflicts.
INFO: [Place 46-56] BUFG insertion identified 1 candidate nets. Inserted BUFG: 0, Replicated BUFG Driver: 0, Skipped due to Placement/Routing Conflicts: 1, Skipped due to Timing Degradation: 0, Skipped due to netlist editing failed: 0.
Ending Physical Synthesis Task | Checksum: 15e870401

Time (s): cpu = 00:00:00.6 ; elapsed = 00:00:00.5 . Memory (MB): peak = 2706.141 ; gain = 0.000 ; free physical = 322 ; free virtual = 16925
Phase 4.1.1.1 BUFG Insertion | Checksum: 1dce1905d

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 323 ; free virtual = 16926

Phase 4.1.1.2 Post Placement Timing Optimization
INFO: [Place 30-746] Post Placement Timing Summary WNS=0.856. For the most accurate timing information please run report_timing.
Phase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 323 ; free virtual = 16927

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 323 ; free virtual = 16927
Phase 4.1 Post Commit Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 323 ; free virtual = 16927

Phase 4.2 Post Placement Cleanup
Phase 4.2 Post Placement Cleanup | Checksum: 1812a159c

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 322 ; free virtual = 16925

Phase 4.3 Placer Reporting

Phase 4.3.1 Print Estimated Congestion
INFO: [Place 30-612] Post-Placement Estimated Congestion 
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|

Phase 4.3.1 Print Estimated Congestion | Checksum: 1812a159c

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 322 ; free virtual = 16925
Phase 4.3 Placer Reporting | Checksum: 1812a159c

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 322 ; free virtual = 16925

Phase 4.4 Final Placement Cleanup
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2706.141 ; gain = 0.000 ; free physical = 322 ; free virtual = 16925

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 322 ; free virtual = 16925
Phase 4 Post Placement Optimization and Clean-Up | Checksum: aad94594

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 324 ; free virtual = 16927
Ending Placer Task | Checksum: 6b78ed0c

Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 323 ; free virtual = 16926
INFO: [Common 17-83] Releasing license: Implementation
30 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
place_design completed successfully
place_design: Time (s): cpu = 00:00:24 ; elapsed = 00:00:15 . Memory (MB): peak = 2706.141 ; gain = 8.004 ; free physical = 323 ; free virtual = 16926
# route_design
Command: route_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command route_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.


Starting Routing Task
INFO: [Route 35-254] Multithreading enabled for route_design using a maximum of 4 CPUs

Phase 1 Build RT Design
Checksum: PlaceDB: 48995917 ConstDB: 0 ShapeSum: 22df93f5 RouteDB: 0
WARNING: [Route 35-198] Port "rst" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "rst". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "start_valid" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "start_valid". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "end_ready" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "end_ready". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Constraints 18-8777] Unable to split tiles. All required files are not available.
Post Restoration Checksum: NetGraph: b2fa2627 | NumContArr: ca5c4ce1 | Constraints: 190a55ad | Timing: 0
Phase 1 Build RT Design | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 2718.961 ; gain = 12.820 ; free physical = 231 ; free virtual = 16838

Phase 2 Router Initialization

Phase 2.1 Fix Topology Constraints
Phase 2.1 Fix Topology Constraints | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 2718.961 ; gain = 12.820 ; free physical = 231 ; free virtual = 16838

Phase 2.2 Pre Route Cleanup
Phase 2.2 Pre Route Cleanup | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 2718.961 ; gain = 12.820 ; free physical = 231 ; free virtual = 16838
 Number of Nodes with overlaps = 0

Phase 2.3 Update Timing
Phase 2.3 Update Timing | Checksum: 254eba40d

Time (s): cpu = 00:00:26 ; elapsed = 00:00:20 . Memory (MB): peak = 2732.680 ; gain = 26.539 ; free physical = 208 ; free virtual = 16813
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.969  | TNS=0.000  | WHS=-0.134 | THS=-69.589|


Router Utilization Summary
  Global Vertical Routing Utilization    = 0 %
  Global Horizontal Routing Utilization  = 0 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 5968
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 5968
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 2 Router Initialization | Checksum: 22053b35b

Time (s): cpu = 00:00:28 ; elapsed = 00:00:21 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 177 ; free virtual = 16783

Phase 3 Initial Routing

Phase 3.1 Global Routing
Phase 3.1 Global Routing | Checksum: 22053b35b

Time (s): cpu = 00:00:28 ; elapsed = 00:00:21 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 177 ; free virtual = 16783
Phase 3 Initial Routing | Checksum: 19b82c5d6

Time (s): cpu = 00:00:28 ; elapsed = 00:00:21 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 176 ; free virtual = 16782

Phase 4 Rip-up And Reroute

Phase 4.1 Global Iteration 0
 Number of Nodes with overlaps = 359
 Number of Nodes with overlaps = 5
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.1 Global Iteration 0 | Checksum: 14dd991f6

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 174 ; free virtual = 16780

Phase 4.2 Global Iteration 1
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.2 Global Iteration 1 | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16777
Phase 4 Rip-up And Reroute | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16777

Phase 5 Delay and Skew Optimization

Phase 5.1 Delay CleanUp
Phase 5.1 Delay CleanUp | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16776

Phase 5.2 Clock Skew Optimization
Phase 5.2 Clock Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16776
Phase 5 Delay and Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16776

Phase 6 Post Hold Fix

Phase 6.1 Hold Fix Iter

Phase 6.1.1 Update Timing
Phase 6.1.1 Update Timing | Checksum: 1d580906c

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16776
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

Phase 6.1 Hold Fix Iter | Checksum: 1264550c6

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16776
Phase 6 Post Hold Fix | Checksum: 1264550c6

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16776

Phase 7 Route finalize

Router Utilization Summary
  Global Vertical Routing Utilization    = 0.367907 %
  Global Horizontal Routing Utilization  = 0.48214 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 0
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 0
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 7 Route finalize | Checksum: 117be3bfb

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 169 ; free virtual = 16776

Phase 8 Verifying routed nets

 Verification completed successfully
Phase 8 Verifying routed nets | Checksum: 117be3bfb

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 169 ; free virtual = 16776

Phase 9 Depositing Routes
Phase 9 Depositing Routes | Checksum: 133a50182

Time (s): cpu = 00:00:32 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 170 ; free virtual = 16776

Phase 10 Post Router Timing
INFO: [Route 35-57] Estimated Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

INFO: [Route 35-327] The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
Phase 10 Post Router Timing | Checksum: 133a50182

Time (s): cpu = 00:00:32 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 169 ; free virtual = 16775
INFO: [Route 35-16] Router Completed Successfully

Phase 11 Post-Route Event Processing
Phase 11 Post-Route Event Processing | Checksum: 853ad0fb

Time (s): cpu = 00:00:32 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 181 ; free virtual = 16787

Time (s): cpu = 00:00:32 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 181 ; free virtual = 16787

Routing Is Done.
INFO: [Common 17-83] Releasing license: Implementation
13 Infos, 100 Warnings, 0 Critical Warnings and 0 Errors encountered.
route_design completed successfully
route_design: Time (s): cpu = 00:00:34 ; elapsed = 00:00:25 . Memory (MB): peak = 2735.680 ; gain = 29.539 ; free physical = 180 ; free virtual = 16786
# report_utilization > utilization_post_pr_elasticBuffer.rpt
# report_timing > timing_post_pr_elasticBuffer.rpt
INFO: [Common 17-206] Exiting Vivado at Mon May 22 12:28:39 2023...

****** Vivado v2023.1 (64-bit)
  **** SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
  **** IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
  **** SharedData Build 3865790 on Sun May 07 13:33:03 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source synthesis_elasticBuffer_pr.tcl
# read_vhdl -vhdl2008 vhdl/arithmetic_units.vhd
read_vhdl: Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1345.133 ; gain = 0.023 ; free physical = 1506 ; free virtual = 18096
# read_vhdl -vhdl2008 vhdl/delay_buffer.vhd
# read_vhdl -vhdl2008 vhdl/elastic_components.vhd
# read_vhdl -vhdl2008 vhdl/MemCont.vhd
# read_vhdl -vhdl2008 vhdl/multipliers.vhd
# read_vhdl -vhdl2008 vhdl/mul_wrapper.vhd
# read_vhdl -vhdl2008 vhdl/sharing_components.vhd
# read_vhdl -vhdl2008 vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd
# read_vhdl -vhdl2008 vhdl/if_loop_3_optimized.vhd
# read_xdc period_4.xdc
# synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Command: synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Starting synth_design
Attempting to get a license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Device 21-403] Loading part xc7k160tfbg484-1
INFO: [Synth 8-7079] Multithreading enabled for synth_design using a maximum of 4 processes.
INFO: [Synth 8-7078] Launching helper process for spawning children vivado processes
INFO: [Synth 8-7075] Helper process launched with PID 74526
---------------------------------------------------------------------------------
Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2018.059 ; gain = 378.801 ; free physical = 636 ; free virtual = 17222
---------------------------------------------------------------------------------
INFO: [Synth 8-638] synthesizing module 'if_loop_3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
INFO: [Synth 8-638] synthesizing module 'start_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'Const' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'icmp_sgt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module '\join ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-638] synthesizing module 'andN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'andN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
INFO: [Synth 8-256] done synthesizing module '\join ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-256] done synthesizing module 'icmp_sgt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module '\fork ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-638] synthesizing module 'eagerFork_RegisterBLock' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module 'eagerFork_RegisterBLock' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module '\fork ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'join__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'join__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-638] synthesizing module 'branchSimple' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branchSimple' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branch' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 3 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'start_node__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'source' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'merge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 4 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 4 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mux__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mux__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mc_load_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter DATA_SIZE bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mc_load_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
INFO: [Synth 8-638] synthesizing module 'sub_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sub_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 5 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 5 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'cntrlMerge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'merge_notehb' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge_notehb' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized5' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized5' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-256] done synthesizing module 'cntrlMerge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
INFO: [Synth 8-638] synthesizing module 'source__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'sdiv_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:93' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_U1' of component 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2338]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:10' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_divider_u' of component 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:138]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
INFO: [Synth 8-638] synthesizing module 'delay_buffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
	Parameter SIZE bound to: 35 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'delay_buffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
INFO: [Synth 8-256] done synthesizing module 'sdiv_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'add_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'add_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
INFO: [Synth 8-638] synthesizing module 'icmp_slt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'icmp_slt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized6' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized6' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'ret_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'ret_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
INFO: [Synth 8-638] synthesizing module 'MemCont' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
	Parameter DATA_SIZE bound to: 32 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter BB_COUNT bound to: 1 - type: integer 
	Parameter LOAD_COUNT bound to: 1 - type: integer 
	Parameter STORE_COUNT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
INFO: [Synth 8-638] synthesizing module 'read_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
INFO: [Synth 8-638] synthesizing module 'read_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
INFO: [Synth 8-638] synthesizing module 'read_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
INFO: [Synth 8-256] done synthesizing module 'read_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
INFO: [Synth 8-638] synthesizing module 'write_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'write_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
INFO: [Synth 8-638] synthesizing module 'write_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
INFO: [Synth 8-638] synthesizing module 'write_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
INFO: [Synth 8-638] synthesizing module 'write_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
INFO: [Synth 8-256] done synthesizing module 'write_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
WARNING: [Synth 8-614] signal 'rst' is read in the process but is not in the sensitivity list [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:814]
INFO: [Synth 8-256] done synthesizing module 'MemCont' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
INFO: [Synth 8-638] synthesizing module 'end_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter MEM_INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'end_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
INFO: [Synth 8-638] synthesizing module 'sink' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-256] done synthesizing module 'if_loop_3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity cntrlMerge does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1596]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source__parameterized0 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-6014] Unused sequential element run_proc[31].divisor_tmp_reg[32] was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:68]
WARNING: [Synth 8-6014] Unused sequential element remd_reg was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:186]
WARNING: [Synth 8-3848] Net eReadyArray in module/entity end_node does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:371]
WARNING: [Synth 8-3848] Net n_ready_out in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:23]
WARNING: [Synth 8-3848] Net a_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:31]
WARNING: [Synth 8-3848] Net a_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:32]
WARNING: [Synth 8-3848] Net b_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:41]
WARNING: [Synth 8-3848] Net b_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:42]
WARNING: [Synth 8-3848] Net start_0_dataInArray_0 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:146]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1247]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1243]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1248]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1244]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1269]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1265]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1270]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1266]
WARNING: [Synth 8-7129] Port clk in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][31] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[1] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[0] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_Empty_Ready in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_wrDataPorts_valid[0] in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[1][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module source is either unconnected or has no load
INFO: [Common 17-14] Message 'Synth 8-7129' appears 100 times and further instances of the messages will be disabled. Use the Tcl command set_msg_config to change the current settings.
---------------------------------------------------------------------------------
Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2103.996 ; gain = 464.738 ; free physical = 518 ; free virtual = 17108
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.840 ; gain = 479.582 ; free physical = 517 ; free virtual = 17107
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.840 ; gain = 479.582 ; free physical = 517 ; free virtual = 17107
---------------------------------------------------------------------------------
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2118.840 ; gain = 0.000 ; free physical = 516 ; free virtual = 17107
INFO: [Project 1-570] Preparing netlist for logic optimization

Processing XDC Constraints
Initializing timing engine
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Completed Processing XDC Constraints

Netlist sorting complete. Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2220.574 ; gain = 0.000 ; free physical = 500 ; free virtual = 17090
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Constraint Validation Runtime : Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2220.574 ; gain = 0.000 ; free physical = 499 ; free virtual = 17089
---------------------------------------------------------------------------------
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 482 ; free virtual = 17069
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Loading Part and Timing Information
---------------------------------------------------------------------------------
Loading part: xc7k160tfbg484-1
---------------------------------------------------------------------------------
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 482 ; free virtual = 17069
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying 'set_property' XDC Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 482 ; free virtual = 17069
---------------------------------------------------------------------------------
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[30].remd_tmp_reg[31]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[29].remd_tmp_reg[30]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[28].remd_tmp_reg[29]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[27].remd_tmp_reg[28]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[26].remd_tmp_reg[27]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[25].remd_tmp_reg[26]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[24].remd_tmp_reg[25]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[23].remd_tmp_reg[24]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[22].remd_tmp_reg[23]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[21].remd_tmp_reg[22]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[20].remd_tmp_reg[21]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[19].remd_tmp_reg[20]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[18].remd_tmp_reg[19]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[17].remd_tmp_reg[18]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[16].remd_tmp_reg[17]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[15].remd_tmp_reg[16]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[14].remd_tmp_reg[15]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[13].remd_tmp_reg[14]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[12].remd_tmp_reg[13]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[11].remd_tmp_reg[12]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[10].remd_tmp_reg[11]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[9].remd_tmp_reg[10]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[8].remd_tmp_reg[9]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[7].remd_tmp_reg[8]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[6].remd_tmp_reg[7]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[5].remd_tmp_reg[6]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[4].remd_tmp_reg[5]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[3].remd_tmp_reg[4]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[2].remd_tmp_reg[3]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[1].remd_tmp_reg[2]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[0].remd_tmp_reg[1]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 477 ; free virtual = 17065
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start RTL Component Statistics 
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input   33 Bit       Adders := 32    
	   3 Input   32 Bit       Adders := 3     
	   2 Input   32 Bit       Adders := 3     
	   2 Input   31 Bit       Adders := 1     
+---XORs : 
	   2 Input      1 Bit         XORs := 1     
+---Registers : 
	               32 Bit    Registers := 117   
	               31 Bit    Registers := 46    
	               10 Bit    Registers := 2     
	                2 Bit    Registers := 33    
	                1 Bit    Registers := 200   
+---Muxes : 
	   2 Input   32 Bit        Muxes := 49    
	   2 Input   31 Bit        Muxes := 49    
	   2 Input   10 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 78    
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
---------------------------------------------------------------------------------
Finished Part Resource Summary
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Cross Boundary and Area Optimization
---------------------------------------------------------------------------------
WARNING: [Synth 8-7080] Parallel synthesis criteria is not met
---------------------------------------------------------------------------------
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 486 ; free virtual = 17076
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying XDC Timing Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 441 ; free virtual = 17034
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Timing Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Timing Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 418 ; free virtual = 17015
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Technology Mapping
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 492 ; free virtual = 17065
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Instances
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Rebuilding User Hierarchy
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Ports
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Ports : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Nets
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Nets : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------

Static Shift Register Report:
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|Module Name | RTL Name                                                                                                                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[31].sign_tmp_reg[32][1]      | 33     | 1     | NO           | NO                 | YES               | 0      | 1       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[1].dividend_tmp_reg[2][31]   | 3      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[2].dividend_tmp_reg[3][31]   | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[3].dividend_tmp_reg[4][31]   | 5      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[4].dividend_tmp_reg[5][31]   | 6      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[5].dividend_tmp_reg[6][31]   | 7      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[6].dividend_tmp_reg[7][31]   | 8      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[7].dividend_tmp_reg[8][31]   | 9      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[8].dividend_tmp_reg[9][31]   | 10     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[9].dividend_tmp_reg[10][31]  | 11     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[10].dividend_tmp_reg[11][31] | 12     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[11].dividend_tmp_reg[12][31] | 13     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[12].dividend_tmp_reg[13][31] | 14     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[13].dividend_tmp_reg[14][31] | 15     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[14].dividend_tmp_reg[15][31] | 16     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[15].dividend_tmp_reg[16][31] | 17     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[16].dividend_tmp_reg[17][31] | 18     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[17].dividend_tmp_reg[18][31] | 19     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[18].dividend_tmp_reg[19][31] | 20     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[19].dividend_tmp_reg[20][31] | 21     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[20].dividend_tmp_reg[21][31] | 22     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[21].dividend_tmp_reg[22][31] | 23     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[22].dividend_tmp_reg[23][31] | 24     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[23].dividend_tmp_reg[24][31] | 25     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[24].dividend_tmp_reg[25][31] | 26     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[25].dividend_tmp_reg[26][31] | 27     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[26].dividend_tmp_reg[27][31] | 28     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[27].dividend_tmp_reg[28][31] | 29     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[28].dividend_tmp_reg[29][31] | 30     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[29].dividend_tmp_reg[30][31] | 31     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[30].dividend_tmp_reg[31][31] | 32     | 2     | NO           | NO                 | YES               | 0      | 2       | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Writing Synthesis Report
---------------------------------------------------------------------------------

Report BlackBoxes: 
+-+--------------+----------+
| |BlackBox name |Instances |
+-+--------------+----------+
+-+--------------+----------+

Report Cell Usage: 
+------+--------+------+
|      |Cell    |Count |
+------+--------+------+
|1     |CARRY4  |   334|
|2     |LUT1    |    97|
|3     |LUT2    |  1170|
|4     |LUT3    |  1731|
|5     |LUT4    |   285|
|6     |LUT5    |   281|
|7     |LUT6    |   427|
|8     |SRL16E  |    30|
|9     |SRLC32E |    31|
|10    |FDCE    |  1877|
|11    |FDPE    |    45|
|12    |FDRE    |  2247|
+------+--------+------+
---------------------------------------------------------------------------------
Finished Writing Synthesis Report : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2220.574 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
---------------------------------------------------------------------------------
Synthesis finished with 0 errors, 0 critical warnings and 176 warnings.
Synthesis Optimization Runtime : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2220.574 ; gain = 479.582 ; free physical = 529 ; free virtual = 17095
Synthesis Optimization Complete : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2220.582 ; gain = 581.316 ; free physical = 529 ; free virtual = 17095
INFO: [Project 1-571] Translating synthesized netlist
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.07 . Memory (MB): peak = 2220.582 ; gain = 0.000 ; free physical = 800 ; free virtual = 17366
INFO: [Netlist 29-17] Analyzing 334 Unisim elements for replacement
INFO: [Netlist 29-28] Unisim Transformation completed in 0 CPU seconds
INFO: [Project 1-570] Preparing netlist for logic optimization
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Vivado 12-4761] HD.CLK_SRC property is set on port clk. The net connecting to the port drives either clock PIN or hierarchical black box. Use the create_clock constraint to create a clock on this port prior to setting HD.CLK_SRC.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc:2]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Netlist sorting complete. Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2220.582 ; gain = 0.000 ; free physical = 799 ; free virtual = 17366
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Synth Design complete | Checksum: a422b383
INFO: [Common 17-83] Releasing license: Synthesis
178 Infos, 153 Warnings, 0 Critical Warnings and 0 Errors encountered.
synth_design completed successfully
synth_design: Time (s): cpu = 00:00:42 ; elapsed = 00:00:42 . Memory (MB): peak = 2220.582 ; gain = 875.449 ; free physical = 799 ; free virtual = 17366
INFO: [Common 17-2834] synth_design peak Physical Memory [PSS] (MB): overall = 1965.952; main = 1695.643; forked = 407.580
INFO: [Common 17-2834] synth_design peak Virtual Memory [VSS] (MB): overall = 3211.137; main = 2220.578; forked = 990.559
# report_utilization > utilization_post_syn.rpt
# report_timing > timing_post_syn.rpt
# opt_design
Command: opt_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command opt_design

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Project 1-461] DRC finished with 0 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.

Time (s): cpu = 00:00:00.99 ; elapsed = 00:00:00.64 . Memory (MB): peak = 2495.117 ; gain = 63.703 ; free physical = 664 ; free virtual = 17230

Starting Cache Timing Information Task
Ending Cache Timing Information Task | Checksum: 17314502c

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2495.117 ; gain = 0.000 ; free physical = 664 ; free virtual = 17230

Starting Logic Optimization Task

Phase 1 Retarget
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
INFO: [Opt 31-49] Retargeted 0 cell(s).
Phase 1 Retarget | Checksum: 153351423

Time (s): cpu = 00:00:00.27 ; elapsed = 00:00:00.2 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 434 ; free virtual = 17000
INFO: [Opt 31-389] Phase Retarget created 0 cells and removed 1 cells

Phase 2 Constant propagation
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Phase 2 Constant propagation | Checksum: 153351423

Time (s): cpu = 00:00:00.31 ; elapsed = 00:00:00.24 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 434 ; free virtual = 17000
INFO: [Opt 31-389] Phase Constant propagation created 0 cells and removed 0 cells

Phase 3 Sweep
Phase 3 Sweep | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.39 ; elapsed = 00:00:00.32 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 17000
INFO: [Opt 31-389] Phase Sweep created 0 cells and removed 0 cells

Phase 4 BUFG optimization
Phase 4 BUFG optimization | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.42 ; elapsed = 00:00:00.34 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 17000
INFO: [Opt 31-662] Phase BUFG optimization created 0 cells of which 0 are BUFGs and removed 0 cells.

Phase 5 Shift Register Optimization
INFO: [Opt 31-1064] SRL Remap converted 0 SRLs to 0 registers and converted 0 registers of register chains to 0 SRLs
Phase 5 Shift Register Optimization | Checksum: 1130d8258

Time (s): cpu = 00:00:00.54 ; elapsed = 00:00:00.47 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999
INFO: [Opt 31-389] Phase Shift Register Optimization created 0 cells and removed 0 cells

Phase 6 Post Processing Netlist
Phase 6 Post Processing Netlist | Checksum: 1130d8258

Time (s): cpu = 00:00:00.56 ; elapsed = 00:00:00.49 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999
INFO: [Opt 31-389] Phase Post Processing Netlist created 0 cells and removed 0 cells
Opt_design Change Summary
=========================


-------------------------------------------------------------------------------------------------------------------------
|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
|  Retarget                     |               0  |               1  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------



Starting Connectivity Check Task

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999
Ending Logic Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.5 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999

Starting Power Optimization Task
INFO: [Pwropt 34-132] Skipping clock gating for clocks with a period < 2.00 ns.
Ending Power Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999

Starting Final Cleanup Task
Ending Final Cleanup Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999

Starting Netlist Obfuscation Task
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999
Ending Netlist Obfuscation Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 433 ; free virtual = 16999
INFO: [Common 17-83] Releasing license: Implementation
16 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
opt_design completed successfully
# place_design
Command: place_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.

Starting Placer Task
INFO: [Place 30-611] Multithreading enabled for place_design using a maximum of 4 CPUs

Phase 1 Placer Initialization

Phase 1.1 Placer Initialization Netlist Sorting
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 422 ; free virtual = 16989
Phase 1.1 Placer Initialization Netlist Sorting | Checksum: f6503b6b

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 422 ; free virtual = 16989
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 422 ; free virtual = 16989

Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
INFO: [Timing 38-35] Done setting XDC timing constraints.
Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fe19b6fa

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.56 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 425 ; free virtual = 16992

Phase 1.3 Build Placer Netlist Model
Phase 1.3 Build Placer Netlist Model | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 424 ; free virtual = 16991

Phase 1.4 Constrain Clocks/Macros
Phase 1.4 Constrain Clocks/Macros | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 424 ; free virtual = 16991
Phase 1 Placer Initialization | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 424 ; free virtual = 16991

Phase 2 Global Placement

Phase 2.1 Floorplanning
Phase 2.1 Floorplanning | Checksum: 14596477f

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 424 ; free virtual = 16990

Phase 2.2 Update Timing before SLR Path Opt
Phase 2.2 Update Timing before SLR Path Opt | Checksum: 150afeab4

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 424 ; free virtual = 16990

Phase 2.3 Post-Processing in Floorplanning
Phase 2.3 Post-Processing in Floorplanning | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 424 ; free virtual = 16990

Phase 2.4 Global Placement Core

Phase 2.4.1 UpdateTiming Before Physical Synthesis
Phase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 102fdb088

Time (s): cpu = 00:00:09 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 421 ; free virtual = 16987

Phase 2.4.2 Physical Synthesis In Placer
INFO: [Physopt 32-1035] Found 0 LUTNM shape to break, 21 LUT instances to create LUTNM shape
INFO: [Physopt 32-1044] Break lutnm for timing: one critical 0, two critical 0, total 0, new lutff created 0
INFO: [Physopt 32-1138] End 1 Pass. Optimized 8 nets or LUTs. Breaked 0 LUT, combined 8 existing LUTs and moved 0 existing LUT
INFO: [Physopt 32-65] No nets found for high-fanout optimization.
INFO: [Physopt 32-232] Optimized 0 net. Created 0 new instance.
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
INFO: [Physopt 32-670] No setup violation found.  DSP Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register to Pipeline Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  BRAM Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  URAM Register Optimization was not performed.
INFO: [Physopt 32-949] No candidate nets found for dynamic/static region interface net replication
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 420 ; free virtual = 16986

Summary of Physical Synthesis Optimizations
============================================


-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  LUT Combining                                    |            0  |              8  |                     8  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |              8  |                     8  |           0  |           4  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------


Phase 2.4.2 Physical Synthesis In Placer | Checksum: 2486131e

Time (s): cpu = 00:00:09 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986
Phase 2.4 Global Placement Core | Checksum: fbfea87e

Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986
Phase 2 Global Placement | Checksum: fbfea87e

Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 3 Detail Placement

Phase 3.1 Commit Multi Column Macros
Phase 3.1 Commit Multi Column Macros | Checksum: c50276c3

Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 3.2 Commit Most Macros & LUTRAMs
Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: e46f5817

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 3.3 Area Swap Optimization
Phase 3.3 Area Swap Optimization | Checksum: de583546

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 3.4 Pipeline Register Optimization
Phase 3.4 Pipeline Register Optimization | Checksum: be204f64

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 3.5 Small Shape Detail Placement
Phase 3.5 Small Shape Detail Placement | Checksum: 94419682

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 3.6 Re-assign LUT pins
Phase 3.6 Re-assign LUT pins | Checksum: ae567486

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 3.7 Pipeline Register Optimization
Phase 3.7 Pipeline Register Optimization | Checksum: 9bedb1cc

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986
Phase 3 Detail Placement | Checksum: 9bedb1cc

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 419 ; free virtual = 16986

Phase 4 Post Placement Optimization and Clean-Up

Phase 4.1 Post Commit Optimization
INFO: [Timing 38-35] Done setting XDC timing constraints.

Phase 4.1.1 Post Placement Optimization
Post Placement Optimization Initialization | Checksum: 1dce1905d

Phase 4.1.1.1 BUFG Insertion

Starting Physical Synthesis Task

Phase 1 Physical Synthesis Initialization
INFO: [Physopt 32-721] Multithreading enabled for phys_opt_design using a maximum of 4 CPUs
INFO: [Physopt 32-619] Estimated Timing Summary | WNS=0.856 | TNS=0.000 |
Phase 1 Physical Synthesis Initialization | Checksum: 15e870401

Time (s): cpu = 00:00:00.38 ; elapsed = 00:00:00.22 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 441 ; free virtual = 17007
INFO: [Place 46-33] Processed net Buffer_20/tehb1/full_reg_reg_2, BUFG insertion was skipped due to placement/routing conflicts.
INFO: [Place 46-56] BUFG insertion identified 1 candidate nets. Inserted BUFG: 0, Replicated BUFG Driver: 0, Skipped due to Placement/Routing Conflicts: 1, Skipped due to Timing Degradation: 0, Skipped due to netlist editing failed: 0.
Ending Physical Synthesis Task | Checksum: 15e870401

Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.4 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008
Phase 4.1.1.1 BUFG Insertion | Checksum: 1dce1905d

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008

Phase 4.1.1.2 Post Placement Timing Optimization
INFO: [Place 30-746] Post Placement Timing Summary WNS=0.856. For the most accurate timing information please run report_timing.
Phase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008
Phase 4.1 Post Commit Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008

Phase 4.2 Post Placement Cleanup
Phase 4.2 Post Placement Cleanup | Checksum: 1812a159c

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008

Phase 4.3 Placer Reporting

Phase 4.3.1 Print Estimated Congestion
INFO: [Place 30-612] Post-Placement Estimated Congestion 
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|

Phase 4.3.1 Print Estimated Congestion | Checksum: 1812a159c

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008
Phase 4.3 Placer Reporting | Checksum: 1812a159c

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008

Phase 4.4 Final Placement Cleanup
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008
Phase 4 Post Placement Optimization and Clean-Up | Checksum: aad94594

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008
Ending Placer Task | Checksum: 6b78ed0c

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008
INFO: [Common 17-83] Releasing license: Implementation
30 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
place_design completed successfully
place_design: Time (s): cpu = 00:00:17 ; elapsed = 00:00:09 . Memory (MB): peak = 2698.117 ; gain = 0.000 ; free physical = 442 ; free virtual = 17008
# route_design
Command: route_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command route_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.


Starting Routing Task
INFO: [Route 35-254] Multithreading enabled for route_design using a maximum of 4 CPUs

Phase 1 Build RT Design
Checksum: PlaceDB: 48995917 ConstDB: 0 ShapeSum: 22df93f5 RouteDB: 0
WARNING: [Route 35-198] Port "rst" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "rst". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "start_valid" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "start_valid". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "end_ready" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "end_ready". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Constraints 18-8777] Unable to split tiles. All required files are not available.
Post Restoration Checksum: NetGraph: b2fa2627 | NumContArr: ca5c4ce1 | Constraints: 190a55ad | Timing: 0
Phase 1 Build RT Design | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 2717.004 ; gain = 18.887 ; free physical = 256 ; free virtual = 16845

Phase 2 Router Initialization

Phase 2.1 Fix Topology Constraints
Phase 2.1 Fix Topology Constraints | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 2717.004 ; gain = 18.887 ; free physical = 255 ; free virtual = 16845

Phase 2.2 Pre Route Cleanup
Phase 2.2 Pre Route Cleanup | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 2717.004 ; gain = 18.887 ; free physical = 255 ; free virtual = 16845
 Number of Nodes with overlaps = 0

Phase 2.3 Update Timing
Phase 2.3 Update Timing | Checksum: 254eba40d

Time (s): cpu = 00:00:26 ; elapsed = 00:00:19 . Memory (MB): peak = 2732.996 ; gain = 34.879 ; free physical = 223 ; free virtual = 16813
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.969  | TNS=0.000  | WHS=-0.134 | THS=-69.589|


Router Utilization Summary
  Global Vertical Routing Utilization    = 0 %
  Global Horizontal Routing Utilization  = 0 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 5968
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 5968
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 2 Router Initialization | Checksum: 22053b35b

Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 216 ; free virtual = 16806

Phase 3 Initial Routing

Phase 3.1 Global Routing
Phase 3.1 Global Routing | Checksum: 22053b35b

Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 216 ; free virtual = 16806
Phase 3 Initial Routing | Checksum: 19b82c5d6

Time (s): cpu = 00:00:28 ; elapsed = 00:00:21 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 217 ; free virtual = 16808

Phase 4 Rip-up And Reroute

Phase 4.1 Global Iteration 0
 Number of Nodes with overlaps = 359
 Number of Nodes with overlaps = 5
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.1 Global Iteration 0 | Checksum: 14dd991f6

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 215 ; free virtual = 16806

Phase 4.2 Global Iteration 1
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.2 Global Iteration 1 | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 216 ; free virtual = 16807
Phase 4 Rip-up And Reroute | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 216 ; free virtual = 16808

Phase 5 Delay and Skew Optimization

Phase 5.1 Delay CleanUp
Phase 5.1 Delay CleanUp | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 216 ; free virtual = 16808

Phase 5.2 Clock Skew Optimization
Phase 5.2 Clock Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 216 ; free virtual = 16808
Phase 5 Delay and Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 216 ; free virtual = 16808

Phase 6 Post Hold Fix

Phase 6.1 Hold Fix Iter

Phase 6.1.1 Update Timing
Phase 6.1.1 Update Timing | Checksum: 1d580906c

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 214 ; free virtual = 16805
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

Phase 6.1 Hold Fix Iter | Checksum: 1264550c6

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 214 ; free virtual = 16805
Phase 6 Post Hold Fix | Checksum: 1264550c6

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 214 ; free virtual = 16806

Phase 7 Route finalize

Router Utilization Summary
  Global Vertical Routing Utilization    = 0.367907 %
  Global Horizontal Routing Utilization  = 0.48214 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 0
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 0
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 7 Route finalize | Checksum: 117be3bfb

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 215 ; free virtual = 16806

Phase 8 Verifying routed nets

 Verification completed successfully
Phase 8 Verifying routed nets | Checksum: 117be3bfb

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 214 ; free virtual = 16806

Phase 9 Depositing Routes
Phase 9 Depositing Routes | Checksum: 133a50182

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 215 ; free virtual = 16806

Phase 10 Post Router Timing
INFO: [Route 35-57] Estimated Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

INFO: [Route 35-327] The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
Phase 10 Post Router Timing | Checksum: 133a50182

Time (s): cpu = 00:00:32 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 213 ; free virtual = 16804
INFO: [Route 35-16] Router Completed Successfully

Phase 11 Post-Route Event Processing
Phase 11 Post-Route Event Processing | Checksum: 853ad0fb

Time (s): cpu = 00:00:32 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 213 ; free virtual = 16805

Time (s): cpu = 00:00:32 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 213 ; free virtual = 16805

Routing Is Done.
INFO: [Common 17-83] Releasing license: Implementation
13 Infos, 100 Warnings, 0 Critical Warnings and 0 Errors encountered.
route_design completed successfully
route_design: Time (s): cpu = 00:00:33 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.996 ; gain = 37.879 ; free physical = 213 ; free virtual = 16804
# report_utilization > utilization_post_pr_elasticBuffer.rpt
# report_timing > timing_post_pr_elasticBuffer.rpt
INFO: [Common 17-206] Exiting Vivado at Mon May 22 12:30:15 2023...

****** Vivado v2023.1 (64-bit)
  **** SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
  **** IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
  **** SharedData Build 3865790 on Sun May 07 13:33:03 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source synthesis_elasticBuffer_pr.tcl
# read_vhdl -vhdl2008 vhdl/arithmetic_units.vhd
read_vhdl: Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1344.199 ; gain = 0.023 ; free physical = 1517 ; free virtual = 18107
# read_vhdl -vhdl2008 vhdl/delay_buffer.vhd
# read_vhdl -vhdl2008 vhdl/elastic_components.vhd
# read_vhdl -vhdl2008 vhdl/MemCont.vhd
# read_vhdl -vhdl2008 vhdl/multipliers.vhd
# read_vhdl -vhdl2008 vhdl/mul_wrapper.vhd
# read_vhdl -vhdl2008 vhdl/sharing_components.vhd
# read_vhdl -vhdl2008 vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd
# read_vhdl -vhdl2008 vhdl/if_loop_3_optimized.vhd
# read_xdc period_4.xdc
# synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Command: synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Starting synth_design
Attempting to get a license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Device 21-403] Loading part xc7k160tfbg484-1
INFO: [Synth 8-7079] Multithreading enabled for synth_design using a maximum of 4 processes.
INFO: [Synth 8-7078] Launching helper process for spawning children vivado processes
INFO: [Synth 8-7075] Helper process launched with PID 76186
---------------------------------------------------------------------------------
Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2018.031 ; gain = 378.770 ; free physical = 590 ; free virtual = 17181
---------------------------------------------------------------------------------
INFO: [Synth 8-638] synthesizing module 'if_loop_3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
INFO: [Synth 8-638] synthesizing module 'start_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'Const' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'icmp_sgt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module '\join ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-638] synthesizing module 'andN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'andN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
INFO: [Synth 8-256] done synthesizing module '\join ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-256] done synthesizing module 'icmp_sgt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module '\fork ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-638] synthesizing module 'eagerFork_RegisterBLock' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module 'eagerFork_RegisterBLock' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module '\fork ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'join__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'join__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-638] synthesizing module 'branchSimple' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branchSimple' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branch' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 3 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'start_node__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'source' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'merge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 4 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 4 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mux__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mux__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mc_load_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter DATA_SIZE bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mc_load_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
INFO: [Synth 8-638] synthesizing module 'sub_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sub_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 5 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 5 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'cntrlMerge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'merge_notehb' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge_notehb' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized5' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized5' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-256] done synthesizing module 'cntrlMerge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
INFO: [Synth 8-638] synthesizing module 'source__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'sdiv_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:93' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_U1' of component 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2338]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:10' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_divider_u' of component 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:138]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
INFO: [Synth 8-638] synthesizing module 'delay_buffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
	Parameter SIZE bound to: 35 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'delay_buffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
INFO: [Synth 8-256] done synthesizing module 'sdiv_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'add_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'add_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
INFO: [Synth 8-638] synthesizing module 'icmp_slt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'icmp_slt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized6' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized6' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'ret_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'ret_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
INFO: [Synth 8-638] synthesizing module 'MemCont' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
	Parameter DATA_SIZE bound to: 32 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter BB_COUNT bound to: 1 - type: integer 
	Parameter LOAD_COUNT bound to: 1 - type: integer 
	Parameter STORE_COUNT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
INFO: [Synth 8-638] synthesizing module 'read_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
INFO: [Synth 8-638] synthesizing module 'read_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
INFO: [Synth 8-638] synthesizing module 'read_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
INFO: [Synth 8-256] done synthesizing module 'read_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
INFO: [Synth 8-638] synthesizing module 'write_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'write_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
INFO: [Synth 8-638] synthesizing module 'write_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
INFO: [Synth 8-638] synthesizing module 'write_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
INFO: [Synth 8-638] synthesizing module 'write_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
INFO: [Synth 8-256] done synthesizing module 'write_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
WARNING: [Synth 8-614] signal 'rst' is read in the process but is not in the sensitivity list [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:814]
INFO: [Synth 8-256] done synthesizing module 'MemCont' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
INFO: [Synth 8-638] synthesizing module 'end_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter MEM_INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'end_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
INFO: [Synth 8-638] synthesizing module 'sink' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-256] done synthesizing module 'if_loop_3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity cntrlMerge does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1596]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source__parameterized0 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-6014] Unused sequential element run_proc[31].divisor_tmp_reg[32] was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:68]
WARNING: [Synth 8-6014] Unused sequential element remd_reg was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:186]
WARNING: [Synth 8-3848] Net eReadyArray in module/entity end_node does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:371]
WARNING: [Synth 8-3848] Net n_ready_out in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:23]
WARNING: [Synth 8-3848] Net a_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:31]
WARNING: [Synth 8-3848] Net a_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:32]
WARNING: [Synth 8-3848] Net b_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:41]
WARNING: [Synth 8-3848] Net b_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:42]
WARNING: [Synth 8-3848] Net start_0_dataInArray_0 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:146]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1247]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1243]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1248]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1244]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1269]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1265]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1270]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1266]
WARNING: [Synth 8-7129] Port clk in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][31] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[1] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[0] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_Empty_Ready in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_wrDataPorts_valid[0] in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[1][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module source is either unconnected or has no load
INFO: [Common 17-14] Message 'Synth 8-7129' appears 100 times and further instances of the messages will be disabled. Use the Tcl command set_msg_config to change the current settings.
---------------------------------------------------------------------------------
Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2104.000 ; gain = 464.738 ; free physical = 473 ; free virtual = 17064
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.844 ; gain = 479.582 ; free physical = 473 ; free virtual = 17064
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.844 ; gain = 479.582 ; free physical = 473 ; free virtual = 17064
---------------------------------------------------------------------------------
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2118.844 ; gain = 0.000 ; free physical = 472 ; free virtual = 17063
INFO: [Project 1-570] Preparing netlist for logic optimization

Processing XDC Constraints
Initializing timing engine
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Completed Processing XDC Constraints

Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2226.578 ; gain = 0.000 ; free physical = 451 ; free virtual = 17042
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Constraint Validation Runtime : Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.04 . Memory (MB): peak = 2226.578 ; gain = 0.000 ; free physical = 451 ; free virtual = 17042
---------------------------------------------------------------------------------
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 453 ; free virtual = 17042
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Loading Part and Timing Information
---------------------------------------------------------------------------------
Loading part: xc7k160tfbg484-1
---------------------------------------------------------------------------------
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 453 ; free virtual = 17042
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying 'set_property' XDC Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 453 ; free virtual = 17042
---------------------------------------------------------------------------------
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[30].remd_tmp_reg[31]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[29].remd_tmp_reg[30]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[28].remd_tmp_reg[29]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[27].remd_tmp_reg[28]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[26].remd_tmp_reg[27]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[25].remd_tmp_reg[26]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[24].remd_tmp_reg[25]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[23].remd_tmp_reg[24]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[22].remd_tmp_reg[23]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[21].remd_tmp_reg[22]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[20].remd_tmp_reg[21]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[19].remd_tmp_reg[20]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[18].remd_tmp_reg[19]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[17].remd_tmp_reg[18]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[16].remd_tmp_reg[17]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[15].remd_tmp_reg[16]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[14].remd_tmp_reg[15]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[13].remd_tmp_reg[14]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[12].remd_tmp_reg[13]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[11].remd_tmp_reg[12]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[10].remd_tmp_reg[11]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[9].remd_tmp_reg[10]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[8].remd_tmp_reg[9]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[7].remd_tmp_reg[8]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[6].remd_tmp_reg[7]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[5].remd_tmp_reg[6]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[4].remd_tmp_reg[5]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[3].remd_tmp_reg[4]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[2].remd_tmp_reg[3]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[1].remd_tmp_reg[2]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[0].remd_tmp_reg[1]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 447 ; free virtual = 17037
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start RTL Component Statistics 
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input   33 Bit       Adders := 32    
	   3 Input   32 Bit       Adders := 3     
	   2 Input   32 Bit       Adders := 3     
	   2 Input   31 Bit       Adders := 1     
+---XORs : 
	   2 Input      1 Bit         XORs := 1     
+---Registers : 
	               32 Bit    Registers := 117   
	               31 Bit    Registers := 46    
	               10 Bit    Registers := 2     
	                2 Bit    Registers := 33    
	                1 Bit    Registers := 200   
+---Muxes : 
	   2 Input   32 Bit        Muxes := 49    
	   2 Input   31 Bit        Muxes := 49    
	   2 Input   10 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 78    
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
---------------------------------------------------------------------------------
Finished Part Resource Summary
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Cross Boundary and Area Optimization
---------------------------------------------------------------------------------
WARNING: [Synth 8-7080] Parallel synthesis criteria is not met
---------------------------------------------------------------------------------
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 430 ; free virtual = 17020
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying XDC Timing Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 447 ; free virtual = 17040
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Timing Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:29 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 353 ; free virtual = 16947
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Technology Mapping
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 360 ; free virtual = 16953
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 373 ; free virtual = 16966
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Instances
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 373 ; free virtual = 16966
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Rebuilding User Hierarchy
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 404 ; free virtual = 16997
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Ports
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Ports : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 404 ; free virtual = 16997
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 404 ; free virtual = 16997
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Nets
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Nets : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 404 ; free virtual = 16997
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------

Static Shift Register Report:
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|Module Name | RTL Name                                                                                                                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[31].sign_tmp_reg[32][1]      | 33     | 1     | NO           | NO                 | YES               | 0      | 1       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[1].dividend_tmp_reg[2][31]   | 3      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[2].dividend_tmp_reg[3][31]   | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[3].dividend_tmp_reg[4][31]   | 5      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[4].dividend_tmp_reg[5][31]   | 6      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[5].dividend_tmp_reg[6][31]   | 7      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[6].dividend_tmp_reg[7][31]   | 8      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[7].dividend_tmp_reg[8][31]   | 9      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[8].dividend_tmp_reg[9][31]   | 10     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[9].dividend_tmp_reg[10][31]  | 11     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[10].dividend_tmp_reg[11][31] | 12     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[11].dividend_tmp_reg[12][31] | 13     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[12].dividend_tmp_reg[13][31] | 14     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[13].dividend_tmp_reg[14][31] | 15     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[14].dividend_tmp_reg[15][31] | 16     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[15].dividend_tmp_reg[16][31] | 17     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[16].dividend_tmp_reg[17][31] | 18     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[17].dividend_tmp_reg[18][31] | 19     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[18].dividend_tmp_reg[19][31] | 20     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[19].dividend_tmp_reg[20][31] | 21     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[20].dividend_tmp_reg[21][31] | 22     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[21].dividend_tmp_reg[22][31] | 23     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[22].dividend_tmp_reg[23][31] | 24     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[23].dividend_tmp_reg[24][31] | 25     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[24].dividend_tmp_reg[25][31] | 26     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[25].dividend_tmp_reg[26][31] | 27     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[26].dividend_tmp_reg[27][31] | 28     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[27].dividend_tmp_reg[28][31] | 29     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[28].dividend_tmp_reg[29][31] | 30     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[29].dividend_tmp_reg[30][31] | 31     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[30].dividend_tmp_reg[31][31] | 32     | 2     | NO           | NO                 | YES               | 0      | 2       | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Writing Synthesis Report
---------------------------------------------------------------------------------

Report BlackBoxes: 
+-+--------------+----------+
| |BlackBox name |Instances |
+-+--------------+----------+
+-+--------------+----------+

Report Cell Usage: 
+------+--------+------+
|      |Cell    |Count |
+------+--------+------+
|1     |CARRY4  |   334|
|2     |LUT1    |    97|
|3     |LUT2    |  1170|
|4     |LUT3    |  1731|
|5     |LUT4    |   285|
|6     |LUT5    |   281|
|7     |LUT6    |   427|
|8     |SRL16E  |    30|
|9     |SRLC32E |    31|
|10    |FDCE    |  1877|
|11    |FDPE    |    45|
|12    |FDRE    |  2247|
+------+--------+------+
---------------------------------------------------------------------------------
Finished Writing Synthesis Report : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2226.578 ; gain = 587.316 ; free physical = 404 ; free virtual = 16997
---------------------------------------------------------------------------------
Synthesis finished with 0 errors, 0 critical warnings and 176 warnings.
Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2226.578 ; gain = 479.582 ; free physical = 404 ; free virtual = 16997
Synthesis Optimization Complete : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2226.586 ; gain = 587.316 ; free physical = 404 ; free virtual = 16997
INFO: [Project 1-571] Translating synthesized netlist
Netlist sorting complete. Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.07 . Memory (MB): peak = 2226.586 ; gain = 0.000 ; free physical = 701 ; free virtual = 17294
INFO: [Netlist 29-17] Analyzing 334 Unisim elements for replacement
INFO: [Netlist 29-28] Unisim Transformation completed in 0 CPU seconds
INFO: [Project 1-570] Preparing netlist for logic optimization
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Vivado 12-4761] HD.CLK_SRC property is set on port clk. The net connecting to the port drives either clock PIN or hierarchical black box. Use the create_clock constraint to create a clock on this port prior to setting HD.CLK_SRC.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc:2]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2226.586 ; gain = 0.000 ; free physical = 691 ; free virtual = 17285
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Synth Design complete | Checksum: a422b383
INFO: [Common 17-83] Releasing license: Synthesis
178 Infos, 153 Warnings, 0 Critical Warnings and 0 Errors encountered.
synth_design completed successfully
synth_design: Time (s): cpu = 00:00:43 ; elapsed = 00:00:42 . Memory (MB): peak = 2226.586 ; gain = 882.387 ; free physical = 691 ; free virtual = 17285
INFO: [Common 17-2834] synth_design peak Physical Memory [PSS] (MB): overall = 1965.197; main = 1687.884; forked = 422.158
INFO: [Common 17-2834] synth_design peak Virtual Memory [VSS] (MB): overall = 3233.016; main = 2226.582; forked = 1006.434
# report_utilization > utilization_post_syn.rpt
# report_timing > timing_post_syn.rpt
# opt_design
Command: opt_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command opt_design

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Project 1-461] DRC finished with 0 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.72 . Memory (MB): peak = 2499.090 ; gain = 67.672 ; free physical = 557 ; free virtual = 17150

Starting Cache Timing Information Task
Ending Cache Timing Information Task | Checksum: 17314502c

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2499.090 ; gain = 0.000 ; free physical = 557 ; free virtual = 17150

Starting Logic Optimization Task

Phase 1 Retarget
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
INFO: [Opt 31-49] Retargeted 0 cell(s).
Phase 1 Retarget | Checksum: 153351423

Time (s): cpu = 00:00:00.29 ; elapsed = 00:00:00.24 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914
INFO: [Opt 31-389] Phase Retarget created 0 cells and removed 1 cells

Phase 2 Constant propagation
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Phase 2 Constant propagation | Checksum: 153351423

Time (s): cpu = 00:00:00.34 ; elapsed = 00:00:00.28 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 320 ; free virtual = 16914
INFO: [Opt 31-389] Phase Constant propagation created 0 cells and removed 0 cells

Phase 3 Sweep
Phase 3 Sweep | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.43 ; elapsed = 00:00:00.37 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 320 ; free virtual = 16914
INFO: [Opt 31-389] Phase Sweep created 0 cells and removed 0 cells

Phase 4 BUFG optimization
Phase 4 BUFG optimization | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.46 ; elapsed = 00:00:00.4 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914
INFO: [Opt 31-662] Phase BUFG optimization created 0 cells of which 0 are BUFGs and removed 0 cells.

Phase 5 Shift Register Optimization
INFO: [Opt 31-1064] SRL Remap converted 0 SRLs to 0 registers and converted 0 registers of register chains to 0 SRLs
Phase 5 Shift Register Optimization | Checksum: 1130d8258

Time (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.54 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914
INFO: [Opt 31-389] Phase Shift Register Optimization created 0 cells and removed 0 cells

Phase 6 Post Processing Netlist
Phase 6 Post Processing Netlist | Checksum: 1130d8258

Time (s): cpu = 00:00:00.62 ; elapsed = 00:00:00.56 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914
INFO: [Opt 31-389] Phase Post Processing Netlist created 0 cells and removed 0 cells
Opt_design Change Summary
=========================


-------------------------------------------------------------------------------------------------------------------------
|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
|  Retarget                     |               0  |               1  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------



Starting Connectivity Check Task

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914
Ending Logic Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.63 ; elapsed = 00:00:00.58 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914

Starting Power Optimization Task
INFO: [Pwropt 34-132] Skipping clock gating for clocks with a period < 2.00 ns.
Ending Power Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914

Starting Final Cleanup Task
Ending Final Cleanup Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914

Starting Netlist Obfuscation Task
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914
Ending Netlist Obfuscation Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 321 ; free virtual = 16914
INFO: [Common 17-83] Releasing license: Implementation
16 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
opt_design completed successfully
# place_design
Command: place_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.

Starting Placer Task
INFO: [Place 30-611] Multithreading enabled for place_design using a maximum of 4 CPUs

Phase 1 Placer Initialization

Phase 1.1 Placer Initialization Netlist Sorting
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 403 ; free virtual = 16975
Phase 1.1 Placer Initialization Netlist Sorting | Checksum: f6503b6b

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 403 ; free virtual = 16975
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 403 ; free virtual = 16975

Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
INFO: [Timing 38-35] Done setting XDC timing constraints.
Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fe19b6fa

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.79 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 400 ; free virtual = 16972

Phase 1.3 Build Placer Netlist Model
Phase 1.3 Build Placer Netlist Model | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 397 ; free virtual = 16969

Phase 1.4 Constrain Clocks/Macros
Phase 1.4 Constrain Clocks/Macros | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 397 ; free virtual = 16969
Phase 1 Placer Initialization | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 397 ; free virtual = 16969

Phase 2 Global Placement

Phase 2.1 Floorplanning
Phase 2.1 Floorplanning | Checksum: 14596477f

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 396 ; free virtual = 16969

Phase 2.2 Update Timing before SLR Path Opt
Phase 2.2 Update Timing before SLR Path Opt | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 396 ; free virtual = 16969

Phase 2.3 Post-Processing in Floorplanning
Phase 2.3 Post-Processing in Floorplanning | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 396 ; free virtual = 16969

Phase 2.4 Global Placement Core

Phase 2.4.1 UpdateTiming Before Physical Synthesis
Phase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 102fdb088

Time (s): cpu = 00:00:09 ; elapsed = 00:00:04 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 386 ; free virtual = 16958

Phase 2.4.2 Physical Synthesis In Placer
INFO: [Physopt 32-1035] Found 0 LUTNM shape to break, 21 LUT instances to create LUTNM shape
INFO: [Physopt 32-1044] Break lutnm for timing: one critical 0, two critical 0, total 0, new lutff created 0
INFO: [Physopt 32-1138] End 1 Pass. Optimized 8 nets or LUTs. Breaked 0 LUT, combined 8 existing LUTs and moved 0 existing LUT
INFO: [Physopt 32-65] No nets found for high-fanout optimization.
INFO: [Physopt 32-232] Optimized 0 net. Created 0 new instance.
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
INFO: [Physopt 32-670] No setup violation found.  DSP Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register to Pipeline Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  BRAM Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  URAM Register Optimization was not performed.
INFO: [Physopt 32-949] No candidate nets found for dynamic/static region interface net replication
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 386 ; free virtual = 16958

Summary of Physical Synthesis Optimizations
============================================


-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  LUT Combining                                    |            0  |              8  |                     8  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |              8  |                     8  |           0  |           4  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------


Phase 2.4.2 Physical Synthesis In Placer | Checksum: 2486131e

Time (s): cpu = 00:00:10 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 378 ; free virtual = 16950
Phase 2.4 Global Placement Core | Checksum: fbfea87e

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 378 ; free virtual = 16950
Phase 2 Global Placement | Checksum: fbfea87e

Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 378 ; free virtual = 16950

Phase 3 Detail Placement

Phase 3.1 Commit Multi Column Macros
Phase 3.1 Commit Multi Column Macros | Checksum: c50276c3

Time (s): cpu = 00:00:12 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 393 ; free virtual = 16965

Phase 3.2 Commit Most Macros & LUTRAMs
Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: e46f5817

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 378 ; free virtual = 16956

Phase 3.3 Area Swap Optimization
Phase 3.3 Area Swap Optimization | Checksum: de583546

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16955

Phase 3.4 Pipeline Register Optimization
Phase 3.4 Pipeline Register Optimization | Checksum: be204f64

Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 378 ; free virtual = 16956

Phase 3.5 Small Shape Detail Placement
Phase 3.5 Small Shape Detail Placement | Checksum: 94419682

Time (s): cpu = 00:00:14 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 375 ; free virtual = 16953

Phase 3.6 Re-assign LUT pins
Phase 3.6 Re-assign LUT pins | Checksum: ae567486

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 376 ; free virtual = 16954

Phase 3.7 Pipeline Register Optimization
Phase 3.7 Pipeline Register Optimization | Checksum: 9bedb1cc

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 376 ; free virtual = 16954
Phase 3 Detail Placement | Checksum: 9bedb1cc

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 376 ; free virtual = 16954

Phase 4 Post Placement Optimization and Clean-Up

Phase 4.1 Post Commit Optimization
INFO: [Timing 38-35] Done setting XDC timing constraints.

Phase 4.1.1 Post Placement Optimization
Post Placement Optimization Initialization | Checksum: 1dce1905d

Phase 4.1.1.1 BUFG Insertion

Starting Physical Synthesis Task

Phase 1 Physical Synthesis Initialization
INFO: [Physopt 32-721] Multithreading enabled for phys_opt_design using a maximum of 4 CPUs
INFO: [Physopt 32-619] Estimated Timing Summary | WNS=0.856 | TNS=0.000 |
Phase 1 Physical Synthesis Initialization | Checksum: 15e870401

Time (s): cpu = 00:00:00.42 ; elapsed = 00:00:00.24 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 378 ; free virtual = 16954
INFO: [Place 46-33] Processed net Buffer_20/tehb1/full_reg_reg_2, BUFG insertion was skipped due to placement/routing conflicts.
INFO: [Place 46-56] BUFG insertion identified 1 candidate nets. Inserted BUFG: 0, Replicated BUFG Driver: 0, Skipped due to Placement/Routing Conflicts: 1, Skipped due to Timing Degradation: 0, Skipped due to netlist editing failed: 0.
Ending Physical Synthesis Task | Checksum: 15e870401

Time (s): cpu = 00:00:00.6 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954
Phase 4.1.1.1 BUFG Insertion | Checksum: 1dce1905d

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954

Phase 4.1.1.2 Post Placement Timing Optimization
INFO: [Place 30-746] Post Placement Timing Summary WNS=0.856. For the most accurate timing information please run report_timing.
Phase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954
Phase 4.1 Post Commit Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954

Phase 4.2 Post Placement Cleanup
Phase 4.2 Post Placement Cleanup | Checksum: 1812a159c

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954

Phase 4.3 Placer Reporting

Phase 4.3.1 Print Estimated Congestion
INFO: [Place 30-612] Post-Placement Estimated Congestion 
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|

Phase 4.3.1 Print Estimated Congestion | Checksum: 1812a159c

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954
Phase 4.3 Placer Reporting | Checksum: 1812a159c

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954

Phase 4.4 Final Placement Cleanup
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954
Phase 4 Post Placement Optimization and Clean-Up | Checksum: aad94594

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954
Ending Placer Task | Checksum: 6b78ed0c

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954
INFO: [Common 17-83] Releasing license: Implementation
30 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
place_design completed successfully
place_design: Time (s): cpu = 00:00:19 ; elapsed = 00:00:11 . Memory (MB): peak = 2698.090 ; gain = 0.000 ; free physical = 377 ; free virtual = 16954
# route_design
Command: route_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command route_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.


Starting Routing Task
INFO: [Route 35-254] Multithreading enabled for route_design using a maximum of 4 CPUs

Phase 1 Build RT Design
Checksum: PlaceDB: 48995917 ConstDB: 0 ShapeSum: 22df93f5 RouteDB: 0
WARNING: [Route 35-198] Port "rst" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "rst". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "start_valid" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "start_valid". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "end_ready" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "end_ready". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
INFO: [Common 17-41] Interrupt caught. Command should exit soon.
Error: Exception Thrown during nodegraph building
Phase 1 Build RT Design | Checksum: 6b78ed0c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:15 . Memory (MB): peak = 2701.102 ; gain = 3.012 ; free physical = 317 ; free virtual = 16892
INFO: [Route 35-73] Router was interrupted by the user.

Time (s): cpu = 00:00:20 ; elapsed = 00:00:15 . Memory (MB): peak = 2701.102 ; gain = 3.012 ; free physical = 317 ; free virtual = 16892
INFO: [Common 17-83] Releasing license: Implementation
8 Infos, 99 Warnings, 0 Critical Warnings and 1 Errors encountered.
route_design failed
INFO: [Common 17-344] 'route_design' was cancelled
INFO: [Common 17-344] 'source' was cancelled
INFO: [Common 17-206] Exiting Vivado at Mon May 22 12:31:44 2023...

****** Vivado v2023.1 (64-bit)
  **** SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
  **** IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
  **** SharedData Build 3865790 on Sun May 07 13:33:03 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source synthesis_elasticBuffer_pr.tcl
# read_vhdl -vhdl2008 vhdl/arithmetic_units.vhd
read_vhdl: Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1346.102 ; gain = 0.023 ; free physical = 1603 ; free virtual = 18175
# read_vhdl -vhdl2008 vhdl/delay_buffer.vhd
# read_vhdl -vhdl2008 vhdl/elastic_components.vhd
# read_vhdl -vhdl2008 vhdl/MemCont.vhd
# read_vhdl -vhdl2008 vhdl/multipliers.vhd
# read_vhdl -vhdl2008 vhdl/mul_wrapper.vhd
# read_vhdl -vhdl2008 vhdl/sharing_components.vhd
# read_vhdl -vhdl2008 vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd
# read_vhdl -vhdl2008 vhdl/if_loop_3_optimized.vhd
# read_xdc period_4.xdc
# synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Command: synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Starting synth_design
Attempting to get a license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Device 21-403] Loading part xc7k160tfbg484-1
INFO: [Synth 8-7079] Multithreading enabled for synth_design using a maximum of 4 processes.
INFO: [Synth 8-7078] Launching helper process for spawning children vivado processes
INFO: [Synth 8-7075] Helper process launched with PID 78043
---------------------------------------------------------------------------------
Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2017.965 ; gain = 377.801 ; free physical = 581 ; free virtual = 17185
---------------------------------------------------------------------------------
INFO: [Synth 8-638] synthesizing module 'if_loop_3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
INFO: [Synth 8-638] synthesizing module 'start_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'Const' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'icmp_sgt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module '\join ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-638] synthesizing module 'andN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'andN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
INFO: [Synth 8-256] done synthesizing module '\join ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-256] done synthesizing module 'icmp_sgt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module '\fork ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-638] synthesizing module 'eagerFork_RegisterBLock' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module 'eagerFork_RegisterBLock' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module '\fork ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'join__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'join__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-638] synthesizing module 'branchSimple' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branchSimple' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branch' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 3 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'start_node__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'source' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'merge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 4 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 4 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mux__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mux__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mc_load_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter DATA_SIZE bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mc_load_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
INFO: [Synth 8-638] synthesizing module 'sub_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sub_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 5 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 5 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'cntrlMerge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'merge_notehb' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge_notehb' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized5' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized5' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-256] done synthesizing module 'cntrlMerge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
INFO: [Synth 8-638] synthesizing module 'source__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'sdiv_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:93' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_U1' of component 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2338]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:10' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_divider_u' of component 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:138]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
INFO: [Synth 8-638] synthesizing module 'delay_buffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
	Parameter SIZE bound to: 35 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'delay_buffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
INFO: [Synth 8-256] done synthesizing module 'sdiv_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'add_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'add_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
INFO: [Synth 8-638] synthesizing module 'icmp_slt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'icmp_slt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized6' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized6' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'ret_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'ret_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
INFO: [Synth 8-638] synthesizing module 'MemCont' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
	Parameter DATA_SIZE bound to: 32 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter BB_COUNT bound to: 1 - type: integer 
	Parameter LOAD_COUNT bound to: 1 - type: integer 
	Parameter STORE_COUNT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
INFO: [Synth 8-638] synthesizing module 'read_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
INFO: [Synth 8-638] synthesizing module 'read_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
INFO: [Synth 8-638] synthesizing module 'read_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
INFO: [Synth 8-256] done synthesizing module 'read_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
INFO: [Synth 8-638] synthesizing module 'write_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'write_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
INFO: [Synth 8-638] synthesizing module 'write_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
INFO: [Synth 8-638] synthesizing module 'write_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
INFO: [Synth 8-638] synthesizing module 'write_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
INFO: [Synth 8-256] done synthesizing module 'write_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
WARNING: [Synth 8-614] signal 'rst' is read in the process but is not in the sensitivity list [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:814]
INFO: [Synth 8-256] done synthesizing module 'MemCont' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
INFO: [Synth 8-638] synthesizing module 'end_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter MEM_INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'end_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
INFO: [Synth 8-638] synthesizing module 'sink' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-256] done synthesizing module 'if_loop_3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity cntrlMerge does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1596]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source__parameterized0 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-6014] Unused sequential element run_proc[31].divisor_tmp_reg[32] was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:68]
WARNING: [Synth 8-6014] Unused sequential element remd_reg was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:186]
WARNING: [Synth 8-3848] Net eReadyArray in module/entity end_node does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:371]
WARNING: [Synth 8-3848] Net n_ready_out in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:23]
WARNING: [Synth 8-3848] Net a_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:31]
WARNING: [Synth 8-3848] Net a_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:32]
WARNING: [Synth 8-3848] Net b_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:41]
WARNING: [Synth 8-3848] Net b_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:42]
WARNING: [Synth 8-3848] Net start_0_dataInArray_0 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:146]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1247]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1243]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1248]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1244]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1269]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1265]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1270]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1266]
WARNING: [Synth 8-7129] Port clk in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][31] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[1] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[0] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_Empty_Ready in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_wrDataPorts_valid[0] in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[1][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module source is either unconnected or has no load
INFO: [Common 17-14] Message 'Synth 8-7129' appears 100 times and further instances of the messages will be disabled. Use the Tcl command set_msg_config to change the current settings.
---------------------------------------------------------------------------------
Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2103.902 ; gain = 463.738 ; free physical = 477 ; free virtual = 17082
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2118.746 ; gain = 478.582 ; free physical = 471 ; free virtual = 17073
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2118.746 ; gain = 478.582 ; free physical = 471 ; free virtual = 17073
---------------------------------------------------------------------------------
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2118.746 ; gain = 0.000 ; free physical = 467 ; free virtual = 17069
INFO: [Project 1-570] Preparing netlist for logic optimization

Processing XDC Constraints
Initializing timing engine
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Completed Processing XDC Constraints

Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2224.480 ; gain = 0.000 ; free physical = 462 ; free virtual = 17070
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Constraint Validation Runtime : Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.04 . Memory (MB): peak = 2224.480 ; gain = 0.000 ; free physical = 462 ; free virtual = 17070
---------------------------------------------------------------------------------
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 469 ; free virtual = 17074
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Loading Part and Timing Information
---------------------------------------------------------------------------------
Loading part: xc7k160tfbg484-1
---------------------------------------------------------------------------------
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 469 ; free virtual = 17074
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying 'set_property' XDC Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 469 ; free virtual = 17074
---------------------------------------------------------------------------------
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[30].remd_tmp_reg[31]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[29].remd_tmp_reg[30]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[28].remd_tmp_reg[29]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[27].remd_tmp_reg[28]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[26].remd_tmp_reg[27]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[25].remd_tmp_reg[26]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[24].remd_tmp_reg[25]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[23].remd_tmp_reg[24]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[22].remd_tmp_reg[23]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[21].remd_tmp_reg[22]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[20].remd_tmp_reg[21]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[19].remd_tmp_reg[20]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[18].remd_tmp_reg[19]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[17].remd_tmp_reg[18]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[16].remd_tmp_reg[17]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[15].remd_tmp_reg[16]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[14].remd_tmp_reg[15]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[13].remd_tmp_reg[14]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[12].remd_tmp_reg[13]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[11].remd_tmp_reg[12]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[10].remd_tmp_reg[11]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[9].remd_tmp_reg[10]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[8].remd_tmp_reg[9]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[7].remd_tmp_reg[8]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[6].remd_tmp_reg[7]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[5].remd_tmp_reg[6]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[4].remd_tmp_reg[5]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[3].remd_tmp_reg[4]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[2].remd_tmp_reg[3]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[1].remd_tmp_reg[2]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[0].remd_tmp_reg[1]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 464 ; free virtual = 17071
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start RTL Component Statistics 
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input   33 Bit       Adders := 32    
	   3 Input   32 Bit       Adders := 3     
	   2 Input   32 Bit       Adders := 3     
	   2 Input   31 Bit       Adders := 1     
+---XORs : 
	   2 Input      1 Bit         XORs := 1     
+---Registers : 
	               32 Bit    Registers := 117   
	               31 Bit    Registers := 46    
	               10 Bit    Registers := 2     
	                2 Bit    Registers := 33    
	                1 Bit    Registers := 200   
+---Muxes : 
	   2 Input   32 Bit        Muxes := 49    
	   2 Input   31 Bit        Muxes := 49    
	   2 Input   10 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 78    
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
---------------------------------------------------------------------------------
Finished Part Resource Summary
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Cross Boundary and Area Optimization
---------------------------------------------------------------------------------
WARNING: [Synth 8-7080] Parallel synthesis criteria is not met
---------------------------------------------------------------------------------
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 472 ; free virtual = 17082
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying XDC Timing Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 465 ; free virtual = 17072
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Timing Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:29 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 452 ; free virtual = 17062
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Technology Mapping
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 444 ; free virtual = 17049
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 476 ; free virtual = 17083
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Instances
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 477 ; free virtual = 17083
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Rebuilding User Hierarchy
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 478 ; free virtual = 17085
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Ports
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Ports : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 479 ; free virtual = 17085
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 479 ; free virtual = 17086
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Nets
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Nets : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 479 ; free virtual = 17086
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------

Static Shift Register Report:
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|Module Name | RTL Name                                                                                                                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[31].sign_tmp_reg[32][1]      | 33     | 1     | NO           | NO                 | YES               | 0      | 1       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[1].dividend_tmp_reg[2][31]   | 3      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[2].dividend_tmp_reg[3][31]   | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[3].dividend_tmp_reg[4][31]   | 5      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[4].dividend_tmp_reg[5][31]   | 6      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[5].dividend_tmp_reg[6][31]   | 7      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[6].dividend_tmp_reg[7][31]   | 8      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[7].dividend_tmp_reg[8][31]   | 9      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[8].dividend_tmp_reg[9][31]   | 10     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[9].dividend_tmp_reg[10][31]  | 11     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[10].dividend_tmp_reg[11][31] | 12     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[11].dividend_tmp_reg[12][31] | 13     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[12].dividend_tmp_reg[13][31] | 14     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[13].dividend_tmp_reg[14][31] | 15     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[14].dividend_tmp_reg[15][31] | 16     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[15].dividend_tmp_reg[16][31] | 17     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[16].dividend_tmp_reg[17][31] | 18     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[17].dividend_tmp_reg[18][31] | 19     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[18].dividend_tmp_reg[19][31] | 20     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[19].dividend_tmp_reg[20][31] | 21     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[20].dividend_tmp_reg[21][31] | 22     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[21].dividend_tmp_reg[22][31] | 23     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[22].dividend_tmp_reg[23][31] | 24     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[23].dividend_tmp_reg[24][31] | 25     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[24].dividend_tmp_reg[25][31] | 26     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[25].dividend_tmp_reg[26][31] | 27     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[26].dividend_tmp_reg[27][31] | 28     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[27].dividend_tmp_reg[28][31] | 29     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[28].dividend_tmp_reg[29][31] | 30     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[29].dividend_tmp_reg[30][31] | 31     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[30].dividend_tmp_reg[31][31] | 32     | 2     | NO           | NO                 | YES               | 0      | 2       | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Writing Synthesis Report
---------------------------------------------------------------------------------

Report BlackBoxes: 
+-+--------------+----------+
| |BlackBox name |Instances |
+-+--------------+----------+
+-+--------------+----------+

Report Cell Usage: 
+------+--------+------+
|      |Cell    |Count |
+------+--------+------+
|1     |CARRY4  |   334|
|2     |LUT1    |    97|
|3     |LUT2    |  1170|
|4     |LUT3    |  1731|
|5     |LUT4    |   285|
|6     |LUT5    |   281|
|7     |LUT6    |   427|
|8     |SRL16E  |    30|
|9     |SRLC32E |    31|
|10    |FDCE    |  1877|
|11    |FDPE    |    45|
|12    |FDRE    |  2247|
+------+--------+------+
---------------------------------------------------------------------------------
Finished Writing Synthesis Report : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2224.480 ; gain = 584.316 ; free physical = 479 ; free virtual = 17086
---------------------------------------------------------------------------------
Synthesis finished with 0 errors, 0 critical warnings and 176 warnings.
Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2224.480 ; gain = 478.582 ; free physical = 479 ; free virtual = 17086
Synthesis Optimization Complete : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 2224.488 ; gain = 584.316 ; free physical = 479 ; free virtual = 17086
INFO: [Project 1-571] Translating synthesized netlist
Netlist sorting complete. Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.07 . Memory (MB): peak = 2224.488 ; gain = 0.000 ; free physical = 791 ; free virtual = 17398
INFO: [Netlist 29-17] Analyzing 334 Unisim elements for replacement
INFO: [Netlist 29-28] Unisim Transformation completed in 0 CPU seconds
INFO: [Project 1-570] Preparing netlist for logic optimization
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Vivado 12-4761] HD.CLK_SRC property is set on port clk. The net connecting to the port drives either clock PIN or hierarchical black box. Use the create_clock constraint to create a clock on this port prior to setting HD.CLK_SRC.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc:2]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Netlist sorting complete. Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2224.488 ; gain = 0.000 ; free physical = 789 ; free virtual = 17396
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Synth Design complete | Checksum: a422b383
INFO: [Common 17-83] Releasing license: Synthesis
178 Infos, 153 Warnings, 0 Critical Warnings and 0 Errors encountered.
synth_design completed successfully
synth_design: Time (s): cpu = 00:00:43 ; elapsed = 00:00:43 . Memory (MB): peak = 2224.488 ; gain = 878.387 ; free physical = 789 ; free virtual = 17396
INFO: [Common 17-2834] synth_design peak Physical Memory [PSS] (MB): overall = 1970.874; main = 1690.991; forked = 421.736
INFO: [Common 17-2834] synth_design peak Virtual Memory [VSS] (MB): overall = 3229.918; main = 2224.484; forked = 1005.434
# report_utilization > utilization_post_syn.rpt
# report_timing > timing_post_syn.rpt
# opt_design
Command: opt_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command opt_design

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Project 1-461] DRC finished with 0 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.

Time (s): cpu = 00:00:00.93 ; elapsed = 00:00:00.68 . Memory (MB): peak = 2499.023 ; gain = 67.703 ; free physical = 633 ; free virtual = 17238

Starting Cache Timing Information Task
Ending Cache Timing Information Task | Checksum: 17314502c

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2499.023 ; gain = 0.000 ; free physical = 633 ; free virtual = 17238

Starting Logic Optimization Task

Phase 1 Retarget
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
INFO: [Opt 31-49] Retargeted 0 cell(s).
Phase 1 Retarget | Checksum: 153351423

Time (s): cpu = 00:00:00.3 ; elapsed = 00:00:00.25 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 400 ; free virtual = 17004
INFO: [Opt 31-389] Phase Retarget created 0 cells and removed 1 cells

Phase 2 Constant propagation
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Phase 2 Constant propagation | Checksum: 153351423

Time (s): cpu = 00:00:00.35 ; elapsed = 00:00:00.31 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 398 ; free virtual = 17002
INFO: [Opt 31-389] Phase Constant propagation created 0 cells and removed 0 cells

Phase 3 Sweep
Phase 3 Sweep | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.43 ; elapsed = 00:00:00.39 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 398 ; free virtual = 17001
INFO: [Opt 31-389] Phase Sweep created 0 cells and removed 0 cells

Phase 4 BUFG optimization
Phase 4 BUFG optimization | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.47 ; elapsed = 00:00:00.43 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 398 ; free virtual = 17001
INFO: [Opt 31-662] Phase BUFG optimization created 0 cells of which 0 are BUFGs and removed 0 cells.

Phase 5 Shift Register Optimization
INFO: [Opt 31-1064] SRL Remap converted 0 SRLs to 0 registers and converted 0 registers of register chains to 0 SRLs
Phase 5 Shift Register Optimization | Checksum: 1130d8258

Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.57 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 403 ; free virtual = 17007
INFO: [Opt 31-389] Phase Shift Register Optimization created 0 cells and removed 0 cells

Phase 6 Post Processing Netlist
Phase 6 Post Processing Netlist | Checksum: 1130d8258

Time (s): cpu = 00:00:00.64 ; elapsed = 00:00:00.6 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 402 ; free virtual = 17006
INFO: [Opt 31-389] Phase Post Processing Netlist created 0 cells and removed 0 cells
Opt_design Change Summary
=========================


-------------------------------------------------------------------------------------------------------------------------
|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
|  Retarget                     |               0  |               1  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------



Starting Connectivity Check Task

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 402 ; free virtual = 17006
Ending Logic Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.65 ; elapsed = 00:00:00.62 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 402 ; free virtual = 17006

Starting Power Optimization Task
INFO: [Pwropt 34-132] Skipping clock gating for clocks with a period < 2.00 ns.
Ending Power Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 402 ; free virtual = 17006

Starting Final Cleanup Task
Ending Final Cleanup Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 402 ; free virtual = 17006

Starting Netlist Obfuscation Task
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 402 ; free virtual = 17006
Ending Netlist Obfuscation Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 402 ; free virtual = 17006
INFO: [Common 17-83] Releasing license: Implementation
16 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
opt_design completed successfully
# place_design
Command: place_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.

Starting Placer Task
INFO: [Place 30-611] Multithreading enabled for place_design using a maximum of 4 CPUs

Phase 1 Placer Initialization

Phase 1.1 Placer Initialization Netlist Sorting
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 401 ; free virtual = 17005
Phase 1.1 Placer Initialization Netlist Sorting | Checksum: f6503b6b

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 401 ; free virtual = 17005
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 401 ; free virtual = 17005

Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
INFO: [Timing 38-35] Done setting XDC timing constraints.
Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fe19b6fa

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.71 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 397 ; free virtual = 17001

Phase 1.3 Build Placer Netlist Model
Phase 1.3 Build Placer Netlist Model | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 395 ; free virtual = 16999

Phase 1.4 Constrain Clocks/Macros
Phase 1.4 Constrain Clocks/Macros | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 395 ; free virtual = 16999
Phase 1 Placer Initialization | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 395 ; free virtual = 16999

Phase 2 Global Placement

Phase 2.1 Floorplanning
Phase 2.1 Floorplanning | Checksum: 14596477f

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 393 ; free virtual = 16997

Phase 2.2 Update Timing before SLR Path Opt
Phase 2.2 Update Timing before SLR Path Opt | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 392 ; free virtual = 16996

Phase 2.3 Post-Processing in Floorplanning
Phase 2.3 Post-Processing in Floorplanning | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 392 ; free virtual = 16996

Phase 2.4 Global Placement Core

Phase 2.4.1 UpdateTiming Before Physical Synthesis
Phase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 102fdb088

Time (s): cpu = 00:00:13 ; elapsed = 00:00:07 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 392 ; free virtual = 16996

Phase 2.4.2 Physical Synthesis In Placer
INFO: [Physopt 32-1035] Found 0 LUTNM shape to break, 21 LUT instances to create LUTNM shape
INFO: [Physopt 32-1044] Break lutnm for timing: one critical 0, two critical 0, total 0, new lutff created 0
INFO: [Physopt 32-1138] End 1 Pass. Optimized 8 nets or LUTs. Breaked 0 LUT, combined 8 existing LUTs and moved 0 existing LUT
INFO: [Physopt 32-65] No nets found for high-fanout optimization.
INFO: [Physopt 32-232] Optimized 0 net. Created 0 new instance.
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
INFO: [Physopt 32-670] No setup violation found.  DSP Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register to Pipeline Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  BRAM Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  URAM Register Optimization was not performed.
INFO: [Physopt 32-949] No candidate nets found for dynamic/static region interface net replication
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 392 ; free virtual = 16996

Summary of Physical Synthesis Optimizations
============================================


-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  LUT Combining                                    |            0  |              8  |                     8  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |              8  |                     8  |           0  |           4  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------


Phase 2.4.2 Physical Synthesis In Placer | Checksum: 2486131e

Time (s): cpu = 00:00:14 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 392 ; free virtual = 16996
Phase 2.4 Global Placement Core | Checksum: fbfea87e

Time (s): cpu = 00:00:14 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 388 ; free virtual = 16995
Phase 2 Global Placement | Checksum: fbfea87e

Time (s): cpu = 00:00:14 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 388 ; free virtual = 16995

Phase 3 Detail Placement

Phase 3.1 Commit Multi Column Macros
Phase 3.1 Commit Multi Column Macros | Checksum: c50276c3

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 394 ; free virtual = 16995

Phase 3.2 Commit Most Macros & LUTRAMs
Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: e46f5817

Time (s): cpu = 00:00:16 ; elapsed = 00:00:09 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 394 ; free virtual = 16998

Phase 3.3 Area Swap Optimization
Phase 3.3 Area Swap Optimization | Checksum: de583546

Time (s): cpu = 00:00:16 ; elapsed = 00:00:09 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 394 ; free virtual = 16998

Phase 3.4 Pipeline Register Optimization
Phase 3.4 Pipeline Register Optimization | Checksum: be204f64

Time (s): cpu = 00:00:16 ; elapsed = 00:00:09 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 394 ; free virtual = 16998

Phase 3.5 Small Shape Detail Placement
Phase 3.5 Small Shape Detail Placement | Checksum: 94419682

Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 389 ; free virtual = 16996

Phase 3.6 Re-assign LUT pins
Phase 3.6 Re-assign LUT pins | Checksum: ae567486

Time (s): cpu = 00:00:18 ; elapsed = 00:00:11 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 388 ; free virtual = 16995

Phase 3.7 Pipeline Register Optimization
Phase 3.7 Pipeline Register Optimization | Checksum: 9bedb1cc

Time (s): cpu = 00:00:18 ; elapsed = 00:00:11 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 387 ; free virtual = 16994
Phase 3 Detail Placement | Checksum: 9bedb1cc

Time (s): cpu = 00:00:18 ; elapsed = 00:00:11 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 387 ; free virtual = 16994

Phase 4 Post Placement Optimization and Clean-Up

Phase 4.1 Post Commit Optimization
INFO: [Timing 38-35] Done setting XDC timing constraints.

Phase 4.1.1 Post Placement Optimization
Post Placement Optimization Initialization | Checksum: 1dce1905d

Phase 4.1.1.1 BUFG Insertion

Starting Physical Synthesis Task

Phase 1 Physical Synthesis Initialization
INFO: [Physopt 32-721] Multithreading enabled for phys_opt_design using a maximum of 4 CPUs
INFO: [Physopt 32-619] Estimated Timing Summary | WNS=0.856 | TNS=0.000 |
Phase 1 Physical Synthesis Initialization | Checksum: 15e870401

Time (s): cpu = 00:00:00.4 ; elapsed = 00:00:00.29 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 384 ; free virtual = 16988
INFO: [Place 46-33] Processed net Buffer_20/tehb1/full_reg_reg_2, BUFG insertion was skipped due to placement/routing conflicts.
INFO: [Place 46-56] BUFG insertion identified 1 candidate nets. Inserted BUFG: 0, Replicated BUFG Driver: 0, Skipped due to Placement/Routing Conflicts: 1, Skipped due to Timing Degradation: 0, Skipped due to netlist editing failed: 0.
Ending Physical Synthesis Task | Checksum: 15e870401

Time (s): cpu = 00:00:00.6 ; elapsed = 00:00:00.49 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 384 ; free virtual = 16988
Phase 4.1.1.1 BUFG Insertion | Checksum: 1dce1905d

Time (s): cpu = 00:00:20 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 384 ; free virtual = 16988

Phase 4.1.1.2 Post Placement Timing Optimization
INFO: [Place 30-746] Post Placement Timing Summary WNS=0.856. For the most accurate timing information please run report_timing.
Phase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 384 ; free virtual = 16988

Time (s): cpu = 00:00:20 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 384 ; free virtual = 16988
Phase 4.1 Post Commit Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 384 ; free virtual = 16988

Phase 4.2 Post Placement Cleanup
Phase 4.2 Post Placement Cleanup | Checksum: 1812a159c

Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987

Phase 4.3 Placer Reporting

Phase 4.3.1 Print Estimated Congestion
INFO: [Place 30-612] Post-Placement Estimated Congestion 
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|

Phase 4.3.1 Print Estimated Congestion | Checksum: 1812a159c

Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987
Phase 4.3 Placer Reporting | Checksum: 1812a159c

Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987

Phase 4.4 Final Placement Cleanup
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987

Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987
Phase 4 Post Placement Optimization and Clean-Up | Checksum: aad94594

Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987
Ending Placer Task | Checksum: 6b78ed0c

Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987
INFO: [Common 17-83] Releasing license: Implementation
30 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
place_design completed successfully
place_design: Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2698.023 ; gain = 0.000 ; free physical = 383 ; free virtual = 16987
# route_design
Command: route_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command route_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.


Starting Routing Task
INFO: [Route 35-254] Multithreading enabled for route_design using a maximum of 4 CPUs

Phase 1 Build RT Design
Checksum: PlaceDB: 48995917 ConstDB: 0 ShapeSum: 22df93f5 RouteDB: 0
WARNING: [Route 35-198] Port "rst" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "rst". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "start_valid" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "start_valid". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "end_ready" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "end_ready". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Constraints 18-8777] Unable to split tiles. All required files are not available.
Post Restoration Checksum: NetGraph: b2fa2627 | NumContArr: ca5c4ce1 | Constraints: 190a55ad | Timing: 0
Phase 1 Build RT Design | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:17 . Memory (MB): peak = 2716.879 ; gain = 18.855 ; free physical = 285 ; free virtual = 16889

Phase 2 Router Initialization

Phase 2.1 Fix Topology Constraints
Phase 2.1 Fix Topology Constraints | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:17 . Memory (MB): peak = 2716.879 ; gain = 18.855 ; free physical = 285 ; free virtual = 16888

Phase 2.2 Pre Route Cleanup
Phase 2.2 Pre Route Cleanup | Checksum: 19660c8b5

Time (s): cpu = 00:00:23 ; elapsed = 00:00:17 . Memory (MB): peak = 2716.879 ; gain = 18.855 ; free physical = 285 ; free virtual = 16888
 Number of Nodes with overlaps = 0

Phase 2.3 Update Timing
Phase 2.3 Update Timing | Checksum: 254eba40d

Time (s): cpu = 00:00:26 ; elapsed = 00:00:19 . Memory (MB): peak = 2731.598 ; gain = 33.574 ; free physical = 268 ; free virtual = 16874
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.969  | TNS=0.000  | WHS=-0.134 | THS=-69.589|


Router Utilization Summary
  Global Vertical Routing Utilization    = 0 %
  Global Horizontal Routing Utilization  = 0 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 5968
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 5968
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 2 Router Initialization | Checksum: 22053b35b

Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 260 ; free virtual = 16866

Phase 3 Initial Routing

Phase 3.1 Global Routing
Phase 3.1 Global Routing | Checksum: 22053b35b

Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 260 ; free virtual = 16866
Phase 3 Initial Routing | Checksum: 19b82c5d6

Time (s): cpu = 00:00:28 ; elapsed = 00:00:20 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 246 ; free virtual = 16850

Phase 4 Rip-up And Reroute

Phase 4.1 Global Iteration 0
 Number of Nodes with overlaps = 359
 Number of Nodes with overlaps = 5
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.1 Global Iteration 0 | Checksum: 14dd991f6

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 244 ; free virtual = 16848

Phase 4.2 Global Iteration 1
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.2 Global Iteration 1 | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 242 ; free virtual = 16848
Phase 4 Rip-up And Reroute | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 242 ; free virtual = 16848

Phase 5 Delay and Skew Optimization

Phase 5.1 Delay CleanUp
Phase 5.1 Delay CleanUp | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 241 ; free virtual = 16848

Phase 5.2 Clock Skew Optimization
Phase 5.2 Clock Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 241 ; free virtual = 16848
Phase 5 Delay and Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 242 ; free virtual = 16848

Phase 6 Post Hold Fix

Phase 6.1 Hold Fix Iter

Phase 6.1.1 Update Timing
Phase 6.1.1 Update Timing | Checksum: 1d580906c

Time (s): cpu = 00:00:31 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 241 ; free virtual = 16847
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

Phase 6.1 Hold Fix Iter | Checksum: 1264550c6

Time (s): cpu = 00:00:31 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 241 ; free virtual = 16847
Phase 6 Post Hold Fix | Checksum: 1264550c6

Time (s): cpu = 00:00:31 ; elapsed = 00:00:22 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 240 ; free virtual = 16847

Phase 7 Route finalize

Router Utilization Summary
  Global Vertical Routing Utilization    = 0.367907 %
  Global Horizontal Routing Utilization  = 0.48214 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 0
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 0
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 7 Route finalize | Checksum: 117be3bfb

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 240 ; free virtual = 16847

Phase 8 Verifying routed nets

 Verification completed successfully
Phase 8 Verifying routed nets | Checksum: 117be3bfb

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 241 ; free virtual = 16847

Phase 9 Depositing Routes
Phase 9 Depositing Routes | Checksum: 133a50182

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 240 ; free virtual = 16847

Phase 10 Post Router Timing
INFO: [Route 35-57] Estimated Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

INFO: [Route 35-327] The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
Phase 10 Post Router Timing | Checksum: 133a50182

Time (s): cpu = 00:00:32 ; elapsed = 00:00:23 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 244 ; free virtual = 16848
INFO: [Route 35-16] Router Completed Successfully

Phase 11 Post-Route Event Processing
Phase 11 Post-Route Event Processing | Checksum: 853ad0fb

Time (s): cpu = 00:00:32 ; elapsed = 00:00:23 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 244 ; free virtual = 16847

Time (s): cpu = 00:00:32 ; elapsed = 00:00:23 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 243 ; free virtual = 16847

Routing Is Done.
INFO: [Common 17-83] Releasing license: Implementation
13 Infos, 100 Warnings, 0 Critical Warnings and 0 Errors encountered.
route_design completed successfully
route_design: Time (s): cpu = 00:00:33 ; elapsed = 00:00:24 . Memory (MB): peak = 2734.598 ; gain = 36.574 ; free physical = 243 ; free virtual = 16847
# report_utilization > utilization_post_pr_elasticBuffer.rpt
# report_timing > timing_post_pr_elasticBuffer.rpt
INFO: [Common 17-206] Exiting Vivado at Mon May 22 12:34:03 2023...

****** Vivado v2023.1 (64-bit)
  **** SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
  **** IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
  **** SharedData Build 3865790 on Sun May 07 13:33:03 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source synthesis_elasticBuffer_pr.tcl
# read_vhdl -vhdl2008 vhdl/arithmetic_units.vhd
read_vhdl: Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1347.105 ; gain = 0.023 ; free physical = 1473 ; free virtual = 18109
# read_vhdl -vhdl2008 vhdl/delay_buffer.vhd
# read_vhdl -vhdl2008 vhdl/elastic_components.vhd
# read_vhdl -vhdl2008 vhdl/MemCont.vhd
# read_vhdl -vhdl2008 vhdl/multipliers.vhd
# read_vhdl -vhdl2008 vhdl/mul_wrapper.vhd
# read_vhdl -vhdl2008 vhdl/sharing_components.vhd
# read_vhdl -vhdl2008 vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd
# read_vhdl -vhdl2008 vhdl/if_loop_3_optimized.vhd
# read_xdc period_4.xdc
# synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Command: synth_design -top if_loop_3 -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context
Starting synth_design
Attempting to get a license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Synthesis' and/or device 'xc7k160t'
INFO: [Device 21-403] Loading part xc7k160tfbg484-1
INFO: [Synth 8-7079] Multithreading enabled for synth_design using a maximum of 4 processes.
INFO: [Synth 8-7078] Launching helper process for spawning children vivado processes
INFO: [Synth 8-7075] Helper process launched with PID 81154
---------------------------------------------------------------------------------
Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2017.906 ; gain = 377.770 ; free physical = 488 ; free virtual = 17124
---------------------------------------------------------------------------------
INFO: [Synth 8-638] synthesizing module 'if_loop_3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
INFO: [Synth 8-638] synthesizing module 'start_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'Const' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'icmp_sgt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module '\join ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-638] synthesizing module 'andN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'andN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:24]
INFO: [Synth 8-256] done synthesizing module '\join ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-256] done synthesizing module 'icmp_sgt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:741]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module '\fork ' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-638] synthesizing module 'eagerFork_RegisterBLock' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module 'eagerFork_RegisterBLock' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:517]
INFO: [Synth 8-256] done synthesizing module '\fork ' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'join__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
	Parameter SIZE bound to: 2 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'join__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:113]
INFO: [Synth 8-638] synthesizing module 'branchSimple' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branchSimple' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:447]
INFO: [Synth 8-256] done synthesizing module 'branch' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 3 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'start_node__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-256] done synthesizing module 'start_node__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:839]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'source' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'merge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 4 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 4 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 10 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mux__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
	Parameter INPUTS bound to: 3 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mux__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1527]
INFO: [Synth 8-638] synthesizing module 'mc_load_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter DATA_SIZE bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-638] synthesizing module 'TEHB__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'TEHB__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:167]
INFO: [Synth 8-256] done synthesizing module 'mc_load_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:583]
INFO: [Synth 8-638] synthesizing module 'sub_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sub_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:107]
INFO: [Synth 8-638] synthesizing module 'Const__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
	Parameter SIZE bound to: 1 - type: integer 
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'Const__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1369]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 3 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'branch__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'branch__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:478]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 5 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'orN__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
	Parameter n bound to: 5 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'orN__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:68]
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'cntrlMerge' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
	Parameter COND_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'merge_notehb' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge_notehb' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:704]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized5' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized5' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-256] done synthesizing module 'cntrlMerge' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1599]
INFO: [Synth 8-638] synthesizing module 'source__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
	Parameter INPUT_COUNT bound to: 0 - type: integer 
	Parameter OUTPUT_COUNT bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'source__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:940]
INFO: [Synth 8-638] synthesizing module 'elasticBuffer__parameterized4' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-638] synthesizing module 'OEHB__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'OEHB__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:242]
INFO: [Synth 8-256] done synthesizing module 'elasticBuffer__parameterized4' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:303]
INFO: [Synth 8-638] synthesizing module 'sdiv_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:93' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_U1' of component 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2338]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
	Parameter ID bound to: 1 - type: integer 
	Parameter NUM_STAGE bound to: 36 - type: integer 
	Parameter din0_WIDTH bound to: 32 - type: integer 
	Parameter din1_WIDTH bound to: 32 - type: integer 
	Parameter dout_WIDTH bound to: 32 - type: integer 
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-3491] module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' declared at '/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:10' bound to instance 'array_RAM_sdiv_32ns_32ns_32_36_1_divider_u' of component 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:138]
INFO: [Synth 8-638] synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
	Parameter in0_WIDTH bound to: 32 - type: integer 
	Parameter in1_WIDTH bound to: 32 - type: integer 
	Parameter out_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1_divider' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:35]
INFO: [Synth 8-256] done synthesizing module 'array_RAM_sdiv_32ns_32ns_32_36_1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:109]
INFO: [Synth 8-638] synthesizing module 'delay_buffer' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
	Parameter SIZE bound to: 35 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'delay_buffer' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/delay_buffer.vhd:16]
INFO: [Synth 8-256] done synthesizing module 'sdiv_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:2316]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'add_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'add_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:67]
INFO: [Synth 8-638] synthesizing module 'icmp_slt_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'icmp_slt_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:911]
INFO: [Synth 8-638] synthesizing module 'merge__parameterized3' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
	Parameter INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'merge__parameterized3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:634]
INFO: [Synth 8-638] synthesizing module 'fork__parameterized6' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter SIZE bound to: 2 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'fork__parameterized6' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:565]
INFO: [Synth 8-638] synthesizing module 'ret_op' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'ret_op' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/arithmetic_units.vhd:24]
INFO: [Synth 8-638] synthesizing module 'MemCont' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
	Parameter DATA_SIZE bound to: 32 - type: integer 
	Parameter ADDRESS_SIZE bound to: 31 - type: integer 
	Parameter BB_COUNT bound to: 1 - type: integer 
	Parameter LOAD_COUNT bound to: 1 - type: integer 
	Parameter STORE_COUNT bound to: 1 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'read_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:17]
INFO: [Synth 8-638] synthesizing module 'read_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:52]
INFO: [Synth 8-638] synthesizing module 'read_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:86]
INFO: [Synth 8-638] synthesizing module 'read_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'read_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:116]
INFO: [Synth 8-256] done synthesizing module 'read_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:202]
INFO: [Synth 8-638] synthesizing module 'write_memory_arbiter' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-638] synthesizing module 'write_priority' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_priority' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:287]
INFO: [Synth 8-638] synthesizing module 'write_address_mux' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter ADDR_WIDTH bound to: 31 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_mux' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:326]
INFO: [Synth 8-638] synthesizing module 'write_address_ready' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_address_ready' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:362]
INFO: [Synth 8-638] synthesizing module 'write_data_signals' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
	Parameter ARBITER_SIZE bound to: 1 - type: integer 
	Parameter DATA_WIDTH bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'write_data_signals' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:396]
INFO: [Synth 8-256] done synthesizing module 'write_memory_arbiter' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:464]
WARNING: [Synth 8-614] signal 'rst' is read in the process but is not in the sensitivity list [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:814]
INFO: [Synth 8-256] done synthesizing module 'MemCont' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/MemCont.vhd:753]
INFO: [Synth 8-638] synthesizing module 'end_node' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
	Parameter INPUTS bound to: 1 - type: integer 
	Parameter MEM_INPUTS bound to: 2 - type: integer 
	Parameter OUTPUTS bound to: 1 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'end_node' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:375]
INFO: [Synth 8-638] synthesizing module 'sink' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 1 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized0' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 10 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized0' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized1' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 32 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized1' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-638] synthesizing module 'sink__parameterized2' [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
	Parameter INPUT_COUNT bound to: 1 - type: integer 
	Parameter OUTPUT_COUNT bound to: 0 - type: integer 
	Parameter DATA_SIZE_IN bound to: 31 - type: integer 
	Parameter DATA_SIZE_OUT bound to: 32 - type: integer 
INFO: [Synth 8-256] done synthesizing module 'sink__parameterized2' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:910]
INFO: [Synth 8-256] done synthesizing module 'if_loop_3' (0#1) [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:46]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity cntrlMerge does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:1596]
WARNING: [Synth 8-3848] Net dataOutArray[0] in module/entity source__parameterized0 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:932]
WARNING: [Synth 8-6014] Unused sequential element run_proc[31].divisor_tmp_reg[32] was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:68]
WARNING: [Synth 8-6014] Unused sequential element remd_reg was removed.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:186]
WARNING: [Synth 8-3848] Net eReadyArray in module/entity end_node does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/elastic_components.vhd:371]
WARNING: [Synth 8-3848] Net n_ready_out in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:23]
WARNING: [Synth 8-3848] Net a_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:31]
WARNING: [Synth 8-3848] Net a_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:32]
WARNING: [Synth 8-3848] Net b_we1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:41]
WARNING: [Synth 8-3848] Net b_dout1 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:42]
WARNING: [Synth 8-3848] Net start_0_dataInArray_0 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:146]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1247]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1243]
WARNING: [Synth 8-3848] Net MC_a_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1248]
WARNING: [Synth 8-3848] Net MC_a_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1244]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1269]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_2 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1265]
WARNING: [Synth 8-3848] Net MC_b_pValidArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1270]
WARNING: [Synth 8-3848] Net MC_b_dataInArray_3 in module/entity if_loop_3 does not have driver. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/if_loop_3_optimized.vhd:1266]
WARNING: [Synth 8-7129] Port clk in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][31] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized1 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][30] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][29] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][28] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][27] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][26] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][25] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][24] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][23] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][22] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][21] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][20] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][19] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][18] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][17] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][16] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][15] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][14] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][13] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][12] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][11] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][10] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized2 is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][9] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][8] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][7] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][6] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][5] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][4] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][3] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][2] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][1] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port pValidArray[0] in module sink__parameterized0 is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[1] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port eReadyArray[0] in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module end_node is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_Empty_Ready in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port io_wrDataPorts_valid[0] in module MemCont is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module merge_notehb is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[1][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataInArray[0][0] in module cntrlMerge is either unconnected or has no load
WARNING: [Synth 8-7129] Port dataOutArray[0][0] in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port clk in module source is either unconnected or has no load
WARNING: [Synth 8-7129] Port rst in module source is either unconnected or has no load
INFO: [Common 17-14] Message 'Synth 8-7129' appears 100 times and further instances of the messages will be disabled. Use the Tcl command set_msg_config to change the current settings.
---------------------------------------------------------------------------------
Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2103.875 ; gain = 463.738 ; free physical = 412 ; free virtual = 17048
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.719 ; gain = 478.582 ; free physical = 408 ; free virtual = 17044
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2118.719 ; gain = 478.582 ; free physical = 408 ; free virtual = 17044
---------------------------------------------------------------------------------
Netlist sorting complete. Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2118.719 ; gain = 0.000 ; free physical = 428 ; free virtual = 17064
INFO: [Project 1-570] Preparing netlist for logic optimization

Processing XDC Constraints
Initializing timing engine
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
Completed Processing XDC Constraints

Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2225.453 ; gain = 0.000 ; free physical = 433 ; free virtual = 17069
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Constraint Validation Runtime : Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.04 . Memory (MB): peak = 2225.453 ; gain = 0.000 ; free physical = 433 ; free virtual = 17069
---------------------------------------------------------------------------------
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 432 ; free virtual = 17071
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Loading Part and Timing Information
---------------------------------------------------------------------------------
Loading part: xc7k160tfbg484-1
---------------------------------------------------------------------------------
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 432 ; free virtual = 17071
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying 'set_property' XDC Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 431 ; free virtual = 17071
---------------------------------------------------------------------------------
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[30].remd_tmp_reg[31]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[29].remd_tmp_reg[30]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[28].remd_tmp_reg[29]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[27].remd_tmp_reg[28]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[26].remd_tmp_reg[27]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[25].remd_tmp_reg[26]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[24].remd_tmp_reg[25]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[23].remd_tmp_reg[24]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[22].remd_tmp_reg[23]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[21].remd_tmp_reg[22]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[20].remd_tmp_reg[21]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[19].remd_tmp_reg[20]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[18].remd_tmp_reg[19]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[17].remd_tmp_reg[18]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[16].remd_tmp_reg[17]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[15].remd_tmp_reg[16]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[14].remd_tmp_reg[15]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[13].remd_tmp_reg[14]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[12].remd_tmp_reg[13]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[11].remd_tmp_reg[12]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[10].remd_tmp_reg[11]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[9].remd_tmp_reg[10]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[8].remd_tmp_reg[9]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[7].remd_tmp_reg[8]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[6].remd_tmp_reg[7]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[5].remd_tmp_reg[6]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[4].remd_tmp_reg[5]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[3].remd_tmp_reg[4]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[2].remd_tmp_reg[3]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[1].remd_tmp_reg[2]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
WARNING: [Synth 8-3936] Found unconnected internal register 'run_proc[0].remd_tmp_reg[1]' and it is trimmed from '32' to '31' bits. [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/vhdl/array_RAM_sdiv_32ns_32ns_32_36_1.vhd:67]
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 429 ; free virtual = 17070
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start RTL Component Statistics 
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input   33 Bit       Adders := 32    
	   3 Input   32 Bit       Adders := 3     
	   2 Input   32 Bit       Adders := 3     
	   2 Input   31 Bit       Adders := 1     
+---XORs : 
	   2 Input      1 Bit         XORs := 1     
+---Registers : 
	               32 Bit    Registers := 117   
	               31 Bit    Registers := 46    
	               10 Bit    Registers := 2     
	                2 Bit    Registers := 33    
	                1 Bit    Registers := 200   
+---Muxes : 
	   2 Input   32 Bit        Muxes := 49    
	   2 Input   31 Bit        Muxes := 49    
	   2 Input   10 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 78    
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
---------------------------------------------------------------------------------
Finished Part Resource Summary
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Cross Boundary and Area Optimization
---------------------------------------------------------------------------------
WARNING: [Synth 8-7080] Parallel synthesis criteria is not met
---------------------------------------------------------------------------------
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 385 ; free virtual = 17032
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying XDC Timing Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 400 ; free virtual = 17049
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Timing Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 403 ; free virtual = 17052
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Technology Mapping
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 399 ; free virtual = 17047
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished IO Insertion : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 409 ; free virtual = 17058
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Instances
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Instances : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 409 ; free virtual = 17058
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Rebuilding User Hierarchy
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 409 ; free virtual = 17057
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Ports
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Ports : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 409 ; free virtual = 17057
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 409 ; free virtual = 17057
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Nets
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Nets : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 409 ; free virtual = 17057
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------

Static Shift Register Report:
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|Module Name | RTL Name                                                                                                                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[31].sign_tmp_reg[32][1]      | 33     | 1     | NO           | NO                 | YES               | 0      | 1       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[1].dividend_tmp_reg[2][31]   | 3      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[2].dividend_tmp_reg[3][31]   | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[3].dividend_tmp_reg[4][31]   | 5      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[4].dividend_tmp_reg[5][31]   | 6      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[5].dividend_tmp_reg[6][31]   | 7      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[6].dividend_tmp_reg[7][31]   | 8      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[7].dividend_tmp_reg[8][31]   | 9      | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[8].dividend_tmp_reg[9][31]   | 10     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[9].dividend_tmp_reg[10][31]  | 11     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[10].dividend_tmp_reg[11][31] | 12     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[11].dividend_tmp_reg[12][31] | 13     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[12].dividend_tmp_reg[13][31] | 14     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[13].dividend_tmp_reg[14][31] | 15     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[14].dividend_tmp_reg[15][31] | 16     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[15].dividend_tmp_reg[16][31] | 17     | 2     | NO           | NO                 | YES               | 2      | 0       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[16].dividend_tmp_reg[17][31] | 18     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[17].dividend_tmp_reg[18][31] | 19     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[18].dividend_tmp_reg[19][31] | 20     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[19].dividend_tmp_reg[20][31] | 21     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[20].dividend_tmp_reg[21][31] | 22     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[21].dividend_tmp_reg[22][31] | 23     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[22].dividend_tmp_reg[23][31] | 24     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[23].dividend_tmp_reg[24][31] | 25     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[24].dividend_tmp_reg[25][31] | 26     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[25].dividend_tmp_reg[26][31] | 27     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[26].dividend_tmp_reg[27][31] | 28     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[27].dividend_tmp_reg[28][31] | 29     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[28].dividend_tmp_reg[29][31] | 30     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[29].dividend_tmp_reg[30][31] | 31     | 2     | NO           | NO                 | YES               | 0      | 2       | 
|if_loop_3   | sdiv_14/array_RAM_sdiv_32ns_32ns_32_36_1_U1/array_RAM_sdiv_32ns_32ns_32_36_1_divider_u/run_proc[30].dividend_tmp_reg[31][31] | 32     | 2     | NO           | NO                 | YES               | 0      | 2       | 
+------------+------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Writing Synthesis Report
---------------------------------------------------------------------------------

Report BlackBoxes: 
+-+--------------+----------+
| |BlackBox name |Instances |
+-+--------------+----------+
+-+--------------+----------+

Report Cell Usage: 
+------+--------+------+
|      |Cell    |Count |
+------+--------+------+
|1     |CARRY4  |   334|
|2     |LUT1    |    97|
|3     |LUT2    |  1170|
|4     |LUT3    |  1731|
|5     |LUT4    |   285|
|6     |LUT5    |   281|
|7     |LUT6    |   427|
|8     |SRL16E  |    30|
|9     |SRLC32E |    31|
|10    |FDCE    |  1877|
|11    |FDPE    |    45|
|12    |FDRE    |  2247|
+------+--------+------+
---------------------------------------------------------------------------------
Finished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2225.453 ; gain = 585.316 ; free physical = 409 ; free virtual = 17057
---------------------------------------------------------------------------------
Synthesis finished with 0 errors, 0 critical warnings and 176 warnings.
Synthesis Optimization Runtime : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 2225.453 ; gain = 478.582 ; free physical = 409 ; free virtual = 17057
Synthesis Optimization Complete : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 2225.461 ; gain = 585.316 ; free physical = 409 ; free virtual = 17057
INFO: [Project 1-571] Translating synthesized netlist
Netlist sorting complete. Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2225.461 ; gain = 0.000 ; free physical = 695 ; free virtual = 17343
INFO: [Netlist 29-17] Analyzing 334 Unisim elements for replacement
INFO: [Netlist 29-28] Unisim Transformation completed in 0 CPU seconds
INFO: [Project 1-570] Preparing netlist for logic optimization
Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Vivado 12-4761] HD.CLK_SRC property is set on port clk. The net connecting to the port drives either clock PIN or hierarchical black box. Use the create_clock constraint to create a clock on this port prior to setting HD.CLK_SRC.  [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc:2]
Finished Parsing XDC File [/home/elija/Documents/LAP_hls_benchmarks/utils/scripts_andrea/period_4.xdc]
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2225.461 ; gain = 0.000 ; free physical = 685 ; free virtual = 17334
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Synth Design complete | Checksum: a422b383
INFO: [Common 17-83] Releasing license: Synthesis
178 Infos, 153 Warnings, 0 Critical Warnings and 0 Errors encountered.
synth_design completed successfully
synth_design: Time (s): cpu = 00:00:41 ; elapsed = 00:00:40 . Memory (MB): peak = 2225.461 ; gain = 878.355 ; free physical = 684 ; free virtual = 17333
INFO: [Common 17-2834] synth_design peak Physical Memory [PSS] (MB): overall = 1962.251; main = 1687.239; forked = 419.213
INFO: [Common 17-2834] synth_design peak Virtual Memory [VSS] (MB): overall = 3228.844; main = 2225.457; forked = 1003.387
# report_utilization > utilization_post_syn.rpt
# report_timing > timing_post_syn.rpt
# opt_design
Command: opt_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command opt_design

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Project 1-461] DRC finished with 0 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.7 . Memory (MB): peak = 2497.965 ; gain = 66.672 ; free physical = 480 ; free virtual = 17133

Starting Cache Timing Information Task
Ending Cache Timing Information Task | Checksum: 17314502c

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2497.965 ; gain = 0.000 ; free physical = 480 ; free virtual = 17133

Starting Logic Optimization Task

Phase 1 Retarget
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
INFO: [Opt 31-49] Retargeted 0 cell(s).
Phase 1 Retarget | Checksum: 153351423

Time (s): cpu = 00:00:00.29 ; elapsed = 00:00:00.24 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 163 ; free virtual = 16887
INFO: [Opt 31-389] Phase Retarget created 0 cells and removed 1 cells

Phase 2 Constant propagation
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Phase 2 Constant propagation | Checksum: 153351423

Time (s): cpu = 00:00:00.33 ; elapsed = 00:00:00.29 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 159 ; free virtual = 16886
INFO: [Opt 31-389] Phase Constant propagation created 0 cells and removed 0 cells

Phase 3 Sweep
Phase 3 Sweep | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.41 ; elapsed = 00:00:00.39 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 152 ; free virtual = 16886
INFO: [Opt 31-389] Phase Sweep created 0 cells and removed 0 cells

Phase 4 BUFG optimization
Phase 4 BUFG optimization | Checksum: 13afdf4fd

Time (s): cpu = 00:00:00.44 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 149 ; free virtual = 16885
INFO: [Opt 31-662] Phase BUFG optimization created 0 cells of which 0 are BUFGs and removed 0 cells.

Phase 5 Shift Register Optimization
INFO: [Opt 31-1064] SRL Remap converted 0 SRLs to 0 registers and converted 0 registers of register chains to 0 SRLs
Phase 5 Shift Register Optimization | Checksum: 1130d8258

Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.55 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 172 ; free virtual = 16855
INFO: [Opt 31-389] Phase Shift Register Optimization created 0 cells and removed 0 cells

Phase 6 Post Processing Netlist
Phase 6 Post Processing Netlist | Checksum: 1130d8258

Time (s): cpu = 00:00:00.6 ; elapsed = 00:00:00.57 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 157 ; free virtual = 16846
INFO: [Opt 31-389] Phase Post Processing Netlist created 0 cells and removed 0 cells
Opt_design Change Summary
=========================


-------------------------------------------------------------------------------------------------------------------------
|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
|  Retarget                     |               0  |               1  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------



Starting Connectivity Check Task

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 156 ; free virtual = 16846
Ending Logic Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 156 ; free virtual = 16846

Starting Power Optimization Task
INFO: [Pwropt 34-132] Skipping clock gating for clocks with a period < 2.00 ns.
Ending Power Optimization Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 155 ; free virtual = 16844

Starting Final Cleanup Task
Ending Final Cleanup Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 154 ; free virtual = 16844

Starting Netlist Obfuscation Task
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 154 ; free virtual = 16844
Ending Netlist Obfuscation Task | Checksum: 1130d8258

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 154 ; free virtual = 16844
INFO: [Common 17-83] Releasing license: Implementation
16 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
opt_design completed successfully
# place_design
Command: place_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.

Starting Placer Task
INFO: [Place 30-611] Multithreading enabled for place_design using a maximum of 4 CPUs

Phase 1 Placer Initialization

Phase 1.1 Placer Initialization Netlist Sorting
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 152 ; free virtual = 16868
Phase 1.1 Placer Initialization Netlist Sorting | Checksum: f6503b6b

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 152 ; free virtual = 16868
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 152 ; free virtual = 16868

Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
INFO: [Timing 38-35] Done setting XDC timing constraints.
Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fe19b6fa

Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.62 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 155 ; free virtual = 16872

Phase 1.3 Build Placer Netlist Model
Phase 1.3 Build Placer Netlist Model | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 160 ; free virtual = 16870

Phase 1.4 Constrain Clocks/Macros
Phase 1.4 Constrain Clocks/Macros | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 159 ; free virtual = 16869
Phase 1 Placer Initialization | Checksum: 135bf5d00

Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 157 ; free virtual = 16867

Phase 2 Global Placement

Phase 2.1 Floorplanning
Phase 2.1 Floorplanning | Checksum: 14596477f

Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 164 ; free virtual = 16854

Phase 2.2 Update Timing before SLR Path Opt
Phase 2.2 Update Timing before SLR Path Opt | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 163 ; free virtual = 16854

Phase 2.3 Post-Processing in Floorplanning
Phase 2.3 Post-Processing in Floorplanning | Checksum: 150afeab4

Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 163 ; free virtual = 16854

Phase 2.4 Global Placement Core

Phase 2.4.1 UpdateTiming Before Physical Synthesis
Phase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 102fdb088

Time (s): cpu = 00:00:13 ; elapsed = 00:00:07 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 281 ; free virtual = 16952

Phase 2.4.2 Physical Synthesis In Placer
INFO: [Physopt 32-1035] Found 0 LUTNM shape to break, 21 LUT instances to create LUTNM shape
INFO: [Physopt 32-1044] Break lutnm for timing: one critical 0, two critical 0, total 0, new lutff created 0
INFO: [Physopt 32-1138] End 1 Pass. Optimized 8 nets or LUTs. Breaked 0 LUT, combined 8 existing LUTs and moved 0 existing LUT
INFO: [Physopt 32-65] No nets found for high-fanout optimization.
INFO: [Physopt 32-232] Optimized 0 net. Created 0 new instance.
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
INFO: [Physopt 32-670] No setup violation found.  DSP Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register to Pipeline Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  Shift Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  BRAM Register Optimization was not performed.
INFO: [Physopt 32-670] No setup violation found.  URAM Register Optimization was not performed.
INFO: [Physopt 32-949] No candidate nets found for dynamic/static region interface net replication
INFO: [Physopt 32-775] End 1 Pass. Optimized 0 net or cell. Created 0 new cell, deleted 0 existing cell and moved 0 existing cell
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 281 ; free virtual = 16952

Summary of Physical Synthesis Optimizations
============================================


-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
|  LUT Combining                                    |            0  |              8  |                     8  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |              8  |                     8  |           0  |           4  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------


Phase 2.4.2 Physical Synthesis In Placer | Checksum: 2486131e

Time (s): cpu = 00:00:14 ; elapsed = 00:00:07 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 279 ; free virtual = 16952
Phase 2.4 Global Placement Core | Checksum: fbfea87e

Time (s): cpu = 00:00:15 ; elapsed = 00:00:07 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 279 ; free virtual = 16952
Phase 2 Global Placement | Checksum: fbfea87e

Time (s): cpu = 00:00:15 ; elapsed = 00:00:07 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 279 ; free virtual = 16952

Phase 3 Detail Placement

Phase 3.1 Commit Multi Column Macros
Phase 3.1 Commit Multi Column Macros | Checksum: c50276c3

Time (s): cpu = 00:00:15 ; elapsed = 00:00:08 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 279 ; free virtual = 16952

Phase 3.2 Commit Most Macros & LUTRAMs
Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: e46f5817

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 297 ; free virtual = 16970

Phase 3.3 Area Swap Optimization
Phase 3.3 Area Swap Optimization | Checksum: de583546

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 297 ; free virtual = 16970

Phase 3.4 Pipeline Register Optimization
Phase 3.4 Pipeline Register Optimization | Checksum: be204f64

Time (s): cpu = 00:00:16 ; elapsed = 00:00:08 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 297 ; free virtual = 16970

Phase 3.5 Small Shape Detail Placement
Phase 3.5 Small Shape Detail Placement | Checksum: 94419682

Time (s): cpu = 00:00:17 ; elapsed = 00:00:09 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 297 ; free virtual = 16970

Phase 3.6 Re-assign LUT pins
Phase 3.6 Re-assign LUT pins | Checksum: ae567486

Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 297 ; free virtual = 16970

Phase 3.7 Pipeline Register Optimization
Phase 3.7 Pipeline Register Optimization | Checksum: 9bedb1cc

Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 297 ; free virtual = 16970
Phase 3 Detail Placement | Checksum: 9bedb1cc

Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 297 ; free virtual = 16970

Phase 4 Post Placement Optimization and Clean-Up

Phase 4.1 Post Commit Optimization
INFO: [Timing 38-35] Done setting XDC timing constraints.

Phase 4.1.1 Post Placement Optimization
Post Placement Optimization Initialization | Checksum: 1dce1905d

Phase 4.1.1.1 BUFG Insertion

Starting Physical Synthesis Task

Phase 1 Physical Synthesis Initialization
INFO: [Physopt 32-721] Multithreading enabled for phys_opt_design using a maximum of 4 CPUs
INFO: [Physopt 32-619] Estimated Timing Summary | WNS=0.856 | TNS=0.000 |
Phase 1 Physical Synthesis Initialization | Checksum: 15e870401

Time (s): cpu = 00:00:00.41 ; elapsed = 00:00:00.29 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 292 ; free virtual = 16965
INFO: [Place 46-33] Processed net Buffer_20/tehb1/full_reg_reg_2, BUFG insertion was skipped due to placement/routing conflicts.
INFO: [Place 46-56] BUFG insertion identified 1 candidate nets. Inserted BUFG: 0, Replicated BUFG Driver: 0, Skipped due to Placement/Routing Conflicts: 1, Skipped due to Timing Degradation: 0, Skipped due to netlist editing failed: 0.
Ending Physical Synthesis Task | Checksum: 15e870401

Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.51 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 274 ; free virtual = 16947
Phase 4.1.1.1 BUFG Insertion | Checksum: 1dce1905d

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 272 ; free virtual = 16944

Phase 4.1.1.2 Post Placement Timing Optimization
INFO: [Place 30-746] Post Placement Timing Summary WNS=0.856. For the most accurate timing information please run report_timing.
Phase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 267 ; free virtual = 16939

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 266 ; free virtual = 16939
Phase 4.1 Post Commit Optimization | Checksum: 1812a159c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 266 ; free virtual = 16939

Phase 4.2 Post Placement Cleanup
Phase 4.2 Post Placement Cleanup | Checksum: 1812a159c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 265 ; free virtual = 16938

Phase 4.3 Placer Reporting

Phase 4.3.1 Print Estimated Congestion
INFO: [Place 30-612] Post-Placement Estimated Congestion 
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|

Phase 4.3.1 Print Estimated Congestion | Checksum: 1812a159c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 265 ; free virtual = 16938
Phase 4.3 Placer Reporting | Checksum: 1812a159c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 265 ; free virtual = 16938

Phase 4.4 Final Placement Cleanup
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 265 ; free virtual = 16938

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 265 ; free virtual = 16938
Phase 4 Post Placement Optimization and Clean-Up | Checksum: aad94594

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 281 ; free virtual = 16954
Ending Placer Task | Checksum: 6b78ed0c

Time (s): cpu = 00:00:20 ; elapsed = 00:00:11 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 281 ; free virtual = 16957
INFO: [Common 17-83] Releasing license: Implementation
30 Infos, 0 Warnings, 0 Critical Warnings and 0 Errors encountered.
place_design completed successfully
place_design: Time (s): cpu = 00:00:22 ; elapsed = 00:00:12 . Memory (MB): peak = 2697.965 ; gain = 0.000 ; free physical = 281 ; free virtual = 16957
# route_design
Command: route_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7k160t'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7k160t'
Running DRC as a precondition to command route_design
INFO: [DRC 23-27] Running DRC with 4 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.


Starting Routing Task
INFO: [Route 35-254] Multithreading enabled for route_design using a maximum of 4 CPUs

Phase 1 Build RT Design
Checksum: PlaceDB: 48995917 ConstDB: 0 ShapeSum: 22df93f5 RouteDB: 0
WARNING: [Route 35-198] Port "rst" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "rst". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "start_valid" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "start_valid". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "b_din1[31]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "b_din1[31]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[23]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[23]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[22]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[22]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[30]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[30]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[7]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[7]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[6]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[6]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[21]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[21]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[20]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[20]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[29]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[29]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[28]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[28]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[19]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[19]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[18]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[18]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[2]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[2]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[3]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[3]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[4]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[4]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[5]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[5]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[8]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[8]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[9]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[9]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "a_din1[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "a_din1[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[0]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[0]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[11]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[11]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[14]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[14]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[1]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[1]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[10]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[10]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[12]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[12]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[13]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[13]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[27]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[27]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[17]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[17]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[24]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[24]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "end_ready" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "end_ready". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[15]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[15]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[16]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[16]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[25]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[25]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Route 35-198] Port "n_din[26]" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "n_din[26]". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
WARNING: [Constraints 18-8777] Unable to split tiles. All required files are not available.
Post Restoration Checksum: NetGraph: b2fa2627 | NumContArr: ca5c4ce1 | Constraints: 190a55ad | Timing: 0
Phase 1 Build RT Design | Checksum: 19660c8b5

Time (s): cpu = 00:00:22 ; elapsed = 00:00:16 . Memory (MB): peak = 2716.820 ; gain = 18.855 ; free physical = 174 ; free virtual = 16813

Phase 2 Router Initialization

Phase 2.1 Fix Topology Constraints
Phase 2.1 Fix Topology Constraints | Checksum: 19660c8b5

Time (s): cpu = 00:00:22 ; elapsed = 00:00:17 . Memory (MB): peak = 2716.820 ; gain = 18.855 ; free physical = 171 ; free virtual = 16813

Phase 2.2 Pre Route Cleanup
Phase 2.2 Pre Route Cleanup | Checksum: 19660c8b5

Time (s): cpu = 00:00:22 ; elapsed = 00:00:17 . Memory (MB): peak = 2716.820 ; gain = 18.855 ; free physical = 171 ; free virtual = 16812
 Number of Nodes with overlaps = 0

Phase 2.3 Update Timing
Phase 2.3 Update Timing | Checksum: 254eba40d

Time (s): cpu = 00:00:25 ; elapsed = 00:00:19 . Memory (MB): peak = 2731.539 ; gain = 33.574 ; free physical = 198 ; free virtual = 16819
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.969  | TNS=0.000  | WHS=-0.134 | THS=-69.589|


Router Utilization Summary
  Global Vertical Routing Utilization    = 0 %
  Global Horizontal Routing Utilization  = 0 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 5968
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 5968
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 2 Router Initialization | Checksum: 22053b35b

Time (s): cpu = 00:00:26 ; elapsed = 00:00:20 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 185 ; free virtual = 16793

Phase 3 Initial Routing

Phase 3.1 Global Routing
Phase 3.1 Global Routing | Checksum: 22053b35b

Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 185 ; free virtual = 16792
Phase 3 Initial Routing | Checksum: 19b82c5d6

Time (s): cpu = 00:00:27 ; elapsed = 00:00:20 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 168 ; free virtual = 16763

Phase 4 Rip-up And Reroute

Phase 4.1 Global Iteration 0
 Number of Nodes with overlaps = 359
 Number of Nodes with overlaps = 5
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.1 Global Iteration 0 | Checksum: 14dd991f6

Time (s): cpu = 00:00:29 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 153 ; free virtual = 16746

Phase 4.2 Global Iteration 1
 Number of Nodes with overlaps = 0
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.905  | TNS=0.000  | WHS=N/A    | THS=N/A    |

Phase 4.2 Global Iteration 1 | Checksum: 18a885fe4

Time (s): cpu = 00:00:29 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 153 ; free virtual = 16746
Phase 4 Rip-up And Reroute | Checksum: 18a885fe4

Time (s): cpu = 00:00:29 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 153 ; free virtual = 16746

Phase 5 Delay and Skew Optimization

Phase 5.1 Delay CleanUp
Phase 5.1 Delay CleanUp | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 153 ; free virtual = 16746

Phase 5.2 Clock Skew Optimization
Phase 5.2 Clock Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 153 ; free virtual = 16746
Phase 5 Delay and Skew Optimization | Checksum: 18a885fe4

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 153 ; free virtual = 16746

Phase 6 Post Hold Fix

Phase 6.1 Hold Fix Iter

Phase 6.1.1 Update Timing
Phase 6.1.1 Update Timing | Checksum: 1d580906c

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 169 ; free virtual = 16726
INFO: [Route 35-416] Intermediate Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

Phase 6.1 Hold Fix Iter | Checksum: 1264550c6

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 172 ; free virtual = 16729
Phase 6 Post Hold Fix | Checksum: 1264550c6

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 172 ; free virtual = 16729

Phase 7 Route finalize

Router Utilization Summary
  Global Vertical Routing Utilization    = 0.367907 %
  Global Horizontal Routing Utilization  = 0.48214 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 0
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 0
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 7 Route finalize | Checksum: 117be3bfb

Time (s): cpu = 00:00:30 ; elapsed = 00:00:22 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 171 ; free virtual = 16728

Phase 8 Verifying routed nets

 Verification completed successfully
Phase 8 Verifying routed nets | Checksum: 117be3bfb

Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 170 ; free virtual = 16727

Phase 9 Depositing Routes
Phase 9 Depositing Routes | Checksum: 133a50182

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 149 ; free virtual = 16715

Phase 10 Post Router Timing
INFO: [Route 35-57] Estimated Timing Summary | WNS=0.987  | TNS=0.000  | WHS=0.061  | THS=0.000  |

INFO: [Route 35-327] The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
Phase 10 Post Router Timing | Checksum: 133a50182

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 156 ; free virtual = 16726
INFO: [Route 35-16] Router Completed Successfully

Phase 11 Post-Route Event Processing
Phase 11 Post-Route Event Processing | Checksum: 853ad0fb

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 169 ; free virtual = 16727

Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 169 ; free virtual = 16727

Routing Is Done.
INFO: [Common 17-83] Releasing license: Implementation
13 Infos, 100 Warnings, 0 Critical Warnings and 0 Errors encountered.
route_design completed successfully
route_design: Time (s): cpu = 00:00:33 ; elapsed = 00:00:24 . Memory (MB): peak = 2735.539 ; gain = 37.574 ; free physical = 161 ; free virtual = 16719
# report_utilization > utilization_post_pr_elasticBuffer.rpt
# report_timing > timing_post_pr_elasticBuffer.rpt
INFO: [Common 17-206] Exiting Vivado at Mon May 22 13:56:18 2023...
