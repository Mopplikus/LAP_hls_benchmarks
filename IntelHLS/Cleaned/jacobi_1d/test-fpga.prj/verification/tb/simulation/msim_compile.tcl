onerror {abort all; exit -code 1;}
set VSIM_VERSION_STR "Model Technology ModelSim SE-64 vsim 10.7c Simulator 2018.08 Aug 18 2018"
set QSYS_SIMDIR .
source mentor/msim_setup.tcl
set USER_DEFINED_VERILOG_COMPILE_OPTIONS "+incdir+. +define+COSIM_LIB -suppress 14408"
dev_com
com
if {$tcl_platform(platform) == "windows"} {
  set fname_svlib "F:/HLS/hls/windows64/bin/hls_cosim_msim"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
} else {
  set fname_svlib "F:/HLS/hls/host/linux64/lib/libhls_cosim_msim"
}
set USER_DEFINED_ELAB_OPTIONS "-dpioutoftheblue 1 -sv_lib $fname_svlib -nodpiexports -voptargs=+acc"
elab
exit -code 0
