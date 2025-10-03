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
    
    //compare_1
    if(s1.compare(s0))begin
      `uvm_info("seq_item","Data's are same",UVM_LOW);
    end
    else begin
      `uvm_info("seq_item","Data's not are same",UVM_LOW);
    end
   
    s1.data = 4'hf;
    s1.addr = 4'hd;
    s1.print();
    `uvm_info("seq_item","printing s1",UVM_LOW);
    
    //compare_2
    if(s1.compare(s0))begin
      `uvm_info("seq_item","Data's are same",UVM_LOW);
    end
    else begin
      `uvm_info("seq_item","Data's not are same",UVM_LOW);
    end
    
    
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
UVM_INFO testbench.sv(37) @ 0: reporter [seq_item] Data's are same
-----------------------------
Name    Type      Size  Value
-----------------------------
s0      seq_item  -     @1828
  addr  integral  4     'hd  
  data  integral  4     'hf  
-----------------------------
UVM_INFO testbench.sv(46) @ 0: reporter [seq_item] printing s1
UVM_INFO /xcelium23.09/tools/methodology/UVM/CDNS-1.2/sv/src/base/uvm_comparer.svh(351) @ 0: reporter [MISCMP] Miscompare for s0.addr: lhs = 'hd : rhs = 'h4
UVM_INFO /xcelium23.09/tools/methodology/UVM/CDNS-1.2/sv/src/base/uvm_comparer.svh(382) @ 0: reporter [MISCMP] 1 Miscompare(s) for object s0@1799 vs. s0@1828
UVM_INFO testbench.sv(53) @ 0: reporter [seq_item] Data's not are same
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
