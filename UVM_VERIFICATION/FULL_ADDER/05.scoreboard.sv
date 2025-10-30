class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  
  uvm_analysis_imp#(sequence_item,scoreboard)port_rx;
  
  bit ex_sum,ex_cout;
  sequence_item tx;
  
  function new(string name = "scoreboard",uvm_component parent);
    super.new(name,parent);
    `uvm_info("SCB_CLASS","constructor",UVM_HIGH)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    port_rx = new("port_rx",this);
    `uvm_info("SCB_CLASS","build_phase from scoreboard",UVM_LOW)
  endfunction
  
  function void write(sequence_item tx);
    {ex_cout,ex_sum} = tx.a+tx.b+tx.cin ;
    if (tx.sum !== ex_sum && tx.cout !== ex_cout )
      `uvm_error("MISMATCH", $sformatf(" %b %b %b %b", ex_cout,ex_sum,tx.cout,tx.sum ))
    else
      `uvm_info("PASS", $sformatf("%b %b %b %b", ex_cout,ex_sum,tx.cout,tx.sum), UVM_LOW)
  endfunction
endclass

    
    
    
  
  
  
