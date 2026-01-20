class sequence_item extends uvm_sequence_item;
  `uvm_object_utils(sequence_item)
  
  rand bit 		   w_en;
  rand bit 		   r_en;
  rand bit [15: 0] data_in;
  
  	   bit 		   w_clk;
  	   bit 		   r_clk;
  	   bit 		   w_rst;
  	   bit 		   r_rst;
  	   bit [15:0]  data_out;
  	   bit 		   full;
  	   bit 		   empty;

  
  //constraint
  constraint en_c		{w_en != r_en;
                         w_en dist { 1:=3 , 0:=10 };
                         r_en dist { 1:=20 , 0:=1 };}
  constraint data_in_c  { data_in inside {[1:15]};} 
  
  
  function new(string name = "sequence_item");
    super.new(name);
  endfunction
  
endclass
  
  
