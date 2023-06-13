
set_project .
set_top_file example.cpp
synthesize -verbose
set_period 4
optimize -area
write_hdl

exit



