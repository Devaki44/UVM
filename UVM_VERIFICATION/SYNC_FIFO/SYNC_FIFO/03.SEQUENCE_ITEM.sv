class sequence_item extends uvm_sequence_item;
  `uvm_object_utils(sequence_item)
  
  	   bit 		 rst;
  rand bit 		 en;
  rand bit [3:0] data_in;
  	   bit [3:0] data_out;
  	   bit 		 full;
  	   bit 		 empty;
  
  constraint en_c { en dist {1 := 6 ,0 := 4};}
  constraint data_in_c {data_in inside {[1:15]};}
  
  function new(string name = "sequence_item");
    super.new(name);
  endfunction
  
  
endclass
  
  
