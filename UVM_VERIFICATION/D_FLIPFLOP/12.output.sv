    (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO @ 0: reporter [RNTST] Running test test...
xmsim: *W,PRPASZ: Packed array at "worklib.uvm_pkg::uvm_string_to_bits.uvm_string_to_bits" of 115200 bits exceeds limit of 4096 - not probed
 Use 'probe -create -packed 115200 worklib.uvm_pkg::uvm_string_to_bits.uvm_string_to_bits' or 'setenv SHM_PACKED_LIMIT 115200' to adjust limit.
xmsim: *W,PRPASZ: Packed array at "worklib.uvm_pkg::uvm_bits_to_string.str" of 115200 bits exceeds limit of 4096 - not probed
 Use 'probe -create -packed 115200 worklib.uvm_pkg::uvm_bits_to_string.str' or 'setenv SHM_PACKED_LIMIT 115200' to adjust limit.
UVM_INFO test.sv(16) @ 0: uvm_test_top [test] build_phase from test
UVM_INFO environment.sv(16) @ 0: uvm_test_top.env [environment] build_phase from environment
UVM_INFO agent.sv(19) @ 0: uvm_test_top.env.agnt [agent] build_phase from agent
UVM_INFO driver.sv(17) @ 0: uvm_test_top.env.agnt.dri [driver] build_phase from driver
UVM_INFO monitor.sv(21) @ 0: uvm_test_top.env.agnt.mon [monitor] build_phase from monitor
UVM_INFO scoreboard.sv(17) @ 0: uvm_test_top.env.scb [scoreboard] build_phase from scoreboard
UVM_INFO agent.sv(26) @ 0: uvm_test_top.env.agnt [agent] connect_phase from test
UVM_INFO environment.sv(23) @ 0: uvm_test_top.env [environment] connect_phase from test
UVM_INFO test.sv(21) @ 0: uvm_test_top [test] end_of_elaboration_phase from test
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               test                    -     @1838
  env                      environment             -     @1918
    agnt                   agent                   -     @1880
      dri                  driver                  -     @2690
        rsp_port           uvm_analysis_port       -     @2790
        seq_item_port      uvm_seq_item_pull_port  -     @2740
      mon                  monitor                 -     @2821
        port_tx            uvm_analysis_port       -     @2879
      seqr                 sequencer               -     @1967
        rsp_export         uvm_analysis_export     -     @2095
        seq_item_export    uvm_seq_item_pull_imp   -     @2657
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    scb                    scoreboard              -     @1999
      port_rx              uvm_analysis_imp        -     @2953
--------------------------------------------------------------
UVM_INFO monitor.sv(28) @ 0: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 0: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 0: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 0, rst = 0 ,d=0 ,q=0
UVM_INFO driver.sv(24) @ 5000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 5000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 11000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 11000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 15000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 15000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=0 ,q=0
clk = 0, rst = 0 ,d=0 ,q=0
UVM_INFO scoreboard.sv(31) @ 21000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 21000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 25000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 25000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 31000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 31000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 35000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 35000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 41000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 41000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 45000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 45000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 51000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 51000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 55000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 55000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 61000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 61000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 65000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 65000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 71000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 71000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 75000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 75000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 81000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 81000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 85000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 85000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 91000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 91000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 95000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 95000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 101000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 101000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 105000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 105000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 111000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 111000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 115000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 115000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 121000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 121000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 125000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 125000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 131000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 131000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 135000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 135000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 141000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 141000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 145000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 145000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 151000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 151000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 155000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 155000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 161000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 161000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 165000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 165000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 171000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 171000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 175000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 175000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 181000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 181000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 185000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 185000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 191000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 191000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 195000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 195000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 201000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 201000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 205000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 205000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 211000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 211000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 215000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 215000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 221000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 221000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 225000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 225000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 231000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 231000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 235000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 235000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 241000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 241000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 245000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 245000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 251000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 251000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 255000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 255000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 261000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 261000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 265000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 265000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 271000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 271000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 275000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 275000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 281000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 281000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 285000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 285000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 291000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 291000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 295000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 295000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 301000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 301000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 305000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 305000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 311000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 311000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 315000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 315000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 321000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 321000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 325000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 325000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 331000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 331000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 335000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 335000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=0 ,q=0
clk = 0, rst = 0 ,d=0 ,q=0
UVM_INFO scoreboard.sv(31) @ 341000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 341000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 345000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 345000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 351000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 351000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 355000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 355000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 361000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 361000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 365000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 365000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 371000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 371000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 375000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 375000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 381000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 381000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 385000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 385000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 391000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 391000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 395000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 395000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 401000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 401000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 405000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 405000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 411000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 411000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 415000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 415000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 421000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 421000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 425000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 425000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 431000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 431000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 435000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 435000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 441000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 441000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 445000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 445000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 451000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 451000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 455000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 455000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 461000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 461000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 465000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 465000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 471000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 471000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 475000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 475000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 481000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 481000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 485000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 485000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 491000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 491000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 495000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 495000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 501000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 501000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 505000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 505000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 511000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 511000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 515000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 515000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=0 ,q=0
clk = 0, rst = 1 ,d=0 ,q=0
UVM_INFO scoreboard.sv(31) @ 521000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 521000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 525000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 525000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=0 ,q=0
clk = 0, rst = 1 ,d=0 ,q=0
UVM_INFO scoreboard.sv(31) @ 531000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 531000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 535000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 535000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 541000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 541000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 545000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 545000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 551000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 551000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 555000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 555000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 561000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 561000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 565000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 565000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 571000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 571000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 575000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 575000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 581000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 581000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 585000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 585000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 591000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 591000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 595000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 595000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=0 ,q=0
clk = 0, rst = 0 ,d=0 ,q=0
UVM_INFO scoreboard.sv(31) @ 601000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 601000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 605000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 605000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 611000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 611000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 615000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 615000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 621000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 621000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 625000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 625000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 631000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 631000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 635000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 635000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 641000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 641000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 645000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 645000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 651000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 651000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 655000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 655000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 661000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 661000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 665000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 665000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 671000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 671000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 675000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 675000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 681000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 681000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 685000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 685000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 691000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 691000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 695000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 695000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 701000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 701000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 705000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 705000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 711000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 711000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 715000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 715000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 721000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 721000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 725000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 725000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 731000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 731000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 735000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 735000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 741000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 741000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 745000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 745000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 751000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 751000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 755000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 755000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 761000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 761000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 765000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 765000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 771000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 771000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 775000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 775000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 781000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 781000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 785000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 785000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 791000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 791000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 795000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 795000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 801000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 801000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 805000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 805000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 811000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 811000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 815000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 815000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 821000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 821000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 825000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 825000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 831000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 831000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 835000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 835000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 841000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 841000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 845000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 845000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 851000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 851000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 855000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 855000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 861000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 861000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 865000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 865000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=0 ,q=0
clk = 0, rst = 0 ,d=0 ,q=0
UVM_INFO scoreboard.sv(31) @ 871000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 871000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 875000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 875000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 881000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 881000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 885000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 885000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 891000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 891000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 895000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 895000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 901000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 901000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 905000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 905000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 911000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 911000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 915000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 915000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 921000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 921000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 925000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 925000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 931000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 931000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 935000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 935000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 941000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 941000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 945000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 945000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 951000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 951000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 955000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 955000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 961000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 961000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 965000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 965000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 1 ,d=1 ,q=0
clk = 0, rst = 1 ,d=1 ,q=0
UVM_INFO scoreboard.sv(31) @ 971000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
UVM_INFO monitor.sv(28) @ 971000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 975000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 975000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 981000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 981000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 985000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 985000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
clk = 0, rst = 0 ,d=1 ,q=1
UVM_INFO scoreboard.sv(31) @ 991000: uvm_test_top.env.scb [PASS] expected_output=1,q=1
UVM_INFO monitor.sv(28) @ 991000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(24) @ 995000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
UVM_INFO sequence.sv(13) @ 995000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
clk = 1, rst = 0 ,d=1 ,q=1
Simulation complete via $finish(1) at time 1 US + 0
./testbench.sv:44     $finish;
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Nov 01, 2025 at 00:37:26 EDT  (total: 00:00:07)
Finding VCD file...
./dump.vcd
[2025-11-01 04:37:27 UTC] Opening EPWave...
Done
