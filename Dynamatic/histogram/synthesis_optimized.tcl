
set_project .
set_top_file histogram.cpp
synthesize -verbose
set_period 5
optimize -area
write_hdl

exit



