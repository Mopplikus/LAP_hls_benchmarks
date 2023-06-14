
set_project .
set_top_file kernel_3mm.cpp
set_target 5CSEMA4U23C7
synthesize -use-lsq=false -simple-buffers=true -verbose
#cdfg
write_hdl

exit



