#include "tb.h"
#include <esc.h>                // for the latency logging functions
#include <string>
#include <iostream>

#ifdef DEBUG
#define debug cout
#else
#define debug if(0) cout
#endif

// Source thread
void tb::source()
{
    // Reset the outputs and cycle the design's reset
    start.reset();
    rst.write( 0 );
    wait( 2 );
    rst.write( 1 );
    wait();

    // Initialize the RAMs
    for(int i = 0; i < N; i++)
    {
        ram_A[i] = (float) (i % 3);
        ram_B[i] = (float) (i % 4);
    }

    start_time = sc_time_stamp();

    start = true;
    wait(1);
    start = false;

    // Write the start timestamp
    cout << "Start timestamp: " << start_timestamp << " (cycle " << clock_cycle(start_timestamp) << ")" << endl;

    // If this reaches the timeout it is an error
    wait( 1000 );
    close_stimulus_file();
    cerr << clock_cycle( sc_time_stamp() ) << " " << name() << " Source timing out!" << endl;
    esc_stop();
}

// Read all the expected values from the design
void tb::sink()
{
    done.reset();
    result.reset();
    wait();     // to synchronize with reset

    open_response_file(); // Open the output data file

    // read data values until we have read the number that are
    // in the golden file
    while(!done)
    {
        wait(1);
    }
    cout << "End timestamp: " << end_timestamp << " (cycle " << clock_cycle(end_timestamp) << ")" << endl;
    write_response_value(result);
    close_response_file();
    esc_stop();
}

int tb::clock_cycle( sc_time time )
{
    // Compute the latency and throughput and record them
    sc_clock * clk_p = dynamic_cast < sc_clock * >( clk.get_interface() );
    sc_time clock_period = clk_p->period(); // get period from the sc_clock object.
    return ( int )( time / clock_period );

}

void tb::open_response_file( const char * _name )
{
    const char * name = ( _name == NULL ? "response.dat" : _name );

    // put output file in appropriate directory in bdw_work
    std::string filename = getenv( "BDW_SIM_CONFIG_DIR" );
    filename += "/";
    filename += name;
    resp_file.open( filename.c_str() );
    if( resp_file.fail() )
    {
        cerr << "Couldn't open " << filename << " for writing." << endl;
        exit( 0 );
    }
}

void tb::write_response_value( float value )
{
    resp_file << value << endl;
}

void tb::close_response_file()
{
    resp_file.close();
}
