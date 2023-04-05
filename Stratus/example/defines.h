#ifndef _DEFINES_H
#define _DEFINES_H

#define N 100

// Set up defines to determine whether TLM or PIN is used for each
// modular interface based on the ioConfig
// The ZERO_DELAY configuration uses PIN-level for the handshaking
// but TLM for the memory access. In this way the behavioral model doesn't
// have the latency of all the memory accesses being done
// sequentially.
#if defined(ioConfig_PIN)
#  define MEM_IOCONFIG CYN::PIN

#elif defined(ioConfig_TLM)
#  define MEM_IOCONFIG CYN::TLM

#elif defined(ioConfig_ZERO_DELAY)
#  define MEM_IOCONFIG CYN::TLM

#else
#  define MEM_IOCONFIG CYN::PIN
#endif

#endif