
set_project .
set_top_file matvec.cpp
set_target 5CSEMA4U23C7
synthesize -verbose
set_period 4
optimize -timeout=60
write_hdl

exit



