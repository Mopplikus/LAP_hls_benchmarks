onerror {abort all; puts stderr "The simulation process encountered an error and has aborted."; exit -code 1;}
set VSIM_VERSION_STR "Model Technology ModelSim SE vsim 10.7c Simulator 2018.08 Aug 17 2018"
if {$tcl_platform(platform) == "windows"} {
  cd tb/sim
  set QSYS_SIMDIR .
  set fname_svlib "/softs/intel/intelFPGA_pro/21.4/hls/windows64/bin/hls_cosim_msim32"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
  source $QSYS_SIMDIR/mentor/msim_setup.tcl
} else {
  set QSYS_SIMDIR tb/sim
  set fname_svlib "/softs/intel/intelFPGA_pro/21.4/hls/host/linux64/lib/libhls_cosim_msim32"
  source $QSYS_SIMDIR/mentor/msim_setup_run.tcl
}
# Suppress warnings from the std arithmetic libraries
set StdArithNoWarnings 1
set USER_DEFINED_ELAB_OPTIONS "+nowarnTFMPC -dpioutoftheblue 1 -sv_lib $fname_svlib"
elab
onfinish {stop}
quietly set StdArithNoWarnings 1
run -all
set failed [expr [coverage attribute -name TESTSTATUS -concise] > 1]
exit -code ${failed}
