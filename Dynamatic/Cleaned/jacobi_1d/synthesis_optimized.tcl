
set_project .
set_top_file jacobi_1d.cpp
set_target 5CSEMA4U23C7
set_period 4
synthesize -use-lsq=true -verbose
optimize -timeout=60
write_hdl

exit



