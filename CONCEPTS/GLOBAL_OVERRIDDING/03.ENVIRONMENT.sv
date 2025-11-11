class environment extends uvm_env;
  `uvm_component_utils(environment)
  
  agent1 A1;
  agent1 A2;
  
  scoreboard scb;
  
  function new(string name = "environment",uvm_component parent);
    super.new(name,parent);
    `uvm_info("ENV_CLASS","constructor",UVM_HIGH)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    A1     = agent1 :: type_id :: create("A1",this);
    A2     = agent1 :: type_id :: create("A2",this);

    scb 	 = scoreboard :: type_id :: create("scb",this);
    `uvm_info("ENV_CLASS","build_phase from environment",UVM_LOW)
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    A1.mon.port_tx.connect(scb.port_rx);
    `uvm_info("ENV_CLASS","connect_phase from environment",UVM_LOW)
  endfunction
  
endclass

    
