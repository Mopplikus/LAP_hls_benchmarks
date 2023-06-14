
set_project .
set_top_file covariance.cpp
synthesize -use-lsq=true -verbose
set_period 4
optimize -timeout=60
write_hdl

exit



