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
  bit bit_packed_data[];
  
  initial begin
    s0 = seq_item :: type_id :: create("s0") ;
    s1 = seq_item :: type_id :: create("s1") ;
    
    void'(s0.randomize());
    `uvm_info("seq_item","printing s0",UVM_LOW);
    s0.print();
    
    s0.pack(bit_packed_data);
    
    foreach(bit_packed_data[i])
      `uvm_info("PACK",$sformatf("bit_packet_data[%0d] = %h",i,bit_packed_data[i]),UVM_LOW);
    
    
    `uvm_info("","BEFORE UNPACK",UVM_LOW);
    s1.print();
    
    `uvm_info("","AFTER UNPACK",UVM_LOW);
    s1.unpack(bit_packed_data);
    s1.print();
    
  end
endmodule


//OUTPUT

(Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO testbench.sv(30) @ 0: reporter [seq_item] printing s0
-----------------------------
Name    Type      Size  Value
-----------------------------
s0      seq_item  -     @1800
  addr  integral  4     'h4  
  data  integral  4     'hd  
-----------------------------
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[0] = 0
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[1] = 1
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[2] = 0
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[3] = 0
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[4] = 1
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[5] = 1
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[6] = 0
UVM_INFO testbench.sv(36) @ 0: reporter [PACK] bit_packet_data[7] = 1
UVM_INFO testbench.sv(39) @ 0: reporter [] BEFORE UNPACK
-----------------------------
Name    Type      Size  Value
-----------------------------
s1      seq_item  -     @1810
  addr  integral  4     'h0  
  data  integral  4     'h0  
-----------------------------
UVM_INFO testbench.sv(42) @ 0: reporter [] AFTER UNPACK
-----------------------------
Name    Type      Size  Value
-----------------------------
s1      seq_item  -     @1810
  addr  integral  4     'h4  
  data  integral  4     'hd  
-----------------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
    
