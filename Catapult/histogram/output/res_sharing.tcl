directive set /main/histogram/histogram:core/histogram:core:conc/for#1:mux#1 RESOURCE_NAME for#1:mux#1:rg
directive set /main/histogram/histogram:core/histogram:core:conc/x.ac_ieee_float_base:mux#1 RESOURCE_NAME for#1:mux#1:rg
directive set /main/histogram/histogram:core/histogram:core:conc/for#1:mux#3 RESOURCE_NAME for#1:mux#3:rg
directive set /main/histogram/histogram:core/histogram:core:conc/x.ac_ieee_float_base:mux#3 RESOURCE_NAME for#1:mux#3:rg
directive set /main/histogram/histogram:core/histogram:core:conc/operator<<32,true>:acc#1 RESOURCE_NAME operator<<32,true>:acc#1:rg
directive set /main/histogram/histogram:core/histogram:core:conc/return.add_generic<AC_RND_CONV,false>:r_rnd:acc RESOURCE_NAME operator<<32,true>:acc#1:rg
directive set /main/histogram/histogram:core/histogram:core:conc/while:acc RESOURCE_NAME return.add_generic<AC_RND_CONV,false>:op1_m:qif:acc:rg
directive set /main/histogram/histogram:core/histogram:core:conc/return.add_generic<AC_RND_CONV,false>:op1_m:qif:acc RESOURCE_NAME return.add_generic<AC_RND_CONV,false>:op1_m:qif:acc:rg
directive set /main/histogram/histogram:core/histogram:core:conc/return.add_generic<AC_RND_CONV,false>:r_un:qif:acc RESOURCE_NAME for#1:acc#2:rg
directive set /main/histogram/histogram:core/histogram:core:conc/for#1:acc#2 RESOURCE_NAME for#1:acc#2:rg
directive set /main/histogram/histogram:core/histogram:core:conc/while:acc#1 RESOURCE_NAME for#1:acc#1:rg
directive set /main/histogram/histogram:core/histogram:core:conc/for:acc RESOURCE_NAME for#1:acc#1:rg
directive set /main/histogram/histogram:core/histogram:core:conc/for#1:acc#1 RESOURCE_NAME for#1:acc#1:rg
