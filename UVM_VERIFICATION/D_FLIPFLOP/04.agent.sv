class agent extends uvm_agent;
  `uvm_component_utils(agent)
  
  sequencer seqr;
  driver dri;
  monitor mon;
  
  function new(string name = "agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    seqr = sequencer :: type_id :: create("seqr",this);
    dri  = driver :: type_id :: create("dri",this);
    mon  = monitor :: type_id :: create("mon",this);
    
    `uvm_info(get_type_name(),"build_phase from agent",UVM_NONE)
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    dri.seq_item_port.connect(seqr.seq_item_export);
    `uvm_info(get_type_name(),"connect_phase from test",UVM_NONE)
  endfunction
endclass
