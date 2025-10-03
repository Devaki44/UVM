`include "uvm_macros.svh"
import uvm_pkg::*;


class seq_item extends uvm_sequence_item;
  rand byte addr;
  rand byte data;
  
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
  byte unsigned byte_packed_data[];
  
  initial begin
    s0 = seq_item :: type_id :: create("s0") ;
    s1 = seq_item :: type_id :: create("s1") ;
    
    void'(s0.randomize());
    `uvm_info("seq_item","printing s0",UVM_LOW);
    s0.print();
    
    s0.pack_bytes(byte_packed_data);
    
    foreach(byte_packed_data[i])
      `uvm_info("PACK",$sformatf("byte_packet_data[%0d] = %0h",i,byte_packed_data[i]),UVM_LOW);
    
    
    `uvm_info("","BEFORE UNPACK",UVM_LOW);
    s1.print();
    
    `uvm_info("","AFTER UNPACK",UVM_LOW);
    s1.unpack_bytes(byte_packed_data);
    s1.print();

  end
endmodule




//OUTPUT

     (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO design.sv(30) @ 0: reporter [seq_item] printing s0
-----------------------------
Name    Type      Size  Value
-----------------------------
s0      seq_item  -     @1800
  addr  integral  8     'h54 
  data  integral  8     'h9d 
-----------------------------
UVM_INFO design.sv(36) @ 0: reporter [PACK] byte_packet_data[0] = 54
UVM_INFO design.sv(36) @ 0: reporter [PACK] byte_packet_data[1] = 9d
UVM_INFO design.sv(39) @ 0: reporter [] BEFORE UNPACK
-----------------------------
Name    Type      Size  Value
-----------------------------
s1      seq_item  -     @1810
  addr  integral  8     'h0  
  data  integral  8     'h0  
-----------------------------
UVM_INFO design.sv(42) @ 0: reporter [] AFTER UNPACK
-----------------------------
Name    Type      Size  Value
-----------------------------
s1      seq_item  -     @1810
  addr  integral  8     'h54 
  data  integral  8     'h9d 
-----------------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
