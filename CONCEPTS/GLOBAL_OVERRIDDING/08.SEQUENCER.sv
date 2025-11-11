class sequencer extends uvm_sequencer#(sequence_item);
  `uvm_component_utils(sequencer)
  
  function new(string name = "sequencer",uvm_component parent);
    super.new(name,parent);
    `uvm_info("SEQR_CLASS","constructor",UVM_HIGH)
  endfunction
  
endclass
