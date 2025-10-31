class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  
  uvm_analysis_imp#(sequence_item,scoreboard)port_rx;
  
  sequence_item tx;
  bit out;
  
  function new(string name = "scoreboard",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    port_rx = new("port_rx",this);
    `uvm_info(get_type_name(),"build_phase from scoreboard",UVM_NONE)
  endfunction
  
  
  
  function  void write(sequence_item tx);
    /////////////////////////////////////////////////////////
  if(tx.rst)
    out = 1'b0;
  else
    out = tx.d;
  /////////////////////////////////////////////////////////
    
    if(out == tx.q)
      `uvm_info("PASS",$sformatf("expected_output=%0b,q=%0b",out,tx.q),UVM_NONE)
    else
      `uvm_error("FAIL",$sformatf("expected_output=%0b,q=%0b",out,tx.q))
      
  endfunction
  
endclass
