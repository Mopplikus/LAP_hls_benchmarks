# LAP HLS benchmarks #
A repository containing the benchmark files for the semester project "Benchmarking Dynamatic against modern HLS tools", done during the spring semester of 2023 at LAP, EPFL.

## Benchmarks ##
The benchmarks are organised by platform. For Dynamatic and Intel specifically, they contain a "Cleaned" directory which contains the improved benchmarks, which adjusts targets and particularly uses the new characterization to improve Dynamatic's performance on Intel targets.

Note that the benchmarks are mainly established for Dynamatic, Intel HLS and Vitis, whereas Catapult and Stratus HLS have been omitted due to time constraints.

The benchmarks are divided into four categories:
1. Regular memory accesses:
 - fir
 - getTanh
 - triangular

2. Regular memory accesses with data dependencies:
 - atax
 - bicg
 - histogram
 - jacobi_1d

3. Conditional writes:
 - if_loop_1
 - if_loop_2
 - if_loop_3

4. Deep loop nesting
 - covariance
 - gaussian
 - kernel_2mm
 - kernel_3mm
 - matvec
 - stencil_2d


## Characterization script ##
The characterization script is used to generate the `default_delay.dat` in the `data/targets` folder of Dynamatic. To use the script, simply run it by specifying the device family and part number:
```python characterize_intel_component.py "Cyclone V" 5CSEMA4U23C7```
Note that since a few of the components depend on Vivado's library, these have been largely skipped. If you need them to be synthesized, you will have to:
 - Add the corresponding `.vhd` files to the `vhdl` directory
 - Add them to the synthesis script `quartus_char_synthesis.tcl`
 - Change the `voids` table to tailor which values should be generated

 The resulting table specifies the delays when defining the width of the input / output busses, valid and ready signals. The widths are 1, 2, 4, 8, 16, 32, and 64.
 If you want to skip a value, add it to the `voids` table by adding the connector and the width. For example, if we don't want to generate results for any ready signal, we'd define it as:
 ```
 voids = [
    ...
    ["r1", "r2", "r4", "r8", "r16", "r32", "r64"],
    ...
 ]
 ```