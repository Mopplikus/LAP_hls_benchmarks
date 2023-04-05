
# Loop constraints
directive set /main/core/core:rlp CSTEPS_FROM {{. == 1}}
directive set /main/core/core:rlp/main CSTEPS_FROM {{. == 2} {.. == 1}}

# IO operation constraints
directive set /main/core/core:rlp/main/io_write(return:rsc.@) CSTEPS_FROM {{.. == 0}}

# Sync operation constraints

# Real operation constraints

# Probe constraints
