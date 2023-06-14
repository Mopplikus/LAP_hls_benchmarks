
set_project .
set_top_file fir.cpp
set_target 5CSEMA4U23C7
synthesize -verbose
set_period 4
optimize -area
write_hdl

exit



