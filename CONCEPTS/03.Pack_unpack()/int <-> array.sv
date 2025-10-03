`include "uvm_macros.svh"
import uvm_pkg ::*;

class seq_item extends uvm_sequence_item;
  
  rand int data;
  rand int addr;
  
  `uvm_object_utils_begin(seq_item)
  `uvm_field_int(data,UVM_ALL_ON);
  `uvm_field_int(addr,UVM_ALL_ON);
  `uvm_object_utils_end

  function new(string name = "seq_item");
    super.new(name);
  endfunction
  
endclass

module tb;
  
  seq_item s0,s1;
  int unsigned int_packed_data[];
  
  initial begin
    s0 = seq_item :: type_id :: create("s0");
    s1 = seq_item :: type_id :: create("s1");
    
    void'(s0.randomize());
    `uvm_info("s0","BEFORE PACKED",UVM_LOW);
    s0.print();
    
    s0.pack_ints(int_packed_data);
    `uvm_info("s0","AFTER PACKED",UVM_LOW);
    foreach(int_packed_data[i])
      `uvm_info("s0",$sformatf("int_packed_data[%0d] = %0h",i,int_packed_data[i]),UVM_LOW);
    
    
    
    `uvm_info("s1","BEFORE UNPACKED",UVM_LOW);
    s1.print();
    
    s1.unpack_ints(int_packed_data);
    `uvm_info("s1","AFTER UNPACKED",UVM_LOW);
    s1.print();
  end
  
endmodule




//OUTPUT


UVM_INFO testbench.sv(82) @ 0: reporter [s0] BEFORE PACKED
----------------------------------
Name    Type      Size  Value     
----------------------------------
s0      seq_item  -     @1800     
  data  integral  32    'h58e97750
  addr  integral  32    'h95b0f008
----------------------------------
UVM_INFO testbench.sv(86) @ 0: reporter [s0] AFTER PACKED
UVM_INFO testbench.sv(88) @ 0: reporter [s0] int_packed_data[0] = 58e97750
UVM_INFO testbench.sv(88) @ 0: reporter [s0] int_packed_data[1] = 95b0f008
UVM_INFO testbench.sv(92) @ 0: reporter [s1] BEFORE UNPACKED
-----------------------------
Name    Type      Size  Value
-----------------------------
s1      seq_item  -     @1810
  data  integral  32    'h0  
  addr  integral  32    'h0  
-----------------------------
UVM_INFO testbench.sv(96) @ 0: reporter [s1] AFTER UNPACKED
----------------------------------
Name    Type      Size  Value     
----------------------------------
s1      seq_item  -     @1810     
  data  integral  32    'h58e97750
  addr  integral  32    'h95b0f008
----------------------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
