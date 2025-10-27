// class scoreboard extends uvm_scoreboard;
//   `uvm_component_utils(scoreboard)
  
//   uvm_analysis_imp#(sequence_item,scoreboard)port_rx;
  
//   function new(string name = "scoreboard",uvm_component parent );
//     super.new(name,parent);
//   endfunction
  
//   function void build_phase(uvm_phase phase);
//     super.build_phase(phase);
//     port_rx = new("port_rx",this);
//     `uvm_info(get_type_name,"build_phase from scoreboard",UVM_NONE)
//   endfunction
  
//   function void write(sequence_item t);
//     `uvm_info(get_type_name(), $sformatf("Received: a=%0b b=%0b out=%0b", t.a, t.b, t.out), UVM_NONE)
//   endfunction
  
// endclass



class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  uvm_analysis_imp#(sequence_item, scoreboard) port_rx;

  function new(string name="scoreboard", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    port_rx = new("port_rx", this);
    `uvm_info(get_type_name(),"build-phase from scoreboard",UVM_NONE)

  endfunction

  function void write(sequence_item tx);
    bit expected;
    expected = tx.a & tx.b;
    if (tx.out !== expected)
      `uvm_error("AND_MISMATCH", $sformatf("Expected %0b, got %0b", expected, tx.out))
    else
      `uvm_info("AND_PASS", $sformatf("a=%0b b=%0b out=%0b", tx.a, tx.b, tx.out), UVM_LOW)
  endfunction
endclass
