class seq extends uvm_sequence#(sequence_item);
  `uvm_object_utils(seq)
  
  sequence_item tx;
  
  function new(string name= "seq");
    super.new(name);
  endfunction
  
  task body();
    `uvm_info(get_type_name(),"----------------BODY TASK-------------",UVM_LOW)
    
    forever begin
      
      tx = sequence_item :: type_id :: create("tx");
      `uvm_do(tx);
      
    end
  endtask
  
endclass
