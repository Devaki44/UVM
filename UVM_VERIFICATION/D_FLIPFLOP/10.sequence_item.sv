class sequence_item extends uvm_sequence_item;
  `uvm_object_utils(sequence_item)
  
  rand bit rst;
  rand bit d;
  bit q;
//     constraint rst_bit {rst dist {1:= 10, 0:= 90};}

  constraint rst_c{rst dist {1:=90 , 0:=10};}
  
  function new(string name = "sequence_item");
    super.new(name);
  endfunction
  
endclass
