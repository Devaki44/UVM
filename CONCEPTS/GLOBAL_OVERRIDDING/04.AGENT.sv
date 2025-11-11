class agent1 extends uvm_agent;
  `uvm_component_utils(agent1)
  
  sequencer seqr;
  driver dri;
  monitor mon;
  
  function new(string name = "agent",uvm_component parent);
    super.new(name,parent);
    `uvm_info("AGNT_CLASS","constructor",UVM_HIGH)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    seqr	= sequencer :: type_id :: create("seqr",this);
    dri  	= driver :: type_id :: create("dri",this);
    mon 	=  monitor :: type_id :: create("mon",this);
    `uvm_info("AGNT_CLASS","build_phase from agent",UVM_LOW)           
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    dri.seq_item_port.connect(seqr.seq_item_export);
    `uvm_info("AGNT_CLASS","connect_phase from agent",UVM_LOW)
  endfunction
  
endclass





class agent2 extends agent1;
  `uvm_component_utils(agent2)
  
  sequencer seqr;
  driver dri;
  monitor mon;
  
  function new(string name = "agent",uvm_component parent);
    super.new(name,parent);
    `uvm_info("AGNT_CLASS","constructor",UVM_HIGH)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    seqr	= sequencer :: type_id :: create("seqr",this);
    dri  	= driver :: type_id :: create("dri",this);
    mon 	=  monitor :: type_id :: create("mon",this);
    `uvm_info("AGNT_CLASS","build_phase from agent",UVM_LOW)           
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    dri.seq_item_port.connect(seqr.seq_item_export);
    `uvm_info("AGNT_CLASS","connect_phase from agent",UVM_LOW)
  endfunction
  
endclass
