`include "uvm_macros.svh"
import uvm_pkg ::*;

class driver extends uvm_driver;
  
  `uvm_component_utils(driver)
  
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    `uvm_info("BUILD_PHASE","BUILD_PHASE CALLED FROM DRIVER ",UVM_LOW);
  endfunction
  
endclass

class monitor extends uvm_monitor;
  
  `uvm_component_utils(monitor)
  
  function new(string name = "monitor",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    `uvm_info("BUILD_PHASE","BUILD_PHASE CALLED FROM MONITOR ",UVM_LOW);
  endfunction
  
endclass

class agent extends uvm_agent;
  
  `uvm_component_utils(agent)
  
  driver dr;
  monitor mr;
  
  function new(string name = "agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    `uvm_info("BUILD_PHASE","BUILD_PHASE CALLED FROM AGENT ",UVM_LOW);
    
    dr = driver :: type_id :: create("dr",this);
    mr = monitor :: type_id :: create("mr",this);
    
  endfunction
  
endclass

class env extends uvm_env;
  
  `uvm_component_utils(env)
  
  agent ag;
  
  function new(string name = "env",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    `uvm_info("BUILD_PHASE","BUILD_PHASE CALLED FROM ENVIRONMENT ",UVM_LOW);
    
    ag = agent :: type_id :: create("ag",this);
    
  endfunction
  
  
  
endclass

class test extends uvm_test;
  
  `uvm_component_utils(test)
  
  env en;
  
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    `uvm_info("BUILD_PHASE","BUILD_PHASE CALLED FROM TEST ",UVM_LOW);
    
    en = env :: type_id :: create("en",this);    
    
  endfunction
  
endclass

module tb;
  
  initial begin
    run_test("test");
  end
endmodule




//OUTPUT


  (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO @ 0: reporter [RNTST] Running test test...
UVM_INFO testbench.sv(95) @ 0: uvm_test_top [BUILD_PHASE] BUILD_PHASE CALLED FROM TEST 
UVM_INFO testbench.sv(72) @ 0: uvm_test_top.en [BUILD_PHASE] BUILD_PHASE CALLED FROM ENVIRONMENT 
UVM_INFO testbench.sv(50) @ 0: uvm_test_top.en.ag [BUILD_PHASE] BUILD_PHASE CALLED FROM AGENT 
UVM_INFO testbench.sv(15) @ 0: uvm_test_top.en.ag.dr [BUILD_PHASE] BUILD_PHASE CALLED FROM DRIVER 
UVM_INFO testbench.sv(31) @ 0: uvm_test_top.en.ag.mr [BUILD_PHASE] BUILD_PHASE CALLED FROM MONITOR 
UVM_INFO /xcelium23.09/tools/methodology/UVM/CDNS-1.2/sv/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :    7
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[BUILD_PHASE]     5
[RNTST]     1
[UVM/RELNOTES]     1

Simulation complete via $finish(1) at time 0 FS + 231
/xcelium23.09/tools/methodology/UVM/CDNS-1.2/sv/src/base/uvm_root.svh:543     $finish;
xcelium> exit
