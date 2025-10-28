(Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO @ 0: reporter [RNTST] Running test test...
UVM_INFO test.sv(15) @ 0: uvm_test_top [test] build-phase from test
UVM_INFO environment.sv(17) @ 0: uvm_test_top.env [environment] build-phase from environment
UVM_INFO agent.sv(19) @ 0: uvm_test_top.env.agnt [agent] build-phase from agent
UVM_INFO driver.sv(14) @ 0: uvm_test_top.env.agnt.dri [driver] build-phase from driver
UVM_INFO monitor.sv(17) @ 0: uvm_test_top.env.agnt.mon [monitor] build-phase from monitor
UVM_INFO scoreboard.sv(15) @ 0: uvm_test_top.env.scb [scoreboard] build-phase from scoreboard
UVM_INFO agent.sv(25) @ 0: uvm_test_top.env.agnt [agent] connect-phase from agent
UVM_INFO environment.sv(23) @ 0: uvm_test_top.env [environment] connect-phase from environment
UVM_INFO test.sv(19) @ 0: uvm_test_top [test] end_of_elaboration-phase from test
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               test                    -     @341 
  env                      environment             -     @354 
    agnt                   agent                   -     @371 
      dri                  driver                  -     @529 
        rsp_port           uvm_analysis_port       -     @548 
        seq_item_port      uvm_seq_item_pull_port  -     @538 
      mon                  monitor                 -     @558 
        port_tx            uvm_analysis_port       -     @576 
      seqr                 sequencer               -     @392 
        rsp_export         uvm_analysis_export     -     @401 
        seq_item_export    uvm_seq_item_pull_imp   -     @519 
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    scb                    scoreboard              -     @380 
      port_rx              uvm_analysis_imp        -     @594 
--------------------------------------------------------------
UVM_INFO driver.sv(26) @ 0: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO test.sv(24) @ 0: uvm_test_top [test] run-phase from test
UVM_INFO sequence.sv(15) @ 0: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 1000: uvm_test_top.env.scb [AND_PASS] a=0 b=0 out=0
UVM_INFO monitor.sv(34) @ 1000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 1000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 1000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 2000: uvm_test_top.env.scb [AND_PASS] a=0 b=0 out=0
UVM_INFO monitor.sv(34) @ 2000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 2000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 2000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 3000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 3000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 3000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 3000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 4000: uvm_test_top.env.scb [AND_PASS] a=0 b=0 out=0
UVM_INFO monitor.sv(34) @ 4000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 4000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 4000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 5000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 5000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 5000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 5000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 6000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 6000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 6000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 6000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 7000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 7000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 7000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 7000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 8000: uvm_test_top.env.scb [AND_PASS] a=1 b=0 out=0
UVM_INFO monitor.sv(34) @ 8000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 8000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 8000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 9000: uvm_test_top.env.scb [AND_PASS] a=1 b=0 out=0
UVM_INFO monitor.sv(34) @ 9000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 9000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 9000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 10000: uvm_test_top.env.scb [AND_PASS] a=1 b=0 out=0
UVM_INFO monitor.sv(34) @ 10000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 10000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 10000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 11000: uvm_test_top.env.scb [AND_PASS] a=1 b=1 out=1
UVM_INFO monitor.sv(34) @ 11000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 11000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 11000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 12000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 12000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 12000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 12000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 13000: uvm_test_top.env.scb [AND_PASS] a=0 b=0 out=0
UVM_INFO monitor.sv(34) @ 13000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 13000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 13000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 14000: uvm_test_top.env.scb [AND_PASS] a=1 b=0 out=0
UVM_INFO monitor.sv(34) @ 14000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 14000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 14000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 15000: uvm_test_top.env.scb [AND_PASS] a=1 b=0 out=0
UVM_INFO monitor.sv(34) @ 15000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 15000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 15000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 16000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 16000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 16000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 16000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 17000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 17000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 17000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 17000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 18000: uvm_test_top.env.scb [AND_PASS] a=1 b=1 out=1
UVM_INFO monitor.sv(34) @ 18000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 18000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 18000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 19000: uvm_test_top.env.scb [AND_PASS] a=0 b=0 out=0
UVM_INFO monitor.sv(34) @ 19000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO driver.sv(26) @ 19000: uvm_test_top.env.agnt.dri [driver] run-phase from driver
UVM_INFO sequence.sv(15) @ 19000: uvm_test_top.env.agnt.seqr@@se [seq] ---------body started------
UVM_INFO scoreboard.sv(24) @ 20000: uvm_test_top.env.scb [AND_PASS] a=0 b=1 out=0
UVM_INFO monitor.sv(34) @ 20000: uvm_test_top.env.agnt.mon [monitor] run_phase from monitor
UVM_INFO /apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 20000: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO /apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 20000: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :   93
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[AND_PASS]    20
[RNTST]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[agent]     2
[driver]    21
[environment]     2
[monitor]    21
[scoreboard]     1
[seq]    20
[test]     3

$finish called from file "/apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.2/src/base/uvm_root.svh", line 527.
$finish at simulation time                20000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20000 ps
CPU Time:      0.620 seconds;       Data structure size:   0.4Mb
Tue Oct 28 13:15:44 2025
