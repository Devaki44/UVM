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
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    `uvm_info("CONNECT_PHASE","CONNECT_PHASE CALLED FROM DRIVER ",UVM_LOW);
  endfunction
  
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    
    `uvm_info("END_OF_ELABORATION_PHASE","END_OF_ELABORATION_PHASE CALLED FROM DRIVER",UVM_LOW);
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
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    `uvm_info("CONNECT_PHASE","CONNECT_PHASE CALLED FROM MONITOR ",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    
    `uvm_info("END_OF_ELABORATION_PHASE","END_OF_ELABORATION_PHASE CALLED FROM MONITOR",UVM_LOW);
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
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    `uvm_info("CONNECT_PHASE","CONNECT_PHASE CALLED FROM AGENT ",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    
    `uvm_info("END_OF_ELABORATION_PHASE","END_OF_ELABORATION_PHASE CALLED FROM AGENT",UVM_LOW);
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
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    `uvm_info("CONNECT_PHASE","CONNECT_PHASE CALLED FROM ENVIRONMENT ",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    
    `uvm_info("END_OF_ELABORATION_PHASE","END_OF_ELABORATION_PHASE CALLED FROM ENVIRONMENT",UVM_LOW);
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
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    `uvm_info("CONNECT_PHASE","CONNECT_PHASE CALLED FROM TEST ",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    
    `uvm_info("END_OF_ELABORATION_PHASE","END_OF_ELABORATION_PHASE CALLED FROM TEST",UVM_LOW);
    
    uvm_top.print_topology();
    
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
UVM_INFO testbench.sv(142) @ 0: uvm_test_top [BUILD_PHASE] BUILD_PHASE CALLED FROM TEST 
UVM_INFO testbench.sv(108) @ 0: uvm_test_top.en [BUILD_PHASE] BUILD_PHASE CALLED FROM ENVIRONMENT 
UVM_INFO testbench.sv(74) @ 0: uvm_test_top.en.ag [BUILD_PHASE] BUILD_PHASE CALLED FROM AGENT 
UVM_INFO testbench.sv(15) @ 0: uvm_test_top.en.ag.dr [BUILD_PHASE] BUILD_PHASE CALLED FROM DRIVER 
UVM_INFO testbench.sv(43) @ 0: uvm_test_top.en.ag.mr [BUILD_PHASE] BUILD_PHASE CALLED FROM MONITOR 
UVM_INFO testbench.sv(21) @ 0: uvm_test_top.en.ag.dr [CONNECT_PHASE] CONNECT_PHASE CALLED FROM DRIVER 
UVM_INFO testbench.sv(49) @ 0: uvm_test_top.en.ag.mr [CONNECT_PHASE] CONNECT_PHASE CALLED FROM MONITOR 
UVM_INFO testbench.sv(84) @ 0: uvm_test_top.en.ag [CONNECT_PHASE] CONNECT_PHASE CALLED FROM AGENT 
UVM_INFO testbench.sv(116) @ 0: uvm_test_top.en [CONNECT_PHASE] CONNECT_PHASE CALLED FROM ENVIRONMENT 
UVM_INFO testbench.sv(151) @ 0: uvm_test_top [CONNECT_PHASE] CONNECT_PHASE CALLED FROM TEST 
UVM_INFO testbench.sv(28) @ 0: uvm_test_top.en.ag.dr [END_OF_ELABORATION_PHASE] END_OF_ELABORATION_PHASE CALLED FROM DRIVER
UVM_INFO testbench.sv(55) @ 0: uvm_test_top.en.ag.mr [END_OF_ELABORATION_PHASE] END_OF_ELABORATION_PHASE CALLED FROM MONITOR
UVM_INFO testbench.sv(90) @ 0: uvm_test_top.en.ag [END_OF_ELABORATION_PHASE] END_OF_ELABORATION_PHASE CALLED FROM AGENT
UVM_INFO testbench.sv(122) @ 0: uvm_test_top.en [END_OF_ELABORATION_PHASE] END_OF_ELABORATION_PHASE CALLED FROM ENVIRONMENT
UVM_INFO testbench.sv(157) @ 0: uvm_test_top [END_OF_ELABORATION_PHASE] END_OF_ELABORATION_PHASE CALLED FROM TEST
UVM_INFO /xcelium23.09/tools/methodology/UVM/CDNS-1.2/sv/src/base/uvm_root.svh(605) @ 0: reporter [UVMTOP] UVM testbench topology:
----------------------------------------------------------
Name                   Type                    Size  Value
----------------------------------------------------------
uvm_test_top           test                    -     @1813
  en                   env                     -     @1848
    ag                 agent                   -     @1883
      dr               driver                  -     @1918
        rsp_port       uvm_analysis_port       -     @2059
        seq_item_port  uvm_seq_item_pull_port  -     @2007
      mr               monitor                 -     @2092
----------------------------------------------------------

UVM_INFO /xcelium23.09/tools/methodology/UVM/CDNS-1.2/sv/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :   18
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[BUILD_PHASE]     5
[CONNECT_PHASE]     5
[END_OF_ELABORATION_PHASE]     5
[RNTST]     1
[UVM/RELNOTES]     1
[UVMTOP]     1

Simulation complete via $finish(1) at time 0 FS + 231
/xcelium23.09/tools/methodology/UVM/CDNS-1.2/sv/src/base/uvm_root.svh:543     $finish;
xcelium> exit
