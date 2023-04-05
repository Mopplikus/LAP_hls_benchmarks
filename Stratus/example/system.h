#ifndef _SYSTEM_H_
#define _SYSTEM_H_

// Include some required files.
#include <systemc.h>            // SystemC definitions.
#include <esc.h>                // Stratus HLS ESC functions and utilities.
#include <stratus_hls.h>        // Stratus HLS definitions.
#include <cynw_p2p.h>           // The cynw_p2p communication channel.
#include "defines.h"
#include "tb.h"
#include "memlib.h"

// use the generated wrapper for all hls_modules
#include "dut_wrap.h"

SC_MODULE(System)
{
public:
    // clock and reset signals
    sc_clock clk_sig;
    sc_signal < bool > rst_sig;

    // start, done and result signals
    sc_signal<bool> start_sig;
    sc_signal<bool> done_sig;
    sc_signal<float> result_sig;

    // The testbench and dut modules
    dut_wrapper * m_dut; // use the generated wrapper for all hls_modules
    tb * m_tb;

    // The memory
    RAM_A::wrapper< MEM_IOCONFIG > * m_ram;
    RAM_B::wrapper< MEM_IOCONFIG > * m_ram;

    SC_CTOR( System )
        : clk_sig("clk_sig", CLOCK_PERIOD, SC_NS, 0.5, 0, SC_NS, true)
        , start_sig( "start" )
        , done_sig( "done" )
        , rst_sig( "rst_sig" )
        , result_sig("result_sig")
    {

        // Instantiate the ram before the design so the binding
        // doesn't happen before the ram is allocated
        m_ram_a = new RAM_A::wrapper< MEM_IOCONFIG >( "ram_wrapper" );
        m_ram_a->clk_rst( clk_sig, rst_sig );

        m_ram_b = new RAM_B::wrapper< MEM_IOCONFIG >( "ram_wrapper" );
        m_ram_b->clk_rst( clk_sig, rst_sig );

        // Connect the design module
        m_dut = new dut_wrapper( "dut_wrapper" );
        m_dut->clk( clk_sig );
        m_dut->rst( rst_sig );
        m_dut->start( start_sig );
        m_dut->done( done_sig );
        m_dut->result(result_sig);
        m_dut->ram_A(*m_ram_a);
        m_dut->ram_B(*m_ram_b);

        // Connect the testbench
        m_tb = new tb( "tb" );
        m_tb->clk( clk_sig );
        m_tb->rst( rst_sig );
        m_tb->done( start_sig );
        m_tb->start( done_sig );
        m_tb->result(result_sig);
        m_tb->ram_A(*m_ram_a);
        m_tb->ram_B(*m_ram_b);

    }

    ~System()
    {
        delete m_tb;
        delete m_dut;
        delete m_ram_a;
        delete m_ram_b;
    }
};

#endif // _SYSTEM_H_
