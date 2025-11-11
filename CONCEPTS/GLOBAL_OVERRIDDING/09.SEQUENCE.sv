class seq extends uvm_sequence#(sequence_item);
  `uvm_object_utils(seq)
  
  sequence_item tx;
  
  function new(string name ="seq");
    super.new(name);
    `uvm_info("SEQ","constructor",UVM_HIGH)
  endfunction
  
  task body();
    
    repeat(10)begin
      
    `uvm_info("SEQ","------------body------------------",UVM_LOW);
    tx = sequence_item :: type_id :: create("tx");
    `uvm_do(tx)
      
    end
  endtask
endclass
  
  
