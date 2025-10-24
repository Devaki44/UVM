`include "uvm_macros.svh"
import uvm_pkg ::* ;

class seq_item extends uvm_sequence_item;
  rand bit[3:0]data;
  rand bit[3:0]addr;
  
  `uvm_object_utils_begin(seq_item)
  `uvm_field_int(data,UVM_ALL_ON)
  `uvm_field_int(addr,UVM_ALL_ON)
  `uvm_object_utils_end
  
  function new(string name ="seq_item");
    super.new(name);
  endfunction
endclass
 
module test;
  seq_item s0,s1;
  initial begin
    s0 =  seq_item :: type_id :: create("s0") ;
//     s1 =  seq_item :: type_id :: create("s1") ;
    
    void'(s0.randomize());
    
    `uvm_info("seq_item","printing the values of s0",UVM_LOW)
    s0.print();
    
//     `uvm_info("seq_item","printing the values of s1",UVM_LOW)
//     s1.print();
    
    $cast(s1,s0.clone());
    
    `uvm_info("seq_item","printing the values of s1",UVM_LOW)
    s1.print();
    
    
    if(s0.compare(s1))begin
      `uvm_info("seq_item","SAME",UVM_NONE);
    end
    else begin
      `uvm_info("seq_item","NOT SAME",UVM_LOW);
    end

      
  end
endmodule
    
    
    
    
    
    
 
