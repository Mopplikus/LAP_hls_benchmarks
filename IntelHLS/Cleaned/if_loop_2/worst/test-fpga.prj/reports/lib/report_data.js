var areaJSON={"columns":["", "ALUTs", "FFs", "RAMs", "DSPs", "MLABs", "Details"], "debug_enabled":"true", "type":"module", "total_percent":[0.719563, 0.428942, 0.325813, 0, 0], "total":[450, 714, 0, 0, 1], "name":"System", "max_resources":[109572, 219144, 514, 112, 5478], "children":[{"name":"if_loop_2", "compute_units":1, "type":"function", "total_percent":[0.719563, 0.428942, 0.325813, 0, 0], "total_kernel_resources":[450, 714, 0, 0, 1], "details":[{"type":"text", "text":"Number of compute units: 1"}, {"type":"brief", "text":"1 compute unit."}], "children":[{"name":"Component call", "type":"resource", "data":[0, 0, 0, 0, 0], "details":[{"type":"text", "text":"Stream implemented 128 bits wide with a buffer size of 0 elements."}, {"type":"brief", "text":"128b wide with 0 elements."}]}, {"name":"Component return", "type":"resource", "data":[0, 0, 0, 0, 0], "details":[{"type":"text", "text":"Stream implemented 32 bits wide with a buffer size of 0 elements."}, {"type":"brief", "text":"32b wide with 0 elements."}]}, {"name":"Variable: \\n - \'i\' (if_loop_2.cpp:17)", "type":"resource", "data":[31, 138, 0, 0, 0], "debug":[[{"filename":"if_loop_2.cpp", "line":17}]], "details":[{"type":"text", "text":"Type: Register"}, {"type":"text", "text":"1 register of width 32 bits and depth 1"}, {"type":"text", "text":"1 register of width 33 bits and depth 1"}, {"type":"brief", "text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth"}]}, {"name":"Variable: \\n - \'sum\' (if_loop_2.cpp:19)", "type":"resource", "data":[7, 36, 0, 0, 0], "debug":[[{"filename":"if_loop_2.cpp", "line":19}]], "details":[{"type":"text", "text":"Type: Register"}, {"type":"text", "text":"1 register of width 32 bits and depth 1"}, {"type":"brief", "text":"Register,\\n1 reg, 32 width by 1 depth"}]}, {"name":"if_loop_2.B1.start", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[51, 196, 0, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[51, 162, 0, 0, 0]}, {"name":"if_loop_2.cpp:21", "type":"resource", "data":[0, 34, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":21}]]}]}, {"name":"Feedback", "type":"resource", "data":[14, 9, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"if_loop_2.cpp:16", "type":"resource", "data":[14, 9, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]]}]}, {"name":"Cluster logic", "type":"resource", "data":[1, 0, 0, 0, 0], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"if_loop_2.cpp:16", "type":"resource", "data":[1, 0, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "children":[{"name":"Stream Read", "type":"resource", "count":1, "data":[1, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"if_loop_2.cpp:21", "type":"resource", "data":[86, 2, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":21}]], "children":[{"name":"32-bit Integer Compare", "type":"resource", "count":2, "data":[70, 2, 0, 0, 0]}, {"name":"32-bit Select", "type":"resource", "count":1, "data":[16, 0, 0, 0, 0]}], "replace_name":"true"}]}]}, {"name":"if_loop_2.B2", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[17, 207, 0, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[17, 175, 0, 0, 0]}, {"name":"if_loop_2.cpp:24", "type":"resource", "data":[0, 32, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":24}]]}]}, {"name":"Feedback", "type":"resource", "data":[37, 34, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"if_loop_2.cpp:17", "type":"resource", "data":[1, 0, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":17}]]}, {"name":"if_loop_2.cpp:19", "type":"resource", "data":[2, 0, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":19}]]}, {"name":"if_loop_2.cpp:21", "type":"resource", "data":[34, 34, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":21}]]}]}, {"name":"Cluster logic", "type":"resource", "data":[8, 6, 0, 0, 1], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"if_loop_2.cpp:19", "type":"resource", "data":[27, 0, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":19}]], "children":[{"name":"33-bit Select", "type":"resource", "count":1, "data":[27, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"if_loop_2.cpp:21", "type":"resource", "data":[19, 2, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":21}]], "children":[{"name":"1-bit And", "type":"resource", "count":3, "data":[2, 2, 0, 0, 0]}, {"name":"1-bit Or", "type":"resource", "count":4, "data":[2, 0, 0, 0, 0]}, {"name":"33-bit Integer Compare", "type":"resource", "count":1, "data":[11, 0, 0, 0, 0]}, {"name":"4-bit Select", "type":"resource", "count":1, "data":[4, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"if_loop_2.cpp:22", "type":"resource", "data":[26, 41, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":22}]], "children":[{"name":"Load", "type":"resource", "count":1, "data":[26, 41, 0, 0, 0], "details":[{"type":"text", "text":"Load uses a Pipelined never-stall LSU"}, {"type":"brief", "text":"Pipelined never-stall LSU"}]}], "replace_name":"true"}, {"name":"if_loop_2.cpp:24", "type":"resource", "data":[99, 33, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":24}]], "children":[{"name":"32-bit Integer Add", "type":"resource", "count":1, "data":[32, 0, 0, 0, 0]}, {"name":"32-bit Integer Compare", "type":"resource", "count":1, "data":[35, 1, 0, 0, 0]}, {"name":"32-bit Select", "type":"resource", "count":1, "data":[32, 32, 0, 0, 0]}], "replace_name":"true"}]}]}, {"name":"if_loop_2.B3", "type":"basicblock", "children":[{"name":"Feedback", "type":"resource", "data":[5, 8, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"if_loop_2.cpp:31", "type":"resource", "data":[5, 8, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":31}]]}]}, {"name":"Computation", "type":"resource", "children":[{"name":"if_loop_2.cpp:19", "type":"resource", "data":[16, 0, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":19}]], "children":[{"name":"32-bit Select", "type":"resource", "count":1, "data":[16, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"if_loop_2.cpp:24", "type":"resource", "data":[2, 0, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":24}]], "children":[{"name":"FFwd Destination", "type":"resource", "count":1, "data":[2, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"if_loop_2.cpp:31", "type":"resource", "data":[3, 2, 0, 0, 0], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":31}]], "children":[{"name":"Stream Write", "type":"resource", "count":1, "data":[3, 2, 0, 0, 0]}], "replace_name":"true"}]}]}]}]};
var area_srcJSON={"children":[{"children":[{"data":[65,57,0,0,1],"details":[{"text":"Feedback+Cluster logic","type":"brief"}],"name":"Data control overhead","type":"resource"},{"data":[0,0,0,0,0],"details":[{"text":"Stream implemented 128 bits wide with a buffer size of 0 elements.","type":"text"},{"text":"128b wide with 0 elements.","type":"brief"}],"name":"Component call","type":"resource"},{"data":[0,0,0,0,0],"details":[{"text":"Stream implemented 32 bits wide with a buffer size of 0 elements.","type":"text"},{"text":"32b wide with 0 elements.","type":"brief"}],"name":"Component return","type":"resource"},{"data":[31,138,0,0,0],"details":[{"text":"Type: Register","type":"text"},{"text":"1 register of width 32 bits and depth 1","type":"text"},{"text":"1 register of width 33 bits and depth 1","type":"text"},{"text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth","type":"brief"}],"name":"Variable: \\n - \'i\' (if_loop_2.cpp:17)","type":"resource"},{"data":[7,36,0,0,0],"details":[{"text":"Type: Register","type":"text"},{"text":"1 register of width 32 bits and depth 1","type":"text"},{"text":"Register,\\n1 reg, 32 width by 1 depth","type":"brief"}],"name":"Variable: \\n - \'sum\' (if_loop_2.cpp:19)","type":"resource"},{"children":[{"count":2,"data":[68,337,0,0,0],"debug":[[{"filename":"","line":0}]],"name":"State","type":"resource"}],"data":[68,337,0,0,0],"name":"No Source Line","type":"resource"},{"children":[{"count":"1","data":[0,34,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"State","type":"resource"},{"count":2,"data":[70,2,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"32-bit Integer Compare","type":"resource"},{"count":1,"data":[16,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"32-bit Select","type":"resource"},{"count":3,"data":[2,2,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"1-bit And","type":"resource"},{"count":4,"data":[2,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"1-bit Or","type":"resource"},{"count":1,"data":[11,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"33-bit Integer Compare","type":"resource"},{"count":1,"data":[4,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"4-bit Select","type":"resource"}],"data":[105,38,0,0,0],"debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp","line":21}]],"name":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp:21","type":"resource"},{"children":[{"count":1,"data":[1,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"Stream Read","type":"resource"}],"data":[1,0,0,0,0],"debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp","line":16}]],"name":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp:16","replace_name":"true","type":"resource"},{"children":[{"count":"1","data":[0,32,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"State","type":"resource"},{"count":1,"data":[32,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"32-bit Integer Add","type":"resource"},{"count":1,"data":[35,1,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"32-bit Integer Compare","type":"resource"},{"count":1,"data":[32,32,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"32-bit Select","type":"resource"},{"count":1,"data":[2,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"FFwd Destination","type":"resource"}],"data":[101,65,0,0,0],"debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp","line":24}]],"name":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp:24","type":"resource"},{"children":[{"count":1,"data":[27,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"33-bit Select","type":"resource"},{"count":1,"data":[16,0,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"32-bit Select","type":"resource"}],"data":[43,0,0,0,0],"debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp","line":19}]],"name":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp:19","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[26,41,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"Load","type":"resource"}],"data":[26,41,0,0,0],"debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp","line":22}]],"name":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp:22","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[3,2,0,0,0],"debug":[[{"filename":"C","line":"\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp"}]],"name":"Stream Write","type":"resource"}],"data":[3,2,0,0,0],"debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp","line":31}]],"name":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp:31","replace_name":"true","type":"resource"}],"compute_units":1,"data":[450,714,0,0,1],"debug":[[{"filename":"if_loop_2.cpp","line":17}]],"details":[{"text":"Number of compute units: 1","type":"text"},{"text":"1 compute unit.","type":"brief"}],"name":"if_loop_2","total_kernel_resources":[450,714,0,0,1],"total_percent":[0.719563,0.428942,0.325813,0,0],"type":"function"}],"columns":["","ALUTs","FFs","RAMs","DSPs","MLABs","Details"],"data":[450,714,0,0,1],"debug_enabled":"true","max_resources":[109572,219144,514,112,5478],"name":"System","total":[450,714,0,0,1],"total_percent":[0.719563,0.428942,0.325813,0,0],"type":"module"};
var mavJSON={"nodes":[{"type":"component", "id":2, "name":"if_loop_2", "children":[{"type":"bb", "id":3, "name":"if_loop_2.B0.runOnce", "details":[{"type":"table", "Latency":"2"}]}, {"type":"bb", "id":4, "name":"if_loop_2.B1.start", "children":[{"type":"inst", "id":7, "name":"Stream Read", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "details":[{"type":"table", "Width":"128 bits", "Depth":"0", "Stall-free":"No", "Start Cycle":"2", "Latency":"0", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Reference Manual", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/ewa1462824960255.html"}]}]}]}, {"type":"inst", "id":12, "name":"Loop Input", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":31}]], "details":[{"type":"table", "Start Cycle":"0", "Latency":"1", "Loops To":"17"}]}, {"type":"inst", "id":13, "name":"End", "details":[{"type":"table", "Start Cycle":"5", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"5", "II":"1", "Subloops":"Yes", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":"Entry to loop. "}]}, {"type":"bb", "id":5, "name":"if_loop_2.B2", "children":[{"type":"inst", "id":9, "name":"Load", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":22}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Pipelined never-stall", "Stall-free":"Yes", "Loads from":"a", "Start Cycle":"5", "Latency":"4", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Reference Manual", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/ewa1462824960255.html"}]}]}]}, {"type":"inst", "id":14, "name":"Loop Input", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":21}]], "details":[{"type":"table", "Start Cycle":"0", "Latency":"1", "Loops To":"15"}]}, {"type":"inst", "id":15, "name":"Loop End", "details":[{"type":"table", "Start Cycle":"15", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"15", "II":"1", "Subloops":"No", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":""}]}, {"type":"bb", "id":6, "name":"if_loop_2.B3", "children":[{"type":"inst", "id":10, "name":"Stream Write", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":31}]], "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Start Cycle":"1", "Latency":"0", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Reference Manual", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/ewa1462824960255.html"}]}]}]}, {"type":"inst", "id":16, "name":"Begin", "details":[{"type":"table", "Start Cycle":"0", "Latency":"1"}]}, {"type":"inst", "id":17, "name":"Loop End", "details":[{"type":"table", "Start Cycle":"1", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"1", "II":"1", "Subloops":"Yes", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":"Exit which branches back to loop. "}]}]}, {"type":"memtype", "id":1, "name":"System Memory", "children":[{"type":"memsys", "id":20, "name":"1", "details":[{"type":"table", "Number of banks":"1", "Arguments from if_loop_2":"a"}]}]}, {"type":"stream", "id":8, "name":"call.if_loop_2", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "details":[{"type":"table", "Width":"128 bits", "Depth":"0", "Bits per symbol":"128 bits", "Uses Packets":"No", "Uses Empty":"No", "First symbol in high order bits":"No", "Uses Valid":"Yes", "Ready Latency":"0"}]}, {"type":"stream", "id":11, "name":"return.if_loop_2", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Bits per symbol":"32 bits", "Uses Packets":"No", "Uses Empty":"No", "First symbol in high order bits":"No", "Uses Ready":"Yes", "Ready Latency":"0"}]}, {"type":"interface", "id":18, "name":"a", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "details":[{"type":"table", "Stable":"No", "Data width":"32", "Address width":"32", "Address Space":"1", "Latency":"1", "ReadWrite Mode":"readwrite", "Maximum burst":"1", "Wait request":"0", "Alignment":"4", "Component":"if_loop_2"}]}, {"type":"interface", "id":19, "name":"n", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "details":[{"type":"table", "Stable":"No", "Width":"32 bits", "Component":"if_loop_2"}]}], "links":[{"from":8, "to":7}, {"from":10, "to":11}, {"from":18, "to":7}, {"from":19, "to":7}, {"from":17, "to":12}, {"from":3, "to":12}, {"from":7, "to":13}, {"from":15, "to":14}, {"from":13, "to":14}, {"from":9, "to":15}, {"from":15, "to":16}, {"from":10, "to":17}, {"from":12, "to":7}, {"from":14, "to":9}, {"from":16, "to":10}, {"from":20, "to":9}]};
var loopsJSON={"columns":["", "Pipelined", "II", "Speculated iterations", "Details"], "children":[{"name":"Component: if_loop_2", "data":["", "", ""], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "details":[{"type":"brief", "text":"Task function"}, {"type":"text", "text":"Task function"}, {"type":"text", "text":"Fmax bottlenck block: if_loop_2.B2"}, {"type":"text", "text":"Use the %L report to view more details", "links":[{"view":"Fmax II Report"}]}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Reference Manual : Component", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/ewa1462824960255.html#ewa1462820640727"}]}], "children":[{"name":"if_loop_2.B1.start", "data":["Yes", ">=1", "0"], "debug":[[{"filename":"Component invocation", "line":0}]], "details":[{"type":"brief", "text":" "}, {"type":"text", "text":"Stallable instruction: n/a"}, {"type":"text", "text":"Maximum concurrent iterations: 1 is the default for component invocation loop"}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Reference Manual : Loops in Components", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/ewa1462824960255.html#ewa1462826976357"}]}], "children":[{"name":"if_loop_2.B2", "data":["Yes", "1", "3"], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":21}]], "details":[{"type":"brief", "text":" "}, {"type":"text", "text":"Stallable instruction: None"}, {"type":"text", "text":"Maximum concurrent iterations: Capacity of loop", "details":[{"type":"text", "text":"Use the %L viewer to estimate capacity", "links":[{"view":"Fmax II Report"}]}]}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Reference Manual : Loops in Components", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/ewa1462824960255.html#ewa1462826976357"}]}], "children":[]}]}]}]};
var loop_attrJSON={"name":"loop_attributes", "id":4294967295, "nodes":[{"name":"if_loop_2", "id":4176165072, "clk":"No", "fmax":"240.00", "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "type":"component", "children":[{"name":"if_loop_2.B0.runOnce", "id":4150143296, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"2.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}, {"name":"if_loop_2.B1.start", "id":4150141280, "af":"240.00", "br":"0", "ci":"1", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"5.000000", "mi":"1", "pl":"Yes", "tc":"0", "tn":"1", "details":[{"type":"text", "text":"Hyper-Optimized loop structure: n/a"}], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]], "type":"loop", "children":[{"name":"if_loop_2.B2", "id":4150141952, "af":"174.96", "br":"1", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"2", "lt":"15.000000", "mi":"1", "pl":"Yes", "tc":"0", "tn":"0", "details":[{"type":"text", "text":"Hyper-Optimized loop structure: n/a"}], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":21}]], "type":"loop"}]}, {"name":"if_loop_2.B3", "id":4150140128, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"2.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}]}]};
var summaryJSON={"functionNameMapping":{"name":"Synthesized Function Name Mapping", "columns":["User-defined Function Name", "Mapped Function Name"], "children":[{"name":"int __cdecl if_loop_2(class ihc::mm_host<int, struct ihc::dwidth<32>, struct ihc::awidth<32>, struct ihc::latency<1>> &, int)", "data":["if_loop_2"], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]]}]}, "estimatedResources":{"name":"Estimated Resource Usage", "columns":["Function Name", "ALUTs ", "FFs  ", "RAMs ", "DSPs ", "MLABs"], "children":[{"name":"if_loop_2", "data":[450, 714, 0, 0, 1], "debug":[[{"filename":"C:\\Users\\Elija\\Documents\\LAP_hls_benchmarks\\IntelHLS\\Cleaned\\if_loop_2\\worst\\if_loop_2.cpp", "line":16}]]}, {"name":"Total", "classes":["summary-highlight", "nohover"], "data":[450, 714, 0, 0, 1], "data_percent":[0.410689, 0.325813, 0, 0]}, {"name":"Available", "classes":["summary-highlight", "nohover"], "data":[109572, 219144, 514, 112, 0]}]}, "compileWarnings":{"name":"Compile Warnings", "children":[]}};
var warningsJSON={"nodes":[]};
var fileJSON=[{"path":"c:/Users/Elija/Documents/LAP_hls_benchmarks/IntelHLS/Cleaned/if_loop_2/worst/if_loop_2.cpp", "name":"if_loop_2.cpp", "has_active_debug_locs":false, "absName":"c:/Users/Elija/Documents/LAP_hls_benchmarks/IntelHLS/Cleaned/if_loop_2/worst/if_loop_2.cpp", "content":"//------------------------------------------------------------------------\012// If loop\012//------------------------------------------------------------------------\012#include <HLS/hls.h>\012#include <stdlib.h>\012#include <stdio.h>\012\012#define N 100\012\012using namespace ihc;\012\012typedef ihc::mm_host<int, ihc::dwidth<32>,\012                          ihc::awidth<32>,\012                          ihc::latency<1> > mem_a;\012\012component int if_loop_2 (mem_a &a,  int n) {\012	int i;\012	int tmp;\012	int sum = 0;\012\012	for (i=0; i<n; i++) {\012		tmp = a[i];\012\012		if (tmp > 10) {\012    \012			sum = tmp + sum;\012		}\012\012	}\012\012	return sum;\012}\012\012int if_loop_2_cont (int a[N],  int n) {\012	int i;\012	int tmp;\012	int sum = 0;\012\012	for (i=0; i<n; i++) {\012		tmp = a[i];\012\012		if (tmp > 10) {\012    \012			sum = tmp + sum;\012		}\012\012	}\012\012	return sum;\012}\012\012#define AMOUNT_OF_TEST 1\012\012int main(void){\012	int a[N];\012	int a_ref[N];\012	int n = N;\012\012    srand(13);\012	\012	for(int j = 0; j < N; ++j){\012		a_ref[j] = rand()%N + 11;\012		a[j] = a_ref[j];\012	}\012\012	int control = if_loop_2_cont(a_ref, n);\012	int value = 0;\012\012	mem_a mem_host_a(a, N * sizeof(int), false);\012\012    ihc_hls_enqueue(&value, &if_loop_2, mem_host_a, n);\012	ihc_hls_component_run_all(&if_loop_2);\012\012	if(value == control)\012	{\012		printf(\"PASSED\\n\");\012	}\012	else\012	{\012		printf(\"FAILED\\n\");\012		return 1;\012	}\012\012	return 0;\012}\012\012\012\012"}];
var alpha_viewer=false;