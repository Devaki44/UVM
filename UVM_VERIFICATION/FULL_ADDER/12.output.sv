#       (Specify +UVM_NO_RELNOTES to turn off this notice)
# 
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test test...
# UVM_INFO test.sv(18) @ 0: uvm_test_top [TEST_CLASS] build_phase from test
# UVM_INFO environment.sv(17) @ 0: uvm_test_top.env [ENV_CLASS] build_phase from environment
# UVM_INFO agent.sv(19) @ 0: uvm_test_top.env.agnt [AGNT_CLASS] build_phase from agent
# UVM_INFO driver.sv(14) @ 0: uvm_test_top.env.agnt.dri [DRI_CLASS] build_phase from driver
# UVM_INFO monitor.sv(20) @ 0: uvm_test_top.env.agnt.mon [MON_CLASS] build_phase fron monitor
# UVM_INFO scoreboard.sv(17) @ 0: uvm_test_top.env.scb [SCB_CLASS] build_phase from scoreboard
# UVM_INFO agent.sv(26) @ 0: uvm_test_top.env.agnt [AGNT_CLASS] connect_phase from agent
# UVM_INFO environment.sv(24) @ 0: uvm_test_top.env [ENV_CLASS] connect_phase from environment
# UVM_INFO test.sv(24) @ 0: uvm_test_top [TEST_CLASS] end_of_elaboration_phase from test
# --------------------------------------------------------------
# Name                       Type                    Size  Value
# --------------------------------------------------------------
# uvm_test_top               test                    -     @360 
#   env                      environment             -     @372 
#     agnt                   agent                   -     @388 
#       dri                  driver                  -     @530 
#         rsp_port           uvm_analysis_port       -     @547 
#         seq_item_port      uvm_seq_item_pull_port  -     @538 
#       mon                  monitor                 -     @556 
#         port_tx            uvm_analysis_port       -     @573 
#       seqr                 sequencer               -     @407 
#         rsp_export         uvm_analysis_export     -     @415 
#         seq_item_export    uvm_seq_item_pull_imp   -     @521 
#         arbitration_queue  array                   0     -    
#         lock_queue         array                   0     -    
#         num_last_reqs      integral                32    'd1  
#         num_last_rsps      integral                32    'd1  
#     scb                    scoreboard              -     @396 
#       port_rx              uvm_analysis_imp        -     @590 
# --------------------------------------------------------------
# UVM_INFO sequence.sv(15) @ 0: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=0,a=0,b=0,cin=0,sum=0,cout=0
# UVM_INFO scoreboard.sv(25) @ 1000: uvm_test_top.env.scb [PASS] 0 0 0 0
# UVM_INFO monitor.sv(38) @ 1000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 1000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 1000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=1000,a=1,b=1,cin=1,sum=1,cout=1
# UVM_INFO scoreboard.sv(25) @ 2000: uvm_test_top.env.scb [PASS] 1 1 1 1
# UVM_INFO monitor.sv(38) @ 2000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 2000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 2000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=2000,a=0,b=0,cin=0,sum=0,cout=0
# UVM_INFO scoreboard.sv(25) @ 3000: uvm_test_top.env.scb [PASS] 0 0 0 0
# UVM_INFO monitor.sv(38) @ 3000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 3000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 3000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=3000,a=1,b=1,cin=1,sum=1,cout=1
# UVM_INFO scoreboard.sv(25) @ 4000: uvm_test_top.env.scb [PASS] 1 1 1 1
# UVM_INFO monitor.sv(38) @ 4000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 4000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 4000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=4000,a=0,b=0,cin=0,sum=0,cout=0
# UVM_INFO scoreboard.sv(25) @ 5000: uvm_test_top.env.scb [PASS] 0 0 0 0
# UVM_INFO monitor.sv(38) @ 5000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 5000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 5000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# UVM_INFO scoreboard.sv(25) @ 6000: uvm_test_top.env.scb [PASS] 0 0 0 0
# UVM_INFO monitor.sv(38) @ 6000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 6000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 6000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=6000,a=1,b=0,cin=1,sum=0,cout=1
# UVM_INFO scoreboard.sv(25) @ 7000: uvm_test_top.env.scb [PASS] 1 0 1 0
# UVM_INFO monitor.sv(38) @ 7000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 7000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 7000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=7000,a=0,b=0,cin=0,sum=0,cout=0
# UVM_INFO scoreboard.sv(25) @ 8000: uvm_test_top.env.scb [PASS] 0 0 0 0
# UVM_INFO monitor.sv(38) @ 8000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 8000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 8000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=8000,a=0,b=1,cin=0,sum=1,cout=0
# UVM_INFO scoreboard.sv(25) @ 9000: uvm_test_top.env.scb [PASS] 0 1 0 1
# UVM_INFO monitor.sv(38) @ 9000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 9000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO sequence.sv(15) @ 9000: uvm_test_top.env.agnt.seqr@@se [SEQ] ------------body------------------
# time=9000,a=0,b=0,cin=1,sum=1,cout=0
# UVM_INFO scoreboard.sv(25) @ 10000: uvm_test_top.env.scb [PASS] 0 1 0 1
# UVM_INFO monitor.sv(38) @ 10000: uvm_test_top.env.agnt.mon [MON_CLASS] run_phase from monitor
# UVM_INFO driver.sv(30) @ 10000: uvm_test_top.env.agnt.dri [DRI_CLASS] run_phase from driver
# UVM_INFO test.sv(34) @ 10000: uvm_test_top [TEST_CLASS] run_phase from test
# UVM_INFO test.sv(35) @ 10000: uvm_test_top [TEST_CLASS] ------------------------
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 10000: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 10000: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :   56
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [AGNT_CLASS]     2
# [DRI_CLASS]    11
# [ENV_CLASS]     2
# [MON_CLASS]    11
# [PASS]    10
# [Questa UVM]     2
# [RNTST]     1
# [SCB_CLASS]     1
# [SEQ]    10
# [TEST_CLASS]     4
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 10 ns  Iteration: 77  Instance: /testbench
# End time: 13:23:26 on Oct 30,2025, Elapsed time: 0:00:02
# Errors: 0, Warnings: 0
End time: 13:23:26 on Oct 30,2025, Elapsed time: 0:00:13
*** Summary *********************************************
    qrun: Errors:   0, Warnings:   0
    vlog: Errors:   0, Warnings:   0
    vopt: Errors:   0, Warnings:   1
    vsim: Errors:   0, Warnings:   0
  Totals: Errors:   0, Warnings:   1
