
set_project .
set_top_file example.cpp
synthesize -verbose
set_period 5
optimize -area
write_hdl

exit



