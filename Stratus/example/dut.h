#ifndef _EXAMPLE_H
#define _EXAMPLE_H

#include "defines.h"
#include "memlib.h"


SC_MODULE(dut)
{

public:
    // Declare the resets
    sc_in_clk   clk;
    sc_in<bool> rst;

    // Declare the I/O ports for start, done and result
    sc_in<bool> start;
    sc_out<bool> done;
    sc_out<float> result;

    // Setting the memory interfaces
    RAM::port<MEM_IOCONFIG> ram_A;
    RAM::port<MEM_IOCONFIG> ram_B;

    SC_CTOR(dut)
        : clk("clk")
        , rst("rst")
        , start("start")
        , done("done")
        , result("result")
        , ram_A("ram_A")
        , ram_B("ram_B")
    {
        SC_CTHREAD(t, clk.pos());
        reset_signal_is(rst, 0);

        // Connect the clock and reset to the interface ports
        start.clk_rst(clk, rst);
        done.clk_rst(clk, rst);
        result.clk_rst(clk, rst);

        // Connect the clock and reset to the RAM
        ram_A.clk_rst(clk, rst);
        ram_B.clk_rst(clk, rst);
    }

protected:

    void t(); // The thread function
}

#endif