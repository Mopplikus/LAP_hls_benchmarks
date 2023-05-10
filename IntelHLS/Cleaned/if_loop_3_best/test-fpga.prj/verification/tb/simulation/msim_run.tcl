onerror {abort all; puts stderr "The simulation process encountered an error and has aborted."; exit -code 1;}
set VSIM_VERSION_STR "Model Technology ModelSim SE-64 vsim 10.7c Simulator 2018.08 Aug 18 2018"
if {$tcl_platform(platform) == "windows"} {
  cd tb/simulation
  set QSYS_SIMDIR .
  set fname_svlib "F:/HLS/hls/windows64/bin/hls_cosim_msim"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
  source $QSYS_SIMDIR/mentor/msim_setup.tcl
} else {
  set QSYS_SIMDIR tb/simulation
  set fname_svlib "F:/HLS/hls/host/linux64/lib/libhls_cosim_msim"
  source $QSYS_SIMDIR/mentor/msim_setup_run.tcl
}
# Suppress warnings from the std arithmetic libraries
set StdArithNoWarnings 1
set USER_DEFINED_ELAB_OPTIONS "+nowarnTFMPC -dpioutoftheblue 1 -sv_lib $fname_svlib -nodpiexports"
elab
onfinish {stop}
quietly set StdArithNoWarnings 1
run -all
set failed [expr [coverage attribute -name TESTSTATUS -concise] > 1]
exit -code ${failed}
