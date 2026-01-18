class environment extends uvm_env;
  `uvm_component_utils(environment)
  
  agent agnt;
  scoreboard scb;
  
  function new(string name = "environment",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_type_name(),"build_phase from environment",UVM_HIGH)
    
    agnt = agent 	  :: type_id :: create("agnt",this);
    scb  = scoreboard :: type_id :: create("scb",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info(get_type_name(),"connect_phase from environment",UVM_HIGH)
    
    agnt.mon.port_tx.connect(scb.port_rx);
  endfunction
endclass
  
    
