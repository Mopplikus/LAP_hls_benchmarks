
set_project .
set_top_file jacobi_1d.cpp
set_target 5CSEMA4U23C7
synthesize -use-lsq=true -simple-buffers=true -verbose
#cdfg
write_hdl

exit



