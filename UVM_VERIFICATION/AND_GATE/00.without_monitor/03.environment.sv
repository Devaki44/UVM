class environment extends uvm_env;
  `uvm_component_utils(environment)
  
  agent agnt;
  scoreboard scb;
  
  function new(string name = "environment",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    agnt = agent::type_id::create("agnt",this);
    scb  = scoreboard::type_id::create("scb",this);
    
    `uvm_info(get_type_name(),"build-phase from environment",UVM_NONE)
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agnt.mon.port_tx.connect(scb.port_rx);
    `uvm_info(get_type_name(),"connect-phase from environment",UVM_NONE)
  endfunction

endclass
