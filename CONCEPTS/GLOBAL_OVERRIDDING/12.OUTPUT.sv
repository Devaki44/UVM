
      (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO @ 0: reporter [RNTST] Running test test...
UVM_INFO test.sv(20) @ 0: uvm_test_top [TEST_CLASS] build_phase from test
UVM_INFO environment.sv(21) @ 0: uvm_test_top.env [ENV_CLASS] build_phase from environment
UVM_INFO agent.sv(19) @ 0: uvm_test_top.env.A1 [AGNT_CLASS] build_phase from agent
UVM_FATAL /apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.2/src/base/uvm_component.svh(1892) @ 0: seqr [CLDEXT] Cannot set 'seqr' as a child of 'uvm_test_top.env.A1', which already has a child by that name.
UVM_INFO /apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 0: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :    5
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    1
** Report counts by id
[AGNT_CLASS]     1
[CLDEXT]     1
[ENV_CLASS]     1
[RNTST]     1
[TEST_CLASS]     1
[UVM/RELNOTES]     1

$finish called from file "/apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.2/src/base/uvm_root.svh", line 135.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ps
