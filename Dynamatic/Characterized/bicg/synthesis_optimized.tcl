
set_project .
set_top_file bicg.cpp
synthesize -verbose
set_period 4
optimize -timeout=60
write_hdl

exit



