
set_project .
set_top_file kernel_2mm.cpp
synthesize -use-lsq=false -verbose
set_period 4
optimize -timeout=60
write_hdl

exit



