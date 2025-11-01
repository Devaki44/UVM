class sequence_item extends uvm_sequence_item;
  `uvm_object_utils(sequence_item)
  
  rand bit rst;
  rand bit d;
  bit q;
  
  constraint d_c{d dist {0:= 10, 1:= 90};}
  constraint rst_c{rst dist {1:=20 , 0:=80};}
  
  function new(string name = "sequence_item");
    super.new(name);
  endfunction
  
endclass
