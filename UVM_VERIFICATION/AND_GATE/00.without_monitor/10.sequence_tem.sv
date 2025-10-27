class sequence_item extends uvm_sequence_item;
  
  rand logic a;
  rand logic b;
  	   logic out;
  
  `uvm_object_utils_begin(sequence_item)
  	`uvm_field_int(a  , UVM_ALL_ON)
  	`uvm_field_int(b  , UVM_ALL_ON)
  	`uvm_field_int(out, UVM_ALL_ON);
  `uvm_object_utils_end
  
  function new(string name = "sequence_item");
    super.new(name);
  endfunction
  

  
  //no-phases
  
endclass
