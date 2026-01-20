interface interf;
  
  bit 		  w_clk;
  bit 		  r_clk;
  bit 		  w_rst;
  bit 		  r_rst;
  bit 		  w_en;
  bit 		  r_en;
  bit [15:0]  data_in;
  bit [15:0]  data_out;
  bit 		  full;
  bit 		  empty;
  
endinterface
  
