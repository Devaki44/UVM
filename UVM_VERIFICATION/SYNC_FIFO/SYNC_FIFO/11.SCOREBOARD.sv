class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  
  uvm_analysis_imp#(sequence_item,scoreboard)port_rx;
  sequence_item tx;
  
  reg [3:0]expected_out;
  reg [3:0]actual_out;
  reg [3:0]queue[0:15];
  reg [4:0]w_ptr,r_ptr;
  reg f,e;
  
  function new(string name = "scoreboard",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_type_name(),"build_phase from scoreboard",UVM_HIGH)
    
    port_rx = new("port_rx",this);
  endfunction
  
  function void write(sequence_item tx);
    `uvm_info(get_type_name(),"write_function",UVM_HIGH)

    ////////////////////////////////////////////////////////////////////////
    
    //scoreboard logic
    if(tx.rst)begin
      w_ptr		   = 0;
      r_ptr   	   = 0;
      f			   = 0;
      e			   = 1;
      expected_out = 0;
      actual_out   = tx.data_out;
    end
    else begin
      if(tx.en)begin
        queue[w_ptr]   = tx.data_in;
        w_ptr		   = (w_ptr == 5'h8) ? 0 :w_ptr + 1'b1;
      	actual_out     = 4'h0;
        expected_out   = 4'h0;
        f 			   = (w_ptr[4] != r_ptr[4]) && (w_ptr[3:0] == r_ptr[3:0]) ;
        e			   = 0;
        
      end
      else begin
        expected_out   = queue[r_ptr];
        r_ptr		   = (r_ptr == 5'h8) ? 0 :r_ptr + 1'b1;
      	actual_out     = tx.data_out;
        e 			   = (w_ptr  == r_ptr) ;
      end
    end
        
    //checker logic
    if (actual_out == expected_out && f==tx.full && e==tx.empty)
      `uvm_info(get_type_name(),$sformatf("===== PASS ===== : %h == %h,%h == %h,%h == %h,%0h,%0h", expected_out,actual_out,f,tx.full,e,tx.empty,w_ptr,r_ptr),UVM_NONE)
    else
      `uvm_error(get_type_name(),$sformatf("===== FAIL ===== : %h == %h,%h == %h,%h == %h,%0h,%0h", expected_out,actual_out,f,tx.full,e,tx.empty,w_ptr,r_ptr))
      
	////////////////////////////////////////////////////////////////////////////////////////////////
  endfunction
  
endclass
