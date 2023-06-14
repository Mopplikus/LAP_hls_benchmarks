
set_project .
set_top_file triangular.cpp
set_target 5CSEMA4U23C7
synthesize -use-lsq=true -verbose
set_period 4
optimize -timeout=60
write_hdl

exit



