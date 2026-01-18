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
    `uvm_info(get_type_name(),"build_phase from agent",UVM_HIGH)
    
    seqr = sequencer :: type_id :: create("seqr",this);
    dri  = driver 	 :: type_id :: create("dri",this);
    mon  = monitor   :: type_id :: create("mon",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info(get_type_name(),"connnect_phase from agent",UVM_HIGH)
    
    dri.seq_item_port.connect(seqr.seq_item_export);
  endfunction
endclass
