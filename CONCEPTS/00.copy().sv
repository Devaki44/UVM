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
    s1 = seq_item :: type_id :: create("s1") ;
    
    void'(s0.randomize());
    s0.print();
    s1.print();
    
    s1.copy(s0);
    s1.print();
    
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
-----------------------------
Name    Type      Size  Value
-----------------------------
s1      seq_item  -     @1809
  addr  integral  4     'h0  
  data  integral  4     'h0  
-----------------------------
-----------------------------
Name    Type      Size  Value
-----------------------------
s1      seq_item  -     @1809
  addr  integral  4     'h4  
  data  integral  4     'hd  
-----------------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

