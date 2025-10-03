`include "uvm_macros.svh"
import uvm_pkg::*;


class seq_item extends uvm_sequence_item;
  rand bit [3:0]addr;
  rand bit [3:0]data;
  
  `uvm_object_utils_begin(seq_item)
  	 `uvm_field_int(addr,UVM_ALL_ON)
 	 `uvm_field_int(data,UVM_ALL_ON)
  `uvm_object_utils_end
  
  function new(string name = "seq_item");
    super.new(name);
  endfunction
  
  
endclass

module test;
  seq_item s0,s1;
  
  initial begin
    s0 = seq_item :: type_id :: create("s0") ;
    
    void'(s0.randomize());
    s0.print();
    `uvm_info("seq_item","printing s0",UVM_LOW);
    
    $cast(s1,s0.clone());
    s1.print();
    `uvm_info("seq_item","printing s1",UVM_LOW);
    
    
    s1.data = 4'hf;
    s1.addr = 4'hd;
    s1.print();
    `uvm_info("seq_item","printing s1",UVM_LOW);
    
    
    
  end
endmodule




//OUTPUT


  (Specify +UVM_NO_RELNOTES to turn off this notice)

-----------------------------
Name    Type      Size  Value
-----------------------------
s0      seq_item  -     @1799
  addr  integral  4     'h4  
  data  integral  4     'hd  
-----------------------------
UVM_INFO testbench.sv(29) @ 0: reporter [seq_item] printing s0
-----------------------------
Name    Type      Size  Value
-----------------------------
s0      seq_item  -     @1828
  addr  integral  4     'h4  
  data  integral  4     'hd  
-----------------------------
UVM_INFO testbench.sv(33) @ 0: reporter [seq_item] printing s1
-----------------------------
Name    Type      Size  Value
-----------------------------
s0      seq_item  -     @1828
  addr  integral  4     'hd  
  data  integral  4     'hf  
-----------------------------
UVM_INFO testbench.sv(39) @ 0: reporter [seq_item] printing s1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

