#! /bin/csh -f
setenv SYSTEMC_HOME /softs/mentor/cpult/10.5c/Mgc_home/shared
setenv SYSTEMC_LIB_DIR /softs/mentor/cpult/10.5c/Mgc_home/shared/lib
setenv CXX_FLAGS "-g -DCALYPTO_SKIP_SYSTEMC_VERSION_CHECK"
setenv LD_FLAGS "-lpthread"
setenv OSSIM ddd
setenv PATH /softs/mentor/cpult/10.5c/Mgc_home/bin:$PATH
