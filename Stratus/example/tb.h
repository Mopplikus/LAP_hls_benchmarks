#ifndef _TB_H_
#define _TB_H_

#include <queue>
#include <cynw_p2p.h>
#include "defines.h"

SC_MODULE(tb)
{
public:
    // Declare clock and reset ports
    sc_in_clk clk;
    sc_out < bool > rst;    // The source thread drives rst.

    // Declare modular interface ports
    sc_in<bool> done;
    sc_out<bool> start;
    sc_in<float> result;

    // Declare the RAM port
    RAM::port<MEM_IOCONFIG> ram_A;
    RAM::port<MEM_IOCONFIG> ram_B;

    SC_CTOR( tb )
        : clk( "clk" )
        , rst( "rst" )
        , done( "done" )
        , start( "start" )
        , result("result")
        , ram_A("ram_A")
        , ram_B("ram_B")
    {
        // Declare the source thread.
        SC_CTHREAD( source, clk.pos() );

        // Declare the sink thread
        SC_CTHREAD( sink, clk.pos() );

        // Give the interfaces access to the clock and reset functions
        start.clk_rst( clk, rst );
        done.clk_rst( clk, rst );
        result.clk_rst(clk, rst);

        // Give the RAM access to the clock and reset signals
        ram_A.clk_rst(clk, rst);
        ram_B.clk_rst(clk, rst);
    }
private:
    void source();
    void sink();

    // Fifo of time data was sent from source thread
    // Used to compute latency and throughput in sink thread
    std::queue<sc_time> time_queue;

    // Fifo of mode data
    std::queue<int> mode_queue;

    // Compute the clock cycle number for a given time
    int clock_cycle( sc_time );

    ofstream resp_file;         // File stream for writing the responses

    // Utility functions for managing the response file
    void open_response_file( const char * _name = NULL );
    void write_response_value( float );
    void close_response_file();

    sc_time start_time;
    sc_time first_time;
    sc_time last_time;

};

#endif // _TB_H_
