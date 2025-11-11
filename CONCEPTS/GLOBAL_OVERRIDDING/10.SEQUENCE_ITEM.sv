class sequence_item extends uvm_sequence_item;
  
  rand logic a,b,cin;
  	   logic sum,cout;
  
  `uvm_object_utils_begin(sequence_item)
  `uvm_field_int(a,UVM_ALL_ON)
  `uvm_field_int(b,UVM_ALL_ON)
  `uvm_field_int(cin,UVM_ALL_ON)
  `uvm_field_int(sum,UVM_ALL_ON)
  `uvm_field_int(cout,UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "sequence_item");
    super.new(name);
    `uvm_info("SEQ_ITEM","constructor",UVM_HIGH)
  endfunction
  
  
endclass
  

