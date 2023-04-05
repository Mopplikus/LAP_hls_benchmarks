///////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2020 Cadence Design Systems, Inc. All rights reserved worldwide.
//
// The code contained herein is the proprietary and confidential information
// of Cadence or its licensors, and is supplied subject to a previously
// executed license and maintenance agreement between Cadence and customer.
// This code is intended for use with Cadence high-level synthesis tools and
// may not be used with other high-level synthesis tools. Permission is only
// granted to distribute the code as indicated. Cadence grants permission for
// customer to distribute a copy of this code to any partner to aid in designing
// or verifying the customer's intellectual property, as long as such
// distribution includes a restriction of no additional distributions from the
// partner, unless the partner receives permission directly from Cadence.
//
// ALL CODE FURNISHED BY CADENCE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
// KIND, AND CADENCE SPECIFICALLY DISCLAIMS ANY WARRANTY OF NONINFRINGEMENT,
// FITNESS FOR A PARTICULAR PURPOSE OR MERCHANTABILITY. CADENCE SHALL NOT BE
// LIABLE FOR ANY COSTS OF PROCUREMENT OF SUBSTITUTES, LOSS OF PROFITS,
// INTERRUPTION OF BUSINESS, OR FOR ANY OTHER SPECIAL, CONSEQUENTIAL OR
// INCIDENTAL DAMAGES, HOWEVER CAUSED, WHETHER FOR BREACH OF WARRANTY,
// CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE.
//
////////////////////////////////////////////////////////////////////////////////

#include "dut.h"

// The thread function for the design
void dut::t()
{
    bool finished = false;

    // Reset the interfaces
    // Also initialize any variables that are part of the module class here
    {
        HLS_DEFINE_PROTOCOL( "reset" );
        start.reset();
        done.reset();
        result.reset();
        ram_A.reset();
        ram_B.reset();
        finished = false;

        wait();
    }

    /* Initialize memory. */
    for( int i = 0; i < RAM::SIZE; ++i )
    {
        ram_port[i] = 0;
    }

    while( 1 )
    {
        // Fetch the start signal and begin calcs.
        if(start)
        {
            // Calculate the value
            float s = 0.0f;
            for(int i = 0; i < N; i++)
            {
                float d = ram_A[i] - ram_B[i];
                if(d >= 0.0)
                {
                    s += d;
                }
            }
            // Push the result and set the done flag
            result = s;
            done = true;
            wait(1);
            // After one cycle (one wait?) clear the done flag
            done = false;
        }
    }
}
