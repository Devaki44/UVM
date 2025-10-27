class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)
  
  virtual intf vintf;
  sequence_item tx;
  
  uvm_analysis_port#(sequence_item)port_tx;
  
  function new(string name = "monitor",uvm_component parent);
    super.new(name,parent);
    tx = new();
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    port_tx = new("port_tx",this);
    `uvm_info(get_type_name(),"build-phase from monitor",UVM_NONE)
    
    if(!uvm_config_db#(virtual intf)::get(this, "", "vif", vintf))
      `uvm_fatal("no_inif in driver","virtual interface get failed from config db");
    
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    repeat(10) begin
      #1;
      tx = sequence_item::type_id::create("tx",this);
      tx.a   = vintf.a;
      tx.b   = vintf.b;
      tx.out = vintf.out;
      port_tx.write(tx);
      `uvm_info(get_type_name(),"run_phase from monitor",UVM_NONE);
    end
  endtask
  
endclass
