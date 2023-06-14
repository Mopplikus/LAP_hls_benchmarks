
set_project .
set_top_file kernel_3mm.cpp
synthesize -use-lsq=false -simple-buffers=true -verbose
#cdfg
write_hdl

exit



