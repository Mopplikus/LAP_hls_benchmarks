
set_project .
set_top_file stencil_2d.cpp
set_target 5CSEMA4U23C7
synthesize -verbose
optimize -timeout=60
write_hdl

exit



