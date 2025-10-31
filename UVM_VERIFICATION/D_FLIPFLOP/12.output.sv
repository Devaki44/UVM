#       (Specify +UVM_NO_RELNOTES to turn off this notice)
# 
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test test...
# UVM_INFO test.sv(16) @ 0: uvm_test_top [test] build_phase from test
# UVM_INFO environment.sv(16) @ 0: uvm_test_top.env [environment] build_phase from environment
# UVM_INFO agent.sv(19) @ 0: uvm_test_top.env.agnt [agent] build_phase from agent
# UVM_INFO driver.sv(17) @ 0: uvm_test_top.env.agnt.dri [driver] build_phase from driver
# UVM_INFO monitor.sv(21) @ 0: uvm_test_top.env.agnt.mon [monitor] build_phase from monitor
# UVM_INFO scoreboard.sv(17) @ 0: uvm_test_top.env.scb [scoreboard] build_phase from scoreboard
# UVM_INFO agent.sv(26) @ 0: uvm_test_top.env.agnt [agent] connect_phase from test
# UVM_INFO environment.sv(23) @ 0: uvm_test_top.env [environment] connect_phase from test
# UVM_INFO test.sv(21) @ 0: uvm_test_top [test] end_of_elaboration_phase from test
# --------------------------------------------------------------
# Name                       Type                    Size  Value
# --------------------------------------------------------------
# uvm_test_top               test                    -     @356 
#   env                      environment             -     @372 
#     agnt                   agent                   -     @388 
#       dri                  driver                  -     @530 
#         rsp_port           uvm_analysis_port       -     @547 
#         seq_item_port      uvm_seq_item_pull_port  -     @538 
#       mon                  monitor                 -     @556 
#         port_tx            uvm_analysis_port       -     @569 
#       seqr                 sequencer               -     @407 
#         rsp_export         uvm_analysis_export     -     @415 
#         seq_item_export    uvm_seq_item_pull_imp   -     @521 
#         arbitration_queue  array                   0     -    
#         lock_queue         array                   0     -    
#         num_last_reqs      integral                32    'd1  
#         num_last_rsps      integral                32    'd1  
#     scb                    scoreboard              -     @396 
#       port_rx              uvm_analysis_imp        -     @586 
# --------------------------------------------------------------
# UVM_INFO monitor.sv(28) @ 0: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# UVM_INFO driver.sv(24) @ 0: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 0: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 0, rst = 0 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 5000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 5000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=0 ,q=0
# UVM_INFO scoreboard.sv(31) @ 10000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 10000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 15000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 15000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=0 ,q=0
# UVM_INFO scoreboard.sv(31) @ 20000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 20000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 25000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 25000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=0 ,q=0
# UVM_INFO scoreboard.sv(31) @ 30000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 30000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 35000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 35000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 0 ,d=0 ,q=0
# UVM_INFO scoreboard.sv(31) @ 40000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 40000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 0 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 45000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 45000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=0 ,q=0
# UVM_INFO scoreboard.sv(31) @ 50000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 50000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 55000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 55000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=1 ,q=0
# UVM_INFO scoreboard.sv(31) @ 60000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 60000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=1 ,q=0
# UVM_INFO driver.sv(24) @ 65000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 65000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=1 ,q=0
# UVM_INFO scoreboard.sv(31) @ 70000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 70000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=1 ,q=0
# UVM_INFO driver.sv(24) @ 75000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 75000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=0 ,q=0
# UVM_INFO scoreboard.sv(31) @ 80000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 80000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 85000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 85000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=0 ,q=0
# UVM_INFO scoreboard.sv(31) @ 90000: uvm_test_top.env.scb [PASS] expected_output=0,q=0
# UVM_INFO monitor.sv(28) @ 90000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
# clk = 0, rst = 1 ,d=0 ,q=0
# UVM_INFO driver.sv(24) @ 95000: uvm_test_top.env.agnt.dri [driver] run_phase from driver
# UVM_INFO sequence.sv(13) @ 95000: uvm_test_top.env.agnt.seqr@@se [seq] -------------body------------
# clk = 1, rst = 1 ,d=0 ,q=0
# ** Note: $finish    : testbench.sv(44)
#    Time: 100 ns  Iteration: 0  Instance: /testbench
# End time: 09:07:04 on Oct 31,2025, Elapsed time: 0:00:03
# Errors: 0, Warnings: 0
End time: 09:07:04 on Oct 31,2025, Elapsed time: 0:00:13
*** Summary *********************************************
    qrun: Errors:   0, Warnings:   0
    vlog: Errors:   0, Warnings:   0
    vopt: Errors:   0, Warnings:   1
    vsim: Errors:   0, Warnings:   0
  Totals: Errors:   0, Warnings:   1
Done
