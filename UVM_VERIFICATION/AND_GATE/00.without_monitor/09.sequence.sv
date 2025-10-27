class seq extends uvm_sequence#(sequence_item);
  
  `uvm_object_utils(seq)
  
  sequence_item tx;
  
  function new(string name = "seq");
    super.new(name);
  endfunction
  
  //no-phases
  
  task body();
    repeat(10) begin
     `uvm_info(get_type_name(),"---------body started------",UVM_NONE) 
     tx = sequence_item::type_id::create("tx");
	 assert(tx.randomize());
     `uvm_do(tx);
   end
    
  endtask
    
endclass
